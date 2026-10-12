package com.google.appinventor.components.runtime;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
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
import edu.mit.media.funf.probe.builtin.RunningApplicationsProbe;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.GET_TASKS")
@DesignerComponent(category = ComponentCategory.INTERNAL, description = "The current running stack of applications. Tells you what application that the user is currently using", iconName = "images/running_applications.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "funf.jar")
/* loaded from: classes.dex */
public class RunningApplications extends ProbeBase {
    private final String RUNNINGAPPLICATIONS_PROBE;
    private final int SCHEDULE_DURATION;
    private final int SCHEDULE_INTERVAL;
    private final String TAG;
    private Probe.DataListener listener;
    final Handler myHandler;
    private RunningApplicationsProbe probe;
    private String runningClass;
    private String runningPackage;
    private long timestamp;

    @SimpleProperty(description = "The default duration (in seconds) of each scan for this probe")
    public float DefaultDuration() {
        return 15.0f;
    }

    @SimpleProperty(description = "The default interval (in seconds) between each scan for this probe")
    public float DefaultInterval() {
        return 3600.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getAppName(String str) throws PackageManager.NameNotFoundException {
        ApplicationInfo applicationInfo;
        PackageManager packageManager = this.mBoundFunfManager.getPackageManager();
        try {
            applicationInfo = packageManager.getApplicationInfo(str, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            applicationInfo = null;
        }
        return (String) (applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo) : "(unknown)");
    }

    public RunningApplications(ComponentContainer componentContainer) {
        super(componentContainer);
        this.TAG = "RunningApplicationsProbe";
        this.RUNNINGAPPLICATIONS_PROBE = "edu.mit.media.funf.probe.builtin.RunningApplicationsProbe";
        this.runningPackage = "";
        this.runningClass = "";
        this.SCHEDULE_INTERVAL = 3600;
        this.SCHEDULE_DURATION = 15;
        this.listener = new Probe.DataListener() { // from class: com.google.appinventor.components.runtime.RunningApplications.1
            public void onDataCompleted(IJsonObject iJsonObject, JsonElement jsonElement) {
            }

            public void onDataReceived(IJsonObject iJsonObject, IJsonObject iJsonObject2) {
                Log.i("RunningApplicationsProbe", "receive data of running applications");
                JsonObject asJsonObject = iJsonObject2.get("taskInfo").getAsJsonObject().get("baseIntent").getAsJsonObject().get("mComponent").getAsJsonObject();
                String asString = asJsonObject.get("mClass").getAsString();
                String asString2 = asJsonObject.get("mPackage").getAsString();
                Log.i("RunningApplicationsProbe", "DATA: " + iJsonObject2.toString());
                Log.i("RunningApplicationsProbe", "mPackage:" + asString2);
                Log.i("RunningApplicationsProbe", "mClass:" + asString);
                RunningApplications runningApplications = RunningApplications.this;
                if (runningApplications.enabledSaveToDB) {
                    runningApplications.saveToDB(iJsonObject, iJsonObject2);
                }
                Message messageObtainMessage = RunningApplications.this.myHandler.obtainMessage();
                messageObtainMessage.obj = iJsonObject2;
                RunningApplications.this.myHandler.sendMessage(messageObtainMessage);
            }
        };
        this.myHandler = new Handler() { // from class: com.google.appinventor.components.runtime.RunningApplications.2
            @Override // android.os.Handler
            public void handleMessage(Message message) throws PackageManager.NameNotFoundException {
                IJsonObject iJsonObject = (IJsonObject) message.obj;
                Log.i("RunningApplicationsProbe", "Update component's varibles.....");
                JsonObject asJsonObject = iJsonObject.get("taskInfo").getAsJsonObject().get("baseIntent").getAsJsonObject().get("mComponent").getAsJsonObject();
                RunningApplications.this.runningClass = asJsonObject.get("mClass").getAsString();
                RunningApplications.this.runningPackage = asJsonObject.get("mPackage").getAsString();
                RunningApplications.this.timestamp = iJsonObject.get("timestamp").getAsLong();
                RunningApplications runningApplications = RunningApplications.this;
                String appName = runningApplications.getAppName(runningApplications.runningPackage);
                Log.i("RunningApplicationsProbe", " before call ApplicationsInfoReceived()");
                RunningApplications runningApplications2 = RunningApplications.this;
                runningApplications2.AppsInfoReceived(runningApplications2.timestamp, appName, RunningApplications.this.runningClass, RunningApplications.this.runningPackage);
                Log.i("RunningApplicationsProbe", " after call ApplicationsInfoReceived()");
            }
        };
        this.form.registerForOnDestroy(this);
        this.mainUIThreadActivity = componentContainer.$context();
        Log.i("RunningApplicationsProbe", "Before create probe");
        this.gson = new GsonBuilder().registerTypeAdapterFactory(FunfManager.getProbeFactory(this.mainUIThreadActivity)).create();
        this.probe = (RunningApplicationsProbe) this.gson.fromJson(new JsonObject(), RunningApplicationsProbe.class);
        this.interval = 3600;
        this.duration = 15;
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    @SimpleFunction(description = "Enable running application probe to run once and receive location")
    public void Enabled(boolean z) {
        if (this.enabled != z) {
            this.enabled = z;
        }
        if (z) {
            this.probe.registerListener(new Probe.DataListener[]{this.listener});
            Log.i("RunningApplicationsProbe", "register listener for run-once");
        } else {
            this.probe.unregisterListener(new Probe.DataListener[]{this.listener});
            Log.i("RunningApplicationsProbe", "unregister run-once listener");
        }
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    public void unregisterDataRequest() {
        Log.i("RunningApplicationsProbe", "Unregistering data requests.");
        this.mBoundFunfManager.unrequestAllData2(this.listener);
        Log.i("RunningApplicationsProbe", "After Unregistering data requests.");
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    public void registerDataRequest(int i, int i2) {
        Log.i("RunningApplicationsProbe", "Registering data requests.");
        JsonElement dataRequest = getDataRequest(i, i2, "edu.mit.media.funf.probe.builtin.RunningApplicationsProbe");
        _COROUTINE.a.C("Data request: ", dataRequest.toString(), "RunningApplicationsProbe");
        this.mBoundFunfManager.requestData(this.listener, dataRequest);
    }

    @SimpleEvent
    public void AppsInfoReceived(final long j, final String str, final String str2, final String str3) {
        if (this.enabled || this.enabledSchedule) {
            this.mainUIThreadActivity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.RunningApplications.3
                @Override // java.lang.Runnable
                public void run() {
                    Log.i("RunningApplicationsProbe", "AppsInfoReceived() is called");
                    EventDispatcher.dispatchEvent(RunningApplications.this, "AppsInfoReceived", Long.valueOf(j), str, str2, str3);
                }
            });
        }
    }
}
