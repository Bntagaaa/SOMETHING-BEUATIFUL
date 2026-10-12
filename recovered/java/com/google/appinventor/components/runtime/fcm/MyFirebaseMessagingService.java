package com.google.appinventor.components.runtime.fcm;

import android.content.Intent;
import android.os.Handler;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.NiotronFirebaseCloudMessaging;
import com.google.appinventor.components.runtime.util.JsonUtil;
import com.google.appinventor.components.runtime.util.YailDictionary;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Map;
import org.json.JSONException;

/* loaded from: classes.dex */
public class MyFirebaseMessagingService extends FirebaseMessagingService {
    public void handleIntent(Intent intent) {
        try {
            FirebaseApp.getInstance();
        } catch (IllegalStateException unused) {
            String[] strArrSplit = getSharedPreferences("NiotronFCM", 0).getString("data", ",,,,,").split(",");
            FirebaseApp.initializeApp(getApplicationContext(), new FirebaseOptions.Builder().setApiKey(strArrSplit[0]).setProjectId(strArrSplit[1]).setApplicationId(strArrSplit[2]).setGcmSenderId(strArrSplit[3]).setDatabaseUrl(strArrSplit[4]).setStorageBucket(strArrSplit[5]).build());
        }
        super.handleIntent(intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onMessageReceived(RemoteMessage remoteMessage) {
        Map data = remoteMessage.getData();
        Handler handler = new Handler(getMainLooper());
        final YailDictionary yailDictionary = new YailDictionary();
        for (Map.Entry entry : data.entrySet()) {
            yailDictionary.put(entry.getKey(), entry.getValue());
        }
        if (data.containsKey("message-notification")) {
            try {
                MessageStyleNotification.getInstance(this).showNotification(Integer.parseInt((String) data.get("id")), (String) data.get("group"), (String) data.get("message"), (String) data.get("sender"), Long.parseLong((String) data.get("timestamp")), (String) data.get(PropertyTypeConstants.PROPERTY_TYPE_COLOR), (String) data.get("largeImage"), JsonUtil.getJsonRepresentation(yailDictionary));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        } else if (data.containsKey("push-notification")) {
            try {
                PushNotification.getInstance(this).showNotification(Integer.parseInt((String) data.get("id")), (String) data.get("title"), (String) data.get(PropertyTypeConstants.PROPERTY_TYPE_TEXT), (String) data.get(PropertyTypeConstants.PROPERTY_TYPE_COLOR), (String) data.get("largeImage"), JsonUtil.getJsonRepresentation(yailDictionary));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.fcm.MyFirebaseMessagingService.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    NiotronFirebaseCloudMessaging.GotMessage(yailDictionary);
                } catch (NullPointerException unused) {
                }
            }
        });
    }

    public void onNewToken(String str) {
        FirebaseMessaging.getInstance().getToken().addOnCompleteListener(new OnCompleteListener<String>() { // from class: com.google.appinventor.components.runtime.fcm.MyFirebaseMessagingService.2
            public void onComplete(Task<String> task) {
                if (!task.isSuccessful()) {
                    Exception exception = task.getException();
                    StringWriter stringWriter = new StringWriter();
                    exception.printStackTrace(new PrintWriter(stringWriter));
                    NiotronFirebaseCloudMessaging.ErrorOccurred(stringWriter.toString());
                    return;
                }
                NiotronFirebaseCloudMessaging.GotUserToken((String) task.getResult());
            }
        });
    }
}
