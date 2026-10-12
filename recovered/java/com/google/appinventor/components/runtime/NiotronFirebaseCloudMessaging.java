package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesAssets;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.annotations.UsesServices;
import com.google.appinventor.components.annotations.androidmanifest.ActionElement;
import com.google.appinventor.components.annotations.androidmanifest.IntentFilterElement;
import com.google.appinventor.components.annotations.androidmanifest.ServiceElement;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.fcm.MessageStyleNotification;
import com.google.appinventor.components.runtime.util.JsonUtil;
import com.google.appinventor.components.runtime.util.YailDictionary;
import com.google.appinventor.components.runtime.util.YailList;
import com.google.common.net.HttpHeaders;
import com.google.firebase.messaging.FirebaseMessaging;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import org.json.JSONException;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

@SimpleObject
@UsesAssets(fileNames = "reply.png")
@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.POST_NOTIFICATIONS, com.google.android.c2dm.permission.RECEIVE, android.permission.WAKE_LOCK, android.permission.VIBRATE, android.permission.ACCESS_NETWORK_STATE, android.permission.RECEIVE_BOOT_COMPLETED, com.sec.android.provider.badge.permission.READ, com.sec.android.provider.badge.permission.WRITE, com.htc.launcher.permission.READ_SETTINGS, com.htc.launcher.permission.UPDATE_SHORTCUT, com.sonyericsson.home.permission.BROADCAST_BADGE, com.sonymobile.home.permission.PROVIDER_INSERT_BADGE, com.anddoes.launcher.permission.UPDATE_COUNT, com.majeur.launcher.permission.UPDATE_BADGE, com.huawei.android.launcher.permission.CHANGE_BADGE, com.huawei.android.launcher.permission.READ_SETTINGS, com.huawei.android.launcher.permission.WRITE_SETTINGS, android.permission.READ_APP_BADGE, com.oppo.launcher.permission.READ_SETTINGS, com.oppo.launcher.permission.WRITE_SETTINGS, me.everything.badger.permission.BADGE_COUNT_READ, me.everything.badger.permission.BADGE_COUNT_WRITE, android.permission.FOREGROUND_SERVICE")
@DesignerComponent(category = ComponentCategory.FIREBASE, description = "Firebase Cloud Messaging (FCM) is a cross-platform messaging solution that lets you reliably send messages at no cost. Using FCM, you can notify a client app that new email or other data is available to sync. You can send notification messages to drive user re-engagement and retention. For use cases such as instant messaging, a message can transfer a payload of up to 4000 bytes to a client app", iconName = "images/firebaseCore.png", nonVisible = true, version = 2)
@UsesLibraries(libraries = "firebase-messaging.aar, firebase-messaging.jar, firebase-datatransport.aar, firebase-datatransport.jar, transport-backend-cct.aar, transport-backend-cct.jar, transport-runtime.aar, transport-runtime.jar, firebase-encoders-json.aar, firebase-encoders-json.jar, firebase-encoders-proto.jar, firebase-encoders.jar, firebase-installations.aar, firebase-installations.jar, firebase-common.aar, firebase-common.jar, firebase-components.aar, firebase-components.jar, firebase-installations-interop.aar, firebase-installations-interop.jar, transport-api.aar, transport-api.jar, play-services-base.aar, play-services-base.jar, play-services-stats.aar, play-services-stats.jar, firebase-measurement-connector.aar, firebase-measurement-connector.jar, firebase-iid-interop.aar, firebase-iid-interop.jar, play-services-cloud-messaging.aar, play-services-cloud-messaging.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, annotation.jar, firebase-annotations.jar, javax.inject.jar")
@UsesServices(services = {@ServiceElement(intentFilters = {@IntentFilterElement(actionElements = {@ActionElement(name = "com.google.firebase.MESSAGING_EVENT")})}, name = "com.google.appinventor.components.runtime.fcm.MyFirebaseMessagingService")})
/* loaded from: classes.dex */
public final class NiotronFirebaseCloudMessaging extends AndroidNonvisibleComponent {
    private static NiotronFirebaseCloudMessaging component;
    private Activity activity;
    private ComponentContainer componentContainer;
    private Context context;
    private FirebaseMessaging firebaseMessaging;

