package com.google.appinventor.components.runtime.util;

import _COROUTINE.a;
import android.R;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.PhoneNumberUtils;
import android.telephony.SmsMessage;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.google.appinventor.components.runtime.ReplForm;
import com.google.appinventor.components.runtime.Texting;

/* loaded from: classes.dex */
public class GoogleVoiceSmsBroadcastReceiver extends BroadcastReceiver {
    public static final int NOTIFICATION_ID = 8647;
    public static final String TAG = "SmsBroadcastReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Log.i("SmsBroadcastReceiver", "onReceive");
        String phoneNumber = getPhoneNumber(intent);
        String message = getMessage(intent);
        Log.i("SmsBroadcastReceiver", "Received " + phoneNumber + " : " + message);
        int iIsReceivingEnabled = Texting.isReceivingEnabled(context);
        if (iIsReceivingEnabled == 1) {
            Log.i("SmsBroadcastReceiver", context.getApplicationInfo().packageName + " Receiving is not enabled, ignoring message.");
            return;
        }
        if ((iIsReceivingEnabled == 2 || isRepl(context)) && !Texting.isRunning()) {
            Log.i("SmsBroadcastReceiver", context.getApplicationInfo().packageName + " Texting isn't running, and either receivingEnabled is FOREGROUND or we are the repl.");
            return;
        }
        Texting.handledReceivedMessage(context, phoneNumber, message);
        if (Texting.isRunning()) {
            Log.i("SmsBroadcastReceiver", context.getApplicationInfo().packageName + " App in Foreground, delivering message.");
            return;
        }
        Log.i("SmsBroadcastReceiver", context.getApplicationInfo().packageName + " Texting isn't running, but receivingEnabled == 2, sending notification.");
        sendNotification(context, phoneNumber, message);
    }

    private String getPhoneNumber(Intent intent) {
        String number = "";
        try {
            if (intent.getAction().equals("com.google.android.apps.googlevoice.SMS_RECEIVED")) {
                return PhoneNumberUtils.formatNumber(intent.getExtras().getString(Texting.PHONE_NUMBER_TAG));
            }
            if (SdkLevel.getLevel() >= 19) {
                for (SmsMessage smsMessage : KitkatUtil.getMessagesFromIntent(intent)) {
                    if (smsMessage != null) {
                        String originatingAddress = smsMessage.getOriginatingAddress();
                        if (SdkLevel.getLevel() >= 21) {
                            number = LollipopUtil.formatNumber(originatingAddress);
                        } else {
                            number = PhoneNumberUtils.formatNumber(originatingAddress);
                        }
                    }
                }
                return number;
            }
            for (Object obj : (Object[]) intent.getExtras().get("pdus")) {
                number = PhoneNumberUtils.formatNumber(SmsMessage.createFromPdu((byte[]) obj).getOriginatingAddress());
            }
            return number;
        } catch (NullPointerException e) {
            Log.w("SmsBroadcastReceiver", "Unable to retrieve originating address from SmsMessage", e);
            return "";
        }
    }

    private String getMessage(Intent intent) {
        try {
            if (intent.getAction().equals("com.google.android.apps.googlevoice.SMS_RECEIVED")) {
                return intent.getExtras().getString(Texting.MESSAGE_TAG);
            }
            if (SdkLevel.getLevel() >= 19) {
                StringBuilder sb = new StringBuilder();
                for (SmsMessage smsMessage : KitkatUtil.getMessagesFromIntent(intent)) {
                    if (smsMessage != null) {
                        sb.append(smsMessage.getMessageBody());
                    }
                }
                return sb.toString();
            }
            StringBuilder sb2 = new StringBuilder();
            for (Object obj : (Object[]) intent.getExtras().get("pdus")) {
                sb2.append(SmsMessage.createFromPdu((byte[]) obj).getMessageBody());
            }
            return sb2.toString();
        } catch (NullPointerException e) {
            Log.w("SmsBroadcastReceiver", "Unable to retrieve message body from SmsMessage", e);
            return "";
        }
    }

    private void sendNotification(Context context, String str, String str2) {
        Log.i("SmsBroadcastReceiver", "sendingNotification " + str + ":" + str2);
        String packageName = context.getPackageName();
        a.C("Package name : ", packageName, "SmsBroadcastReceiver");
        try {
            String str3 = packageName + ".Screen1";
            Intent intent = new Intent(context, Class.forName(str3));
            intent.setAction("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.addFlags(805306368);
            PendingIntent activity = PendingIntent.getActivity(context, 0, intent, 201326592);
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            NotificationCompat.Builder defaults = new NotificationCompat.Builder(context).setSmallIcon(R.drawable.sym_call_incoming).setTicker(str + " : " + str2).setWhen(System.currentTimeMillis()).setAutoCancel(true).setDefaults(1);
            StringBuilder sb = new StringBuilder("Sms from ");
            sb.append(str);
            notificationManager.notify(null, 8647, defaults.setContentTitle(sb.toString()).setContentText(str2).setContentIntent(activity).setNumber(Texting.getCachedMsgCount()).build());
            Log.i("SmsBroadcastReceiver", "Notification sent, classname: " + str3);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    private boolean isRepl(Context context) {
        try {
            String packageName = context.getPackageName();
            StringBuilder sb = new StringBuilder();
            sb.append(packageName);
            sb.append(".Screen1");
            return Class.forName(sb.toString()).getSuperclass().equals(ReplForm.class);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }
}
