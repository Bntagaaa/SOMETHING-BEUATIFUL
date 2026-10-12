package androidx.core.app;

import android.app.Activity;
import android.app.Application;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.RestrictTo;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
final class e {

    /* renamed from: a, reason: collision with root package name */
    public static final Class f945a;

    /* renamed from: b, reason: collision with root package name */
    public static final Field f946b;
    public static final Field c;
    public static final Method d;
    public static final Method e;
    public static final Method f;

    /* renamed from: g, reason: collision with root package name */
    public static final Handler f947g;

    private e() {
    }

    static {
        Class<?> cls;
        Field declaredField;
        Field declaredField2;
        Method declaredMethod;
        Method declaredMethod2;
        Class<?> cls2 = Boolean.TYPE;
        f947g = new Handler(Looper.getMainLooper());
        Method method = null;
        try {
            cls = Class.forName("android.app.ActivityThread");
        } catch (Throwable unused) {
            cls = null;
        }
        f945a = cls;
        try {
            declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
        } catch (Throwable unused2) {
            declaredField = null;
        }
        f946b = declaredField;
        try {
            declaredField2 = Activity.class.getDeclaredField("mToken");
            declaredField2.setAccessible(true);
        } catch (Throwable unused3) {
            declaredField2 = null;
        }
        c = declaredField2;
        Class cls3 = f945a;
        if (cls3 == null) {
            declaredMethod = null;
        } else {
            try {
                declaredMethod = cls3.getDeclaredMethod("performStopActivity", IBinder.class, cls2, String.class);
                declaredMethod.setAccessible(true);
            } catch (Throwable unused4) {
            }
        }
        d = declaredMethod;
        Class cls4 = f945a;
        if (cls4 == null) {
            declaredMethod2 = null;
        } else {
            try {
                declaredMethod2 = cls4.getDeclaredMethod("performStopActivity", IBinder.class, cls2);
                declaredMethod2.setAccessible(true);
            } catch (Throwable unused5) {
            }
        }
        e = declaredMethod2;
        Class cls5 = f945a;
        int i = Build.VERSION.SDK_INT;
        if ((i == 26 || i == 27) && cls5 != null) {
            try {
                Method declaredMethod3 = cls5.getDeclaredMethod("requestRelaunchActivity", IBinder.class, List.class, List.class, Integer.TYPE, cls2, Configuration.class, Configuration.class, cls2, cls2);
                declaredMethod3.setAccessible(true);
                method = declaredMethod3;
            } catch (Throwable unused6) {
            }
        }
        f = method;
    }

    public static final class b implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a, reason: collision with root package name */
        public Object f950a;

        /* renamed from: b, reason: collision with root package name */
        public Activity f951b;
        public final int c;
        public boolean d = false;
        public boolean e = false;
        public boolean f = false;

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }

        public b(Activity activity) {
            this.f951b = activity;
            this.c = activity.hashCode();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (this.f951b == activity) {
                this.d = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (!this.e || this.f || this.d || !e.queueOnStopIfNecessary(this.f950a, this.c, activity)) {
                return;
            }
            this.f = true;
            this.f950a = null;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.f951b == activity) {
                this.f951b = null;
                this.e = true;
            }
        }
    }

    public static boolean queueOnStopIfNecessary(Object obj, int i, Activity activity) {
        try {
            Object obj2 = c.get(activity);
            if (obj2 == obj && activity.hashCode() == i) {
                f947g.postAtFrontOfQueue(new a(f946b.get(activity), obj2));
                return true;
            }
            return false;
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while fetching field values", th);
            return false;
        }
    }

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Object f948a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Object f949b;

        public a(Object obj, Object obj2) {
            this.f948a = obj;
            this.f949b = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Method method = e.d;
                Object obj = this.f949b;
                Object obj2 = this.f948a;
                if (method != null) {
                    method.invoke(obj2, obj, Boolean.FALSE, "AppCompat recreation");
                } else {
                    e.e.invoke(obj2, obj, Boolean.FALSE);
                }
            } catch (RuntimeException e) {
                if (e.getClass() == RuntimeException.class && e.getMessage() != null && e.getMessage().startsWith("Unable to stop")) {
                    throw e;
                }
            } catch (Throwable th) {
                Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
            }
        }
    }
}
