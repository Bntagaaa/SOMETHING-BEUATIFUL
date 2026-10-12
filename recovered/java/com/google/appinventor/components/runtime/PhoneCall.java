package com.google.appinventor.components.runtime;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.telephony.TelephonyManager;
import androidx.core.content.ContextCompat;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.annotations.UsesQueries;
import com.google.appinventor.components.annotations.androidmanifest.ActionElement;
import com.google.appinventor.components.annotations.androidmanifest.IntentFilterElement;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.EndedStatus;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.common.StartedStatus;
import com.google.appinventor.components.runtime.util.BulkPermissionRequest;
import com.google.appinventor.components.runtime.util.PhoneCallUtil;

@UsesQueries(intents = {@IntentFilterElement(actionElements = {@ActionElement(name = "android.intent.action.DIAL")})})
@DesignerComponent(category = ComponentCategory.SOCIAL, description = "<p>A non-visible component that makes a phone call to the number specified in the <code>PhoneNumber</code> property, which can be set either in the Designer or Blocks Editor. The component has a <code>MakePhoneCall</code> method, enabling the program to launch a phone call.</p><p>Often, this component is used with the <code>ContactPicker</code> component, which lets the user select a contact from the ones stored on the phone and sets the <code>PhoneNumber</code> property to the contact's phone number.</p><p>To directly specify the phone number (e.g., 650-555-1212), set the <code>PhoneNumber</code> property to a Text with the specified digits (e.g., \"6505551212\").  Dashes, dots, and parentheses may be included (e.g., \"(650)-555-1212\") but will be ignored; spaces may not be included.</p>", iconName = "images/phoneCall.png", nonVisible = true, version = 3)
@SimpleObject
/* loaded from: classes.dex */
public class PhoneCall extends AndroidNonvisibleComponent implements Component, OnDestroyListener, ActivityResultListener {
    private static final int PHONECALL_REQUEST_CODE = 1346916174;
    private final CallStateReceiver callStateReceiver;
    private final Context context;
    private boolean didRegisterReceiver;
    private boolean havePermission;
    private String phoneNumber;

    public enum CallStatus {
        INCOMING_WAITING,
        INCOMING_ANSWERED,
        OUTGOING_WAITING
    }

    public PhoneCall(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.havePermission = false;
        this.didRegisterReceiver = false;
        this.context = componentContainer.$context();
        this.form.registerForOnDestroy(this);
        this.form.registerForActivityResult(this, PHONECALL_REQUEST_CODE);
        PhoneNumber("");
        this.callStateReceiver = new CallStateReceiver();
    }

