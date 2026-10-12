package com.google.appinventor.components.runtime;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import edu.mit.media.funf.FunfManager;
import edu.mit.media.funf.json.IJsonObject;
import edu.mit.media.funf.probe.Probe;
import edu.mit.media.funf.probe.builtin.PedometerProbe;

@DesignerComponent(category = ComponentCategory.INTERNAL, description = "Detect people's walking activity. The sensor will output a stream of \"step\" events when a person starts walking. To continously detect whether a person is walking and keep track of how manysteps he walks, one could set \"interval\"= duration + 1. There are 9 different sensitivities for detecting walking step, including \"extra high\", \"very high\", \"high\", \"higher\", \"medium\", \"lower\", \"low\", \"very low\", \"extra low\". ", iconName = "images/pedometer_sensor.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "funf.jar")
@SimpleObject
/* loaded from: classes.dex */
public class PedometerSensor extends ProbeBase {
    private final String PEDOMETER_PROBE;
    private final int SCHEDULE_DURATION;
    private final int SCHEDULE_INTERVAL;
    private final String SENSITIVITY_LEVEL;
    private final String TAG;
    private Probe.DataListener listener;
    final Handler myHandler;
    private PedometerProbe probe;
    private String sensitivityLevel;
    private long timestamp;

    @SimpleProperty(description = "The default duration (in seconds) of each scan for this probe")
    public float DefaultDuration() {
        return 15.0f;
    }

    @SimpleProperty(description = "The default interval (in seconds) between each scan for this probe")
    public float DefaultInterval() {
        return 120.0f;
    }

    public PedometerSensor(ComponentContainer componentContainer) {
        super(componentContainer);
        this.TAG = "PedometerSensor";
        this.PEDOMETER_PROBE = "edu.mit.media.funf.probe.builtin.PedometerProbe";
        this.SCHEDULE_INTERVAL = 120;
        this.SCHEDULE_DURATION = 15;
        this.SENSITIVITY_LEVEL = "low";
        this.listener = new Probe.DataListener() { // from class: com.google.appinventor.components.runtime.PedometerSensor.1
            public void onDataCompleted(IJsonObject iJsonObject, JsonElement jsonElement) {
                PedometerSensor.this.PedometerScanComplete();
            }

            public void onDataReceived(IJsonObject iJsonObject, IJsonObject iJsonObject2) {
                Log.i("PedometerSensor", "receive pedometer data");
                Log.i("PedometerSensor", "timestamp:" + iJsonObject2.get("timestamp").getAsLong());
                Log.i("PedometerSensor", "rawVal:" + iJsonObject2.get("rawValue").getAsFloat());
                PedometerSensor pedometerSensor = PedometerSensor.this;
                if (pedometerSensor.enabledSaveToDB) {
                    pedometerSensor.saveToDB(iJsonObject, iJsonObject2);
                }
                Message messageObtainMessage = PedometerSensor.this.myHandler.obtainMessage();
                messageObtainMessage.obj = iJsonObject2;
                PedometerSensor.this.myHandler.sendMessage(messageObtainMessage);
            }
        };
        this.myHandler = new Handler() { // from class: com.google.appinventor.components.runtime.PedometerSensor.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                IJsonObject iJsonObject = (IJsonObject) message.obj;
                Log.i("PedometerSensor", "Update component's varibles.....");
                PedometerSensor.this.timestamp = iJsonObject.get("timestamp").getAsLong();
                Log.i("PedometerSensor", " before call PedometerInfoReceived()");
                PedometerSensor pedometerSensor = PedometerSensor.this;
                pedometerSensor.PedometerInfoReceived(pedometerSensor.timestamp);
                Log.i("PedometerSensor", " after call PedometerInfoReceived()");
            }
        };
        this.form.registerForOnDestroy(this);
        this.mainUIThreadActivity = componentContainer.$context();
        Log.i("PedometerSensor", "Before create probe");
        this.gson = new GsonBuilder().registerTypeAdapterFactory(FunfManager.getProbeFactory(this.mainUIThreadActivity)).create();
        this.probe = (PedometerProbe) this.gson.fromJson(new JsonObject(), PedometerProbe.class);
        this.interval = 120;
        this.duration = 15;
        this.sensitivityLevel = "low";
    }

    @SimpleEvent
    public void PedometerInfoReceived(final long j) {
        if (this.enabled || this.enabledSchedule) {
            this.mainUIThreadActivity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.PedometerSensor.3
                @Override // java.lang.Runnable
                public void run() {
                    Log.i("PedometerSensor", "PedometerInfoReceived() is called");
                    EventDispatcher.dispatchEvent(PedometerSensor.this, "PedometerInfoReceived", Long.valueOf(j));
                }
            });
        }
    }

    @SimpleEvent
    public void PedometerScanComplete() {
        if (this.enabled || this.enabledSchedule) {
            this.mainUIThreadActivity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.PedometerSensor.4
                @Override // java.lang.Runnable
                public void run() {
                    Log.i("PedometerSensor", "PedometerScanComplete() is called");
                    EventDispatcher.dispatchEvent(PedometerSensor.this, "PedometerScanComplete", new Object[0]);
                }
            });
        }
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    @SimpleFunction(description = "Enable pedometer sensor to run once")
    public void Enabled(boolean z) {
        if (this.enabled != z) {
            this.enabled = z;
        }
        if (z) {
            this.probe.registerListener(new Probe.DataListener[]{this.listener});
            Log.i("PedometerSensor", "register listener for run-once");
        } else {
            this.probe.unregisterListener(new Probe.DataListener[]{this.listener});
            Log.i("PedometerSensor", "unregister run-once listener");
        }
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    public void unregisterDataRequest() {
        Log.i("PedometerSensor", "Unregistering data requests.");
        this.mBoundFunfManager.unrequestAllData2(this.listener);
        Log.i("PedometerSensor", "After Unregistering data requests.");
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    public void registerDataRequest(int i, int i2) {
        Log.i("PedometerSensor", "Registering data requests.");
        JsonObject dataRequest = getDataRequest(i, i2, "edu.mit.media.funf.probe.builtin.PedometerProbe");
        dataRequest.addProperty("sensitivityLevel", this.sensitivityLevel);
        _COROUTINE.a.C("Data request: ", dataRequest.toString(), "PedometerSensor");
        this.mBoundFunfManager.requestData(this.listener, dataRequest);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String SensitivityLevel() {
        return this.sensitivityLevel;
    }

    @SimpleProperty(description = "The sensitivity level used to detect walking. 9 different options for this value: \"extra high\", \"very high\", \"high\", \"higher\", \"medium\", \"lower\", \"low\", \"very low\", \"extra low\"")
    @DesignerProperty(defaultValue = "low", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void SensitivityLevel(String str) {
        this.sensitivityLevel = str;
    }
}
