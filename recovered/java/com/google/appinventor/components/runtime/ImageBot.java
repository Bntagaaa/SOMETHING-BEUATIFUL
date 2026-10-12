package com.google.appinventor.components.runtime;

import android.graphics.Bitmap;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.errors.StopBlocksExecution;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.imagebot.ImageBotToken;
import com.google.appinventor.components.runtime.util.AsynchUtil;
import com.google.appinventor.components.runtime.util.Base58Util;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.FileUtil;
import com.google.appinventor.components.runtime.util.IOUtils;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.google.protobuf.ByteString;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.INTERNET")
@DesignerComponent(androidMinSdk = 9, category = ComponentCategory.INTERNAL, iconName = "images/paintpalette.png", nonVisible = true, version = 2)
@UsesLibraries(libraries = "protobuf-javalite.jar")
/* loaded from: classes.dex */
public class ImageBot extends AndroidNonvisibleComponent {
    private static final String COMODO_ROOT = "-----BEGIN CERTIFICATE-----\nMIIENjCCAx6gAwIBAgIBATANBgkqhkiG9w0BAQUFADBvMQswCQYDVQQGEwJTRTEU\nMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFs\nIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290\nMB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFowbzELMAkGA1UEBhMCU0Ux\nFDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5h\nbCBUVFAgTmV0d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9v\ndDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALf3GjPm8gAELTngTlvt\nH7xsD821+iO2zt6bETOXpClMfZOfvUq8k+0DGuOPz+VtUFrWlymUWoCwSXrbLpX9\nuMq/NzgtHj6RQa1wVsfwTz/oMp50ysiQVOnGXw94nZpAPA6sYapeFI+eh6FqUNzX\nmk6vBbOmcZSccbNQYArHE504B4YCqOmoaSYYkKtMsE8jqzpPhNjfzp/haW+710LX\na0Tkx63ubUFfclpxCDezeWWkWaCUN/cALw3CknLa0Dhy2xSoRcRdKn23tNbE7qzN\nE0S3ySvdQwAl+mG5aWpYIxG3pzOPVnVZ9c0p10a3CitlttNCbxWyuHv77+ldU9U0\nWicCAwEAAaOB3DCB2TAdBgNVHQ4EFgQUrb2YejS0Jvf6xCZU7wO94CTLVBowCwYD\nVR0PBAQDAgEGMA8GA1UdEwEB/wQFMAMBAf8wgZkGA1UdIwSBkTCBjoAUrb2YejS0\nJvf6xCZU7wO94CTLVBqhc6RxMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRU\ncnVzdCBBQjEmMCQGA1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsx\nIjAgBgNVBAMTGUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3SCAQEwDQYJKoZIhvcN\nAQEFBQADggEBALCb4IUlwtYj4g+WBpKdQZic2YR5gdkeWxQHIzZlj7DYd7usQWxH\nYINRsPkyPef89iYTx4AWpb9a/IfPeHmJIZriTAcKhjW88t5RxNKWt9x+Tu5w/Rw5\n6wwCURQtjr0W4MHfRnXnJK3s9EK0hZNwEGe6nQY1ShjTK3rMUUKhemPR5ruhxSvC\nNr4TDea9Y355e6cJDUCrat2PisP29owaQgVR1EX1n6diIWgVIEM8med8vSTYqZEX\nc4g/VhsxOBi0cQ+azcgOno4uG+GMmIPLHzHxREzGBHNJdmAPx/i9F4BrLunMTA5a\nmnkPIAou1Z5jJh5VkpTYghdae9C8x49OhgQ=\n-----END CERTIFICATE-----\n";
    private static final String COMODO_USRTRUST = "-----BEGIN CERTIFICATE-----\nMIIFdzCCBF+gAwIBAgIQE+oocFv07O0MNmMJgGFDNjANBgkqhkiG9w0BAQwFADBv\nMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFk\nZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBF\neHRlcm5hbCBDQSBSb290MB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFow\ngYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpOZXcgSmVyc2V5MRQwEgYDVQQHEwtK\nZXJzZXkgQ2l0eTEeMBwGA1UEChMVVGhlIFVTRVJUUlVTVCBOZXR3b3JrMS4wLAYD\nVQQDEyVVU0VSVHJ1c3QgUlNBIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIICIjAN\nBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAgBJlFzYOw9sIs9CsVw127c0n00yt\nUINh4qogTQktZAnczomfzD2p7PbPwdzx07HWezcoEStH2jnGvDoZtF+mvX2do2NC\ntnbyqTsrkfjib9DsFiCQCT7i6HTJGLSR1GJk23+jBvGIGGqQIjy8/hPwhxR79uQf\njtTkUcYRZ0YIUcuGFFQ/vDP+fmyc/xadGL1RjjWmp2bIcmfbIWax1Jt4A8BQOujM\n8Ny8nkz+rwWWNR9XWrf/zvk9tyy29lTdyOcSOk2uTIq3XJq0tyA9yn8iNK5+O2hm\nAUTnAU5GU5szYPeUvlM3kHND8zLDU+/bqv50TmnHa4xgk97Exwzf4TKuzJM7UXiV\nZ4vuPVb+DNBpDxsP8yUmazNt925H+nND5X4OpWaxKXwyhGNVicQNwZNUMBkTrNN9\nN6frXTpsNVzbQdcS2qlJC9/YgIoJk2KOtWbPJYjNhLixP6Q5D9kCnusSTJV882sF\nqV4Wg8y4Z+LoE53MW4LTTLPtW//e5XOsIzstAL81VXQJSdhJWBp/kjbmUZIO8yZ9\nHE0XvMnsQybQv0FfQKlERPSZ51eHnlAfV1SoPv10Yy+xUGUJ5lhCLkMaTLTwJUdZ\n+gQek9QmRkpQgbLevni3/GcV4clXhB4PY9bpYrrWX1Uu6lzGKAgEJTm4Diup8kyX\nHAc/DVL17e8vgg8CAwEAAaOB9DCB8TAfBgNVHSMEGDAWgBStvZh6NLQm9/rEJlTv\nA73gJMtUGjAdBgNVHQ4EFgQUU3m/WqorSs9UgOHYm8Cd8rIDZsswDgYDVR0PAQH/\nBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wEQYDVR0gBAowCDAGBgRVHSAAMEQGA1Ud\nHwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwudXNlcnRydXN0LmNvbS9BZGRUcnVzdEV4\ndGVybmFsQ0FSb290LmNybDA1BggrBgEFBQcBAQQpMCcwJQYIKwYBBQUHMAGGGWh0\ndHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wDQYJKoZIhvcNAQEMBQADggEBAJNl9jeD\nlQ9ew4IcH9Z35zyKwKoJ8OkLJvHgwmp1ocd5yblSYMgpEg7wrQPWCcR23+WmgZWn\nRtqCV6mVksW2jwMibDN3wXsyF24HzloUQToFJBv2FAY7qCUkDrvMKnXduXBBP3zQ\nYzYhBx9G/2CkkeFnvN4ffhkUyWNnkepnB2u0j4vAbkN9w6GAbLIevFOFfdyQoaS8\nLe9Gclc1Bb+7RrtubTeZtv8jkpHGbkD4jylW6l/VXxRTrPBPYer3IsynVgviuDQf\nJtl7GQVoP7o81DgGotPmjw7jtHFtQELFhLRAlSv0ZaBIefYdgWOWnU914Ph85I6p\n0fKtirOMxyHNwu8=\n-----END CERTIFICATE-----\n";
    private static final boolean DEBUG = false;
    private static final String IMAGEBOT_SERVICE_URL = "https://chatbot.appinventor.mit.edu/image/v1";
    private static final String ISRG_ROOT_X1 = "-----BEGIN CERTIFICATE-----\nMIIFazCCA1OgAwIBAgIRAIIQz7DSQONZRGPgu2OCiwAwDQYJKoZIhvcNAQELBQAw\nTzELMAkGA1UEBhMCVVMxKTAnBgNVBAoTIEludGVybmV0IFNlY3VyaXR5IFJlc2Vh\ncmNoIEdyb3VwMRUwEwYDVQQDEwxJU1JHIFJvb3QgWDEwHhcNMTUwNjA0MTEwNDM4\nWhcNMzUwNjA0MTEwNDM4WjBPMQswCQYDVQQGEwJVUzEpMCcGA1UEChMgSW50ZXJu\nZXQgU2VjdXJpdHkgUmVzZWFyY2ggR3JvdXAxFTATBgNVBAMTDElTUkcgUm9vdCBY\nMTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAK3oJHP0FDfzm54rVygc\nh77ct984kIxuPOZXoHj3dcKi/vVqbvYATyjb3miGbESTtrFj/RQSa78f0uoxmyF+\n0TM8ukj13Xnfs7j/EvEhmkvBioZxaUpmZmyPfjxwv60pIgbz5MDmgK7iS4+3mX6U\nA5/TR5d8mUgjU+g4rk8Kb4Mu0UlXjIB0ttov0DiNewNwIRt18jA8+o+u3dpjq+sW\nT8KOEUt+zwvo/7V3LvSye0rgTBIlDHCNAymg4VMk7BPZ7hm/ELNKjD+Jo2FR3qyH\nB5T0Y3HsLuJvW5iB4YlcNHlsdu87kGJ55tukmi8mxdAQ4Q7e2RCOFvu396j3x+UC\nB5iPNgiV5+I3lg02dZ77DnKxHZu8A/lJBdiB3QW0KtZB6awBdpUKD9jf1b0SHzUv\nKBds0pjBqAlkd25HN7rOrFleaJ1/ctaJxQZBKT5ZPt0m9STJEadao0xAH0ahmbWn\nOlFuhjuefXKnEgV4We0+UXgVCwOPjdAvBbI+e0ocS3MFEvzG6uBQE3xDk3SzynTn\njh8BCNAw1FtxNrQHusEwMFxIt4I7mKZ9YIqioymCzLq9gwQbooMDQaHWBfEbwrbw\nqHyGO0aoSCqI3Haadr8faqU9GY/rOPNk3sgrDQoo//fb4hVC1CLQJ13hef4Y53CI\nrU7m2Ys6xt0nUW7/vGT1M0NPAgMBAAGjQjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNV\nHRMBAf8EBTADAQH/MB0GA1UdDgQWBBR5tFnme7bl5AFzgAiIyBpY9umbbjANBgkq\nhkiG9w0BAQsFAAOCAgEAVR9YqbyyqFDQDLHYGmkgJykIrGF1XIpu+ILlaS/V9lZL\nubhzEFnTIZd+50xx+7LSYK05qAvqFyFWhfFQDlnrzuBZ6brJFe+GnY+EgPbk6ZGQ\n3BebYhtF8GaV0nxvwuo77x/Py9auJ/GpsMiu/X1+mvoiBOv/2X/qkSsisRcOj/KK\nNFtY2PwByVS5uCbMiogziUwthDyC3+6WVwW6LLv3xLfHTjuCvjHIInNzktHCgKQ5\nORAzI4JMPJ+GslWYHb4phowim57iaztXOoJwTdwJx4nLCgdNbOhdjsnvzqvHu7Ur\nTkXWStAmzOVyyghqpZXjFaH3pO3JLF+l+/+sKAIuvtd7u+Nxe5AW0wdeRlN8NwdC\njNPElpzVmbUq4JUagEiuTDkHzsxHpFKVK7q4+63SM1N95R1NbdWhscdCb+ZAJzVc\noyi3B43njTOQ5yOf+1CceWxG1bQVs5ZufpsMljq4Ui0/1lvh+wjChP4kqKOJ2qxq\n4RgqsahDYVvTH9w7jXbyLeiNdd8XM2w9U/t7y0Ff/9yi0GE44Za4rF2LN9d11TPA\nmRGunUHBcnWEvgJBQl9nJEiU0Zsnvgc/ubhPgXRR4Xq37Z0j4r7g1SgEEzwxA57d\nemyPxgcYxn/eR44/KJ4EBs+lVDR3veyJm+kXQ99b21/+jh5Xos1AnX5iItreGCc=\n-----END CERTIFICATE-----\n";
    public static final String LOG_TAG = "ImageBot";
    private static final String MIT_CA = "-----BEGIN CERTIFICATE-----\nMIIFXjCCBEagAwIBAgIJAMLfrRWIaHLbMA0GCSqGSIb3DQEBCwUAMIHPMQswCQYD\nVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJyaWRnZTEuMCwGA1UE\nChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5vbG9neTEZMBcGA1UE\nCxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWREQiBDZXJ0aWZpY2F0\nZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkqhkiG9w0BCQEWC2pp\nc0BtaXQuZWR1MB4XDTE3MTIyMjIyMzkyOVoXDTI3MTIyMDIyMzkyOVowgc8xCzAJ\nBgNVBAYTAlVTMQswCQYDVQQIEwJNQTESMBAGA1UEBxMJQ2FtYnJpZGdlMS4wLAYD\nVQQKEyVNYXNzYWNodXNldHRzIEluc3RpdHV0ZSBvZiBUZWNobm9sb2d5MRkwFwYD\nVQQLExBNSVQgQXBwIEludmVudG9yMSYwJAYDVQQDEx1DbG91ZERCIENlcnRpZmlj\nYXRlIEF1dGhvcml0eTEQMA4GA1UEKRMHRWFzeVJTQTEaMBgGCSqGSIb3DQEJARYL\namlzQG1pdC5lZHUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDHzI3D\nFobNDv2HTWlDdedmbxZIJYSqWlzdRJC3oVJgCubdAs46WJRqUxDRWft9UpYGMKkw\nmYN8mdPby2m5OJagdVIZgnguB71zIQkC8yMzd94FC3gldX5m7R014D/0fkpzvsSt\n6fsNectJT0k7gPELOH6t4u6AUbvIsEX0nNyRWsmA/ucXCsDBwXyBJxfOKIQ9tDI4\n/WfcKk9JDpeMF7RP0CIOtlAPotKIaPoY1W3eMIi/0riOt5vTFsB8pxhxAVy0cfGX\niHukdrAkAJixTgkyS7wzk22xOeXVnRIzAMGK5xHMDw/HRQGTrUGfIXHENV3u+3Ae\nL5/ZoQwyZTixmQNzAgMBAAGjggE5MIIBNTAdBgNVHQ4EFgQUZfMKQXqtC5UJGFrZ\ngZE1nmlx+t8wggEEBgNVHSMEgfwwgfmAFGXzCkF6rQuVCRha2YGRNZ5pcfrfoYHV\npIHSMIHPMQswCQYDVQQGEwJVUzELMAkGA1UECBMCTUExEjAQBgNVBAcTCUNhbWJy\naWRnZTEuMCwGA1UEChMlTWFzc2FjaHVzZXR0cyBJbnN0aXR1dGUgb2YgVGVjaG5v\nbG9neTEZMBcGA1UECxMQTUlUIEFwcCBJbnZlbnRvcjEmMCQGA1UEAxMdQ2xvdWRE\nQiBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkxEDAOBgNVBCkTB0Vhc3lSU0ExGjAYBgkq\nhkiG9w0BCQEWC2ppc0BtaXQuZWR1ggkAwt+tFYhoctswDAYDVR0TBAUwAwEB/zAN\nBgkqhkiG9w0BAQsFAAOCAQEAIkKr3eIvwZO6a1Jsh3qXwveVnrqwxYvLw2IhTwNT\n/P6C5jbRnzUuDuzg5sEIpbBo/Bp3qIp7G5cdVOkIrqO7uCp6Kyc7d9lPsEe/cbF4\naNwNmdWroRN1y0tuMU6+z7frd5pOeAZP9E/DM/0Uaz4yVzwnlvZUttaLymyMhH54\nisGQKbAqHDFtKZvb6DxsHzrO2YgeaBAtjeVhPWiv8BhzbOo9+hhZvYHYtoM2W+Ze\nDHuvv0v+qouphftDKVBp16N8Pk5WgabTXzV6VcNee92iwbWYDEv06+S3AF/q2TBe\nxxXtAa5ywbp6IRF37QuQChcYnOx7zIylYI1PIENfQFC2BA==\n-----END CERTIFICATE-----\n";
    private String apiKey;
    private boolean invert;
    private int size;
    private SSLSocketFactory sslSockFactory;
    private String token;

