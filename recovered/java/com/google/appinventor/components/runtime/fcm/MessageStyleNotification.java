package com.google.appinventor.components.runtime.fcm;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import androidx.core.os.f;
import androidx.vectordrawable.graphics.drawable.c;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.b;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class MessageStyleNotification {
    private static List<Message> MESSAGES = new ArrayList();
    private static MessageStyleNotification self;
    private Notification.Builder builder;
    private String channelName = "FCMNotification";
    private Context context;
    private NotificationManager notificationManager;

    public static class Message {
        private int id;
        private CharSequence sender;
        private CharSequence text;
        private long timestamp;

        public Message(CharSequence charSequence, CharSequence charSequence2, long j, int i) {
            this.text = charSequence;
            this.sender = charSequence2;
            this.timestamp = j;
            this.id = i;
        }

        public CharSequence getText() {
            return this.text;
        }

        public long getTimestamp() {
            return this.timestamp;
        }

        public CharSequence getSender() {
            return this.sender;
        }

        public int getId() {
            return this.id;
        }
    }

    public static class InputReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public synchronized void onReceive(Context context, Intent intent) {
            try {
                Bundle resultsFromIntent = RemoteInput.getResultsFromIntent(intent);
                SharedPreferences sharedPreferences = context.getSharedPreferences("NiotronFCM", 0);
                Log.e("FCM", "Remote input value = " + String.valueOf(resultsFromIntent != null));
                if (resultsFromIntent != null) {
                    CharSequence charSequence = resultsFromIntent.getCharSequence("key_text_reply");
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    MessageStyleNotification.MESSAGES.add(new Message(charSequence, "", jCurrentTimeMillis, intent.getIntExtra("id", 1)));
                    Intent intent2 = new Intent();
                    String packageName = context.getPackageName();
                    intent2.setClassName(packageName, sharedPreferences.getString("ActivityName", packageName + ".Screen1"));
                    SharedPreferences.Editor editorEdit = context.getSharedPreferences("NiotronFCM", 0).edit();
                    editorEdit.putString("notificationData", TextUtils.join(",,##,,split,,##,,", new Object[]{charSequence.toString(), String.valueOf(intent.getIntExtra("id", 1)), intent.getStringExtra("group"), intent.getStringExtra("sender"), String.valueOf(jCurrentTimeMillis)}));
                    editorEdit.putString("notificationDict", intent.getStringExtra("data"));
                    editorEdit.commit();
                    intent2.putExtra("APP_INVENTOR_START", "reply_callback");
                    intent2.addFlags(872415232);
                    context.startActivity(intent2);
                } else {
                    Intent intent3 = new Intent();
                    String packageName2 = context.getPackageName();
                    intent3.setClassName(packageName2, sharedPreferences.getString("ActivityName", packageName2 + ".Screen1"));
                    SharedPreferences.Editor editorEdit2 = context.getSharedPreferences("NiotronFCM", 0).edit();
                    editorEdit2.putString("notificationData1", TextUtils.join(",,##,,split,,##,,", new Object[]{intent.getStringExtra("group"), String.valueOf(intent.getIntExtra("id", 1))}));
                    editorEdit2.putString("notificationDict", intent.getStringExtra("data"));
                    editorEdit2.commit();
                    intent3.putExtra("APP_INVENTOR_START", "notificationClick");
                    intent3.addFlags(872415232);
                    context.startActivity(intent3);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public MessageStyleNotification(Context context) {
        this.context = context;
    }

    public static MessageStyleNotification getInstance(Context context) {
        if (self == null) {
            self = new MessageStyleNotification(context);
        }
        return self;
    }

    public void showNotification(final int i, String str, String str2, String str3, long j, String str4, final String str5, String str6) {
        Uri defaultUri;
        Icon appIcon;
        initChannelNotification(5, "FCMNotification");
        String str7 = str4 == null ? "#FFFFFF" : str4;
        RemoteInput remoteInputBuild = new RemoteInput.Builder("key_text_reply").setLabel("Your answer...").build();
        Intent intent = new Intent(this.context, (Class<?>) InputReceiver.class);
        intent.putExtra("group", str);
        intent.putExtra("id", i);
        intent.putExtra(PropertyTypeConstants.PROPERTY_TYPE_COLOR, str7);
        intent.putExtra("sender", str3);
        intent.putExtra("data", str6);
        intent.setAction(Long.toString(System.currentTimeMillis()));
        PendingIntent broadcast = PendingIntent.getBroadcast(this.context, 0, intent, Build.VERSION.SDK_INT >= 31 ? 1107296256 : 1073741824);
        Notification.Action actionBuild = c.b(Icon.createWithBitmap(getBitmap("reply.png")), broadcast).addRemoteInput(remoteInputBuild).build();
        Notification.MessagingStyle messagingStyleD = f.d();
        messagingStyleD.setConversationTitle(str);
        MESSAGES.add(new Message(str2, str3, j, i));
        for (Message message : MESSAGES) {
            if (message.getId() == i) {
                a.p();
                messagingStyleD.addMessage(a.a(message.getText(), message.getTimestamp(), message.getSender()));
            }
        }
        this.builder.setContentIntent(broadcast);
        this.builder.setStyle(messagingStyleD);
        this.builder.addAction(actionBuild);
        if (Build.VERSION.SDK_INT < 26) {
            this.builder.setPriority(1);
        }
        this.builder.setCategory(NotificationCompat.CATEGORY_MESSAGE);
        this.builder.setAutoCancel(true);
        this.builder.setOnlyAlertOnce(true);
        SharedPreferences sharedPreferences = this.context.getSharedPreferences("NiotronFCM", 0);
        try {
            if (sharedPreferences.getString("sound", null) != null) {
                defaultUri = Uri.parse(new File(sharedPreferences.getString("sound", "")).getPath());
            } else {
                defaultUri = RingtoneManager.getDefaultUri(2);
            }
            this.builder.setSound(defaultUri);
            if (sharedPreferences.getString("smallIcon", null) != null) {
                appIcon = Icon.createWithBitmap(BitmapFactory.decodeFile(sharedPreferences.getString("smallIcon", "")));
            } else {
                appIcon = getAppIcon();
            }
            this.builder.setSmallIcon(appIcon);
        } catch (Exception unused) {
        }
        this.builder.setVibrate(new long[]{500, 500, 500, 500, 500, 500, 500, 500, 500});
        this.builder.setColor(Color.parseColor(str7));
        if (str5 != null) {
            if (!str5.equals("")) {
                new Thread() { // from class: com.google.appinventor.components.runtime.fcm.MessageStyleNotification.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() throws IOException {
                        Bitmap bitmapDecodeStream;
                        Log.e("FCM", "Downloading img");
                        try {
                            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str5).openConnection();
                            httpURLConnection.setDoInput(true);
                            httpURLConnection.connect();
                            bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                        } catch (Exception unused2) {
                            bitmapDecodeStream = null;
                        }
                        if (bitmapDecodeStream != null) {
                            MessageStyleNotification.this.builder.setLargeIcon(Bitmap.createScaledBitmap(bitmapDecodeStream, 96, 96, false));
                            MessageStyleNotification.this.notificationManager.notify(i, MessageStyleNotification.this.builder.build());
                            MessageStyleNotification.this.playSound();
                            Log.e("FCM", "bitmap added");
                        } else {
                            MessageStyleNotification.this.notificationManager.notify(i, MessageStyleNotification.this.builder.build());
                            MessageStyleNotification.this.playSound();
                            Log.e("FCM", "bitmap null");
                        }
                        Log.e("FCM", "Done");
                    }
                }.start();
                return;
            }
            this.notificationManager.notify(i, this.builder.build());
            playSound();
            Log.e("FCM", "Notified");
            return;
        }
        this.notificationManager.notify(i, this.builder.build());
        playSound();
        Log.e("FCM", "Notified");
    }

    public void playSound() {
        try {
            RingtoneManager.getRingtone(this.context, RingtoneManager.getDefaultUri(2)).play();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void clearNotification(int i) {
        initChannelNotification(5, "Notifications");
        this.notificationManager.cancel(i);
    }

    public Icon getAppIcon() {
        Bitmap bitmapCreateBitmap;
        Drawable applicationIcon = this.context.getPackageManager().getApplicationIcon(this.context.getApplicationInfo());
        if (applicationIcon instanceof BitmapDrawable) {
            bitmapCreateBitmap = ((BitmapDrawable) applicationIcon).getBitmap();
        } else {
            bitmapCreateBitmap = Bitmap.createBitmap(applicationIcon.getIntrinsicWidth(), applicationIcon.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        }
        return Icon.createWithBitmap(Bitmap.createScaledBitmap(bitmapCreateBitmap, 96, 96, false));
    }

    public Bitmap getBitmap(String str) {
        try {
            return BitmapFactory.decodeStream(this.context.getAssets().open(str));
        } catch (Exception unused) {
            return null;
        }
    }

    public void initChannelNotification(int i, String str) {
        if (this.notificationManager == null) {
            this.notificationManager = (NotificationManager) this.context.getSystemService("notification");
        }
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannel = this.notificationManager.getNotificationChannel(str);
            if (notificationChannel == null) {
                b.r();
                notificationChannel = b.i(str, this.channelName, i);
                this.notificationManager.createNotificationChannel(notificationChannel);
            }
            notificationChannel.setImportance(i);
            notificationChannel.setVibrationPattern(new long[]{500, 500, 500, 500, 500, 500, 500, 500, 500});
            notificationChannel.enableVibration(true);
            this.builder = b.f(this.context, str);
            return;
        }
        this.builder = new Notification.Builder(this.context);
    }
}
