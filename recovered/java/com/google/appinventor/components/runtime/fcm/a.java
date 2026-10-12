package com.google.appinventor.components.runtime.fcm;

import android.app.Notification;
import java.util.concurrent.CompletionException;
import java.util.function.BiFunction;

/* loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static /* synthetic */ Notification.MessagingStyle.Message a(CharSequence charSequence, long j, CharSequence charSequence2) {
        return new Notification.MessagingStyle.Message(charSequence, j, charSequence2);
    }

    public static /* bridge */ /* synthetic */ CompletionException l(Throwable th) {
        return (CompletionException) th;
    }

    public static /* bridge */ /* synthetic */ BiFunction m(Object obj) {
        return (BiFunction) obj;
    }

    public static /* synthetic */ void p() {
    }

    public static /* bridge */ /* synthetic */ boolean x(Throwable th) {
        return th instanceof CompletionException;
    }
}