    public void Initialize() {
        if (this.form.doesAppDeclarePermission("android.permission.READ_CALL_LOG")) {
            this.form.askPermission(new BulkPermissionRequest(this, "Initialize", "android.permission.PROCESS_OUTGOING_CALLS", "android.permission.READ_PHONE_STATE", "android.permission.READ_CALL_LOG") { // from class: com.google.appinventor.components.runtime.PhoneCall.1
                @Override // com.google.appinventor.components.runtime.util.BulkPermissionRequest
                public void onGranted() {
                    PhoneCall.this.registerCallStateMonitor();
                }
            });
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String PhoneNumber() {
        return this.phoneNumber;
    }

    @SimpleProperty
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void PhoneNumber(String str) {
        this.phoneNumber = str;
    }

    @SimpleFunction(description = "Launches the default dialer app set to start a phone call usingthe number in the PhoneNumber property.")
    public void MakePhoneCall() {
        Intent intent = new Intent("android.intent.action.DIAL", Uri.fromParts("tel", this.phoneNumber, null));
        if (intent.resolveActivity(this.form.getPackageManager()) != null) {
            this.form.startActivityForResult(intent, PHONECALL_REQUEST_CODE);
        }
    }

    @SimpleFunction(description = "Directly initiates a phone call using the number in the PhoneNumber property.")
    @UsesPermissions({"android.permission.CALL_PHONE"})
    public void MakePhoneCallDirect() {
        if (!this.havePermission) {
            this.form.askPermission("android.permission.CALL_PHONE", new PermissionResultHandler() { // from class: com.google.appinventor.components.runtime.PhoneCall.2
                @Override // com.google.appinventor.components.runtime.PermissionResultHandler
                public void HandlePermissionResponse(String str, boolean z) {
                    if (z) {
                        PhoneCall.this.havePermission = true;
                        PhoneCall.this.MakePhoneCallDirect();
                    } else {
                        PhoneCall phoneCall = PhoneCall.this;
                        phoneCall.form.dispatchPermissionDeniedEvent(phoneCall, "MakePhoneCall", "android.permission.CALL_PHONE");
                    }
                }
            });
        } else {
            PhoneCallUtil.makePhoneCall(this.context, this.phoneNumber);
        }
    }

    @UsesPermissions({"android.permission.PROCESS_OUTGOING_CALLS", "android.permission.READ_CALL_LOG", "android.permission.READ_PHONE_STATE"})
    @SimpleEvent(description = "Event indicating that a phonecall has started. If status is 1, incoming call is ringing; if status is 2, outgoing call is dialled. phoneNumber is the incoming/outgoing phone number.")
    public void PhoneCallStarted(@Options(StartedStatus.class) int i, String str) {
        StartedStatus startedStatusFromUnderlyingValue = StartedStatus.fromUnderlyingValue(Integer.valueOf(i));
        if (startedStatusFromUnderlyingValue != null) {
            PhoneCallStartedAbstract(startedStatusFromUnderlyingValue, str);
        }
    }

    public void PhoneCallStartedAbstract(StartedStatus startedStatus, String str) {
        EventDispatcher.dispatchEvent(this, "PhoneCallStarted", startedStatus.toUnderlyingValue(), str);
    }

    @UsesPermissions({"android.permission.PROCESS_OUTGOING_CALLS", "android.permission.READ_CALL_LOG", "android.permission.READ_PHONE_STATE"})
    @SimpleEvent(description = "Event indicating that a phone call has ended. If status is 1, incoming call is missed or rejected; if status is 2, incoming call is answered before hanging up; if status is 3, outgoing call is hung up. phoneNumber is the ended call phone number.")
    public void PhoneCallEnded(@Options(EndedStatus.class) int i, String str) {
        EndedStatus endedStatusFromUnderlyingValue = EndedStatus.fromUnderlyingValue(Integer.valueOf(i));
        if (endedStatusFromUnderlyingValue != null) {
            PhoneCallEndedAbstract(endedStatusFromUnderlyingValue, str);
        }
    }

    public void PhoneCallEndedAbstract(EndedStatus endedStatus, String str) {
        EventDispatcher.dispatchEvent(this, "PhoneCallEnded", endedStatus.toUnderlyingValue(), str);
    }

    @UsesPermissions({"android.permission.PROCESS_OUTGOING_CALLS", "android.permission.READ_CALL_LOG", "android.permission.READ_PHONE_STATE"})
    @SimpleEvent(description = "Event indicating that an incoming phone call is answered. phoneNumber is the incoming call phone number.")
    public void IncomingCallAnswered(String str) {
        EventDispatcher.dispatchEvent(this, "IncomingCallAnswered", str);
    }

    @Override // com.google.appinventor.components.runtime.ActivityResultListener
    public void resultReturned(int i, int i2, Intent intent) {
        if (i == PHONECALL_REQUEST_CODE) {
            PhoneCallStartedAbstract(StartedStatus.Outgoing, "");
        }
    }

    public class CallStateReceiver extends BroadcastReceiver {
        private CallStatus status = null;
        private String number = "";

        public CallStateReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.PHONE_STATE".equals(action)) {
                String stringExtra = intent.getStringExtra("state");
                if (TelephonyManager.EXTRA_STATE_RINGING.equals(stringExtra)) {
                    this.status = CallStatus.INCOMING_WAITING;
                    String stringExtra2 = intent.getStringExtra("incoming_number");
                    this.number = stringExtra2;
                    if (stringExtra2 == null) {
                        return;
                    }
                    PhoneCall.this.PhoneCallStartedAbstract(StartedStatus.Incoming, stringExtra2);
                    return;
                }
                if (TelephonyManager.EXTRA_STATE_OFFHOOK.equals(stringExtra)) {
                    if (this.status == CallStatus.INCOMING_WAITING) {
                        this.status = CallStatus.INCOMING_ANSWERED;
                        PhoneCall.this.IncomingCallAnswered(this.number);
                        return;
                    }
                    return;
                }
                if (TelephonyManager.EXTRA_STATE_IDLE.equals(stringExtra)) {
                    CallStatus callStatus = this.status;
                    if (callStatus == CallStatus.INCOMING_WAITING) {
                        PhoneCall.this.PhoneCallEndedAbstract(EndedStatus.IncomingRejected, this.number);
                    } else if (callStatus == CallStatus.INCOMING_ANSWERED) {
                        PhoneCall.this.PhoneCallEndedAbstract(EndedStatus.IncomingEnded, this.number);
                    } else if (callStatus == CallStatus.OUTGOING_WAITING) {
                        PhoneCall.this.PhoneCallEndedAbstract(EndedStatus.OutgoingEnded, this.number);
                    }
                    this.status = null;
                    this.number = "";
                    return;
                }
                return;
            }
            if ("android.intent.action.NEW_OUTGOING_CALL".equals(action)) {
                this.status = CallStatus.OUTGOING_WAITING;
                String stringExtra3 = intent.getStringExtra("android.intent.extra.PHONE_NUMBER");
                this.number = stringExtra3;
                PhoneCall.this.PhoneCallStartedAbstract(StartedStatus.Outgoing, stringExtra3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerCallStateMonitor() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.NEW_OUTGOING_CALL");
        intentFilter.addAction("android.intent.action.PHONE_STATE");
        ContextCompat.registerReceiver(this.context, this.callStateReceiver, intentFilter, 2);
        this.didRegisterReceiver = true;
    }

    private void unregisterCallStateMonitor() {
        if (this.didRegisterReceiver) {
            this.context.unregisterReceiver(this.callStateReceiver);
            this.didRegisterReceiver = false;
        }
    }

    @Override // com.google.appinventor.components.runtime.OnDestroyListener
    public void onDestroy() {
        unregisterCallStateMonitor();
    }
}
