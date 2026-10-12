package androidx.core.os;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Message;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class MessageCompat {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f1135a = true;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f1136b = true;

    @SuppressLint({"NewApi"})
    public static void setAsynchronous(@NonNull Message message, boolean z) {
        if (Build.VERSION.SDK_INT >= 22) {
            a.b(message, z);
        } else if (f1135a) {
            try {
                a.b(message, z);
            } catch (NoSuchMethodError unused) {
                f1135a = false;
            }
        }
    }

    @SuppressLint({"NewApi"})
    public static boolean isAsynchronous(@NonNull Message message) {
        if (Build.VERSION.SDK_INT >= 22) {
            return a.a(message);
        }
        if (f1136b) {
            try {
                return a.a(message);
            } catch (NoSuchMethodError unused) {
                f1136b = false;
            }
        }
        return false;
    }

    private MessageCompat() {
    }

    @RequiresApi(22)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static boolean a(Message message) {
            return message.isAsynchronous();
        }

        @DoNotInline
        public static void b(Message message, boolean z) {
            message.setAsynchronous(z);
        }
    }
}
