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
import edu.mit.media.funf.probe.builtin.SmsProbe;
import edu.mit.media.funf.time.TimeUnit;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.READ_SMS")
@DesignerComponent(category = ComponentCategory.INTERNAL, description = "Messages sent and received by this device using SMS. Sensitive data is hashed for user privacy.Could specifiy \"afterDate\" parameter to only read sms information after that date.", iconName = "images/sms_history.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "funf.jar")
/* loaded from: classes.dex */
public class SmsHistory extends ProbeBase {
    private final int SCHEDULE_DURATION;
    private final int SCHEDULE_INTERVAL;
    private final String SMS_PROBE;
    private final String TAG;
    private String address;
    private long afterDate;
    private String body;
    Context context;
    private long date;
    JsonParser jsonParser;
    private Probe.DataListener listener;
    final Handler myHandler;
    private SmsProbe probe;
    private boolean read;
    SimpleDateFormat sdf;
    private String type;

    @SimpleProperty(description = "The default interval (in seconds) between each scan for this probe")
    public float DefaultInterval() {
        return 43200.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getTypeName(int i) {
        switch (i) {
            case 1:
                return "INBOX";
            case 2:
                return "SENT";
            case 3:
                return "DRAFT";
            case 4:
                return "OUTBOX";
            case 5:
                return "FAILED";
            case 6:
                return "QUEUED";
            default:
                return "";
        }
    }

    public SmsHistory(ComponentContainer componentContainer) {
        super(componentContainer);
        this.TAG = "SmsProbe";
        this.SMS_PROBE = "edu.mit.media.funf.probe.builtin.SmsProbe";
        this.SCHEDULE_INTERVAL = 43200;
        this.SCHEDULE_DURATION = 15;
        this.sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        this.afterDate = 0L;
        this.jsonParser = new JsonParser();
        this.listener = new Probe.DataListener() { // from class: com.google.appinventor.components.runtime.SmsHistory.1
            public void onDataCompleted(IJsonObject iJsonObject, JsonElement jsonElement) {
            }

            public void onDataReceived(IJsonObject iJsonObject, IJsonObject iJsonObject2) {
                Log.i("SmsProbe", "receive data of calllog");
                _COROUTINE.a.C("DATA: ", iJsonObject2.toString(), "SmsProbe");
                SmsHistory smsHistory = SmsHistory.this;
                if (smsHistory.enabledSaveToDB) {
                    smsHistory.saveToDB(iJsonObject, iJsonObject2);
                }
                Message messageObtainMessage = SmsHistory.this.myHandler.obtainMessage();
                messageObtainMessage.obj = iJsonObject2;
                SmsHistory.this.myHandler.sendMessage(messageObtainMessage);
            }
        };
        this.myHandler = new Handler() { // from class: com.google.appinventor.components.runtime.SmsHistory.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                IJsonObject iJsonObject = (IJsonObject) message.obj;
                Log.i("SmsProbe", "Update component's varibles.....");
                SmsHistory smsHistory = SmsHistory.this;
                if (smsHistory.privacySafe) {
                    String asString = iJsonObject.get("address") == null ? "" : iJsonObject.get("address").getAsString();
                    String asString2 = iJsonObject.get("body") == null ? "" : iJsonObject.get("body").getAsString();
                    if (asString != "") {
                        SmsHistory.this.address = SmsHistory.this.jsonParser.parse(asString).getAsJsonObject().get("ONE_WAY_HASH").getAsString();
                    } else {
                        SmsHistory.this.address = "";
                    }
                    if (asString2 != "") {
                        SmsHistory.this.body = SmsHistory.this.jsonParser.parse(asString2).getAsJsonObject().get("ONE_WAY_HASH").getAsString();
                    } else {
                        SmsHistory.this.body = "";
                    }
                } else {
                    smsHistory.address = iJsonObject.get("address") == null ? "" : iJsonObject.get("address").getAsString();
                    SmsHistory.this.body = iJsonObject.get("body") != null ? iJsonObject.get("body").getAsString() : "";
                }
                SmsHistory.this.date = iJsonObject.get("date").getAsLong();
                SmsHistory.this.read = iJsonObject.get("read").getAsBoolean();
                SmsHistory smsHistory2 = SmsHistory.this;
                smsHistory2.type = smsHistory2.getTypeName(iJsonObject.get("type").getAsInt());
                SmsHistory smsHistory3 = SmsHistory.this;
                smsHistory3.SmsInfoReceived(smsHistory3.date, SmsHistory.this.address, SmsHistory.this.body, SmsHistory.this.type, SmsHistory.this.read);
            }
        };
        this.form.registerForOnDestroy(this);
        this.context = componentContainer.$context();
        this.mainUIThreadActivity = componentContainer.$context();
        Log.i("SmsProbe", "Before create probe");
        this.gson = new GsonBuilder().registerTypeAdapterFactory(FunfManager.getProbeFactory(this.mainUIThreadActivity)).create();
        this.probe = (SmsProbe) this.gson.fromJson(new JsonObject(), SmsProbe.class);
        this.interval = 43200;
        this.duration = 15;
    }

    @SimpleFunction(description = "Specify the date after which the SMS messages occurred. The formate should be \"YYYY-MM-DD HH:mm:ss\". Note everytime when the SMS messages are read, one needs toreset AfterDate if likes to read those messages again.")
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
        _COROUTINE.a.C("afterDate: ", DateFormat.getDateFormat(this.context).format(Long.valueOf(this.afterDate * 1000)), "SmsProbe");
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    @SimpleFunction(description = "Enable sms history sensor to run once")
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
            SmsProbe smsProbe = (SmsProbe) this.gson.fromJson(jsonObject, SmsProbe.class);
            this.probe = smsProbe;
            smsProbe.registerListener(new Probe.DataListener[]{this.listener});
            Log.i("SmsProbe", "run-once config for SMS:" + jsonObject);
            return;
        }
        this.probe.unregisterListener(new Probe.DataListener[]{this.listener});
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    public void unregisterDataRequest() {
        Log.i("SmsProbe", "Unregistering sms data requests.");
        this.mBoundFunfManager.unrequestAllData2(this.listener);
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    public void registerDataRequest(int i, int i2) {
        Log.i("SmsProbe", "Registering sms requests.");
        JsonObject dataRequest = getDataRequest(i, i2, "edu.mit.media.funf.probe.builtin.SmsProbe");
        long j = this.afterDate;
        if (j != 0) {
            dataRequest.addProperty("afterDate", Long.valueOf(j));
        }
        dataRequest.addProperty("hideSensitiveData", Boolean.valueOf(this.privacySafe));
        _COROUTINE.a.C("CallLog request: ", dataRequest.toString(), "SmsProbe");
        this.mBoundFunfManager.requestData(this.listener, dataRequest);
    }

    @SimpleEvent
    public void SmsInfoReceived(final long j, final String str, final String str2, final String str3, final boolean z) {
        if (this.enabled || this.enabledSchedule) {
            this.mainUIThreadActivity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.SmsHistory.3
                @Override // java.lang.Runnable
                public void run() {
                    Log.i("SmsProbe", "SmsInfoReceived() is called");
                    EventDispatcher.dispatchEvent(SmsHistory.this, "SmsInfoReceived", Long.valueOf(j), str, str2, str3, Boolean.valueOf(z));
                }
            });
        }
    }
}
