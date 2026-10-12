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
import com.google.appinventor.components.common.ComponentCategory;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import edu.mit.media.funf.FunfManager;
import edu.mit.media.funf.json.IJsonObject;
import edu.mit.media.funf.probe.Probe;
import edu.mit.media.funf.probe.builtin.ScreenProbe;

@DesignerComponent(category = ComponentCategory.INTERNAL, description = "Return information about the  ", iconName = "images/screen_status.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "funf.jar")
@SimpleObject
/* loaded from: classes.dex */
public class ScreenStatus extends ProbeBase {
    private final int SCHEDULE_DURATION;
    private final int SCHEDULE_INTERVAL;
    private final String SCREENSTATUS_PROBE;
    private final String TAG;
    private Probe.DataListener listener;
    final Handler myHandler;
    private ScreenProbe probe;
    private boolean screen_on;
    private long timestamp;

    @SimpleProperty(description = "The default duration (in seconds) of each scan for this probe")
    public float DefaultDuration() {
        return 15.0f;
    }

    @SimpleProperty(description = "The default interval (in seconds) between each scan for this probe")
    public float DefaultInterval() {
        return 900.0f;
    }

    public ScreenStatus(ComponentContainer componentContainer) {
        super(componentContainer);
        this.TAG = "ScreenStatus";
        this.SCREENSTATUS_PROBE = "edu.mit.media.funf.probe.builtin.ScreenProbe";
        this.SCHEDULE_INTERVAL = 900;
        this.SCHEDULE_DURATION = 15;
        this.listener = new Probe.DataListener() { // from class: com.google.appinventor.components.runtime.ScreenStatus.1
            public void onDataCompleted(IJsonObject iJsonObject, JsonElement jsonElement) {
            }

            public void onDataReceived(IJsonObject iJsonObject, IJsonObject iJsonObject2) {
                Log.i("ScreenStatus", "receive data of running applications");
                _COROUTINE.a.C("DATA: ", iJsonObject2.toString(), "ScreenStatus");
                ScreenStatus screenStatus = ScreenStatus.this;
                if (screenStatus.enabledSaveToDB) {
                    screenStatus.saveToDB(iJsonObject, iJsonObject2);
                }
                Message messageObtainMessage = ScreenStatus.this.myHandler.obtainMessage();
                messageObtainMessage.obj = iJsonObject2;
                ScreenStatus.this.myHandler.sendMessage(messageObtainMessage);
            }
        };
        this.myHandler = new Handler() { // from class: com.google.appinventor.components.runtime.ScreenStatus.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                IJsonObject iJsonObject = (IJsonObject) message.obj;
                Log.i("ScreenStatus", "Update component's varibles.....");
                ScreenStatus.this.screen_on = iJsonObject.get("screenOn").getAsBoolean();
                ScreenStatus.this.timestamp = iJsonObject.get("timestamp").getAsLong();
                Log.i("ScreenStatus", " before call ApplicationsInfoReceived()");
                ScreenStatus screenStatus = ScreenStatus.this;
                screenStatus.ScreenInfoReceived(screenStatus.timestamp, ScreenStatus.this.screen_on);
                Log.i("ScreenStatus", " after call ApplicationsInfoReceived()");
            }
        };
        this.form.registerForOnDestroy(this);
        this.mainUIThreadActivity = componentContainer.$context();
        Log.i("ScreenStatus", "Before create probe");
        this.gson = new GsonBuilder().registerTypeAdapterFactory(FunfManager.getProbeFactory(this.mainUIThreadActivity)).create();
        this.probe = (ScreenProbe) this.gson.fromJson(new JsonObject(), ScreenProbe.class);
        this.interval = 900;
        this.duration = 15;
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    @SimpleFunction(description = "Enable screen status sensor to run once")
    public void Enabled(boolean z) {
        if (this.enabled != z) {
            this.enabled = z;
        }
        if (z) {
            this.probe.registerListener(new Probe.DataListener[]{this.listener});
            Log.i("ScreenStatus", "register listener for run-once");
        } else {
            this.probe.unregisterListener(new Probe.DataListener[]{this.listener});
            Log.i("ScreenStatus", "unregister run-once listener");
        }
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    public void unregisterDataRequest() {
        Log.i("ScreenStatus", "Unregistering data requests.");
        this.mBoundFunfManager.unrequestAllData2(this.listener);
        Log.i("ScreenStatus", "After Unregistering data requests.");
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    public void registerDataRequest(int i, int i2) {
        Log.i("ScreenStatus", "Registering data requests.");
        JsonElement dataRequest = getDataRequest(i, i2, "edu.mit.media.funf.probe.builtin.ScreenProbe");
        _COROUTINE.a.C("Data request: ", dataRequest.toString(), "ScreenStatus");
        this.mBoundFunfManager.requestData(this.listener, dataRequest);
    }

    @SimpleEvent
    public void ScreenInfoReceived(final long j, final boolean z) {
        if (this.enabled || this.enabledSchedule) {
            this.mainUIThreadActivity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.ScreenStatus.3
                @Override // java.lang.Runnable
                public void run() {
                    Log.i("ScreenStatus", "ScreenInfoReceived() is called");
                    EventDispatcher.dispatchEvent(ScreenStatus.this, "ScreenInfoReceived", Long.valueOf(j), Boolean.valueOf(z));
                }
            });
        }
    }
}
