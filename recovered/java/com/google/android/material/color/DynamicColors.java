package com.google.android.material.color;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import com.google.android.material.R;
import com.google.android.material.color.DynamicColorsOptions;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class DynamicColors {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f2880a = {R.attr.dynamicColorThemeOverlay};

    /* renamed from: b, reason: collision with root package name */
    public static final Map f2881b;
    public static final Map c;

    public interface OnAppliedCallback {
        void onApplied(@NonNull Activity activity);
    }

    public interface Precondition {
        boolean shouldApplyDynamicColors(@NonNull Activity activity, @StyleRes int i);
    }

    public class a implements c {
        @Override // com.google.android.material.color.DynamicColors.c
        public boolean isSupported() {
            return true;
        }
    }

    public interface c {
        boolean isSupported();
    }

    static {
        a aVar = new a();
        b bVar = new b();
        HashMap map = new HashMap();
        map.put("google", aVar);
        map.put("hmd global", aVar);
        map.put("infinix", aVar);
        map.put("infinix mobility limited", aVar);
        map.put("itel", aVar);
        map.put("kyocera", aVar);
        map.put("lenovo", aVar);
        map.put("lge", aVar);
        map.put("motorola", aVar);
        map.put("nothing", aVar);
        map.put("oneplus", aVar);
        map.put("oppo", aVar);
        map.put("realme", aVar);
        map.put("robolectric", aVar);
        map.put("samsung", bVar);
        map.put("sharp", aVar);
        map.put("sony", aVar);
        map.put("tcl", aVar);
        map.put("tecno", aVar);
        map.put("tecno mobile limited", aVar);
        map.put("vivo", aVar);
        map.put("xiaomi", aVar);
        f2881b = Collections.unmodifiableMap(map);
        HashMap map2 = new HashMap();
        map2.put("asus", aVar);
        map2.put("jio", aVar);
        c = Collections.unmodifiableMap(map2);
    }

    public class b implements c {

        /* renamed from: a, reason: collision with root package name */
        public Long f2882a;

        @Override // com.google.android.material.color.DynamicColors.c
        public boolean isSupported() throws NoSuchMethodException, SecurityException {
            if (this.f2882a == null) {
                try {
                    Method declaredMethod = Build.class.getDeclaredMethod("getLong", String.class);
                    declaredMethod.setAccessible(true);
                    Long l = (Long) declaredMethod.invoke(null, "ro.build.version.oneui");
                    l.longValue();
                    this.f2882a = l;
                } catch (Exception unused) {
                    this.f2882a = -1L;
                }
            }
            return this.f2882a.longValue() >= 40100;
        }
    }

    private DynamicColors() {
    }

    public static void applyToActivitiesIfAvailable(@NonNull Application application) {
        applyToActivitiesIfAvailable(application, new DynamicColorsOptions.Builder().build());
    }

    @Deprecated
    public static void applyToActivitiesIfAvailable(@NonNull Application application, @StyleRes int i) {
        applyToActivitiesIfAvailable(application, new DynamicColorsOptions.Builder().setThemeOverlay(i).build());
    }

    @Deprecated
    public static void applyToActivitiesIfAvailable(@NonNull Application application, @NonNull Precondition precondition) {
        applyToActivitiesIfAvailable(application, new DynamicColorsOptions.Builder().setPrecondition(precondition).build());
    }

    @Deprecated
    public static void applyToActivitiesIfAvailable(@NonNull Application application, @StyleRes int i, @NonNull Precondition precondition) {
        applyToActivitiesIfAvailable(application, new DynamicColorsOptions.Builder().setThemeOverlay(i).setPrecondition(precondition).build());
    }

    public static void applyToActivitiesIfAvailable(@NonNull Application application, @NonNull DynamicColorsOptions dynamicColorsOptions) {
        application.registerActivityLifecycleCallbacks(new d(dynamicColorsOptions));
    }

    @Deprecated
    public static void applyIfAvailable(@NonNull Activity activity) {
        applyToActivityIfAvailable(activity);
    }

    @Deprecated
    public static void applyIfAvailable(@NonNull Activity activity, @StyleRes int i) {
        applyToActivityIfAvailable(activity, new DynamicColorsOptions.Builder().setThemeOverlay(i).build());
    }

    @Deprecated
    public static void applyIfAvailable(@NonNull Activity activity, @NonNull Precondition precondition) {
        applyToActivityIfAvailable(activity, new DynamicColorsOptions.Builder().setPrecondition(precondition).build());
    }

    public static void applyToActivityIfAvailable(@NonNull Activity activity) {
        applyToActivityIfAvailable(activity, new DynamicColorsOptions.Builder().build());
    }

    public static void applyToActivityIfAvailable(@NonNull Activity activity, @NonNull DynamicColorsOptions dynamicColorsOptions) {
        a(activity, dynamicColorsOptions.getThemeOverlay(), dynamicColorsOptions.getPrecondition(), dynamicColorsOptions.getOnAppliedCallback());
    }

    public static void a(Activity activity, int i, Precondition precondition, OnAppliedCallback onAppliedCallback) {
        if (isDynamicColorAvailable()) {
            if (i == 0) {
                TypedArray typedArrayObtainStyledAttributes = activity.obtainStyledAttributes(f2880a);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
                typedArrayObtainStyledAttributes.recycle();
                i = resourceId;
            }
            if (i == 0 || !precondition.shouldApplyDynamicColors(activity, i)) {
                return;
            }
            h.a(activity, i);
            onAppliedCallback.onApplied(activity);
        }
    }

    @NonNull
    public static Context wrapContextIfAvailable(@NonNull Context context) {
        return wrapContextIfAvailable(context, 0);
    }

    @NonNull
    public static Context wrapContextIfAvailable(@NonNull Context context, @StyleRes int i) {
        if (isDynamicColorAvailable()) {
            if (i == 0) {
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(f2880a);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
                typedArrayObtainStyledAttributes.recycle();
                i = resourceId;
            }
            if (i != 0) {
                return new ContextThemeWrapper(context, i);
            }
        }
        return context;
    }

    @ChecksSdkIntAtLeast(api = 31)
    @SuppressLint({"DefaultLocale"})
    public static boolean isDynamicColorAvailable() {
        if (Build.VERSION.SDK_INT < 31) {
            return false;
        }
        c cVar = (c) f2881b.get(Build.MANUFACTURER.toLowerCase());
        if (cVar == null) {
            cVar = (c) c.get(Build.BRAND.toLowerCase());
        }
        return cVar != null && cVar.isSupported();
    }

    public static class d implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a, reason: collision with root package name */
        public final DynamicColorsOptions f2883a;

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(@NonNull Activity activity) {
        }

        public d(DynamicColorsOptions dynamicColorsOptions) {
            this.f2883a = dynamicColorsOptions;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
            DynamicColorsOptions dynamicColorsOptions = this.f2883a;
            DynamicColors.a(activity, dynamicColorsOptions.getThemeOverlay(), dynamicColorsOptions.getPrecondition(), dynamicColorsOptions.getOnAppliedCallback());
        }
    }
}
