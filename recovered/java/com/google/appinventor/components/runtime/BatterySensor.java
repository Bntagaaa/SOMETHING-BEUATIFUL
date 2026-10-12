package com.google.appinventor.components.runtime;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import edu.mit.media.funf.FunfManager;
import edu.mit.media.funf.json.IJsonObject;
import edu.mit.media.funf.probe.Probe;
import edu.mit.media.funf.probe.builtin.BatteryProbe;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.BATTERY_STATS")
@DesignerComponent(category = ComponentCategory.INTERNAL, description = "Information about the type and current state of the battery in the device. ", iconName = "images/niotronBatteryTools.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "funf.jar")
/* loaded from: classes.dex */
public class BatterySensor extends ProbeBase {
    private final String BATTERYSENSOR_PROBE;
    private final int SCHEDULE_DURATION;
    private final int SCHEDULE_INTERVAL;
    private final String TAG;
    private int level;
    private Probe.DataListener listener;
    final Handler myHandler;
    private BatteryProbe probe;
    private int scale;
    private long timestamp;

    public BatterySensor(ComponentContainer componentContainer) {
        super(componentContainer);
        this.TAG = "BatterySensor";
        this.BATTERYSENSOR_PROBE = "edu.mit.media.funf.probe.builtin.BatteryProbe";
        this.SCHEDULE_INTERVAL = 900;
        this.SCHEDULE_DURATION = 15;
        this.listener = new Probe.DataListener() { // from class: com.google.appinventor.components.runtime.BatterySensor.1
            public void onDataCompleted(IJsonObject iJsonObject, JsonElement jsonElement) {
            }

            public void onDataReceived(IJsonObject iJsonObject, IJsonObject iJsonObject2) {
                Log.i("BatterySensor", "receive data of battery info");
                _COROUTINE.a.C("DATA: ", iJsonObject2.toString(), "BatterySensor");
                BatterySensor batterySensor = BatterySensor.this;
                if (batterySensor.enabledSaveToDB) {
                    batterySensor.saveToDB(iJsonObject, iJsonObject2);
                }
                Message messageObtainMessage = BatterySensor.this.myHandler.obtainMessage();
                messageObtainMessage.obj = iJsonObject2;
                BatterySensor.this.myHandler.sendMessage(messageObtainMessage);
            }
        };
        this.myHandler = new Handler() { // from class: com.google.appinventor.components.runtime.BatterySensor.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                IJsonObject iJsonObject = (IJsonObject) message.obj;
                Log.i("BatterySensor", "Update component's varibles.....");
                BatterySensor.this.timestamp = iJsonObject.get("timestamp").getAsLong();
                BatterySensor.this.scale = iJsonObject.get("scale").getAsInt();
                BatterySensor.this.level = iJsonObject.get("level").getAsInt();
                Log.i("BatterySensor", " before call BatteryInfoReceived()");
                BatterySensor batterySensor = BatterySensor.this;
                batterySensor.BatteryInfoReceived(batterySensor.timestamp, BatterySensor.this.scale, BatterySensor.this.level);
                Log.i("BatterySensor", " after call BatteryInfoReceived()");
            }
        };
        this.form.registerForOnDestroy(this);
        this.mainUIThreadActivity = componentContainer.$context();
        Log.i("BatterySensor", "Before create probe");
        this.gson = new GsonBuilder().registerTypeAdapterFactory(FunfManager.getProbeFactory(this.mainUIThreadActivity)).create();
        this.probe = (BatteryProbe) this.gson.fromJson(new JsonObject(), BatteryProbe.class);
        this.interval = 900;
        this.duration = 15;
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    @SimpleFunction(description = "Enable battery sensor to run once")
    public void Enabled(boolean z) {
        if (this.enabled != z) {
            this.enabled = z;
        }
        if (z) {
            this.probe.registerListener(new Probe.DataListener[]{this.listener});
            Log.i("BatterySensor", "register listener for run-once");
        } else {
            this.probe.unregisterListener(new Probe.DataListener[]{this.listener});
            Log.i("BatterySensor", "unregister run-once listener");
        }
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    public void unregisterDataRequest() {
        Log.i("BatterySensor", "Unregistering data requests.");
        this.mBoundFunfManager.unrequestAllData2(this.listener);
        Log.i("BatterySensor", "After Unregistering data requests.");
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    public void registerDataRequest(int i, int i2) {
        Log.i("BatterySensor", "Registering data requests.");
        JsonElement dataRequest = getDataRequest(i, i2, "edu.mit.media.funf.probe.builtin.BatteryProbe");
        _COROUTINE.a.C("Data request: ", dataRequest.toString(), "BatterySensor");
        this.mBoundFunfManager.requestData(this.listener, dataRequest);
    }

    @SimpleEvent
    public void BatteryInfoReceived(final long j, final int i, final int i2) {
        if (this.enabled || this.enabledSchedule) {
            this.mainUIThreadActivity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.BatterySensor.3
                @Override // java.lang.Runnable
                public void run() {
                    Log.i("BatterySensor", "BatteryInfoReceived() is called");
                    EventDispatcher.dispatchEvent(BatterySensor.this, "BatteryInfoReceived", Long.valueOf(j), Integer.valueOf(i), Integer.valueOf(i2));
                }
            });
        }
    }

    @SimpleProperty(description = "the current battery level of the device")
    public int Level() {
        Log.i("BatterySensor", "returning level: " + this.level);
        return this.level;
    }

    @SimpleProperty(description = "The timestamp of this sensor event.")
    public float Timestamp() {
        Log.i("BatterySensor", "returning timestamp: " + this.timestamp);
        return this.timestamp;
    }

    @SimpleProperty(description = "Battery SCALE, integer containing the maximum battery level")
    public int Scale() {
        Log.i("BatterySensor", "returning bettery scale: " + this.scale);
        return this.scale;
    }
}
