package androidx.core.os;

import android.os.Build;
import android.os.Process;
import android.os.UserHandle;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class ProcessCompat {
    private ProcessCompat() {
    }

    public static boolean isApplicationUid(int i) {
        if (Build.VERSION.SDK_INT >= 24) {
            return c.a(i);
        }
        try {
            synchronized (b.f1139a) {
                try {
                    if (!b.c) {
                        b.c = true;
                        b.f1140b = UserHandle.class.getDeclaredMethod("isApp", Integer.TYPE);
                    }
                } finally {
                }
            }
            Method method = b.f1140b;
            if (method != null) {
                Boolean bool = (Boolean) method.invoke(null, Integer.valueOf(i));
                if (bool == null) {
                    throw new NullPointerException();
                }
                return bool.booleanValue();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }

    @RequiresApi(24)
    public static class c {
        private c() {
        }

        public static boolean a(int i) {
            return Process.isApplicationUid(i);
        }
    }

    @RequiresApi(17)
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public static final Object f1139a = new Object();

        /* renamed from: b, reason: collision with root package name */
        public static Method f1140b;
        public static boolean c;

        private b() {
        }
    }

    @RequiresApi(16)
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final Object f1138a = null;

        private a() {
        }
    }
}
