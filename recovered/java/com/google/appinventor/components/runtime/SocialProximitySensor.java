package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.app.NotificationManager;
import android.bluetooth.BluetoothAdapter;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.BluetoothReflection;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import edu.mit.media.funf.FunfManager;
import edu.mit.media.funf.json.IJsonObject;
import edu.mit.media.funf.probe.Probe;
import edu.mit.media.funf.probe.builtin.BluetoothProbe;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.WAKE_LOCK, android.permission.BLUETOOTH, android.permission.BLUETOOTH_ADMIN")
@DesignerComponent(category = ComponentCategory.INTERNAL, description = "A component that detects whether the Bluetooth-enabled device owned by a friend is close by or not.", iconName = "images/social_proximity_sensor.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "funf.jar")
/* loaded from: classes.dex */
public class SocialProximitySensor extends ProbeBase {
    private static final int REQUEST_ENABLE_BT = 1001;
    private final String BLUETOOTH_PROBE;
    private final int PROBE_SCHEDULE_NOTIFICATION;
    private final int SCHEDULE_DURATION;
    private final int SCHEDULE_INTERVAL;
    private final String TAG;
    private BluetoothAdapter bluetoothAdapter;
    private String deviceName;
    private int duration;
    private boolean enabled;
    private boolean enabledSchedule;
    private Gson gson;
    private int interval;
    boolean isScanningForFirstTime;
    private Probe.DataListener listener;
    private int mClass;
    private NotificationManager mNM;
    private String macAddress;
    private Activity mainUIThreadActivity;
    final Handler myHandler;
    private BluetoothProbe probe;
    private int rssi;
    private float timestamp;

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean EnabledSchedule() {
        return this.enabledSchedule;
    }

    @SimpleFunction(description = "Enable proximity sensor periodically")
    public void EnabledSchedule(boolean z) {
        checkBluetoothAvailabiblity();
        if (this.enabledSchedule != z) {
            this.enabledSchedule = z;
        }
        if (z) {
            registerDataRequest(this.interval, this.duration);
        } else {
            unregisterDataRequest();
        }
    }

    private void checkBluetoothAvailabiblity() {
        BluetoothAdapter bluetoothAdapter = (BluetoothAdapter) BluetoothReflection.getBluetoothAdapter();
        this.bluetoothAdapter = bluetoothAdapter;
        if (bluetoothAdapter == null) {
            this.form.dispatchErrorOccurredEvent(this, "checkBluetoothAvailabiblity", ErrorMessages.ERROR_BLUETOOTH_NOT_AVAILABLE, new Object[0]);
        }
    }

    @SimpleFunction(description = "Enabling discoverability. If set, the device will be discoverable for a period of time as specified in the variable \"seconds\". Note that if set seconds to be 0, the device will be discoverable forever.")
    public void SetDiscoverable(int i) {
        checkBluetoothAvailabiblity();
        if (!this.bluetoothAdapter.enable()) {
            Log.i("BluetoothSensor", "Bluetooth is not enabled, request to turn on Bluetooth");
            this.form.startActivityForResult(new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"), 1001);
        }
        Intent intent = new Intent("android.bluetooth.adapter.action.REQUEST_DISCOVERABLE");
        intent.putExtra("android.bluetooth.adapter.extra.DISCOVERABLE_DURATION", i);
        this.form.startActivity(intent);
        Log.i("BluetoothSensor", "Set discoverability to:" + i + "seconds");
    }

    private JsonElement getDataRequest(int i, int i2) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("@type", "edu.mit.media.funf.probe.builtin.BluetoothProbe");
        jsonObject.addProperty("maxScanTime", 40);
        JsonObject jsonObject2 = new JsonObject();
        Boolean bool = Boolean.TRUE;
        jsonObject2.addProperty("strict", bool);
        jsonObject2.addProperty("interval", Integer.valueOf(i));
        jsonObject2.addProperty("duration", Integer.valueOf(i2));
        jsonObject2.addProperty("opportunistic", bool);
        jsonObject.add("@schedule", jsonObject2);
        return jsonObject;
    }

    public SocialProximitySensor(ComponentContainer componentContainer) {
        super(componentContainer);
        this.BLUETOOTH_PROBE = "edu.mit.media.funf.probe.builtin.BluetoothProbe";
        this.PROBE_SCHEDULE_NOTIFICATION = 1337;
        this.isScanningForFirstTime = true;
        this.TAG = "BluetoothSensor";
        this.SCHEDULE_INTERVAL = 60;
        this.SCHEDULE_DURATION = 30;
        this.myHandler = new Handler() { // from class: com.google.appinventor.components.runtime.SocialProximitySensor.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                IJsonObject iJsonObject = (IJsonObject) message.obj;
                Log.i("BluetoothSensor", "Update component's varibles.....");
                SocialProximitySensor.this.macAddress = iJsonObject.get("android.bluetooth.device.extra.DEVICE").get("mAddress") != null ? iJsonObject.get("android.bluetooth.device.extra.DEVICE").get("mAddress").getAsString() : "";
                SocialProximitySensor.this.mClass = iJsonObject.get("android.bluetooth.device.extra.CLASS").get("mClass") != null ? iJsonObject.get("android.bluetooth.device.extra.CLASS").get("mClass").getAsInt() : 0;
                SocialProximitySensor.this.deviceName = iJsonObject.get("android.bluetooth.device.extra.NAME").getAsString();
                SocialProximitySensor.this.rssi = iJsonObject.get("android.bluetooth.device.extra.RSSI").getAsInt();
                SocialProximitySensor.this.timestamp = iJsonObject.get("timestamp").getAsLong();
                SocialProximitySensor socialProximitySensor = SocialProximitySensor.this;
                socialProximitySensor.SocialProximityInfoReceived(socialProximitySensor.timestamp, SocialProximitySensor.this.deviceName, SocialProximitySensor.this.macAddress, SocialProximitySensor.this.rssi, SocialProximitySensor.this.mClass);
            }
        };
        this.listener = new Probe.DataListener() { // from class: com.google.appinventor.components.runtime.SocialProximitySensor.2
            public void onDataCompleted(IJsonObject iJsonObject, JsonElement jsonElement) {
                Log.i("BluetoothSensor", " before call SocialProximityScanComplete()");
                SocialProximitySensor.this.SocialProximityScanComplete();
            }

            public void onDataReceived(IJsonObject iJsonObject, IJsonObject iJsonObject2) {
                Log.i("BluetoothSensor", "received Bluetooth sensor info");
                Log.i("BluetoothSensor", "data: " + iJsonObject2);
                SocialProximitySensor socialProximitySensor = SocialProximitySensor.this;
                if (socialProximitySensor.enabledSaveToDB) {
                    socialProximitySensor.saveToDB(iJsonObject, iJsonObject2);
                }
                Message messageObtainMessage = SocialProximitySensor.this.myHandler.obtainMessage();
                messageObtainMessage.obj = iJsonObject2;
                SocialProximitySensor.this.myHandler.sendMessage(messageObtainMessage);
            }
        };
        this.form.registerForOnDestroy(this);
        this.mainUIThreadActivity = componentContainer.$context();
        this.gson = new GsonBuilder().registerTypeAdapterFactory(FunfManager.getProbeFactory(this.mainUIThreadActivity)).create();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("sensorDelay", "NORMAL");
        this.probe = (BluetoothProbe) this.gson.fromJson(jsonObject, BluetoothProbe.class);
        Log.i("BluetoothSensor", "Probe created");
        this.interval = 60;
        this.duration = 30;
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean Enabled() {
        return this.enabled;
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    @SimpleFunction(description = "Enable social proximity sensor to run once")
    public void Enabled(boolean z) {
        checkBluetoothAvailabiblity();
        if (this.enabled != z) {
            this.enabled = z;
        }
        if (z) {
            this.probe.registerListener(new Probe.DataListener[]{this.listener});
            Log.i("BluetoothSensor", "register listener for run-once");
        } else {
            this.probe.unregisterListener(new Probe.DataListener[]{this.listener});
            Log.i("BluetoothSensor", "unregister run-once listener");
        }
    }

    @SimpleEvent
    public void SocialProximityInfoReceived(final float f, final String str, final String str2, final int i, final int i2) {
        if (this.enabled || this.enabledSchedule) {
            this.mainUIThreadActivity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.SocialProximitySensor.3
                @Override // java.lang.Runnable
                public void run() {
                    Log.i("BluetoothSensor", "SocialProximityInfoReceived() is called");
                    EventDispatcher.dispatchEvent(SocialProximitySensor.this, "SocialProximityInfoReceived", Float.valueOf(f), str, str2, Integer.valueOf(i), Integer.valueOf(i2));
                }
            });
        }
    }

    @SimpleEvent
    public void SocialProximityScanComplete() {
        if (this.enabled || this.enabledSchedule) {
            this.mainUIThreadActivity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.SocialProximitySensor.4
                @Override // java.lang.Runnable
                public void run() {
                    Log.i("BluetoothSensor", "SocialProximityScanComplete() is called");
                    EventDispatcher.dispatchEvent(SocialProximitySensor.this, "SocialProximityScanComplete", new Object[0]);
                }
            });
        }
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    public void unregisterDataRequest() {
        Log.i("BluetoothSensor", "Unregistering data requests.");
        this.mBoundFunfManager.unrequestAllData2(this.listener);
        Log.i("BluetoothSensor", "After Unregistering data requests.");
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    public void registerDataRequest(int i, int i2) {
        Log.i("BluetoothSensor", "Registering data requests.");
        JsonElement dataRequest = getDataRequest(i, i2);
        _COROUTINE.a.C("Data request: ", dataRequest.toString(), "BluetoothSensor");
        this.mBoundFunfManager.requestData(this.listener, dataRequest);
    }

    @SimpleFunction(description = "Overwrite your own device name (Bluetooth)")
    public void setOwnDeviceName(String str) {
        checkBluetoothAvailabiblity();
        Log.i("BluetoothSensor", "localdevicename before : " + this.bluetoothAdapter.getName() + " localdeviceAddress : " + this.bluetoothAdapter.getAddress());
        this.bluetoothAdapter.setName(str);
        Log.i("BluetoothSensor", "localdevicename after: " + this.bluetoothAdapter.getName() + " localdeviceAddress : " + this.bluetoothAdapter.getAddress());
    }

    @SimpleFunction(description = "Get your own device name (Bluetooth)")
    public String getOwnDeviceName() {
        checkBluetoothAvailabiblity();
        return this.bluetoothAdapter.getName();
    }
}
