package com.google.appinventor.components.runtime.util;

import android.content.Intent;
import android.provider.Telephony;
import android.telephony.SmsMessage;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class KitkatUtil {
    private KitkatUtil() {
    }

    public static List<SmsMessage> getMessagesFromIntent(Intent intent) {
        ArrayList arrayList = new ArrayList();
        SmsMessage[] messagesFromIntent = Telephony.Sms.Intents.getMessagesFromIntent(intent);
        if (messagesFromIntent != null && messagesFromIntent.length >= 0) {
            Collections.addAll(arrayList, messagesFromIntent);
        }
        return arrayList;
    }

    public static int getMinWidth(TextView textView) {
        return textView.getMinWidth();
    }

    public static int getMinHeight(TextView textView) {
        return textView.getMinHeight();
    }
}
