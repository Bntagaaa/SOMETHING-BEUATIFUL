package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Environment;
import android.os.IBinder;
import android.util.Log;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.runtime.util.SensorDbUtil;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import edu.mit.media.funf.FunfManager;
import edu.mit.media.funf.json.IJsonObject;
import edu.mit.media.funf.storage.NameValueDatabaseService;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Locale;

@UsesPermissions(permissionNames = "android.permission.WRITE_EXTERNAL_STORAGE, android.permission.ACCESS_NETWORK_STATE, android.permission.WAKE_LOCK, android.permission.VIBRATE, android.permission.INTERNET")
@UsesLibraries(libraries = "funf.jar")
@SimpleObject
/* loaded from: classes.dex */
public abstract class ProbeBase extends AndroidNonvisibleComponent implements SensorComponent, OnDestroyListener {
    public static final String PASSWORD_KEY = "PASSWORD";
    public static final String PROBE_BASE_NAME = SensorDbUtil.DB_NAME;
    private static final int PROBE_NOTIFICATION_MIN_ID = 8888;
    private static int probeCounter;
    private final int PROBE_NOTIFICATION_ID;
    private final String TAG;
    private Calendar calendar;
    protected int duration;
    protected boolean enabled;
    protected boolean enabledSaveToDB;
    protected boolean enabledSchedule;
    private String exportFormat;
    private String exportPath;
    protected Gson gson;
    protected int interval;
    private BigDecimal localOffsetSeconds;
    protected FunfManager mBoundFunfManager;
    private ServiceConnection mConnection;
    private PendingIntent mContentIntent;
    protected boolean mIsBound;
    private NotificationManager mNM;
    protected Activity mainUIThreadActivity;
    private Notification notification;
    boolean privacySafe;

    public abstract void Enabled(boolean z);

    public abstract void registerDataRequest(int i, int i2);

    public abstract void unregisterDataRequest();

    private static int getNotificationID() {
        int i = probeCounter;
        probeCounter = i + 1;
        return i + 8889;
    }

    public ProbeBase(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.enabled = false;
        this.enabledSchedule = false;
        this.privacySafe = false;
        this.TAG = "ProbeBase";
        this.mBoundFunfManager = null;
        this.mIsBound = false;
        this.enabledSaveToDB = false;
        this.calendar = Calendar.getInstance(Locale.getDefault());
        this.localOffsetSeconds = BigDecimal.valueOf(this.calendar.get(16) + r0.get(15), -3);
        this.mConnection = new ServiceConnection() { // from class: com.google.appinventor.components.runtime.ProbeBase.1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                ProbeBase.this.mBoundFunfManager = ((FunfManager.LocalBinder) iBinder).getManager();
                Log.i("ProbeBase", "Bound to FunfManager");
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                ProbeBase.this.mBoundFunfManager = null;
                Log.i("ProbeBase", "Unbind FunfManager");
            }
        };
        this.form.registerForOnDestroy(this);
        this.mainUIThreadActivity = componentContainer.$context();
        this.mainUIThreadActivity.startService(new Intent(this.mainUIThreadActivity, (Class<?>) FunfManager.class));
        doBindService();
        this.PROBE_NOTIFICATION_ID = getNotificationID();
        this.mNM = (NotificationManager) this.mainUIThreadActivity.getSystemService("notification");
        Log.i("ProbeBase", "created notification manager");
        this.exportPath = new java.io.File(Environment.getExternalStorageDirectory(), this.form.getPackageName()) + java.io.File.separator + "export";
        this.exportFormat = "csv";
    }

    public void doBindService() {
        this.mainUIThreadActivity.bindService(new Intent(this.mainUIThreadActivity, (Class<?>) FunfManager.class), this.mConnection, 1);
        this.mIsBound = true;
        Log.i("ProbeBase", "FunfManager is bound, and now we could have register dataRequests");
    }

    public void doUnbindService() {
        if (this.mIsBound) {
            unregisterDataRequest();
            this.mainUIThreadActivity.unbindService(this.mConnection);
            this.mIsBound = false;
        }
    }

    public JsonElement getDataRequest(int i, int i2, String str) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("@type", str);
        JsonObject jsonObject2 = new JsonObject();
        Boolean bool = Boolean.TRUE;
        jsonObject2.addProperty("strict", bool);
        jsonObject2.addProperty("interval", Integer.valueOf(i));
        jsonObject2.addProperty("duration", Integer.valueOf(i2));
        jsonObject2.addProperty("opportunistic", bool);
        jsonObject.add("@schedule", jsonObject2);
        return jsonObject;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean Enabled() {
        return this.enabled;
    }

    @Override // com.google.appinventor.components.runtime.OnDestroyListener
    public void onDestroy() {
        doUnbindService();
    }

    public static SharedPreferences getSystemPrefs(Context context) {
        return context.getSharedPreferences(ProbeBase.class.getName().concat("_system"), 0);
    }

    public void saveToDB(IJsonObject iJsonObject, IJsonObject iJsonObject2) {
        Log.i("ProbeBase", "Writing data: " + iJsonObject + ": " + iJsonObject2.toString());
        JsonObject asJsonObject = iJsonObject2.getAsJsonObject();
        asJsonObject.add("probe", iJsonObject.get("@type"));
        asJsonObject.add("timezoneOffset", new JsonPrimitive(this.localOffsetSeconds));
        long asLong = iJsonObject2.get("timestamp").getAsLong();
        String asString = iJsonObject.get("@type").getAsString();
        Bundle bundle = new Bundle();
        bundle.putString("DATABASE_NAME", PROBE_BASE_NAME);
        bundle.putLong("TIMESTAMP", asLong);
        bundle.putString("NAME", asString);
        bundle.putString("VALUE", asJsonObject.toString());
        Intent intent = new Intent((Context) this.mBoundFunfManager, (Class<?>) NameValueDatabaseService.class);
        intent.setAction("edu.mit.media.funf.RECORD");
        intent.putExtras(bundle);
        this.mBoundFunfManager.startService(intent);
    }

    public boolean EnabledSaveToDB() {
        return this.enabledSaveToDB;
    }
}