    public ImageBot(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.apiKey = "";
        this.invert = true;
        this.size = 256;
    }

    @SimpleProperty(category = PropertyCategory.ADVANCED, description = "The MIT Access token to use. MIT App Inventor will automatically fill this value in. You should not need to change it.", userVisible = true)
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Token(String str) {
        this.token = str;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ApiKey(String str) {
        this.apiKey = str;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void InvertMask(boolean z) {
        this.invert = z;
    }

    @SimpleProperty
    public boolean InvertMask() {
        return this.invert;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @DesignerProperty(defaultValue = "256", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void Size(int i) {
        this.size = i;
    }

    @SimpleProperty
    public int Size() {
        return this.size;
    }

    @SimpleFunction
    public void CreateImage(final String str) {
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.ImageBot.1
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                ImageBot.this.doCreateImage(str);
            }
        });
    }

    @SimpleFunction
    public void EditImage(Object obj, final String str) {
        try {
            final Bitmap bitmapLoadImage = loadImage(obj);
            if (bitmapLoadImage != null) {
                AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.ImageBot.2
                    @Override // java.lang.Runnable
                    public void run() throws Throwable {
                        ImageBot.this.doEditImage(bitmapLoadImage, null, str);
                    }
                });
            } else {
                this.form.androidUIHandler.postDelayed(new Runnable() { // from class: com.google.appinventor.components.runtime.ImageBot.3
                    @Override // java.lang.Runnable
                    public void run() {
                        ImageBot.this.ErrorOccurred(-1, "Invalid input to EditImage");
                    }
                }, 0L);
                throw new StopBlocksExecution();
            }
        } catch (IOException e) {
            Log.e(LOG_TAG, "Unable to read source image", e);
        }
    }

    @SimpleFunction
    public void EditImageWithMask(Object obj, Object obj2, final String str) {
        try {
            final Bitmap bitmapLoadImage = loadImage(obj);
            final Bitmap bitmapLoadMask = loadMask(obj2);
            if (bitmapLoadImage != null && bitmapLoadMask != null) {
                AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.ImageBot.4
                    @Override // java.lang.Runnable
                    public void run() throws Throwable {
                        ImageBot.this.doEditImage(bitmapLoadImage, bitmapLoadMask, str);
                    }
                });
            }
        } catch (IOException e) {
            Log.e(LOG_TAG, "Unable to read source image", e);
        }
    }

    @SimpleEvent
    public void ImageCreated(String str) {
        EventDispatcher.dispatchEvent(this, "ImageCreated", str);
    }

    @SimpleEvent
    public void ImageEdited(String str) {
        EventDispatcher.dispatchEvent(this, "ImageEdited", str);
    }

    @SimpleEvent
    public void ErrorOccurred(int i, String str) {
        if (EventDispatcher.dispatchEvent(this, "ErrorOccurred", Integer.valueOf(i), str)) {
            return;
        }
        this.form.dispatchErrorOccurredEvent(this, "ErrorOccurred", ErrorMessages.ERROR_IMAGEBOT_ERROR, Integer.valueOf(i), str);
    }

    public static class ImageException extends Exception {
        private final int code;
        private final String description;

        public /* synthetic */ ImageException(int i, String str, IOException iOException) {
            this(i, str, (Throwable) iOException);
        }

        private ImageException(int i, String str, Throwable th) {
            super(th);
            this.code = i;
            this.description = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getResponseMessage() {
            return this.description;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getResponseCode() {
            return this.code;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doCreateImage(String str) throws Throwable {
        String strSubstring;
        try {
            String str2 = this.token;
            if (str2 != null && !str2.equals("") && this.token.charAt(0) == '%') {
                strSubstring = this.token.substring(1);
            } else {
                strSubstring = this.token;
            }
            ImageBotToken.request.Builder token = ImageBotToken.request.newBuilder().setToken(ImageBotToken.token.parseFrom(Base58Util.decode(strSubstring)));
            int i = this.size;
            StringBuilder sb = new StringBuilder();
            sb.append(i);
            ImageBotToken.request.Builder prompt = token.setSize(sb.toString()).setOperation(ImageBotToken.request.OperationType.CREATE).setPrompt(str);
            String str3 = this.apiKey;
            if (str3 != null && !str3.isEmpty()) {
                prompt = prompt.setApikey(this.apiKey);
            }
            try {
                final String strSendRequest = sendRequest(prompt.m204build());
                this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.ImageBot.5
                    @Override // java.lang.Runnable
                    public void run() {
                        ImageBot.this.ImageCreated(strSendRequest);
                    }
                });
            } catch (ImageException e) {
                Log.e(LOG_TAG, "Unable to create image", e);
                this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.ImageBot.6
                    @Override // java.lang.Runnable
                    public void run() {
                        ImageBot.this.ErrorOccurred(e.getResponseCode(), e.getResponseMessage());
                    }
                });
            }
        } catch (Exception e2) {
            Log.e(LOG_TAG, "Unable to create image", e2);
            this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.ImageBot.7
                @Override // java.lang.Runnable
                public void run() {
                    ImageBot.this.ErrorOccurred(404, e2.toString());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doEditImage(Bitmap bitmap, Bitmap bitmap2, String str) throws Throwable {
        ByteString byteStringCopyFrom;
        String strSubstring;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.PNG;
        bitmap.compress(compressFormat, 100, byteArrayOutputStream);
        ByteString byteStringCopyFrom2 = ByteString.copyFrom(byteArrayOutputStream.toByteArray());
        if (bitmap2 != null) {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            bitmap2.compress(compressFormat, 100, byteArrayOutputStream2);
            byteStringCopyFrom = ByteString.copyFrom(byteArrayOutputStream2.toByteArray());
        } else {
            byteStringCopyFrom = null;
        }
        String str2 = this.token;
        if (str2 != null && !str2.equals("") && this.token.charAt(0) == '%') {
            strSubstring = this.token.substring(1);
        } else {
            strSubstring = this.token;
        }
        try {
            ImageBotToken.request.Builder operation = ImageBotToken.request.newBuilder().setToken(ImageBotToken.token.parseFrom(Base58Util.decode(strSubstring))).setSource(byteStringCopyFrom2).setOperation(ImageBotToken.request.OperationType.EDIT);
            int i = this.size;
            StringBuilder sb = new StringBuilder();
            sb.append(i);
            ImageBotToken.request.Builder prompt = operation.setSize(sb.toString()).setPrompt(str);
            String str3 = this.apiKey;
            if (str3 != null && !str3.isEmpty()) {
                prompt = prompt.setApikey(this.apiKey);
            }
            if (byteStringCopyFrom != null) {
                prompt.setMask(byteStringCopyFrom);
            }
            try {
                final String strSendRequest = sendRequest(prompt.m204build());
                this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.ImageBot.9
                    @Override // java.lang.Runnable
                    public void run() {
                        ImageBot.this.ImageEdited(strSendRequest);
                    }
                });
            } catch (ImageException e) {
                Log.e(LOG_TAG, "Unable to edit image", e);
                this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.ImageBot.10
                    @Override // java.lang.Runnable
                    public void run() {
                        ImageBot.this.ErrorOccurred(e.getResponseCode(), e.getResponseMessage());
                    }
                });
            }
        } catch (IOException unused) {
            this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.ImageBot.8
                @Override // java.lang.Runnable
                public void run() {
                    ImageBot.this.ErrorOccurred(ErrorMessages.ERROR_NXT_INVALID_RETURN_PACKAGE, "Invalid Token");
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.io.IOException] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    private String sendRequest(ImageBotToken.request requestVar) throws Throwable {
        ensureSslSockFactory();
        ?? r0 = 0;
        r0 = 0;
        int i = -1;
        try {
            try {
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(IMAGEBOT_SERVICE_URL).openConnection();
                if (httpsURLConnection != null) {
                    try {
                        httpsURLConnection.setSSLSocketFactory(this.sslSockFactory);
                        httpsURLConnection.setRequestMethod("POST");
                        httpsURLConnection.setDoOutput(true);
                        requestVar.writeTo(httpsURLConnection.getOutputStream());
                        int responseCode = httpsURLConnection.getResponseCode();
                        if (responseCode == 200) {
                            byte[] byteArray = ImageBotToken.response.parseFrom(httpsURLConnection.getInputStream()).getImage().toByteArray();
                            java.io.File outputFile = getOutputFile();
                            FileOutputStream fileOutputStream = new FileOutputStream(outputFile);
                            try {
                                fileOutputStream.write(byteArray);
                                fileOutputStream.flush();
                                fileOutputStream.close();
                                String string = Uri.fromFile(outputFile).toString();
                                httpsURLConnection.disconnect();
                                return string;
                            } catch (Throwable th) {
                                fileOutputStream.close();
                                throw th;
                            }
                        }
                        throw new ImageException(responseCode, IOUtils.readStreamAsString(httpsURLConnection.getErrorStream()), (IOException) r0);
                    } catch (IOException e) {
                        e = e;
                        r0 = httpsURLConnection;
                        Log.e(LOG_TAG, "Got an IOException", e);
                        throw new ImageException(i, e.toString(), e);
                    } catch (Throwable th2) {
                        th = th2;
                        r0 = httpsURLConnection;
                        if (r0 != 0) {
                            r0.disconnect();
                        }
                        throw th;
                    }
                }
                if (httpsURLConnection != null) {
                    httpsURLConnection.disconnect();
                }
                throw new ImageException(404, "Could not connect to proxy server", (IOException) r0);
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private Bitmap loadImage(Object obj) throws IOException {
        Bitmap bitmap;
        Log.d(LOG_TAG, "loadImage source = " + obj);
        if (obj instanceof Canvas) {
            bitmap = ((Canvas) obj).getBitmap();
        } else if (obj instanceof Image) {
            bitmap = ((BitmapDrawable) ((Image) obj).getView().getBackground()).getBitmap();
        } else {
            bitmap = MediaUtil.getBitmapDrawable(this.form, obj.toString()).getBitmap();
        }
        if (bitmap == null) {
            return bitmap;
        }
        if (bitmap.getWidth() == this.size && bitmap.getHeight() == this.size) {
            return bitmap;
        }
        int i = this.size;
        return Bitmap.createScaledBitmap(bitmap, i, i, false);
    }

    private Bitmap loadMask(Object obj) throws IOException {
        Bitmap bitmapLoadImage = loadImage(obj);
        if (!this.invert) {
            return bitmapLoadImage;
        }
        ColorMatrixColorFilter colorMatrixColorFilter = new ColorMatrixColorFilter(new ColorMatrix(new float[]{0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, -1.0f, 255.0f}));
        Paint paint = new Paint();
        paint.setColorFilter(colorMatrixColorFilter);
        int i = this.size;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
        new android.graphics.Canvas(bitmapCreateBitmap).drawBitmap(bitmapLoadImage, 0.0f, 0.0f, paint);
        return bitmapCreateBitmap;
    }

    private java.io.File getOutputFile() throws IOException {
        Form form = this.form;
        String strResolveFileName = FileUtil.resolveFileName(form, "", form.DefaultFileScope());
        if (strResolveFileName.startsWith("file://")) {
            strResolveFileName = strResolveFileName.substring(7);
        } else if (strResolveFileName.startsWith("file:")) {
            strResolveFileName = strResolveFileName.substring(5);
        }
        String str = LOG_TAG;
        Log.d(str, "tempdir = " + strResolveFileName);
        java.io.File fileCreateTempFile = java.io.File.createTempFile("ImageBot", ".png", new java.io.File(strResolveFileName));
        Log.d(str, "outfile = " + fileCreateTempFile);
        return fileCreateTempFile;
    }

    private synchronized void ensureSslSockFactory() {
        try {
            if (this.sslSockFactory == null) {
                try {
                    CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                    Charset charset = StandardCharsets.UTF_8;
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(COMODO_ROOT.getBytes(charset));
                    Certificate certificateGenerateCertificate = certificateFactory.generateCertificate(byteArrayInputStream);
                    byteArrayInputStream.close();
                    ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(COMODO_USRTRUST.getBytes(charset));
                    Certificate certificateGenerateCertificate2 = certificateFactory.generateCertificate(byteArrayInputStream2);
                    byteArrayInputStream2.close();
                    ByteArrayInputStream byteArrayInputStream3 = new ByteArrayInputStream(MIT_CA.getBytes(charset));
                    Certificate certificateGenerateCertificate3 = certificateFactory.generateCertificate(byteArrayInputStream3);
                    byteArrayInputStream3.close();
                    ByteArrayInputStream byteArrayInputStream4 = new ByteArrayInputStream(ISRG_ROOT_X1.getBytes(charset));
                    Certificate certificateGenerateCertificate4 = certificateFactory.generateCertificate(byteArrayInputStream4);
                    byteArrayInputStream4.close();
                    KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
                    keyStore.load(null, null);
                    int i = 1;
                    for (X509Certificate x509Certificate : getSystemCertificates()) {
                        keyStore.setCertificateEntry("root" + i, x509Certificate);
                        i++;
                    }
                    keyStore.setCertificateEntry("comodo", certificateGenerateCertificate);
                    keyStore.setCertificateEntry("inter", certificateGenerateCertificate2);
                    keyStore.setCertificateEntry("mitca", certificateGenerateCertificate3);
                    keyStore.setCertificateEntry("isrg", certificateGenerateCertificate4);
                    TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                    trustManagerFactory.init(keyStore);
                    SSLContext sSLContext = SSLContext.getInstance("TLS");
                    sSLContext.init(null, trustManagerFactory.getTrustManagers(), null);
                    this.sslSockFactory = sSLContext.getSocketFactory();
                } catch (Exception e) {
                    Log.e(LOG_TAG, "Could not setup SSL Trust Store for ImageBot", e);
                    throw new YailRuntimeError("Could Not setup SSL Trust Store for ImageBot: ", e.getMessage());
                }
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
}