    public NiotronFirebaseCloudMessaging(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.componentContainer = componentContainer;
        this.context = componentContainer.$context();
        this.activity = componentContainer.$context();
        component = this;
        if (componentContainer.$form().isRepl()) {
            FailedToInitialize("This component cannot be used in the companion. Please build your app to test this component.");
            return;
        }
        this.firebaseMessaging = FirebaseMessaging.getInstance();
        String strValueOf = String.valueOf(Form.getStartValue());
        if (strValueOf.equals("reply_callback")) {
            GotReply("", "", 0, 0L, YailDictionary.makeDictionary());
        } else if (strValueOf.equals("notificationClick")) {
            MessageNotificationClicked("", 0, YailDictionary.makeDictionary());
        } else if (strValueOf.equals("pushNotificationClick")) {
            SimpleNotificationClicked(0, "", "", YailDictionary.makeDictionary());
        }
    }

    @SimpleEvent
    public void FailedToInitialize(String str) {
        EventDispatcher.dispatchEvent(this, "FailedToInitialize", str);
    }

    @SimpleEvent
    public void GotReply(String str, String str2, int i, long j, YailDictionary yailDictionary) {
        SharedPreferences sharedPreferences = this.context.getSharedPreferences("NiotronFCM", 0);
        String[] strArrSplit = sharedPreferences.getString("notificationData", "").split(",,##,,split,,##,,");
        try {
            EventDispatcher.dispatchEvent(this, "GotReply", strArrSplit[0], strArrSplit[2], strArrSplit[1], strArrSplit[4], JsonUtil.getObjectFromJson(sharedPreferences.getString("notificationDict", ""), true));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @SimpleEvent
    public void MessageNotificationClicked(String str, int i, YailDictionary yailDictionary) {
        SharedPreferences sharedPreferences = this.context.getSharedPreferences("NiotronFCM", 0);
        String[] strArrSplit = sharedPreferences.getString("notificationData1", "").split(",,##,,split,,##,,");
        try {
            EventDispatcher.dispatchEvent(this, "MessageNotificationClicked", strArrSplit[0], strArrSplit[1], JsonUtil.getObjectFromJson(sharedPreferences.getString("notificationDict", ""), true));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @SimpleEvent
    public void SimpleNotificationClicked(int i, String str, String str2, YailDictionary yailDictionary) {
        SharedPreferences sharedPreferences = this.context.getSharedPreferences("NiotronFCM", 0);
        String[] strArrSplit = sharedPreferences.getString("pushNotificationData", "").split(",,##,,split,,##,,");
        try {
            EventDispatcher.dispatchEvent(this, "SimpleNotificationClicked", strArrSplit[0], strArrSplit[1], strArrSplit[2], JsonUtil.getObjectFromJson(sharedPreferences.getString("notificationDict", ""), true));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @SimpleFunction
    public void SetScreenNameToStart(String str) {
        SharedPreferences.Editor editorEdit = this.context.getSharedPreferences("NiotronFCM", 0).edit();
        editorEdit.putString("ActivityName", buildActivityName(str));
        editorEdit.commit();
    }

    private String buildActivityName(String str) {
        String[] strArrSplit = this.activity.getClass().getName().split("\\.");
        return "com.niotron." + strArrSplit[2] + "." + strArrSplit[3] + "." + str;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @DesignerProperty
    public void Sound(String str) {
        SharedPreferences.Editor editorEdit = this.context.getSharedPreferences("NiotronFCM", 0).edit();
        editorEdit.putString("sound", str);
        editorEdit.commit();
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationManager notificationManager = (NotificationManager) this.context.getSystemService("notification");
            NotificationChannel notificationChannelG = b.g();
            notificationChannelG.setSound(Uri.fromFile(new java.io.File(str)), new AudioAttributes.Builder().setUsage(5).setContentType(1).build());
            notificationManager.createNotificationChannel(notificationChannelG);
        }
    }

    @SimpleProperty
    public String Sound() {
        return this.context.getSharedPreferences("NiotronFCM", 0).getString("sound", "");
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty
    public void SmallIcon(String str) {
        SharedPreferences.Editor editorEdit = this.context.getSharedPreferences("NiotronFCM", 0).edit();
        editorEdit.putString("smallIcon", str);
        editorEdit.commit();
    }

    @SimpleProperty
    public String SmallIcon() {
        return this.context.getSharedPreferences("NiotronFCM", 0).getString("smallIcon", "");
    }

    @SimpleFunction
    public void ClearNotification(int i) {
        MessageStyleNotification.getInstance(this.context).clearNotification(i);
    }

    @SimpleFunction
    public void GetUserToken() {
        if (this.componentContainer.$form().isRepl()) {
            ErrorOccurred("This component cannot be used in the companion. Please build your app to test this component.");
        } else {
            this.firebaseMessaging.getToken().addOnCompleteListener(new OnCompleteListener<String>() { // from class: com.google.appinventor.components.runtime.NiotronFirebaseCloudMessaging.1
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

    @SimpleFunction
    public void SendNotification(String str, String str2, String str3, String str4, String str5, String str6, YailList yailList, YailDictionary yailDictionary, String str7) {
        sendNotification(str, str2, str3, str4, str5, str6, yailList, yailDictionary, str7);
    }

    @SimpleFunction
    public void SendMessageNotification(String str, String str2, String str3, int i, long j, String str4, String str5, String str6, YailList yailList, String str7) {
        sendMessageNotification(str, str2, str3, i, j, str4, "", str5, str6, yailList, str7);
    }

    @SimpleFunction
    public void SendPushNotification(String str, String str2, int i, String str3, String str4, String str5, String str6, YailList yailList, String str7) {
        sendPushNotification(str, str2, i, str3, str4, str5, str6, yailList, str7);
    }

    @SimpleFunction
    public void SendMessage(String str, String str2, YailList yailList, YailDictionary yailDictionary, String str3) {
        sendData(str, str2, yailList, yailDictionary, str3);
    }

    @SimpleFunction
    public void SubscribeToTopic(final String str) {
        if (this.componentContainer.$form().isRepl()) {
            ErrorOccurred("This component cannot be used in the companion. Please build your app to test this component.");
        } else {
            this.firebaseMessaging.subscribeToTopic(str).addOnCompleteListener(new OnCompleteListener<Void>() { // from class: com.google.appinventor.components.runtime.NiotronFirebaseCloudMessaging.2
                public void onComplete(Task<Void> task) {
                    NiotronFirebaseCloudMessaging.this.SubscribeToTopicResult(str, task.isSuccessful());
                }
            });
        }
    }

    @SimpleFunction
    public void UnsubscribeFromTopic(final String str) {
        if (this.componentContainer.$form().isRepl()) {
            ErrorOccurred("This component cannot be used in the companion. Please build your app to test this component.");
        } else {
            this.firebaseMessaging.unsubscribeFromTopic(str).addOnCompleteListener(new OnCompleteListener<Void>() { // from class: com.google.appinventor.components.runtime.NiotronFirebaseCloudMessaging.3
                public void onComplete(Task<Void> task) {
                    NiotronFirebaseCloudMessaging.this.UnsubscribeToTopicResult(str, task.isSuccessful());
                }
            });
        }
    }

    @SimpleEvent
    public void SubscribeToTopicResult(String str, boolean z) {
        EventDispatcher.dispatchEvent(this, "SubscribedToTopic", str, Boolean.valueOf(z));
    }

    @SimpleEvent
    public void UnsubscribeToTopicResult(String str, boolean z) {
        EventDispatcher.dispatchEvent(this, "UnsubscribeToTopicResult", str, Boolean.valueOf(z));
    }

    @SimpleEvent
    public static void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(component, "ErrorOccurred", str);
    }

    @SimpleEvent
    public static void GotUserToken(String str) {
        EventDispatcher.dispatchEvent(component, "GotUserToken", str);
    }

    @SimpleEvent
    public static void GotMessage(YailDictionary yailDictionary) {
        EventDispatcher.dispatchEvent(component, "GotMessage", yailDictionary);
    }

    @SimpleEvent
    public static void NotificationSentResult(int i, String str) {
        EventDispatcher.dispatchEvent(component, "NotificationSentResult", Integer.valueOf(i), str);
    }

    public void sendNotification(String str, String str2, String str3, String str4, String str5, String str6, YailList yailList, YailDictionary yailDictionary, String str7) {
        String string;
        try {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            if (yailList.size() == 1) {
                string = yailList.getString(0);
            } else {
                for (String str8 : yailList.toStringArray()) {
                    jSONArray.add(str8);
                }
                string = "";
            }
            HashMap map = new HashMap();
            for (Object obj : yailDictionary.keySet()) {
                map.put(obj.toString(), yailDictionary.get(obj).toString());
            }
            org.json.JSONObject jSONObject2 = new org.json.JSONObject(map);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("title", str);
            jSONObject3.put("body", str2);
            jSONObject3.put(PropertyTypeConstants.PROPERTY_TYPE_COLOR, str3);
            jSONObject3.put("tag", str4);
            jSONObject.put("notification", jSONObject3);
            jSONObject.put("data", jSONObject2);
            jSONObject.put("priority", str6);
            jSONObject.put("condition", str5);
            if (!string.equals("")) {
                jSONObject.put("to", string);
            } else {
                jSONObject.put("registration_ids", jSONArray);
            }
            createPostRequest(jSONObject.toJSONString(), str7);
        } catch (Exception e) {
            ErrorOccurred(e.getMessage() + e.toString());
        }
    }

    public void sendMessageNotification(String str, String str2, String str3, int i, long j, String str4, String str5, String str6, String str7, YailList yailList, String str8) {
        String string;
        try {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            if (yailList.size() == 1) {
                string = yailList.getString(0);
            } else {
                for (String str9 : yailList.toStringArray()) {
                    jSONArray.add(str9);
                }
                string = "";
            }
            HashMap map = new HashMap();
            map.put("message-notification", "true");
            map.put("id", String.valueOf(i));
            map.put("group", str2);
            map.put("timestamp", String.valueOf(j));
            map.put("message", str);
            map.put("sender", str3);
            map.put(PropertyTypeConstants.PROPERTY_TYPE_COLOR, str4);
            map.put("largeIcon", str5);
            jSONObject.put("data", new org.json.JSONObject(map));
            jSONObject.put("priority", str7);
            jSONObject.put("condition", str6);
            if (!string.equals("")) {
                jSONObject.put("to", string);
            } else {
                jSONObject.put("registration_ids", jSONArray);
            }
            createPostRequest(jSONObject.toJSONString(), str8);
        } catch (Exception e) {
            ErrorOccurred(e.getMessage() + e.toString());
        }
    }

    public void sendPushNotification(String str, String str2, int i, String str3, String str4, String str5, String str6, YailList yailList, String str7) {
        String string;
        try {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            if (yailList.size() == 1) {
                string = yailList.getString(0);
            } else {
                for (String str8 : yailList.toStringArray()) {
                    jSONArray.add(str8);
                }
                string = "";
            }
            HashMap map = new HashMap();
            map.put("push-notification", "true");
            map.put("id", String.valueOf(i));
            map.put(PropertyTypeConstants.PROPERTY_TYPE_TEXT, str2);
            map.put("title", str);
            map.put(PropertyTypeConstants.PROPERTY_TYPE_COLOR, str3);
            map.put("largeIcon", str4);
            jSONObject.put("data", new org.json.JSONObject(map));
            jSONObject.put("priority", str6);
            jSONObject.put("condition", str5);
            if (!string.equals("")) {
                jSONObject.put("to", string);
            } else {
                jSONObject.put("registration_ids", jSONArray);
            }
            createPostRequest(jSONObject.toJSONString(), str7);
        } catch (Exception e) {
            ErrorOccurred(e.getMessage() + e.toString());
        }
    }

    public void sendData(String str, String str2, YailList yailList, YailDictionary yailDictionary, String str3) {
        String string;
        try {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            if (yailList.size() == 1) {
                string = yailList.getString(0);
            } else {
                for (String str4 : yailList.toStringArray()) {
                    jSONArray.add(str4);
                }
                string = "";
            }
            HashMap map = new HashMap();
            for (Object obj : yailDictionary.keySet()) {
                map.put(obj.toString(), yailDictionary.get(obj).toString());
            }
            jSONObject.put("data", new org.json.JSONObject(map));
            jSONObject.put("priority", str2);
            jSONObject.put("condition", str);
            if (!string.equals("")) {
                jSONObject.put("to", string);
            } else {
                jSONObject.put("registration_ids", jSONArray);
            }
            createPostRequest(jSONObject.toJSONString(), str3);
        } catch (Exception e) {
            ErrorOccurred(e.getMessage() + e.toString());
        }
    }

    public void createPostRequest(final String str, final String str2) {
        new Thread() { // from class: com.google.appinventor.components.runtime.NiotronFirebaseCloudMessaging.4
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws IOException {
                try {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://fcm.googleapis.com/fcm/send").openConnection();
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setRequestProperty(HttpHeaders.AUTHORIZATION, "key=" + str2);
                    httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
                    httpURLConnection.getOutputStream().write(str.getBytes(StandardCharsets.UTF_8));
                    final int responseCode = httpURLConnection.getResponseCode();
                    final String responseMessage = httpURLConnection.getResponseMessage();
                    httpURLConnection.disconnect();
                    NiotronFirebaseCloudMessaging.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronFirebaseCloudMessaging.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronFirebaseCloudMessaging.NotificationSentResult(responseCode, responseMessage);
                        }
                    });
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }
}
