package com.google.appinventor.components.runtime;

import android.content.Context;
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
import com.google.gson.JsonParser;
import edu.mit.media.funf.FunfManager;
import edu.mit.media.funf.json.IJsonObject;
import edu.mit.media.funf.probe.Probe;
import edu.mit.media.funf.probe.builtin.ContactProbe;
import java.util.Iterator;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.READ_CONTACTS")
@DesignerComponent(category = ComponentCategory.INTERNAL, description = "Return information of a user's contacts", iconName = "images/phoneCall.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "funf.jar")
/* loaded from: classes.dex */
public class ContactInfo extends ProbeBase {
    private final String CONTACTINFO_PROBE;
    private final int SCHEDULE_DURATION;
    private final int SCHEDULE_INTERVAL;
    private final String TAG;
    private String address;
    private String addressType;
    Context context;
    private String displayName;
    private String email;
    private String emailType;
    private String familyName;
    private String givenName;
    JsonParser jsonParser;
    private Probe.DataListener listener;
    final Handler myHandler;
    private String notes;
    private String organizationName;
    private String phoneNum;
    private String phoneType;
    private ContactProbe probe;
    private String website;

    /* JADX INFO: Access modifiers changed from: private */
    public void getNicknameInfo(JsonElement jsonElement) {
    }

    public ContactInfo(ComponentContainer componentContainer) {
        super(componentContainer);
        this.CONTACTINFO_PROBE = "edu.mit.media.funf.probe.builtin.COntactProbe";
        this.jsonParser = new JsonParser();
        this.TAG = "ContactInfo";
        this.SCHEDULE_INTERVAL = 43200;
        this.SCHEDULE_DURATION = 15;
        this.email = "";
        this.emailType = "";
        this.phoneNum = "";
        this.phoneType = "";
        this.givenName = "";
        this.familyName = "";
        this.address = "";
        this.addressType = "";
        this.organizationName = "";
        this.notes = "";
        this.website = "";
        this.displayName = "";
        this.myHandler = new Handler() { // from class: com.google.appinventor.components.runtime.ContactInfo.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                Iterator it = ((IJsonObject) message.obj).get("contactData").getAsJsonArray().iterator();
                while (it.hasNext()) {
                    JsonElement jsonElement = (JsonElement) it.next();
                    String asString = jsonElement.getAsJsonObject().get("mimetype").getAsString();
                    if (asString.equals("vnd.android.cursor.item/email_v2")) {
                        ContactInfo.this.getEmailInfo(jsonElement);
                    }
                    if (asString.equals("vnd.android.cursor.item/nickname")) {
                        ContactInfo.this.getNicknameInfo(jsonElement);
                    }
                    if (asString.equals("vnd.android.cursor.item/phone_v2")) {
                        ContactInfo.this.getPhoneInfo(jsonElement);
                    }
                    if (asString.equals("vnd.android.cursor.item/name")) {
                        ContactInfo.this.getNameInfo(jsonElement);
                    }
                    if (asString.equals("vnd.android.cursor.item/organization")) {
                        ContactInfo.this.getOrganizationInfo(jsonElement);
                    }
                    if (asString.equals("vnd.android.cursor.item/postal-address_v2")) {
                        ContactInfo.this.getAddressInfo(jsonElement);
                    }
                    if (asString.equals("vnd.android.cursor.item/website")) {
                        ContactInfo.this.getWebsiteInfo(jsonElement);
                    }
                    if (asString.equals("vnd.android.cursor.item/note")) {
                        ContactInfo.this.getNoteInfo(jsonElement);
                    }
                }
                ContactInfo contactInfo = ContactInfo.this;
                contactInfo.ContactInfoReceived(contactInfo.givenName, ContactInfo.this.familyName, ContactInfo.this.displayName, ContactInfo.this.phoneNum, ContactInfo.this.phoneType, ContactInfo.this.email, ContactInfo.this.emailType, ContactInfo.this.address, ContactInfo.this.addressType, ContactInfo.this.organizationName, ContactInfo.this.website, ContactInfo.this.notes);
            }
        };
        this.listener = new Probe.DataListener() { // from class: com.google.appinventor.components.runtime.ContactInfo.2
            public void onDataCompleted(IJsonObject iJsonObject, JsonElement jsonElement) {
            }

            public void onDataReceived(IJsonObject iJsonObject, IJsonObject iJsonObject2) {
                ContactInfo contactInfo = ContactInfo.this;
                if (contactInfo.enabledSaveToDB) {
                    contactInfo.saveToDB(iJsonObject, iJsonObject2);
                }
                Message messageObtainMessage = ContactInfo.this.myHandler.obtainMessage();
                messageObtainMessage.obj = iJsonObject2;
                ContactInfo.this.myHandler.sendMessage(messageObtainMessage);
            }
        };
        this.form.registerForOnDestroy(this);
        this.context = componentContainer.$context();
        this.mainUIThreadActivity = componentContainer.$context();
        Log.i("ContactInfo", "Before create probe");
        new JsonParser();
        this.gson = new GsonBuilder().registerTypeAdapterFactory(FunfManager.getProbeFactory(this.mainUIThreadActivity)).create();
        this.probe = (ContactProbe) this.gson.fromJson(new JsonObject(), ContactProbe.class);
        this.interval = 43200;
        this.duration = 15;
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    @SimpleFunction(description = "Enable contact information sensor to run once")
    public void Enabled(boolean z) {
        if (this.enabled != z) {
            this.enabled = z;
        }
        JsonObject jsonObject = new JsonObject();
        if (z) {
            jsonObject.addProperty("hideSensitiveData", Boolean.valueOf(this.privacySafe));
            ContactProbe contactProbe = (ContactProbe) this.gson.fromJson(jsonObject, ContactProbe.class);
            this.probe = contactProbe;
            contactProbe.registerListener(new Probe.DataListener[]{this.listener});
            Log.i("ContactInfo", "run-once config for Contact:" + jsonObject);
            return;
        }
        this.probe.unregisterListener(new Probe.DataListener[]{this.listener});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getEmailInfo(JsonElement jsonElement) {
        this.email = jsonElement.getAsJsonObject().get("data1") == null ? "" : jsonElement.getAsJsonObject().get("data1").getAsString();
        this.emailType = getEmailTypeName(jsonElement.getAsJsonObject().get("data2") == null ? 0 : jsonElement.getAsJsonObject().get("data2").getAsInt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getAddressInfo(JsonElement jsonElement) {
        this.address = jsonElement.getAsJsonObject().get("data1") == null ? "" : jsonElement.getAsJsonObject().get("data1").getAsString();
        this.addressType = getAddressTypeName(jsonElement.getAsJsonObject().get("data2") == null ? 0 : jsonElement.getAsJsonObject().get("data2").getAsInt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getPhoneInfo(JsonElement jsonElement) {
        this.phoneNum = jsonElement.getAsJsonObject().get("data1") == null ? "" : jsonElement.getAsJsonObject().get("data1").getAsString();
        this.phoneType = getPhoneTypeName(jsonElement.getAsJsonObject().get("data2") == null ? 0 : jsonElement.getAsJsonObject().get("data2").getAsInt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getNoteInfo(JsonElement jsonElement) {
        this.notes = jsonElement.getAsJsonObject().get("data1") == null ? "" : jsonElement.getAsJsonObject().get("data1").getAsString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getOrganizationInfo(JsonElement jsonElement) {
        this.organizationName = jsonElement.getAsJsonObject().get("data1") == null ? "" : jsonElement.getAsJsonObject().get("data1").getAsString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getNameInfo(JsonElement jsonElement) {
        this.givenName = jsonElement.getAsJsonObject().get("data2") == null ? "" : jsonElement.getAsJsonObject().get("data2").getAsString();
        this.familyName = jsonElement.getAsJsonObject().get("data3") == null ? "" : jsonElement.getAsJsonObject().get("data3").getAsString();
        this.displayName = jsonElement.getAsJsonObject().get("data1") != null ? jsonElement.getAsJsonObject().get("data1").getAsString() : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getWebsiteInfo(JsonElement jsonElement) {
        this.website = jsonElement.getAsJsonObject().get("data1") == null ? "" : jsonElement.getAsJsonObject().get("data1").getAsString();
    }

    @SimpleEvent
    public void ContactInfoReceived(final String str, final String str2, final String str3, final String str4, final String str5, final String str6, final String str7, final String str8, final String str9, final String str10, final String str11, final String str12) {
        if (this.enabled || this.enabledSchedule) {
            this.mainUIThreadActivity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.ContactInfo.3
                @Override // java.lang.Runnable
                public void run() {
                    EventDispatcher.dispatchEvent(ContactInfo.this, "ContactInfoReceived", str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12);
                }
            });
        }
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    public void unregisterDataRequest() {
        Log.i("ContactInfo", "Unregistering contact info data requests.");
        this.mBoundFunfManager.unrequestAllData2(this.listener);
    }

    @Override // com.google.appinventor.components.runtime.ProbeBase
    public void registerDataRequest(int i, int i2) {
        Log.i("ContactInfo", "Registering contact info requests.");
        JsonObject dataRequest = getDataRequest(i, i2, "edu.mit.media.funf.probe.builtin.COntactProbe");
        dataRequest.addProperty("hideSensitiveData", Boolean.valueOf(this.privacySafe));
        _COROUTINE.a.C("CallLog request: ", dataRequest.toString(), "ContactInfo");
        this.mBoundFunfManager.requestData(this.listener, dataRequest);
    }

    private String getEmailTypeName(int i) {
        if (i == 0) {
            return "CUSTOM";
        }
        if (i == 1) {
            return "HOME";
        }
        if (i == 2) {
            return "WORK";
        }
        if (i == 3) {
            return "OTHER";
        }
        if (i == 4) {
            return "MOBILE";
        }
        return "";
    }

    private String getAddressTypeName(int i) {
        if (i == 1) {
            return "HOME";
        }
        if (i == 2) {
            return "WORK";
        }
        if (i == 3) {
            return "OTHER";
        }
        return "";
    }

    private String getPhoneTypeName(int i) {
        if (i == 0) {
            return "CUSTOM";
        }
        if (i == 1) {
            return "HOME";
        }
        if (i == 2) {
            return "MOBILE";
        }
        if (i == 3) {
            return "WORK";
        }
        if (i == 4) {
            return "FAX_WORK";
        }
        if (i == 5) {
            return "FAX_HOME";
        }
        if (i == 7) {
            return "OTHER";
        }
        return "";
    }
}
