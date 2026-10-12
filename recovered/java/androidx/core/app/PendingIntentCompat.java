package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import gnu.expr.Declaration;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class PendingIntentCompat {

    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    @NonNull
    public static PendingIntent getActivities(@NonNull Context context, int i, @NonNull @SuppressLint({"ArrayReturn"}) Intent[] intentArr, int i2, @NonNull Bundle bundle, boolean z) {
        return a.getActivities(context, i, intentArr, a(i2, z), bundle);
    }

    @NonNull
    public static PendingIntent getActivities(@NonNull Context context, int i, @NonNull @SuppressLint({"ArrayReturn"}) Intent[] intentArr, int i2, boolean z) {
        return PendingIntent.getActivities(context, i, intentArr, a(i2, z));
    }

    @NonNull
    public static PendingIntent getActivity(@NonNull Context context, int i, @NonNull Intent intent, int i2, boolean z) {
        return PendingIntent.getActivity(context, i, intent, a(i2, z));
    }

    @NonNull
    public static PendingIntent getActivity(@NonNull Context context, int i, @NonNull Intent intent, int i2, @NonNull Bundle bundle, boolean z) {
        return a.getActivity(context, i, intent, a(i2, z), bundle);
    }

    @NonNull
    public static PendingIntent getBroadcast(@NonNull Context context, int i, @NonNull Intent intent, int i2, boolean z) {
        return PendingIntent.getBroadcast(context, i, intent, a(i2, z));
    }

    @NonNull
    @RequiresApi(26)
    public static PendingIntent getForegroundService(@NonNull Context context, int i, @NonNull Intent intent, int i2, boolean z) {
        return b.getForegroundService(context, i, intent, a(i2, z));
    }

    @NonNull
    public static PendingIntent getService(@NonNull Context context, int i, @NonNull Intent intent, int i2, boolean z) {
        return PendingIntent.getService(context, i, intent, a(i2, z));
    }

    public static int a(int i, boolean z) {
        int i2;
        if (z) {
            if (Build.VERSION.SDK_INT >= 31) {
                i2 = Declaration.PROTECTED_ACCESS;
                return i | i2;
            }
            return i;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            i2 = Declaration.PUBLIC_ACCESS;
            return i | i2;
        }
        return i;
    }

    private PendingIntentCompat() {
    }

    @RequiresApi(16)
    public static class a {
        private a() {
        }

        @NonNull
        @DoNotInline
        public static PendingIntent getActivities(@NonNull Context context, int i, @NonNull @SuppressLint({"ArrayReturn"}) Intent[] intentArr, int i2, @NonNull Bundle bundle) {
            return PendingIntent.getActivities(context, i, intentArr, i2, bundle);
        }

        @NonNull
        @DoNotInline
        public static PendingIntent getActivity(@NonNull Context context, int i, @NonNull Intent intent, int i2, @NonNull Bundle bundle) {
            return PendingIntent.getActivity(context, i, intent, i2, bundle);
        }
    }

    @RequiresApi(26)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static PendingIntent getForegroundService(Context context, int i, Intent intent, int i2) {
            return PendingIntent.getForegroundService(context, i, intent, i2);
        }
    }
}
