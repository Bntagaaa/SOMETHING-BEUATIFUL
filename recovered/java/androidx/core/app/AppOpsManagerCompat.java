package androidx.core.app;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Binder;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class AppOpsManagerCompat {
    public static final int MODE_ALLOWED = 0;
    public static final int MODE_DEFAULT = 3;
    public static final int MODE_ERRORED = 2;
    public static final int MODE_IGNORED = 1;

    private AppOpsManagerCompat() {
    }

    @Nullable
    public static String permissionToOp(@NonNull String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return b.d(str);
        }
        return null;
    }

    public static int noteOp(@NonNull Context context, @NonNull String str, int i, @NonNull String str2) {
        return a.a((AppOpsManager) context.getSystemService("appops"), str, i, str2);
    }

    public static int noteOpNoThrow(@NonNull Context context, @NonNull String str, int i, @NonNull String str2) {
        return a.b((AppOpsManager) context.getSystemService("appops"), str, i, str2);
    }

    public static int noteProxyOp(@NonNull Context context, @NonNull String str, @NonNull String str2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return b.b((AppOpsManager) b.a(context, AppOpsManager.class), str, str2);
        }
        return 1;
    }

    public static int noteProxyOpNoThrow(@NonNull Context context, @NonNull String str, @NonNull String str2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return b.c((AppOpsManager) b.a(context, AppOpsManager.class), str, str2);
        }
        return 1;
    }

    public static int checkOrNoteProxyOp(@NonNull Context context, int i, @NonNull String str, @NonNull String str2) {
        if (Build.VERSION.SDK_INT >= 29) {
            AppOpsManager appOpsManagerC = c.c(context);
            int iA = c.a(appOpsManagerC, str, Binder.getCallingUid(), str2);
            return iA != 0 ? iA : c.a(appOpsManagerC, str, i, c.b(context));
        }
        return noteProxyOpNoThrow(context, str, str2);
    }

    @RequiresApi(29)
    public static class c {
        private c() {
        }

        @Nullable
        @DoNotInline
        public static AppOpsManager c(@NonNull Context context) {
            return (AppOpsManager) context.getSystemService(AppOpsManager.class);
        }

        @DoNotInline
        public static int a(@Nullable AppOpsManager appOpsManager, @NonNull String str, int i, @NonNull String str2) {
            if (appOpsManager == null) {
                return 1;
            }
            return appOpsManager.checkOpNoThrow(str, i, str2);
        }

        @NonNull
        @DoNotInline
        public static String b(@NonNull Context context) {
            return context.getOpPackageName();
        }
    }

    @RequiresApi(23)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static String d(String str) {
            return AppOpsManager.permissionToOp(str);
        }

        @DoNotInline
        public static <T> T a(Context context, Class<T> cls) {
            return (T) context.getSystemService(cls);
        }

        @DoNotInline
        public static int b(AppOpsManager appOpsManager, String str, String str2) {
            return appOpsManager.noteProxyOp(str, str2);
        }

        @DoNotInline
        public static int c(AppOpsManager appOpsManager, String str, String str2) {
            return appOpsManager.noteProxyOpNoThrow(str, str2);
        }
    }

    @RequiresApi(19)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static int b(AppOpsManager appOpsManager, String str, int i, String str2) {
            return appOpsManager.noteOpNoThrow(str, i, str2);
        }

        @DoNotInline
        public static int a(AppOpsManager appOpsManager, String str, int i, String str2) {
            return appOpsManager.noteOp(str, i, str2);
        }
    }
}
