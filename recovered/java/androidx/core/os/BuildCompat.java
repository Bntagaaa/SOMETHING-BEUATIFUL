package androidx.core.os;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.ext.SdkExtensions;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresOptIn;
import androidx.annotation.RestrictTo;
import java.util.Locale;
import kotlin.time.DurationKt;

/* loaded from: classes.dex */
public class BuildCompat {

    @ChecksSdkIntAtLeast(extension = DurationKt.NANOS_IN_MILLIS)
    @SuppressLint({"CompileTimeConstant"})
    public static final int AD_SERVICES_EXTENSION_INT;

    @ChecksSdkIntAtLeast(extension = 30)
    @SuppressLint({"CompileTimeConstant"})
    public static final int R_EXTENSION_INT;

    @ChecksSdkIntAtLeast(extension = 31)
    @SuppressLint({"CompileTimeConstant"})
    public static final int S_EXTENSION_INT;

    @ChecksSdkIntAtLeast(extension = 33)
    @SuppressLint({"CompileTimeConstant"})
    public static final int T_EXTENSION_INT;

    @RequiresOptIn
    public @interface PrereleaseSdkCheck {
    }

    private BuildCompat() {
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    public static boolean isAtLeastPreReleaseCodename(@NonNull String str, @NonNull String str2) {
        if ("REL".equals(str2)) {
            return false;
        }
        Locale locale = Locale.ROOT;
        return str2.toUpperCase(locale).compareTo(str.toUpperCase(locale)) >= 0;
    }

    @ChecksSdkIntAtLeast(api = 24)
    @Deprecated
    public static boolean isAtLeastN() {
        return Build.VERSION.SDK_INT >= 24;
    }

    @ChecksSdkIntAtLeast(api = 25)
    @Deprecated
    public static boolean isAtLeastNMR1() {
        return Build.VERSION.SDK_INT >= 25;
    }

    @ChecksSdkIntAtLeast(api = 26)
    @Deprecated
    public static boolean isAtLeastO() {
        return Build.VERSION.SDK_INT >= 26;
    }

    @ChecksSdkIntAtLeast(api = 27)
    @Deprecated
    public static boolean isAtLeastOMR1() {
        return Build.VERSION.SDK_INT >= 27;
    }

    @ChecksSdkIntAtLeast(api = 28)
    @Deprecated
    public static boolean isAtLeastP() {
        return Build.VERSION.SDK_INT >= 28;
    }

    @ChecksSdkIntAtLeast(api = 29)
    @Deprecated
    public static boolean isAtLeastQ() {
        return Build.VERSION.SDK_INT >= 29;
    }

    @ChecksSdkIntAtLeast(api = 30)
    @Deprecated
    public static boolean isAtLeastR() {
        return Build.VERSION.SDK_INT >= 30;
    }

    @ChecksSdkIntAtLeast(api = 31, codename = "S")
    @SuppressLint({"RestrictedApi"})
    @Deprecated
    public static boolean isAtLeastS() {
        int i = Build.VERSION.SDK_INT;
        if (i < 31) {
            return i >= 30 && isAtLeastPreReleaseCodename("S", Build.VERSION.CODENAME);
        }
        return true;
    }

    @ChecksSdkIntAtLeast(api = 32, codename = "Sv2")
    @PrereleaseSdkCheck
    @Deprecated
    public static boolean isAtLeastSv2() {
        int i = Build.VERSION.SDK_INT;
        if (i < 32) {
            return i >= 31 && isAtLeastPreReleaseCodename("Sv2", Build.VERSION.CODENAME);
        }
        return true;
    }

    @ChecksSdkIntAtLeast(api = 33, codename = "Tiramisu")
    @PrereleaseSdkCheck
    public static boolean isAtLeastT() {
        int i = Build.VERSION.SDK_INT;
        if (i < 33) {
            return i >= 32 && isAtLeastPreReleaseCodename("Tiramisu", Build.VERSION.CODENAME);
        }
        return true;
    }

    @ChecksSdkIntAtLeast(codename = "UpsideDownCake")
    @PrereleaseSdkCheck
    public static boolean isAtLeastU() {
        return Build.VERSION.SDK_INT >= 33 && isAtLeastPreReleaseCodename("UpsideDownCake", Build.VERSION.CODENAME);
    }

    static {
        int i = Build.VERSION.SDK_INT;
        R_EXTENSION_INT = i >= 30 ? a.f1125a : 0;
        S_EXTENSION_INT = i >= 30 ? a.f1126b : 0;
        T_EXTENSION_INT = i >= 30 ? a.c : 0;
        AD_SERVICES_EXTENSION_INT = i >= 30 ? a.d : 0;
    }

    @RequiresApi(30)
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public static final int f1125a = SdkExtensions.getExtensionVersion(30);

        /* renamed from: b, reason: collision with root package name */
        public static final int f1126b = SdkExtensions.getExtensionVersion(31);
        public static final int c = SdkExtensions.getExtensionVersion(33);
        public static final int d = SdkExtensions.getExtensionVersion(DurationKt.NANOS_IN_MILLIS);

        private a() {
        }
    }
}
