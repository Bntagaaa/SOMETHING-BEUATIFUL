package com.google.appinventor.components.runtime.fcm;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
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
import android.text.TextUtils;
import android.util.Log;
import com.google.appinventor.components.runtime.b;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: classes.dex */
public class PushNotification {
    private static PushNotification self;
    private Notification.Builder builder;
    private String channelName = "FCMNotification";
    private Context context;
    private NotificationManager notificationManager;

    public PushNotification(Context context) {
        this.context = context;
    }

    public static PushNotification getInstance(Context context) {
        if (self == null) {
            self = new PushNotification(context);
        }
        return self;
    }

    public void showNotification(final int i, String str, String str2, String str3, final String str4, String str5) {
        boolean z;
        Uri defaultUri;
        Icon appIcon;
        initChannelNotification(5, "FCMNotification");
        String str6 = str3 == null ? "#FFFFFF" : str3;
        String packageName = this.context.getPackageName();
        SharedPreferences sharedPreferences = this.context.getSharedPreferences("NiotronFCM", 0);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString("pushNotificationData", TextUtils.join(",,##,,split,,##,,", new Object[]{String.valueOf(i), str, str2}));
        editorEdit.putString("notificationDict", str5);
        editorEdit.commit();
        Intent intent = new Intent();
        intent.setClassName(packageName, sharedPreferences.getString("ActivityName", packageName + ".Screen1"));
        intent.putExtra("APP_INVENTOR_START", "pushNotificationClick");
        intent.addFlags(872415232);
        Context context = this.context;
        int i2 = Build.VERSION.SDK_INT;
        PendingIntent activity = PendingIntent.getActivity(context, 0, intent, i2 >= 31 ? 1107296256 : 1073741824);
        this.builder.setContentText(str2);
        this.builder.setContentTitle(str);
        this.builder.setContentIntent(activity);
        if (i2 < 26) {
            z = true;
            this.builder.setPriority(1);
        } else {
            z = true;
        }
        this.builder.setAutoCancel(z);
        this.builder.setOnlyAlertOnce(z);
        SharedPreferences sharedPreferences2 = this.context.getSharedPreferences("NiotronFCM", 0);
        try {
            if (sharedPreferences2.getString("sound", null) != null) {
                defaultUri = Uri.parse(new File(sharedPreferences2.getString("sound", "")).getPath());
            } else {
                defaultUri = RingtoneManager.getDefaultUri(2);
            }
            this.builder.setSound(defaultUri);
            if (sharedPreferences2.getString("smallIcon", null) != null) {
                appIcon = Icon.createWithBitmap(BitmapFactory.decodeFile(sharedPreferences2.getString("smallIcon", "")));
            } else {
                appIcon = getAppIcon();
            }
            this.builder.setSmallIcon(appIcon);
        } catch (Exception unused) {
        }
        this.builder.setVibrate(new long[]{500, 500, 500, 500, 500, 500, 500, 500, 500});
        this.builder.setColor(Color.parseColor(str6));
        if (str4 != null) {
            if (!str4.equals("")) {
                new Thread() { // from class: com.google.appinventor.components.runtime.fcm.PushNotification.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() throws IOException {
                        Bitmap bitmapDecodeStream;
                        Log.e("FCM", "Downloading img");
                        try {
                            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str4).openConnection();
                            httpURLConnection.setDoInput(true);
                            httpURLConnection.connect();
                            bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                        } catch (Exception unused2) {
                            bitmapDecodeStream = null;
                        }
                        if (bitmapDecodeStream != null) {
                            PushNotification.this.builder.setLargeIcon(Bitmap.createScaledBitmap(bitmapDecodeStream, 96, 96, false));
                            PushNotification.this.notificationManager.notify(i, PushNotification.this.builder.build());
                            PushNotification.this.playSound();
                            Log.e("FCM", "bitmap added");
                        } else {
                            PushNotification.this.notificationManager.notify(i, PushNotification.this.builder.build());
                            PushNotification.this.playSound();
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
