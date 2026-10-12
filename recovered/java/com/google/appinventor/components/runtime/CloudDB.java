package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.util.Base64;
import android.util.Log;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.CloudDBJedisListener;
import com.google.appinventor.components.runtime.util.FileUtil;
import com.google.appinventor.components.runtime.util.JsonUtil;
import com.google.appinventor.components.runtime.util.YailList;
import java.io.ByteArrayInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReference;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import org.json.JSONArray;
import org.json.JSONException;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisShardInfo;
import redis.clients.jedis.exceptions.JedisConnectionException;
import redis.clients.jedis.exceptions.JedisDataException;
import redis.clients.jedis.exceptions.JedisException;
import redis.clients.jedis.exceptions.JedisNoScriptException;

@UsesPermissions({"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
@DesignerComponent(category = ComponentCategory.STORAGE, description = "Non-visible component allowing you to store data on a Internet connected database server (using Redis software). This allows the users of your App to share data with each other. By default data will be stored in a server maintained by MIT, however you can setup and run your own server. Set the \"RedisServer\" property and \"RedisPort\" Property to access your own server.", designerHelpDescription = "Non-visible component that communicates with CloudDB server to store and retrieve information.", iconName = "images/cloudDB.png", nonVisible = true, version = 2)
@UsesLibraries(libraries = "jedis.jar")
/* loaded from: classes.dex */
public class CloudDB extends AndroidNonvisibleComponent implements Component, OnClearListener, OnDestroyListener, ObservableDataSource<String, Future<YailList>> {
    private static final String APPEND_SCRIPT = "local key = KEYS[1];local toAppend = cjson.decode(ARGV[1]);local project = ARGV[2];local currentValue = redis.call('get', project .. \":\" .. key);local newTable;local subTable = {};local subTable1 = {};if (currentValue == false) then   newTable = {};else   newTable = cjson.decode(currentValue);  if not (type(newTable) == 'table') then     return error('You can only append to a list');  end end table.insert(newTable, toAppend);local newValue = cjson.encode(newTable);redis.call('set', project .. \":\" .. key, newValue);table.insert(subTable1, newValue);table.insert(subTable, key);table.insert(subTable, subTable1);redis.call(\"publish\", project, cjson.encode(subTable));return newValue;";
    private static final String APPEND_SCRIPT_SHA1 = "d6cc0f65b29878589f00564d52c8654967e9bcf8";
    private static final String COMODO_ROOT = "-----BEGIN CERTIFICATE-----\nMIIENjCCAx6gAwIBAgIBATANBgkqhkiG9w0BAQUFADBvMQswCQYDVQQGEwJTRTEU\nMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFs\nIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290\nMB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFowbzELMAkGA1UEBhMCU0Ux\nFDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5h\nbCBUVFAgTmV0d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9v\ndDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALf3GjPm8gAELTngTlvt\nH7xsD821+iO2zt6bETOXpClMfZOfvUq8k+0DGuOPz+VtUFrWlymUWoCwSXrbLpX9\nuMq/NzgtHj6RQa1wVsfwTz/oMp50ysiQVOnGXw94nZpAPA6sYapeFI+eh6FqUNzX\nmk6vBbOmcZSccbNQYArHE504B4YCqOmoaSYYkKtMsE8jqzpPhNjfzp/haW+710LX\na0Tkx63ubUFfclpxCDezeWWkWaCUN/cALw3CknLa0Dhy2xSoRcRdKn23tNbE7qzN\nE0S3ySvdQwAl+mG5aWpYIxG3pzOPVnVZ9c0p10a3CitlttNCbxWyuHv77+ldU9U0\nWicCAwEAAaOB3DCB2TAdBgNVHQ4EFgQUrb2YejS0Jvf6xCZU7wO94CTLVBowCwYD\nVR0PBAQDAgEGMA8GA1UdEwEB/wQFMAMBAf8wgZkGA1UdIwSBkTCBjoAUrb2YejS0\nJvf6xCZU7wO94CTLVBqhc6RxMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRU\ncnVzdCBBQjEmMCQGA1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsx\nIjAgBgNVBAMTGUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3SCAQEwDQYJKoZIhvcN\nAQEFBQADggEBALCb4IUlwtYj4g+WBpKdQZic2YR5gdkeWxQHIzZlj7DYd7usQWxH\nYINRsPkyPef89iYTx4AWpb9a/IfPeHmJIZriTAcKhjW88t5RxNKWt9x+Tu5w/Rw5\n6wwCURQtjr0W4MHfRnXnJK3s9EK0hZNwEGe6nQY1ShjTK3rMUUKhemPR5ruhxSvC\nNr4TDea9Y355e6cJDUCrat2PisP29owaQgVR1EX1n6diIWgVIEM8med8vSTYqZEX\nc4g/VhsxOBi0cQ+azcgOno4uG+GMmIPLHzHxREzGBHNJdmAPx/i9F4BrLunMTA5a\nmnkPIAou1Z5jJh5VkpTYghdae9C8x49OhgQ=\n-----END CERTIFICATE-----\n";
    private static final String COMODO_USRTRUST = "-----BEGIN CERTIFICATE-----\nMIIFdzCCBF+gAwIBAgIQE+oocFv07O0MNmMJgGFDNjANBgkqhkiG9w0BAQwFADBv\nMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFk\nZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBF\neHRlcm5hbCBDQSBSb290MB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFow\ngYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpOZXcgSmVyc2V5MRQwEgYDVQQHEwtK\nZXJzZXkgQ2l0eTEeMBwGA1UEChMVVGhlIFVTRVJUUlVTVCBOZXR3b3JrMS4wLAYD\nVQQDEyVVU0VSVHJ1c3QgUlNBIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIICIjAN\nBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAgBJlFzYOw9sIs9CsVw127c0n00yt\nUINh4qogTQktZAnczomfzD2p7PbPwdzx07HWezcoEStH2jnGvDoZtF+mvX2do2NC\ntnbyqTsrkfjib9DsFiCQCT7i6HTJGLSR1GJk23+jBvGIGGqQIjy8/hPwhxR79uQf\njtTkUcYRZ0YIUcuGFFQ/vDP+fmyc/xadGL1RjjWmp2bIcmfbIWax1Jt4A8BQOujM\n8Ny8nkz+rwWWNR9XWrf/zvk9tyy29lTdyOcSOk2uTIq3XJq0tyA9yn8iNK5+O2hm\nAUTnAU5GU5szYPeUvlM3kHND8zLDU+/bqv50TmnHa4xgk97Exwzf4TKuzJM7UXiV\nZ4vuPVb+DNBpDxsP8yUmazNt925H+nND5X4OpWaxKXwyhGNVicQNwZNUMBkTrNN9\nN6frXTpsNVzbQdcS2qlJC9/YgIoJk2KOtWbPJYjNhLixP6Q5D9kCnusSTJV882sF\nqV4Wg8y4Z+LoE53MW4LTTLPtW//e5XOsIzstAL81VXQJSdhJWBp/kjbmUZIO8yZ9\nHE0XvMnsQybQv0FfQKlERPSZ51eHnlAfV1SoPv10Yy+xUGUJ5lhCLkMaTLTwJUdZ\n+gQek9QmRkpQgbLevni3/GcV4clXhB4PY9bpYrrWX1Uu6lzGKAgEJTm4Diup8kyX\nHAc/DVL17e8vgg8CAwEAAaOB9DCB8TAfBgNVHSMEGDAWgBStvZh6NLQm9/rEJlTv\nA73gJMtUGjAdBgNVHQ4EFgQUU3m/WqorSs9UgOHYm8Cd8rIDZsswDgYDVR0PAQH/\nBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wEQYDVR0gBAowCDAGBgRVHSAAMEQGA1Ud\nHwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwudXNlcnRydXN0LmNvbS9BZGRUcnVzdEV4\ndGVybmFsQ0FSb290LmNybDA1BggrBgEFBQcBAQQpMCcwJQYIKwYBBQUHMAGGGWh0\ndHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wDQYJKoZIhvcNAQEMBQADggEBAJNl9jeD\nlQ9ew4IcH9Z35zyKwKoJ8OkLJvHgwmp1ocd5yblSYMgpEg7wrQPWCcR23+WmgZWn\nRtqCV6mVksW2jwMibDN3wXsyF24HzloUQToFJBv2FAY7qCUkDrvMKnXduXBBP3zQ\nYzYhBx9G/2CkkeFnvN4ffhkUyWNnkepnB2u0j4vAbkN9w6GAbLIevFOFfdyQoaS8\nLe9Gclc1Bb+7RrtubTeZtv8jkpHGbkD4jylW6l/VXxRTrPBPYer3IsynVgviuDQf\nJtl7GQVoP7o81DgGotPmjw7jtHFtQELFhLRAlSv0ZaBIefYdgWOWnU914Ph85I6p\n0fKtirOMxyHNwu8=\n-----END CERTIFICATE-----\n";
    private static final boolean DEBUG = false;
    private static final String DST_ROOT_X3 = "-----BEGIN CERTIFICATE-----\nMIIDSjCCAjKgAwIBAgIQRK+wgNajJ7qJMDmGLvhAazANBgkqhkiG9w0BAQUFADA/\nMSQwIgYDVQQKExtEaWdpdGFsIFNpZ25hdHVyZSBUcnVzdCBDby4xFzAVBgNVBAMT\nDkRTVCBSb290IENBIFgzMB4XDTAwMDkzMDIxMTIxOVoXDTIxMDkzMDE0MDExNVow\nPzEkMCIGA1UEChMbRGlnaXRhbCBTaWduYXR1cmUgVHJ1c3QgQ28uMRcwFQYDVQQD\nEw5EU1QgUm9vdCBDQSBYMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB\nAN+v6ZdQCINXtMxiZfaQguzH0yxrMMpb7NnDfcdAwRgUi+DoM3ZJKuM/IUmTrE4O\nrz5Iy2Xu/NMhD2XSKtkyj4zl93ewEnu1lcCJo6m67XMuegwGMoOifooUMM0RoOEq\nOLl5CjH9UL2AZd+3UWODyOKIYepLYYHsUmu5ouJLGiifSKOeDNoJjj4XLh7dIN9b\nxiqKqy69cK3FCxolkHRyxXtqqzTWMIn/5WgTe1QLyNau7Fqckh49ZLOMxt+/yUFw\n7BZy1SbsOFU5Q9D8/RhcQPGX69Wam40dutolucbY38EVAjqr2m7xPi71XAicPNaD\naeQQmxkqtilX4+U9m5/wAl0CAwEAAaNCMEAwDwYDVR0TAQH/BAUwAwEB/zAOBgNV\nHQ8BAf8EBAMCAQYwHQYDVR0OBBYEFMSnsaR7LHH62+FLkHX/xBVghYkQMA0GCSqG\nSIb3DQEBBQUAA4IBAQCjGiybFwBcqR7uKGY3Or+Dxz9LwwmglSBd49lZRNI+DT69\nikugdB/OEIKcdBodfpga3csTS7MgROSR6cz8faXbauX+5v3gTt23ADq1cEmv8uXr\nAvHRAosZy5Q6XkjEGB5YGV8eAlrwDPGxrancWYaLbumR9YbK+rlmM6pZW87ipxZz\nR8srzJmwN0jP41ZL9c8PDHIyh8bwRLtTcm1D9SZImlJnt1ir/md2cXjbDaJWFBM5\nJDGFoqgCWjBH4d1QB7wCCZAA62RjYJsWvIjJEubSfZGL+T0yjWW06XyxV3bqxbYo\nOb8VZRzI9neWagqNdwvYkQsEjgfbKbYK7p2CNTUQ\n-----END CERTIFICATE-----\n";
    private static final String LOG_TAG = "CloudDB";
    private static final String POP_FIRST_SCRIPT = "local key = KEYS[1];local project = ARGV[1];local currentValue = redis.call('get', project .. \":\" .. key);local decodedValue = cjson.decode(currentValue);local subTable = {};local subTable1 = {};if (type(decodedValue) == 'table') then   local removedValue = table.remove(decodedValue, 1);  local newValue = cjson.encode(decodedValue);  if (newValue == \"{}\") then     newValue = \"[]\"   end   redis.call('set', project .. \":\" .. key, newValue);  table.insert(subTable, key);  table.insert(subTable1, newValue);  table.insert(subTable, subTable1);  redis.call(\"publish\", project, cjson.encode(subTable));  return cjson.encode(removedValue);else   return error('You can only remove elements from a list');end";
    private static final String POP_FIRST_SCRIPT_SHA1 = "68a7576e7dc283a8162d01e3e7c2d5c4ab3ff7a5";
    private static final String SET_SUB_SCRIPT = "local key = KEYS[1];local value = ARGV[1];local topublish = cjson.decode(ARGV[2]);local project = ARGV[3];local newtable = {};table.insert(newtable, key);table.insert(newtable, topublish);redis.call(\"publish\", project, cjson.encode(newtable));return redis.call('set', project .. \":\" .. key, value);";
    private static final String SET_SUB_SCRIPT_SHA1 = "765978e4c340012f50733280368a0ccc4a14dfb7";
    private Jedis INSTANCE;
    private SSLSocketFactory SslSockFactory;
    private final Activity activity;
    private Handler androidUIHandler;
    private volatile ExecutorService background;
    private ConnectivityManager cm;
    private volatile CloudDBJedisListener currentListener;
    private HashSet<DataSourceChangeListener> dataSourceObservers;
    private volatile boolean dead;
    private String defaultRedisServer;
    private boolean importProject;
    private boolean isPublic;
    private volatile boolean listenerRunning;
    private String projectID;
    private volatile int redisPort;
    private volatile String redisServer;
    private volatile boolean shutdown;
    private final List<storedValue> storeQueue;
    private String token;
    private boolean useDefault;
    private volatile boolean useSSL;

    public static class storedValue {
        private String tag;
        private JSONArray valueList;

        public storedValue(String str, JSONArray jSONArray) {
            this.tag = str;
            this.valueList = jSONArray;
        }

        public String getTag() {
            return this.tag;
        }

        public JSONArray getValueList() {
            return this.valueList;
        }
    }

    public CloudDB(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.importProject = false;
        this.projectID = "";
        this.token = "";
        this.isPublic = false;
        this.dead = false;
        this.defaultRedisServer = null;
        this.useDefault = true;
        this.INSTANCE = null;
        this.redisServer = "DEFAULT";
        this.useSSL = true;
        this.shutdown = false;
        this.SslSockFactory = null;
        this.listenerRunning = false;
        this.background = Executors.newSingleThreadExecutor();
        this.storeQueue = Collections.synchronizedList(new ArrayList());
        this.dataSourceObservers = new HashSet<>();
        this.androidUIHandler = new Handler();
        this.activity = componentContainer.$context();
        this.projectID = "";
        this.token = "";
        this.redisPort = 6381;
        this.cm = (ConnectivityManager) this.form.$context().getSystemService("connectivity");
    }

    public void Initialize() {
        if (this.currentListener == null) {
            startListener();
        }
        this.form.registerForOnClear(this);
        this.form.registerForOnDestroy(this);
    }

    private void stopListener() {
        if (this.currentListener != null) {
            this.currentListener.terminate();
            this.currentListener = null;
            this.listenerRunning = false;
        }
    }

    @Override // com.google.appinventor.components.runtime.OnClearListener
    public void onClear() {
        this.shutdown = true;
        flushJedis(false);
    }

    @Override // com.google.appinventor.components.runtime.OnDestroyListener
    public void onDestroy() {
        onClear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void startListener() {
        if (this.listenerRunning) {
            return;
        }
        this.listenerRunning = true;
        new Thread() { // from class: com.google.appinventor.components.runtime.CloudDB.1
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003e -> B:13:0x003f). Please report as a decompilation issue!!! */
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws InterruptedException {
                Jedis jedis = CloudDB.this.getJedis(true);
                try {
                    if (jedis != null) {
                        try {
                            CloudDB.this.currentListener = new CloudDBJedisListener(CloudDB.this);
                            jedis.subscribe(CloudDB.this.currentListener, new String[]{CloudDB.this.projectID});
                        } catch (Exception e) {
                            Log.e(CloudDB.LOG_TAG, "Error in listener thread", e);
                            try {
                                jedis.close();
                            } catch (Exception unused) {
                            }
                            Thread.sleep(3000L);
                        }
                    } else {
                        Thread.sleep(3000L);
                    }
                } catch (InterruptedException unused2) {
                }
                CloudDB.this.listenerRunning = false;
                if (CloudDB.this.dead || CloudDB.this.shutdown) {
                    return;
                }
                CloudDB.this.startListener();
            }
        }.start();
    }

    @DesignerProperty(defaultValue = "DEFAULT", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void RedisServer(String str) {
        if (str.equals("DEFAULT")) {
            if (this.useDefault) {
                return;
            }
            this.useDefault = true;
            String str2 = this.defaultRedisServer;
            if (str2 != null) {
                this.redisServer = str2;
            }
            flushJedis(true);
            return;
        }
        this.useDefault = false;
        if (str.equals(this.redisServer)) {
            return;
        }
        this.redisServer = str;
        flushJedis(true);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The Redis Server to use to store data. A setting of \"DEFAULT\" means that the MIT server will be used.")
    public String RedisServer() {
        if (this.redisServer.equals(this.defaultRedisServer)) {
            return "DEFAULT";
        }
        return this.redisServer;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The Default Redis Server to use.", userVisible = false)
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void DefaultRedisServer(String str) {
        this.defaultRedisServer = str;
        if (this.useDefault) {
            this.redisServer = str;
        }
    }

    @DesignerProperty(defaultValue = "6381", editorType = PropertyTypeConstants.PROPERTY_TYPE_INTEGER)
    public void RedisPort(int i) {
        if (i != this.redisPort) {
            this.redisPort = i;
            flushJedis(true);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The Redis Server port to use. Defaults to 6381")
    public int RedisPort() {
        return this.redisPort;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Gets the ProjectID for this CloudDB project.")
    public String ProjectID() {
        checkProjectIDNotBlank();
        return this.projectID;
    }

    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ProjectID(String str) {
        if (!this.projectID.equals(str)) {
            this.projectID = str;
        }
        if (this.projectID.equals("")) {
            throw new RuntimeException("CloudDB ProjectID property cannot be blank.");
        }
    }

    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Token(String str) {
        if (!this.token.equals(str)) {
            this.token = str;
        }
        if (this.token.equals("")) {
            throw new RuntimeException("CloudDB Token property cannot be blank.");
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "This field contains the authentication token used to login to the backed Redis server. For the \"DEFAULT\" server, do not edit this value, the system will fill it in for you. A system administrator may also provide a special value to you which can be used to share data between multiple projects from multiple people. If using your own Redis server, set a password in the server's config and enter it here.", userVisible = false)
    public String Token() {
        checkProjectIDNotBlank();
        return this.token;
    }

    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void UseSSL(boolean z) {
        if (this.useSSL != z) {
            this.useSSL = z;
            flushJedis(true);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set to true to use SSL to talk to CloudDB/Redis server. This should be set to True for the \"DEFAULT\" server.", userVisible = false)
    public boolean UseSSL() {
        return this.useSSL;
    }

    @SimpleFunction(description = "Store a value at a tag.")
    public void StoreValue(String str, Object obj) {
        String jsonRepresentation;
        checkProjectIDNotBlank();
        NetworkInfo activeNetworkInfo = this.cm.getActiveNetworkInfo();
        boolean z = true;
        boolean z2 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        if (obj != null) {
            try {
                String string = obj.toString();
                if (string.startsWith("file:///") || string.startsWith("/storage")) {
                    jsonRepresentation = JsonUtil.getJsonRepresentation(readFile(string));
                } else {
                    jsonRepresentation = JsonUtil.getJsonRepresentation(obj);
                }
            } catch (JSONException unused) {
                throw new YailRuntimeError("Value failed to convert to JSON.", "JSON Creation Error.");
            }
        } else {
            jsonRepresentation = "";
        }
        if (z2) {
            synchronized (this.storeQueue) {
                try {
                    if (this.storeQueue.size() != 0) {
                        z = false;
                    }
                    JSONArray jSONArray = new JSONArray();
                    try {
                        jSONArray.put(0, jsonRepresentation);
                        this.storeQueue.add(new storedValue(str, jSONArray));
                        if (z) {
                            this.background.submit(new Runnable() { // from class: com.google.appinventor.components.runtime.CloudDB.2
                                @Override // java.lang.Runnable
                                public void run() throws JSONException {
                                    storedValue storedvalue;
                                    String string2;
                                    String str2 = null;
                                    JSONArray jSONArray2 = null;
                                    String string3 = null;
                                    while (true) {
                                        try {
                                            synchronized (CloudDB.this.storeQueue) {
                                                storedvalue = CloudDB.this.storeQueue.size() == 0 ? null : (storedValue) CloudDB.this.storeQueue.remove(0);
                                            }
                                            if (storedvalue == null) {
                                                break;
                                            }
                                            String tag = storedvalue.getTag();
                                            JSONArray valueList = storedvalue.getValueList();
                                            if (str2 == null) {
                                                string2 = valueList.getString(0);
                                            } else if (str2.equals(tag)) {
                                                string3 = valueList.getString(0);
                                                jSONArray2.put(string3);
                                            } else {
                                                try {
                                                    String string4 = jSONArray2.toString();
                                                    CloudDB cloudDB = CloudDB.this;
                                                    cloudDB.jEval(CloudDB.SET_SUB_SCRIPT, CloudDB.SET_SUB_SCRIPT_SHA1, 1, str2, string3, string4, cloudDB.projectID);
                                                    string2 = valueList.getString(0);
                                                } catch (JedisException e) {
                                                    CloudDB.this.CloudDBError(e.getMessage());
                                                    CloudDB.this.flushJedis(true);
                                                    CloudDB.this.storeQueue.clear();
                                                    return;
                                                }
                                            }
                                            string3 = string2;
                                            jSONArray2 = valueList;
                                            str2 = tag;
                                        } catch (Exception e2) {
                                            Log.e(CloudDB.LOG_TAG, "Exception in store worker!", e2);
                                            return;
                                        }
                                        Log.e(CloudDB.LOG_TAG, "Exception in store worker!", e2);
                                        return;
                                    }
                                    if (str2 != null) {
                                        try {
                                            String string5 = jSONArray2.toString();
                                            CloudDB cloudDB2 = CloudDB.this;
                                            cloudDB2.jEval(CloudDB.SET_SUB_SCRIPT, CloudDB.SET_SUB_SCRIPT_SHA1, 1, str2, string3, string5, cloudDB2.projectID);
                                            CloudDB.this.UpdateDone(str2, "StoreValue");
                                        } catch (JedisException e3) {
                                            CloudDB.this.CloudDBError(e3.getMessage());
                                            CloudDB.this.flushJedis(true);
                                        }
                                    }
                                }
                            });
                        }
                    } catch (JSONException unused2) {
                        throw new YailRuntimeError("JSON Error putting value.", "value is not convertable");
                    }
                } finally {
                }
            }
            return;
        }
        CloudDBError("Cannot store values off-line.");
    }

    @SimpleFunction(description = "Get the Value for a tag, doesn't return the value but will cause a GotValue event to fire when the value is looked up.")
    public void GetValue(final String str, final Object obj) {
        checkProjectIDNotBlank();
        new AtomicReference();
        NetworkInfo activeNetworkInfo = this.cm.getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            this.background.submit(new Runnable() { // from class: com.google.appinventor.components.runtime.CloudDB.3
                @Override // java.lang.Runnable
                public void run() throws IOException {
                    final AtomicReference valueByTag = CloudDB.this.getValueByTag(str, obj);
                    if (valueByTag.get() == null) {
                        return;
                    }
                    CloudDB.this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.CloudDB.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            CloudDB.this.GotValue(str, valueByTag.get());
                        }
                    });
                }
            });
        } else {
            CloudDBError("Cannot fetch variables while off-line.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AtomicReference<Object> getValueByTag(String str, Object obj) throws IOException {
        AtomicReference<Object> atomicReference = new AtomicReference<>();
        Jedis jedis = getJedis();
        try {
            String str2 = jedis.get(this.projectID + ":" + str);
            if (str2 != null) {
                String jsonRepresentationIfValueFileName = JsonUtil.getJsonRepresentationIfValueFileName(this.form, str2);
                if (jsonRepresentationIfValueFileName != null) {
                    atomicReference.set(jsonRepresentationIfValueFileName);
                    return atomicReference;
                }
                atomicReference.set(str2);
                return atomicReference;
            }
            atomicReference.set(JsonUtil.getJsonRepresentation(obj));
            return atomicReference;
        } catch (JedisException e) {
            Log.e(LOG_TAG, "Exception in GetValue", e);
            CloudDBError(e.getMessage());
            flushJedis(true);
            atomicReference.set(null);
            return atomicReference;
        } catch (NullPointerException unused) {
            CloudDBError("System Error getting tag " + str);
            flushJedis(true);
            atomicReference.set(null);
            return atomicReference;
        } catch (JSONException unused2) {
            CloudDBError("JSON conversion error for " + str);
            atomicReference.set(null);
            return atomicReference;
        }
    }

    @SimpleFunction(description = "returns True if we are on the network and will likely be able to connect to the CloudDB server.")
    public boolean CloudConnected() {
        NetworkInfo activeNetworkInfo = this.cm.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @SimpleEvent(description = "Event triggered by the \"RemoveFirstFromList\" function. The argument \"value\" is the object that was the first in the list, and which is now removed.")
    public void FirstRemoved(final Object obj) {
        checkProjectIDNotBlank();
        if (obj != null) {
            try {
                if (obj instanceof String) {
                    obj = JsonUtil.getObjectFromJson((String) obj, true);
                }
            } catch (JSONException e) {
                Log.e(LOG_TAG, "error while converting to JSON...", e);
                return;
            }
        }
        this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.CloudDB.4
            @Override // java.lang.Runnable
            public void run() {
                EventDispatcher.dispatchEvent(CloudDB.this, "FirstRemoved", obj);
            }
        });
    }

    @SimpleFunction(description = "Return the first element of a list and atomically remove it. If two devices use this function simultaneously, one will get the first element and the the other will get the second element, or an error if there is no available element. When the element is available, the \"FirstRemoved\" event will be triggered.")
    public void RemoveFirstFromList(final String str) {
        checkProjectIDNotBlank();
        this.background.submit(new Runnable() { // from class: com.google.appinventor.components.runtime.CloudDB.5
            @Override // java.lang.Runnable
            public void run() {
                CloudDB.this.getJedis();
                try {
                    CloudDB cloudDB = CloudDB.this;
                    cloudDB.FirstRemoved(cloudDB.jEval(CloudDB.POP_FIRST_SCRIPT, CloudDB.POP_FIRST_SCRIPT_SHA1, 1, str, cloudDB.projectID));
                } catch (JedisException e) {
                    CloudDB.this.CloudDBError(e.getMessage());
                    CloudDB.this.flushJedis(true);
                }
            }
        });
    }

    @SimpleFunction(description = "Append a value to the end of a list atomically. If two devices use this function simultaneously, both will be appended and no data lost.")
    public void AppendValueToList(final String str, Object obj) {
        checkProjectIDNotBlank();
        Object obj2 = new Object();
        if (obj != null) {
            try {
                obj2 = JsonUtil.getJsonRepresentation(obj);
            } catch (JSONException unused) {
                throw new YailRuntimeError("Value failed to convert to JSON.", "JSON Creation Error.");
            }
        }
        final String str2 = (String) obj2;
        this.background.submit(new Runnable() { // from class: com.google.appinventor.components.runtime.CloudDB.6
            @Override // java.lang.Runnable
            public void run() {
                CloudDB.this.getJedis();
                try {
                    CloudDB cloudDB = CloudDB.this;
                    cloudDB.jEval(CloudDB.APPEND_SCRIPT, CloudDB.APPEND_SCRIPT_SHA1, 1, str, str2, cloudDB.projectID);
                    CloudDB.this.UpdateDone(str, "AppendValueToList");
                } catch (JedisException e) {
                    CloudDB.this.CloudDBError(e.getMessage());
                    CloudDB.this.flushJedis(true);
                }
            }
        });
    }

    @SimpleEvent
    public void GotValue(String str, Object obj) {
        checkProjectIDNotBlank();
        if (obj == null) {
            CloudDBError("Trouble getting " + str + " from the server.");
            return;
        }
        try {
            if (obj instanceof String) {
                obj = JsonUtil.getObjectFromJson((String) obj, true);
            }
            notifyDataObservers(str, obj);
            EventDispatcher.dispatchEvent(this, "GotValue", str, obj);
        } catch (JSONException unused) {
            throw new YailRuntimeError("Value failed to convert from JSON.", "JSON Retrieval Error.");
        }
    }

    @SimpleFunction(description = "Remove the tag from CloudDB.")
    public void ClearTag(final String str) {
        checkProjectIDNotBlank();
        this.background.submit(new Runnable() { // from class: com.google.appinventor.components.runtime.CloudDB.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    CloudDB.this.getJedis().del(CloudDB.this.projectID + ":" + str);
                    CloudDB.this.notifyDataObservers(str, (Object) null);
                    CloudDB.this.UpdateDone(str, "ClearTag");
                } catch (Exception e) {
                    CloudDB.this.CloudDBError(e.getMessage());
                    CloudDB.this.flushJedis(true);
                }
            }
        });
    }

    @SimpleEvent
    public void UpdateDone(final String str, final String str2) {
        this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.CloudDB.8
            @Override // java.lang.Runnable
            public void run() {
                EventDispatcher.dispatchEvent(CloudDB.this, "UpdateDone", str, str2);
            }
        });
    }

    @SimpleFunction(description = "Get the list of tags for this application. When complete a \"TagList\" event will be triggered with the list of known tags.")
    public void GetTagList() {
        checkProjectIDNotBlank();
        NetworkInfo activeNetworkInfo = this.cm.getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            this.background.submit(new Runnable() { // from class: com.google.appinventor.components.runtime.CloudDB.9
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        final ArrayList arrayList = new ArrayList(CloudDB.this.getJedis().keys(CloudDB.this.projectID + ":*"));
                        for (int i = 0; i < arrayList.size(); i++) {
                            arrayList.set(i, ((String) arrayList.get(i)).substring((CloudDB.this.projectID + ":").length()));
                        }
                        CloudDB.this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.CloudDB.9.1
                            @Override // java.lang.Runnable
                            public void run() {
                                CloudDB.this.TagList(arrayList);
                            }
                        });
                    } catch (JedisException e) {
                        CloudDB.this.CloudDBError(e.getMessage());
                        CloudDB.this.flushJedis(true);
                    }
                }
            });
        } else {
            CloudDBError("Not connected to the Internet, cannot list tags");
        }
    }

    @SimpleEvent(description = "Event triggered when we have received the list of known tags. Used with the \"GetTagList\" Function.")
    public void TagList(List<String> list) {
        checkProjectIDNotBlank();
        EventDispatcher.dispatchEvent(this, "TagList", list);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    @com.google.appinventor.components.annotations.SimpleEvent(description = "Event indicating that CloudDB data has changed for the given tag and value.")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void DataChanged(final java.lang.String r3, java.lang.Object r4) {
        /*
            r2 = this;
            if (r4 == 0) goto L18
            boolean r0 = r4 instanceof java.lang.String     // Catch: org.json.JSONException -> Le
            if (r0 == 0) goto L18
            java.lang.String r4 = (java.lang.String) r4     // Catch: org.json.JSONException -> Le
            r0 = 1
            java.lang.Object r4 = com.google.appinventor.components.runtime.util.JsonUtil.getObjectFromJson(r4, r0)     // Catch: org.json.JSONException -> Le
            goto L1a
        Le:
            com.google.appinventor.components.runtime.errors.YailRuntimeError r3 = new com.google.appinventor.components.runtime.errors.YailRuntimeError
            java.lang.String r4 = "Value failed to convert from JSON."
            java.lang.String r0 = "JSON Retrieval Error."
            r3.<init>(r4, r0)
            throw r3
        L18:
            java.lang.String r4 = ""
        L1a:
            r2.notifyDataObservers(r3, r4)
            android.os.Handler r0 = r2.androidUIHandler
            com.google.appinventor.components.runtime.CloudDB$10 r1 = new com.google.appinventor.components.runtime.CloudDB$10
            r1.<init>()
            r0.post(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.CloudDB.DataChanged(java.lang.String, java.lang.Object):void");
    }

    @SimpleEvent(description = "Indicates that an error occurred while communicating with the CloudDB Redis server.")
    public void CloudDBError(final String str) {
        Log.e(LOG_TAG, str);
        this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.CloudDB.11
            @Override // java.lang.Runnable
            public void run() {
                if (EventDispatcher.dispatchEvent(CloudDB.this, "CloudDBError", str)) {
                    return;
                }
                new Notifier(CloudDB.this.form).ShowAlert("CloudDBError: " + str);
            }
        });
    }

    private void checkProjectIDNotBlank() {
        if (this.projectID.equals("")) {
            throw new RuntimeException("CloudDB ProjectID property cannot be blank.");
        }
        if (this.token.equals("")) {
            throw new RuntimeException("CloudDB Token property cannot be blank");
        }
    }

    public Form getForm() {
        return this.form;
    }

    public Jedis getJedis(boolean z) {
        String strSubstring;
        if (this.dead) {
            return null;
        }
        try {
            String str = this.token;
            if (str != null && !str.equals("") && this.token.substring(0, 1).equals("%")) {
                strSubstring = this.token.substring(1);
            } else {
                strSubstring = this.token;
            }
            if (this.useSSL) {
                ensureSslSockFactory();
                JedisShardInfo jedisShardInfo = new JedisShardInfo(this.redisServer, this.redisPort, AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH, true, this.SslSockFactory, (SSLParameters) null, (HostnameVerifier) null);
                jedisShardInfo.setPassword(strSubstring);
                return new Jedis(jedisShardInfo);
            }
            JedisShardInfo jedisShardInfo2 = new JedisShardInfo(this.redisServer, this.redisPort, AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH);
            jedisShardInfo2.setPassword(strSubstring);
            return new Jedis(jedisShardInfo2);
        } catch (JedisDataException e) {
            Log.e(LOG_TAG, "in getJedis()", e);
            CloudDBError(e.getMessage() + " CloudDB disabled, restart to re-enable.");
            this.dead = true;
            return null;
        } catch (JedisConnectionException e2) {
            Log.e(LOG_TAG, "in getJedis()", e2);
            CloudDBError(e2.getMessage());
            return null;
        }
    }

    public synchronized Jedis getJedis() {
        try {
            if (this.INSTANCE == null) {
                this.INSTANCE = getJedis(true);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void flushJedis(boolean z) {
        Jedis jedis = this.INSTANCE;
        if (jedis == null) {
            return;
        }
        try {
            jedis.close();
        } catch (Exception unused) {
        }
        this.INSTANCE = null;
        this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.CloudDB.12
            @Override // java.lang.Runnable
            public void run() {
                CloudDB.this.background.shutdownNow();
                CloudDB.this.background = Executors.newSingleThreadExecutor();
            }
        });
        stopListener();
        if (z) {
            startListener();
        }
    }

    private YailList readFile(String str) {
        try {
            String strSubstring = str.startsWith("file://") ? str.substring(7) : str;
            if (!strSubstring.startsWith("/")) {
                throw new YailRuntimeError("Invalid fileName, was ".concat(str), "ReadFrom");
            }
            String fileExtension = getFileExtension(strSubstring);
            return YailList.makeList(new Object[]{"." + fileExtension, Base64.encodeToString(FileUtil.readFile(this.form, strSubstring), 0)});
        } catch (FileNotFoundException e) {
            throw new YailRuntimeError(e.getMessage(), "Read");
        } catch (IOException e2) {
            throw new YailRuntimeError(e2.getMessage(), "Read");
        }
    }

    private String getFileExtension(String str) {
        String name = new java.io.File(str).getName();
        int iLastIndexOf = name.lastIndexOf(".");
        return iLastIndexOf == -1 ? "" : name.substring(iLastIndexOf + 1);
    }

    public ExecutorService getBackground() {
        return this.background;
    }

    public Object jEval(String str, String str2, int i, String... strArr) throws JedisException {
        Jedis jedis = getJedis();
        try {
            return jedis.evalsha(str2, i, strArr);
        } catch (JedisNoScriptException unused) {
            return jedis.eval(str, i, strArr);
        }
    }

    private synchronized void ensureSslSockFactory() {
        try {
            if (this.SslSockFactory != null) {
                return;
            }
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(COMODO_ROOT.getBytes("UTF-8"));
                Certificate certificateGenerateCertificate = certificateFactory.generateCertificate(byteArrayInputStream);
                byteArrayInputStream.close();
                ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(COMODO_USRTRUST.getBytes("UTF-8"));
                Certificate certificateGenerateCertificate2 = certificateFactory.generateCertificate(byteArrayInputStream2);
                byteArrayInputStream2.close();
                ByteArrayInputStream byteArrayInputStream3 = new ByteArrayInputStream(DST_ROOT_X3.getBytes("UTF-8"));
                Certificate certificateGenerateCertificate3 = certificateFactory.generateCertificate(byteArrayInputStream3);
                byteArrayInputStream3.close();
                KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
                keyStore.load(null, null);
                int i = 1;
                for (X509Certificate x509Certificate : getSystemCertificates()) {
                    keyStore.setCertificateEntry("root" + i, x509Certificate);
                    i++;
                }
                keyStore.setCertificateEntry("comodo", certificateGenerateCertificate);
                keyStore.setCertificateEntry("inter", certificateGenerateCertificate2);
                keyStore.setCertificateEntry("dstx3", certificateGenerateCertificate3);
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory.init(keyStore);
                SSLContext sSLContext = SSLContext.getInstance("TLS");
                sSLContext.init(null, trustManagerFactory.getTrustManagers(), null);
                this.SslSockFactory = sSLContext.getSocketFactory();
            } catch (Exception e) {
                Log.e(LOG_TAG, "Could not setup SSL Trust Store for CloudDB", e);
                throw new YailRuntimeError("Could Not setup SSL Trust Store for CloudDB: ", e.getMessage());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private X509Certificate[] getSystemCertificates() throws NoSuchAlgorithmException, KeyStoreException {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            return ((X509TrustManager) trustManagerFactory.getTrustManagers()[0]).getAcceptedIssuers();
        } catch (Exception e) {
            Log.e(LOG_TAG, "Getting System Certificates", e);
            return new X509Certificate[0];
        }
    }

    @Override // com.google.appinventor.components.runtime.DataSource
    public Future<YailList> getDataValue(final String str) {
        return this.background.submit(new Callable<YailList>() { // from class: com.google.appinventor.components.runtime.CloudDB.13
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public YailList call() {
                try {
                    Object objectFromJson = JsonUtil.getObjectFromJson((String) CloudDB.this.getValueByTag(str, new YailList()).get());
                    if (objectFromJson instanceof YailList) {
                        return (YailList) objectFromJson;
                    }
                } catch (JSONException unused) {
                }
                return YailList.makeEmptyList();
            }
        });
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public void addDataObserver(DataSourceChangeListener dataSourceChangeListener) {
        this.dataSourceObservers.add(dataSourceChangeListener);
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public void removeDataObserver(DataSourceChangeListener dataSourceChangeListener) {
        this.dataSourceObservers.remove(dataSourceChangeListener);
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public void notifyDataObservers(String str, Object obj) {
        Iterator<DataSourceChangeListener> it = this.dataSourceObservers.iterator();
        while (it.hasNext()) {
            it.next().onDataSourceValueChange(this, str, obj);
        }
    }
}
