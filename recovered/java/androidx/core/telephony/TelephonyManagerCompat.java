package androidx.core.telephony;

import android.annotation.SuppressLint;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class TelephonyManagerCompat {

    /* renamed from: a, reason: collision with root package name */
    public static Method f1192a;

    /* renamed from: b, reason: collision with root package name */
    public static Method f1193b;

    @Nullable
    @RequiresPermission("android.permission.READ_PHONE_STATE")
    @SuppressLint({"MissingPermission"})
    public static String getImei(@NonNull TelephonyManager telephonyManager) throws NoSuchMethodException, SecurityException {
        int subscriptionId;
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            return b.a(telephonyManager);
        }
        if (i >= 22 && (subscriptionId = getSubscriptionId(telephonyManager)) != Integer.MAX_VALUE && subscriptionId != -1) {
            int slotIndex = SubscriptionManagerCompat.getSlotIndex(subscriptionId);
            if (i >= 23) {
                return a.a(telephonyManager, slotIndex);
            }
            try {
                if (f1192a == null) {
                    Method declaredMethod = TelephonyManager.class.getDeclaredMethod("getDeviceId", Integer.TYPE);
                    f1192a = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
                return (String) f1192a.invoke(telephonyManager, Integer.valueOf(slotIndex));
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                return null;
            }
        }
        return telephonyManager.getDeviceId();
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    public static int getSubscriptionId(@NonNull TelephonyManager telephonyManager) throws NoSuchMethodException, SecurityException {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            return c.a(telephonyManager);
        }
        if (i < 22) {
            return Integer.MAX_VALUE;
        }
        try {
            if (f1193b == null) {
                Method declaredMethod = TelephonyManager.class.getDeclaredMethod("getSubId", new Class[0]);
                f1193b = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            Integer num = (Integer) f1193b.invoke(telephonyManager, new Object[0]);
            if (num == null || num.intValue() == -1) {
                return Integer.MAX_VALUE;
            }
            return num.intValue();
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return Integer.MAX_VALUE;
        }
    }

    private TelephonyManagerCompat() {
    }

    @RequiresApi(30)
    public static class c {
        private c() {
        }

        @DoNotInline
        public static int a(TelephonyManager telephonyManager) {
            return telephonyManager.getSubscriptionId();
        }
    }

    @RequiresApi(26)
    public static class b {
        private b() {
        }

        @SuppressLint({"MissingPermission"})
        @Nullable
        @RequiresPermission("android.permission.READ_PHONE_STATE")
        @DoNotInline
        public static String a(TelephonyManager telephonyManager) {
            return telephonyManager.getImei();
        }
    }

    @RequiresApi(23)
    public static class a {
        private a() {
        }

        @SuppressLint({"MissingPermission"})
        @Nullable
        @RequiresPermission("android.permission.READ_PHONE_STATE")
        @DoNotInline
        public static String a(TelephonyManager telephonyManager, int i) {
            return telephonyManager.getDeviceId(i);
        }
    }
}
