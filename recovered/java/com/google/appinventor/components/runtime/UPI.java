package com.google.appinventor.components.runtime;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import java.util.ArrayList;

@DesignerComponent(category = ComponentCategory.MONETIZATION, description = "UPI (Unified Payment Interface) Payment Gateway. Use this to accept payment using UPI", iconName = "images/upi.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public class UPI extends AndroidNonvisibleComponent implements ActivityResultListener {
    private static String LOG_TAG = "Niotron UPI";
    private ComponentContainer container;
    private String receiverName;
    private int requestCode;
    private String result;
    private Intent resultIntent;
    private String transactionAmount;
    private String transactionNote;
    public String upiId;

    public UPI(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.upiId = "";
        this.container = componentContainer;
    }

    public void startTransaction(String str) {
        this.resultIntent = null;
        this.result = "";
        this.requestCode = 0;
        Uri uriBuild = Uri.parse("upi://pay").buildUpon().appendQueryParameter("pa", this.upiId).appendQueryParameter("pn", this.receiverName).appendQueryParameter("tn", this.transactionNote).appendQueryParameter("am", this.transactionAmount).appendQueryParameter("cu", "INR").build();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uriBuild);
        Intent intentCreateChooser = Intent.createChooser(intent, str);
        if (this.requestCode == 0) {
            this.requestCode = this.form.registerForActivityResult(this);
        }
        if (intentCreateChooser.resolveActivity(this.container.$context().getPackageManager()) != null) {
            try {
                this.container.$context().startActivityForResult(intentCreateChooser, this.requestCode);
            } catch (ActivityNotFoundException e) {
                Log.d(LOG_TAG, e.toString());
                ActivityNotFound();
            }
        }
    }

    @Override // com.google.appinventor.components.runtime.ActivityResultListener
    public void resultReturned(int i, int i2, Intent intent) {
        if (i == this.requestCode) {
            if (-1 != i2 && i2 != 11) {
                Log.d("UPI", "onActivityResult: Return data is null");
                ArrayList<String> arrayList = new ArrayList<>();
                arrayList.add("nothing");
                upiValidation(arrayList);
                return;
            }
            if (intent != null) {
                String stringExtra = intent.getStringExtra("response");
                Log.d("UPI", "onActivityResult: " + stringExtra);
                ArrayList<String> arrayList2 = new ArrayList<>();
                arrayList2.add(stringExtra);
                upiValidation(arrayList2);
                return;
            }
            Log.d("UPI", "onActivityResult: Return data is null");
            ArrayList<String> arrayList3 = new ArrayList<>();
            arrayList3.add("nothing");
            upiValidation(arrayList3);
        }
    }

    private void upiValidation(ArrayList<String> arrayList) {
        String str = arrayList.get(0);
        _COROUTINE.a.B("upiValidation: ", str, LOG_TAG);
        if (str == null) {
            str = "discard";
        }
        String lowerCase = "";
        String str2 = "";
        String str3 = str2;
        for (String str4 : str.split("&")) {
            String[] strArrSplit = str4.split("=");
            if (strArrSplit.length < 2) {
                str2 = "Payment cancelled by user.";
            } else if (strArrSplit[0].toLowerCase().equals("Status".toLowerCase())) {
                lowerCase = strArrSplit[1].toLowerCase();
            } else if (strArrSplit[0].toLowerCase().equals("ApprovalRefNo".toLowerCase()) || strArrSplit[0].toLowerCase().equals("txnRef".toLowerCase())) {
                str3 = strArrSplit[1];
            }
        }
        if (lowerCase.equalsIgnoreCase("Success")) {
            TransactionSuccessful(this.transactionAmount);
            _COROUTINE.a.B("responseStr: ", str3, LOG_TAG);
        } else if ("Payment cancelled by user.".equals(str2)) {
            TransactionCancelled();
        } else {
            TransactionFailed();
        }
    }

    @SimpleEvent(description = "Triggered when transaction successful")
    public void TransactionSuccessful(String str) {
        EventDispatcher.dispatchEvent(this, "PaymentSuccessful", str);
    }

    @SimpleEvent(description = "Triggered when Payment Fail")
    public void TransactionFailed() {
        EventDispatcher.dispatchEvent(this, "TransactionFailed", new Object[0]);
    }

    @SimpleEvent(description = "Triggered when Payment Cancel")
    public void TransactionCancelled() {
        EventDispatcher.dispatchEvent(this, "TransactionCancelled", new Object[0]);
    }

    @SimpleEvent(description = "Triggered when activity not found")
    public void ActivityNotFound() {
        EventDispatcher.dispatchEvent(this, "ActivityNotFound", new Object[0]);
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS)
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void UpiId(String str) {
        this.upiId = str.trim();
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS)
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ReceiverName(String str) {
        this.receiverName = str;
    }

    @SimpleProperty(category = PropertyCategory.GENERAL)
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Note(String str) {
        this.transactionNote = str;
    }

    @SimpleProperty(category = PropertyCategory.GENERAL)
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Amount(String str) {
        this.transactionAmount = str;
    }

    @SimpleFunction(description = "Starts the payment")
    public void Pay(String str) {
        startTransaction(str);
    }
}
