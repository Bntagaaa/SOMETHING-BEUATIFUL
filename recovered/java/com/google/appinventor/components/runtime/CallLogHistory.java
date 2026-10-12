package com.google.appinventor.components.runtime;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.format.DateFormat;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import edu.mit.media.funf.FunfManager;
import edu.mit.media.funf.json.IJsonObject;
import edu.mit.media.funf.probe.Probe;
import edu.mit.media.funf.probe.builtin.CallLogProbe;
import edu.mit.media.funf.time.TimeUnit;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.READ_CONTACTS")
@DesignerComponent(category = ComponentCategory.INTERNAL, description = "Return information of recent calls. A wrapper around Android.Calllog.Calls (see http://developer.android.com/reference/android/provider/CallLog.Calls.html). Could specifiy \"afterDate\" parameter to only read calllog information after that date. Some of the returning fields (name, number, numberType, numberLabel) can be returned as hashed for privacy reasons", iconName = "images/phoneCall.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "funf.jar")
/* loaded from: classes.dex */
public class CallLogHistory extends ProbeBase {
    private final String CALLLOG_PROBE;
    private final int SCHEDULE_DURATION;
    private final int SCHEDULE_INTERVAL;
    private final String TAG;
    private long afterDate;
    Context context;
    private long date;
    private int duration;
    JsonParser jsonParser;
    private Probe.DataListener listener;
    final Handler myHandler;
    private String name;
    private String number;
    private String numberLabel;
    private String numberType;
    private CallLogProbe probe;
    SimpleDateFormat sdf;
    private String type;

    @SimpleProperty(description = "The default interval (in seconds) between each scan for this probe")
    public float DefaultInterval() {
        return 86400.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getTypeName(int i) {
        if (i == 1) {
            return "INCOMING";
        }
        if (i == 2) {
            return "OUTGOING";
        }
        if (i == 3) {
            return "MISSED";
        }
        return "";
    }

    public CallLogHistory(ComponentContainer componentContainer) {
        super(componentContainer);
        this.TAG = "CallLogProbe";
        this.CALLLOG_PROBE = "edu.mit.media.funf.probe.builtin.CallLogProbe";
        this.afterDate = 0L;
        this.SCHEDULE_INTERVAL = 86400;
        this.SCHEDULE_DURATION = 15;
        this.sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        this.jsonParser = new JsonParser();
        this.listener = new Probe.DataListener() { // from class: com.google.appinventor.components.runtime.CallLogHistory.1
            public void onDataCompleted(IJsonObject iJsonObject, JsonElement jsonElement) {
            }

            public void onDataReceived(IJsonObject iJsonObject, IJsonObject iJsonObject2) {
                Log.i("CallLogProbe", "receive data of calllog");
                _COROUTINE.a.C("DATA: ", iJsonObject2.toString(), "CallLogProbe");
                CallLogHistory callLogHistory = CallLogHistory.this;
                if (callLogHistory.enabledSaveToDB) {
                    callLogHistory.saveToDB(iJsonObject, iJsonObject2);
                }
                Message messageObtainMessage = CallLogHistory.this.myHandler.obtainMessage();
                messageObtainMessage.obj = iJsonObject2;
                CallLogHistory.this.myHandler.sendMessage(messageObtainMessage);
            }
        };
        this.myHandler = new Handler() { // from class: com.google.appinventor.components.runtime.CallLogHistory.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                IJsonObject iJsonObject = (IJsonObject) message.obj;
                Log.i("CallLogProbe", "Update component's varibles.....");
                CallLogHistory callLogHistory = CallLogHistory.this;
                if (callLogHistory.privacySafe) {
                    String asString = iJsonObject.get("name").getAsString();
                    String asString2 = iJsonObject.get("number").getAsString();
                    String asString3 = iJsonObject.get("numbertype").getAsString();
                    String asString4 = iJsonObject.get("numberlabel").getAsString();
                    JsonObject asJsonObject = CallLogHistory.this.jsonParser.parse(asString).getAsJsonObject();
                    JsonObject asJsonObject2 = CallLogHistory.this.jsonParser.parse(asString2).getAsJsonObject();
                    JsonObject asJsonObject3 = CallLogHistory.this.jsonParser.parse(asString3).getAsJsonObject();
                    JsonObject asJsonObject4 = CallLogHistory.this.jsonParser.parse(asString4).getAsJsonObject();
                    CallLogHistory.this.name = asJsonObject.get("ONE_WAY_HASH").getAsString();
                    CallLogHistory.this.number = asJsonObject2.get("ONE_WAY_HASH").getAsString();
                    CallLogHistory.this.numberType = asJsonObject3.get("ONE_WAY_HASH").getAsString();
                    CallLogHistory.this.numberLabel = asJsonObject4.get("ONE_WAY_HASH").getAsString();
                } else {
                    callLogHistory.name = iJsonObject.get("name") == null ? "" : iJsonObject.get("name").getAsString();
                    CallLogHistory.this.number = iJsonObject.get("number") == null ? "" : iJsonObject.get("number").getAsString();
                    CallLogHistory.this.numberType = iJsonObject.get("numbertype") == null ? "" : iJsonObject.get("numbertype").getAsString();
                    CallLogHistory.this.numberLabel = iJsonObject.get("numberlabel") != null ? iJsonObject.get("numberlabel").getAsString() : "";
                }
                CallLogHistory.this.date = iJsonObject.get("date").getAsLong();
                CallLogHistory.this.duration = iJsonObject.get("duration").getAsInt();
                CallLogHistory callLogHistory2 = CallLogHistory.this;
                callLogHistory2.type = callLogHistory2.getTypeName(iJsonObject.get("type").getAsInt());
                CallLogHistory callLogHistory3 = CallLogHistory.this;
                callLogHistory3.CalllogsInfoReceived(callLogHistory3.date, CallLogHistory.this.duration, CallLogHistory.this.name, CallLogHistory.this.number, CallLogHistory.this.numberType, CallLogHistory.this.type);
            }
        };
        this.form.registerForOnDestroy(this);
        this.context = componentContainer.$context();
        this.mainUIThreadActivity = componentContainer.$context();
        Log.i("CallLogProbe", "Before create probe");
        this.gson = new GsonBuilder().registerTypeAdapterFactory(FunfManager.getProbeFactory(this.mainUIThreadActivity)).create();
        this.probe = (CallLogProbe) this.gson.fromJson(new JsonObject(), CallLogProbe.class);
        this.interval = 86400;
        this.duration = 15;
    }

    @SimpleFunction(description = "Specify the date after which the callogs occurred. The formate should be \"YYYY-MM-DD HH:mm:ss\"")
    public void AfterDate(String str) throws ParseException {
        Date date;
        if ("".equals(str)) {
            return;
        }
        try {
            date = this.sdf.parse(str);
        } catch (ParseException e) {
            this.form.dispatchErrorOccurredEvent(this, "AfterDate", ErrorMessages.ERROR_DATE_FORMAT, e.getMessage());
            date = null;
        }
        this.afterDate = TimeUnit.MILLISECONDS.toSeconds(date.getTime());
        _COROUTINE.a.C("afterDate: ", DateFormat.getDateFormat(this.context).format(Long.valueOf(this.afterDate * 1000)), "CallLogProbe");
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    @SimpleFunction(description = "Enable calllog history probe to run once")
    public void Enabled(boolean z) {
        if (this.enabled != z) {
            this.enabled = z;
        }
        JsonObject jsonObject = new JsonObject();
        if (z) {
            long j = this.afterDate;
            if (j != 0) {
                jsonObject.addProperty("afterDate", Long.valueOf(j));
            }
            jsonObject.addProperty("hideSensitiveData", Boolean.valueOf(this.privacySafe));
            CallLogProbe callLogProbe = (CallLogProbe) this.gson.fromJson(jsonObject, CallLogProbe.class);
            this.probe = callLogProbe;
            callLogProbe.registerListener(new Probe.DataListener[]{this.listener});
            Log.i("CallLogProbe", "run-once config:" + jsonObject);
            return;
        }
        this.probe.unregisterListener(new Probe.DataListener[]{this.listener});
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    public void unregisterDataRequest() {
        Log.i("CallLogProbe", "Unregistering calllog data requests.");
        this.mBoundFunfManager.unrequestAllData2(this.listener);
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    public void registerDataRequest(int i, int i2) {
        Log.i("CallLogProbe", "Registering calllogs requests.");
        JsonObject dataRequest = getDataRequest(i, i2, "edu.mit.media.funf.probe.builtin.CallLogProbe");
        long j = this.afterDate;
        if (j != 0) {
            dataRequest.addProperty("afterDate", Long.valueOf(j));
        }
        dataRequest.addProperty("hideSensitiveData", Boolean.valueOf(this.privacySafe));
        _COROUTINE.a.C("CallLog request: ", dataRequest.toString(), "CallLogProbe");
        this.mBoundFunfManager.requestData(this.listener, dataRequest);
    }

    @SimpleEvent
    public void CalllogsInfoReceived(final long j, final long j2, final String str, final String str2, final String str3, final String str4) {
        if (this.enabled || this.enabledSchedule) {
            this.mainUIThreadActivity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.CallLogHistory.3
                @Override // java.lang.Runnable
                public void run() {
                    Log.i("CallLogProbe", "CalllogsInfoReceived() is called");
                    EventDispatcher.dispatchEvent(CallLogHistory.this, "CalllogsInfoReceived", Long.valueOf(j), Long.valueOf(j2), str, str2, str3, str4);
                }
            });
        }
    }
}
