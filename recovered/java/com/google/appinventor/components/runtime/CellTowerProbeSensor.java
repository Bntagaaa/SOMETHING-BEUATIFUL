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
import edu.mit.media.funf.probe.builtin.CellTowerProbe;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.ACCESS_COARSE_LOCATION")
@DesignerComponent(category = ComponentCategory.INTERNAL, description = "A component that detects information of the cell tower that the cellphone connects to", iconName = "images/cell_tower_probe.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "funf.jar")
/* loaded from: classes.dex */
public class CellTowerProbeSensor extends ProbeBase {
    private final String CELLTOWER_PROBE;
    private final int SCHEDULE_DURATION;
    private final int SCHEDULE_INTERVAL;
    private final String TAG;
    private long cellid;
    private Probe.DataListener listener;
    private long locationAreaCode;
    final Handler myHandler;
    private CellTowerProbe probe;
    private long timestamp;

    @SimpleProperty(description = "The default duration (in seconds) of each scan for this probe")
    public float DefaultDuration() {
        return 30.0f;
    }

    @SimpleProperty(description = "The default interval (in seconds) between each scan for this probe")
    public float DefaultInterval() {
        return 1800.0f;
    }

    public CellTowerProbeSensor(ComponentContainer componentContainer) {
        super(componentContainer);
        this.TAG = "CellTowerProbe";
        this.CELLTOWER_PROBE = "edu.mit.media.funf.probe.builtin.CellTowerProbe";
        this.SCHEDULE_INTERVAL = 1800;
        this.SCHEDULE_DURATION = 30;
        this.myHandler = new Handler() { // from class: com.google.appinventor.components.runtime.CellTowerProbeSensor.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                IJsonObject iJsonObject = (IJsonObject) message.obj;
                Log.i("CellTowerProbe", "Update component's varibles.....");
                CellTowerProbeSensor.this.cellid = iJsonObject.get("cid").getAsLong();
                CellTowerProbeSensor.this.locationAreaCode = iJsonObject.get("lac").getAsLong();
                CellTowerProbeSensor.this.timestamp = iJsonObject.get("timestamp").getAsLong();
                Log.i("CellTowerProbe", " before call CellInfoReceived()");
                CellTowerProbeSensor.this.CellInfoReceived();
                Log.i("CellTowerProbe", " after call CellInfoReceived()");
            }
        };
        this.listener = new Probe.DataListener() { // from class: com.google.appinventor.components.runtime.CellTowerProbeSensor.4
            public void onDataCompleted(IJsonObject iJsonObject, JsonElement jsonElement) {
                CellTowerProbeSensor.this.CellTowerScanComplete();
            }

            public void onDataReceived(IJsonObject iJsonObject, IJsonObject iJsonObject2) {
                Log.i("CellTowerProbe", "receive celltower data");
                Log.i("CellTowerProbe", "cellid:" + iJsonObject2.get("cid").getAsLong());
                Log.i("CellTowerProbe", "locationAreaCode:" + iJsonObject2.get("lac").getAsLong());
                Log.i("CellTowerProbe", "timestamp:" + iJsonObject2.get("timestamp").getAsLong());
                CellTowerProbeSensor cellTowerProbeSensor = CellTowerProbeSensor.this;
                if (cellTowerProbeSensor.enabledSaveToDB) {
                    cellTowerProbeSensor.saveToDB(iJsonObject, iJsonObject2);
                }
                Message messageObtainMessage = CellTowerProbeSensor.this.myHandler.obtainMessage();
                messageObtainMessage.obj = iJsonObject2;
                CellTowerProbeSensor.this.myHandler.sendMessage(messageObtainMessage);
            }
        };
        this.form.registerForOnDestroy(this);
        this.mainUIThreadActivity = componentContainer.$context();
        Log.i("CellTowerProbe", "Before create probe");
        this.gson = new GsonBuilder().registerTypeAdapterFactory(FunfManager.getProbeFactory(this.mainUIThreadActivity)).create();
        this.probe = (CellTowerProbe) this.gson.fromJson(new JsonObject(), CellTowerProbe.class);
        this.interval = 1800;
        this.duration = 30;
    }

    @SimpleEvent
    public void CellInfoReceived() {
        if (this.enabled || this.enabledSchedule) {
            this.mainUIThreadActivity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.CellTowerProbeSensor.2
                @Override // java.lang.Runnable
                public void run() {
                    Log.i("CellTowerProbe", "CellInfoReceived is called");
                    EventDispatcher.dispatchEvent(CellTowerProbeSensor.this, "CellInfoReceived", new Object[0]);
                }
            });
        }
    }

    @SimpleEvent
    public void CellTowerScanComplete() {
        if (this.enabled || this.enabledSchedule) {
            this.mainUIThreadActivity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.CellTowerProbeSensor.3
                @Override // java.lang.Runnable
                public void run() {
                    Log.i("CellTowerProbe", "CellTowerScanComplete() is called");
                    EventDispatcher.dispatchEvent(CellTowerProbeSensor.this, "CellTowerScanComplete", new Object[0]);
                }
            });
        }
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    @SimpleFunction(description = "Enable location probe to run once")
    public void Enabled(boolean z) {
        if (this.enabled != z) {
            this.enabled = z;
        }
        if (z) {
            this.probe.registerListener(new Probe.DataListener[]{this.listener});
            Log.i("CellTowerProbe", "register listener for run-once");
        } else {
            this.probe.unregisterListener(new Probe.DataListener[]{this.listener});
            Log.i("CellTowerProbe", "unregister run-once listener");
        }
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    public void unregisterDataRequest() {
        Log.i("CellTowerProbe", "Unregistering data requests.");
        this.mBoundFunfManager.unrequestAllData2(this.listener);
        Log.i("CellTowerProbe", "After Unregistering data requests.");
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    public void registerDataRequest(int i, int i2) {
        Log.i("CellTowerProbe", "Registering data requests.");
        JsonElement dataRequest = getDataRequest(i, i2, "edu.mit.media.funf.probe.builtin.CellTowerProbe");
        _COROUTINE.a.C("Data request: ", dataRequest.toString(), "CellTowerProbe");
        this.mBoundFunfManager.requestData(this.listener, dataRequest);
    }

    @SimpleProperty(description = "The cell id of the cell tower.")
    public long Cellid() {
        Log.i("CellTowerProbe", "returning cell id: " + this.cellid);
        return this.cellid;
    }

    @SimpleProperty(description = "The location area code of the cell tower.")
    public long LocationAreaCode() {
        Log.i("CellTowerProbe", "returning cell id: " + this.locationAreaCode);
        return this.locationAreaCode;
    }

    @SimpleProperty(description = "The timestamp of this sensor event.")
    public float Timestamp() {
        Log.i("CellTowerProbe", "returning timestamp: " + this.timestamp);
        return this.timestamp;
    }
}
