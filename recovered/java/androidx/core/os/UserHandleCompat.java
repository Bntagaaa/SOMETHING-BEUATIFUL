package androidx.core.os;

import android.os.Build;
import android.os.UserHandle;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(17)
/* loaded from: classes.dex */
public class UserHandleCompat {

    /* renamed from: a, reason: collision with root package name */
    public static Method f1143a;

    /* renamed from: b, reason: collision with root package name */
    public static Constructor f1144b;

    private UserHandleCompat() {
    }

    @NonNull
    public static UserHandle getUserHandleForUid(int i) {
        if (Build.VERSION.SDK_INT >= 24) {
            return a.a(i);
        }
        try {
            return (UserHandle) b().newInstance((Integer) a().invoke(null, Integer.valueOf(i)));
        } catch (IllegalAccessException e) {
            IllegalAccessError illegalAccessError = new IllegalAccessError();
            illegalAccessError.initCause(e);
            throw illegalAccessError;
        } catch (InstantiationException e2) {
            InstantiationError instantiationError = new InstantiationError();
            instantiationError.initCause(e2);
            throw instantiationError;
        } catch (NoSuchMethodException e3) {
            NoSuchMethodError noSuchMethodError = new NoSuchMethodError();
            noSuchMethodError.initCause(e3);
            throw noSuchMethodError;
        } catch (InvocationTargetException e4) {
            throw new RuntimeException(e4);
        }
    }

    @RequiresApi(24)
    public static class a {
        private a() {
        }

        @NonNull
        public static UserHandle a(int i) {
            return UserHandle.getUserHandleForUid(i);
        }
    }

    public static Method a() throws NoSuchMethodException, SecurityException {
        if (f1143a == null) {
            Method declaredMethod = UserHandle.class.getDeclaredMethod("getUserId", Integer.TYPE);
            f1143a = declaredMethod;
            declaredMethod.setAccessible(true);
        }
        return f1143a;
    }

    public static Constructor b() throws NoSuchMethodException, SecurityException {
        if (f1144b == null) {
            Constructor declaredConstructor = UserHandle.class.getDeclaredConstructor(Integer.TYPE);
            f1144b = declaredConstructor;
            declaredConstructor.setAccessible(true);
        }
        return f1144b;
    }
}
