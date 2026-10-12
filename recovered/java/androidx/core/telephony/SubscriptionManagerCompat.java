package androidx.core.telephony;

import android.os.Build;
import android.telephony.SubscriptionManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(22)
/* loaded from: classes.dex */
public class SubscriptionManagerCompat {

    /* renamed from: a, reason: collision with root package name */
    public static Method f1191a;

    public static int getSlotIndex(int i) throws SecurityException {
        if (i != -1) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 29) {
                return a.a(i);
            }
            try {
                if (f1191a == null) {
                    Class<?> cls = Integer.TYPE;
                    if (i2 >= 26) {
                        f1191a = androidx.core.content.a.c().getDeclaredMethod("getSlotIndex", cls);
                    } else {
                        f1191a = androidx.core.content.a.c().getDeclaredMethod("getSlotId", cls);
                    }
                    f1191a.setAccessible(true);
                }
                Integer num = (Integer) f1191a.invoke(null, Integer.valueOf(i));
                if (num != null) {
                    return num.intValue();
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            }
        }
        return -1;
    }

    private SubscriptionManagerCompat() {
    }

    @RequiresApi(29)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static int a(int i) {
            return SubscriptionManager.getSlotIndex(i);
        }
    }
}
