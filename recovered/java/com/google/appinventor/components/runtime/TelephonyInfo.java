package com.google.appinventor.components.runtime;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import edu.mit.media.funf.FunfManager;
import edu.mit.media.funf.json.IJsonObject;
import edu.mit.media.funf.probe.Probe;
import edu.mit.media.funf.probe.builtin.TelephonyProbe;

@SimpleObject
@UsesPermissions(permissionNames = "android.Manifest.permission.READ_PHONE_STATE")
@DesignerComponent(category = ComponentCategory.INTERNAL, description = "<p>A wrapper funciton of Android TelephonyManager. The components gives information about the telephony services on the device. Applications can use the methods in this class to determine telephony services and states, as well as to access some types of subscriber information. <p> For more info. check http://developer.android.com/reference/android/telephony/TelephonyManager.html", iconName = "images/telephony_manager.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "funf.jar")
/* loaded from: classes.dex */
public class TelephonyInfo extends ProbeBase {
    private final int SCHEDULE_DURATION;
    private final int SCHEDULE_INTERVAL;
    private final String TAG;
    protected final String TELEPHONY_PROBE;
    private int callState;
    private String deviceId;
    private int deviceSoftwareVersion;
    private String lineNumber;
    private Probe.DataListener listener;
    final Handler myHandler;
    private String networkCounteryIso;
    private String networkOperator;
    private String networkOperatorName;
    private TelephonyProbe probe;
    private String simCountryIso;
    private String simOperator;
    private String simOperatorName;
    private String simSerialNumber;
    private String subscriberId;
    private String voicemailNumber;

    public TelephonyInfo(ComponentContainer componentContainer) {
        super(componentContainer);
        this.TAG = "Telephony";
        this.TELEPHONY_PROBE = "edu.mit.media.funf.probe.builtin.TelephonyProbe";
        this.callState = 0;
        this.deviceId = "";
        this.deviceSoftwareVersion = 0;
        this.lineNumber = "";
        this.networkOperator = "";
        this.networkOperatorName = "";
        this.simCountryIso = "";
        this.simOperator = "";
        this.simOperatorName = "";
        this.simSerialNumber = "";
        this.subscriberId = "";
        this.networkCounteryIso = "";
        this.voicemailNumber = "";
        this.SCHEDULE_INTERVAL = 604800;
        this.SCHEDULE_DURATION = 15;
        this.listener = new Probe.DataListener() { // from class: com.google.appinventor.components.runtime.TelephonyInfo.1
            public void onDataCompleted(IJsonObject iJsonObject, JsonElement jsonElement) {
            }

            public void onDataReceived(IJsonObject iJsonObject, IJsonObject iJsonObject2) {
                Log.i("Telephony", "receive data of telephony info");
                _COROUTINE.a.C("DATA: ", iJsonObject2.toString(), "Telephony");
                TelephonyInfo telephonyInfo = TelephonyInfo.this;
                if (telephonyInfo.enabledSaveToDB) {
                    telephonyInfo.saveToDB(iJsonObject, iJsonObject2);
                }
                Message messageObtainMessage = TelephonyInfo.this.myHandler.obtainMessage();
                messageObtainMessage.obj = iJsonObject2;
                TelephonyInfo.this.myHandler.sendMessage(messageObtainMessage);
            }
        };
        this.myHandler = new Handler() { // from class: com.google.appinventor.components.runtime.TelephonyInfo.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                IJsonObject iJsonObject = (IJsonObject) message.obj;
                Log.i("Telephony", "Update component's varibles.....");
                TelephonyInfo.this.callState = iJsonObject.get("callState").getAsInt();
                TelephonyInfo.this.deviceId = iJsonObject.get("deviceId").getAsString();
                TelephonyInfo.this.deviceSoftwareVersion = iJsonObject.get("deviceSoftwareVersion").getAsInt();
                TelephonyInfo.this.lineNumber = iJsonObject.get("line1Number").getAsString();
                TelephonyInfo.this.networkOperator = iJsonObject.get("networkOperator").getAsString();
                TelephonyInfo.this.networkOperatorName = iJsonObject.get("networkOperatorName").getAsString();
                TelephonyInfo.this.simCountryIso = iJsonObject.get("simCountryIso").getAsString();
                TelephonyInfo.this.simOperator = iJsonObject.get("simOperator").getAsString();
                TelephonyInfo.this.simSerialNumber = iJsonObject.get("simSerialNumber").getAsString();
                TelephonyInfo.this.subscriberId = iJsonObject.get("subscriberId").getAsString();
                TelephonyInfo.this.networkCounteryIso = iJsonObject.get("networkCountryIso").getAsString();
                TelephonyInfo.this.voicemailNumber = iJsonObject.get("voicemailNumber").getAsString();
                Log.i("Telephony", " before call LocationInfoReceived();");
                TelephonyInfo telephonyInfo = TelephonyInfo.this;
                telephonyInfo.TelephonyInfoReceived(telephonyInfo.deviceId, TelephonyInfo.this.lineNumber, TelephonyInfo.this.voicemailNumber, TelephonyInfo.this.networkOperator, TelephonyInfo.this.networkOperatorName, TelephonyInfo.this.networkCounteryIso, TelephonyInfo.this.simSerialNumber, TelephonyInfo.this.simOperator);
                Log.i("Telephony", " after call LocationInfoReceived();");
            }
        };
        this.form.registerForOnDestroy(this);
        this.mainUIThreadActivity = componentContainer.$context();
        Log.i("Telephony", "Before create probe");
        this.gson = new GsonBuilder().registerTypeAdapterFactory(FunfManager.getProbeFactory(this.mainUIThreadActivity)).create();
        this.interval = 604800;
        this.duration = 15;
        this.probe = (TelephonyProbe) this.gson.fromJson(new JsonObject(), TelephonyProbe.class);
    }

    @SimpleEvent
    public void TelephonyInfoReceived(final String str, final String str2, final String str3, final String str4, final String str5, final String str6, final String str7, final String str8) {
        if (this.enabled || this.enabledSchedule) {
            this.mainUIThreadActivity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.TelephonyInfo.3
                @Override // java.lang.Runnable
                public void run() {
                    Log.i("Telephony", "TelephonyInfoReceived() is called");
                    EventDispatcher.dispatchEvent(TelephonyInfo.this, "TelephonyInfoReceived", str, str2, str3, str4, str5, str6, str7, str8);
                }
            });
        }
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    @SimpleFunction(description = "Enable telephonyInfo sensor to run once")
    public void Enabled(boolean z) {
        if (this.enabled != z) {
            this.enabled = z;
        }
        if (z) {
            this.probe.registerListener(new Probe.DataListener[]{this.listener});
            Log.i("Telephony", "register listener for run-once");
        } else {
            this.probe.unregisterListener(new Probe.DataListener[]{this.listener});
            Log.i("Telephony", "unregister run-once listener");
        }
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    public void unregisterDataRequest() {
        Log.i("Telephony", "Unregistering data requests.");
        this.mBoundFunfManager.unrequestAllData2(this.listener);
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    public void registerDataRequest(int i, int i2) {
        Log.i("Telephony", "Registering data requests.");
        JsonObject dataRequest = getDataRequest(i, i2, "edu.mit.media.funf.probe.builtin.TelephonyProbe");
        dataRequest.addProperty("hideSensitiveData", Boolean.valueOf(this.privacySafe));
        _COROUTINE.a.C("Data request: ", dataRequest.toString(), "Telephony");
        this.mBoundFunfManager.requestData(this.listener, dataRequest);
    }
}
