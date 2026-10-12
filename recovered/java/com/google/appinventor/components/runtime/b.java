package com.google.appinventor.components.runtime;

import android.app.Notification;
import android.app.NotificationChannel;
import android.content.Context;
import java.nio.file.FileVisitor;
import java.nio.file.Path;

/* loaded from: classes.dex */
public abstract /* synthetic */ class b {
    public static /* synthetic */ Notification.Builder f(Context context, String str) {
        return new Notification.Builder(context, str);
    }

    public static /* synthetic */ NotificationChannel g() {
        return new NotificationChannel("FCMNotification", "FCMNotification", 5);
    }

    public static /* synthetic */ NotificationChannel i(String str, CharSequence charSequence, int i) {
        return new NotificationChannel(str, charSequence, i);
    }

    public static /* bridge */ /* synthetic */ FileVisitor l(Object obj) {
        return (FileVisitor) obj;
    }

    public static /* bridge */ /* synthetic */ Path m(Object obj) {
        return (Path) obj;
    }

    public static /* synthetic */ void r() {
    }
}
