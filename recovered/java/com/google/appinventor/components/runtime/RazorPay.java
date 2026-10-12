package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesActivities;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.annotations.androidmanifest.ActivityElement;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.razorpay.Checkout;
import com.razorpay.PaymentResultListener;
import org.json.JSONException;
import org.json.JSONObject;

@SimpleObject
@UsesActivities(activities = {@ActivityElement(name = "com.google.appinventor.components.runtime.RazorPay$RazorActivity")})
@UsesPermissions(permissionNames = "android.permission.INTERNET")
@DesignerComponent(category = ComponentCategory.INTERNAL, description = "Razorpay payment gateway for users. Allows you to receive payment using mulltiple providers", iconName = "images/razorpay.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "razorpay.aar, razorpay.jar, play-services-auth.aar, play-services-auth.jar, play-services-auth-api-phone.aar, play-services-auth-api-phone.jar, play-services-wallet.aar, play-services-wallet.jar, play-services-auth-base.aar, play-services-auth-base.jar, play-services-identity.aar, play-services-identity.jar, play-services-maps.aar, play-services-maps.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, annotation.jar")
/* loaded from: classes.dex */
public final class RazorPay extends AndroidNonvisibleComponent {
    private static String API_KEY = "";
    private static String TAG = "RazorPay Niotron";
    private static Activity activity = null;
    private static float amount = 100.0f;
    private static String contact = "";
    private static String currency = "";
    private static String description = "";
    private static String email = "";
    private static String image = "";
    private static String name = "";
    private static String orderId = "";
    private static RazorPay razorPay;
    private Context context;

    public RazorPay(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.context = componentContainer.$context();
        activity = componentContainer.$context();
        razorPay = this;
        Checkout.preload(this.context);
    }

    public static class RazorActivity extends Activity implements PaymentResultListener {
        @Override // android.app.Activity
        public void onCreate(Bundle bundle) throws JSONException {
            super.onCreate(bundle);
            Checkout checkout = new Checkout();
            checkout.setKeyID(RazorPay.API_KEY);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", RazorPay.name);
                jSONObject.put("name", RazorPay.name);
                jSONObject.put("description", RazorPay.description);
                jSONObject.put("image", RazorPay.image);
                jSONObject.put("currency", RazorPay.currency);
                jSONObject.put("order_id", RazorPay.orderId);
                jSONObject.put("amount", RazorPay.amount);
                jSONObject.put("prefill.email", RazorPay.email);
                jSONObject.put("prefill.contact", RazorPay.contact);
                checkout.open(this, jSONObject);
            } catch (Exception e) {
                Log.d(RazorPay.TAG, e.toString());
                RazorPay.ErrorOccurred(e.toString());
            }
        }

        public void onPaymentSuccess(String str) {
            try {
                RazorPay.OnPaymentSuccessful(str);
            } catch (Exception e) {
                Log.d(RazorPay.TAG, "Exception in onPaymentSuccess", e);
            }
            finish();
        }

        public void onPaymentError(int i, String str) {
            try {
                RazorPay.OnPaymentFail(i, str);
            } catch (Exception e) {
                Log.d(RazorPay.TAG, "Exception in onPaymentError", e);
            }
            finish();
        }
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set API KEY")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    @Deprecated
    public void ApiKey(String str) {
        API_KEY = str;
    }

    @SimpleProperty(description = "Name of the reciever")
    @Deprecated
    public void RecieverName(String str) {
        name = str;
    }

    @SimpleProperty(description = "Description for the payment")
    @Deprecated
    public void Description(String str) {
        description = str;
    }

    @SimpleProperty(description = "Logo of the receiver")
    @Deprecated
    public void ReceiverLogo(String str) {
        image = str;
    }

    @SimpleProperty(description = "Description for the payment")
    @Deprecated
    public void Currency(String str) {
        currency = str;
    }

    @SimpleProperty(description = "Amount for the payment")
    @Deprecated
    public void Amount(float f) {
        amount = f * 100.0f;
    }

    @SimpleProperty
    @Deprecated
    public void OrderId(String str) {
        orderId = str;
    }

    @SimpleProperty(description = "Prefilled email address")
    @Deprecated
    public void PrefillEmail(String str) {
        email = str;
    }

    @SimpleProperty(description = "Prefilled contact number")
    @Deprecated
    public void PrefillContact(String str) {
        contact = str;
    }

    @SimpleEvent(description = "Raises on payment successfull")
    @Deprecated
    public static void OnPaymentSuccessful(String str) {
        EventDispatcher.dispatchEvent(razorPay, "PaymentSuccess", str);
    }

    @SimpleEvent(description = "Raises on payment fails")
    @Deprecated
    public static void OnPaymentFail(int i, String str) {
        EventDispatcher.dispatchEvent(razorPay, "OnPaymentFail", Integer.valueOf(i), str);
    }

    @SimpleFunction(description = "")
    @Deprecated
    public void StartPayment() {
        activity.startActivity(new Intent(activity, (Class<?>) RazorActivity.class));
    }

    @SimpleEvent
    @Deprecated
    public static void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(razorPay, "ErrorOccurred", str);
    }
}
