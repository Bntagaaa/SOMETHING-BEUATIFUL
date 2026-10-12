package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.app.SharedElementCallback;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.Display;
import android.view.DragEvent;
import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.IdRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.ActivityCompat;
import androidx.core.app.SharedElementCallback;
import androidx.core.app.e;
import androidx.core.content.ContextCompat;
import androidx.core.content.LocusIdCompat;
import androidx.core.os.BuildCompat;
import androidx.core.view.DragAndDropPermissionsCompat;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ActivityCompat extends ContextCompat {
    public static PermissionCompatDelegate c;

    public interface OnRequestPermissionsResultCallback {
        void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr);
    }

    public interface PermissionCompatDelegate {
        boolean onActivityResult(@NonNull Activity activity, @IntRange(from = 0) int i, int i2, @Nullable Intent intent);

        boolean requestPermissions(@NonNull Activity activity, @NonNull String[] strArr, @IntRange(from = 0) int i);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public interface RequestPermissionsRequestCodeValidator {
        void validateRequestPermissionsRequestCode(int i);
    }

    public static void setPermissionCompatDelegate(@Nullable PermissionCompatDelegate permissionCompatDelegate) {
        c = permissionCompatDelegate;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static PermissionCompatDelegate getPermissionCompatDelegate() {
        return c;
    }

    @Deprecated
    public static boolean invalidateOptionsMenu(Activity activity) {
        activity.invalidateOptionsMenu();
        return true;
    }

    public static void startActivityForResult(@NonNull Activity activity, @NonNull Intent intent, int i2, @Nullable Bundle bundle) {
        b.b(activity, intent, i2, bundle);
    }

    public static void startIntentSenderForResult(@NonNull Activity activity, @NonNull IntentSender intentSender, int i2, @Nullable Intent intent, int i3, int i4, int i5, @Nullable Bundle bundle) throws IntentSender.SendIntentException {
        b.c(activity, intentSender, i2, intent, i3, i4, i5, bundle);
    }

    public static void finishAffinity(@NonNull Activity activity) {
        b.a(activity);
    }

    public static void finishAfterTransition(@NonNull Activity activity) {
        c.a(activity);
    }

    @Nullable
    public static Uri getReferrer(@NonNull Activity activity) {
        if (Build.VERSION.SDK_INT >= 22) {
            return d.a(activity);
        }
        Intent intent = activity.getIntent();
        Uri uri = (Uri) intent.getParcelableExtra("android.intent.extra.REFERRER");
        if (uri != null) {
            return uri;
        }
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        if (stringExtra != null) {
            return Uri.parse(stringExtra);
        }
        return null;
    }

    @NonNull
    public static <T extends View> T requireViewById(@NonNull Activity activity, @IdRes int i2) {
        if (Build.VERSION.SDK_INT >= 28) {
            return (T) f.a(activity, i2);
        }
        T t = (T) activity.findViewById(i2);
        if (t != null) {
            return t;
        }
        throw new IllegalArgumentException("ID does not reference a View inside this Activity");
    }

    public static void setEnterSharedElementCallback(@NonNull Activity activity, @Nullable SharedElementCallback sharedElementCallback) {
        c.c(activity, sharedElementCallback != null ? new j(sharedElementCallback) : null);
    }

    public static void setExitSharedElementCallback(@NonNull Activity activity, @Nullable SharedElementCallback sharedElementCallback) {
        c.d(activity, sharedElementCallback != null ? new j(sharedElementCallback) : null);
    }

    public static void postponeEnterTransition(@NonNull Activity activity) {
        c.b(activity);
    }

    public static void startPostponedEnterTransition(@NonNull Activity activity) {
        c.e(activity);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @OptIn(markerClass = {BuildCompat.PrereleaseSdkCheck.class})
    public static void requestPermissions(@NonNull Activity activity, @NonNull String[] strArr, @IntRange(from = 0) int i2) {
        PermissionCompatDelegate permissionCompatDelegate = c;
        if (permissionCompatDelegate == null || !permissionCompatDelegate.requestPermissions(activity, strArr, i2)) {
            HashSet hashSet = new HashSet();
            for (int i3 = 0; i3 < strArr.length; i3++) {
                if (TextUtils.isEmpty(strArr[i3])) {
                    throw new IllegalArgumentException(_COROUTINE.a.m(new StringBuilder("Permission request for permissions "), Arrays.toString(strArr), " must not contain null or empty values"));
                }
                if (!BuildCompat.isAtLeastT() && TextUtils.equals(strArr[i3], "android.permission.POST_NOTIFICATIONS")) {
                    hashSet.add(Integer.valueOf(i3));
                }
            }
            int size = hashSet.size();
            String[] strArr2 = size > 0 ? new String[strArr.length - size] : strArr;
            if (size > 0) {
                if (size == strArr.length) {
                    return;
                }
                int i4 = 0;
                for (int i5 = 0; i5 < strArr.length; i5++) {
                    if (!hashSet.contains(Integer.valueOf(i5))) {
                        strArr2[i4] = strArr[i5];
                        i4++;
                    }
                }
            }
            if (Build.VERSION.SDK_INT >= 23) {
                if (activity instanceof RequestPermissionsRequestCodeValidator) {
                    ((RequestPermissionsRequestCodeValidator) activity).validateRequestPermissionsRequestCode(i2);
                }
                e.b(activity, strArr, i2);
            } else if (activity instanceof OnRequestPermissionsResultCallback) {
                new Handler(Looper.getMainLooper()).post(new a(activity, strArr2, i2));
            }
        }
    }

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String[] f844a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Activity f845b;
        public final /* synthetic */ int c;

        public a(Activity activity, String[] strArr, int i) {
            this.f844a = strArr;
            this.f845b = activity;
            this.c = i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            String[] strArr = this.f844a;
            int[] iArr = new int[strArr.length];
            Activity activity = this.f845b;
            PackageManager packageManager = activity.getPackageManager();
            String packageName = activity.getPackageName();
            int length = strArr.length;
            for (int i = 0; i < length; i++) {
                iArr[i] = packageManager.checkPermission(strArr[i], packageName);
            }
            ((OnRequestPermissionsResultCallback) activity).onRequestPermissionsResult(this.c, strArr, iArr);
        }
    }

    @OptIn(markerClass = {BuildCompat.PrereleaseSdkCheck.class})
    public static boolean shouldShowRequestPermissionRationale(@NonNull Activity activity, @NonNull String str) {
        if (!BuildCompat.isAtLeastT() && TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) {
            return false;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 32) {
            return i.a(activity, str);
        }
        if (i2 == 31) {
            return h.b(activity, str);
        }
        if (i2 >= 23) {
            return e.c(activity, str);
        }
        return false;
    }

    public static boolean isLaunchedFromBubble(@NonNull Activity activity) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31) {
            return h.a(activity);
        }
        return i2 == 30 ? (g.a(activity) == null || g.a(activity).getDisplayId() == 0) ? false : true : (i2 != 29 || activity.getWindowManager().getDefaultDisplay() == null || activity.getWindowManager().getDefaultDisplay().getDisplayId() == 0) ? false : true;
    }

    @Nullable
    public static DragAndDropPermissionsCompat requestDragAndDropPermissions(@NonNull Activity activity, @NonNull DragEvent dragEvent) {
        return DragAndDropPermissionsCompat.request(activity, dragEvent);
    }

    public static void recreate(@NonNull final Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else {
            new Handler(activity.getMainLooper()).post(new Runnable() { // from class: androidx.core.app.a
                @Override // java.lang.Runnable
                public final void run() {
                    Object obj;
                    Activity activity2 = activity;
                    if (activity2.isFinishing()) {
                        return;
                    }
                    int i2 = Build.VERSION.SDK_INT;
                    if (i2 < 28) {
                        Class cls = e.f945a;
                        boolean z = i2 == 26 || i2 == 27;
                        Method method = e.f;
                        if ((!z || method != null) && (e.e != null || e.d != null)) {
                            try {
                                Object obj2 = e.c.get(activity2);
                                if (obj2 != null && (obj = e.f946b.get(activity2)) != null) {
                                    Application application = activity2.getApplication();
                                    e.b bVar = new e.b(activity2);
                                    application.registerActivityLifecycleCallbacks(bVar);
                                    Handler handler = e.f947g;
                                    handler.post(new c(bVar, obj2));
                                    try {
                                        if (i2 == 26 || i2 == 27) {
                                            Boolean bool = Boolean.FALSE;
                                            method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                                        } else {
                                            activity2.recreate();
                                        }
                                        handler.post(new d(application, bVar));
                                        return;
                                    } catch (Throwable th) {
                                        handler.post(new d(application, bVar));
                                        throw th;
                                    }
                                }
                            } catch (Throwable unused) {
                            }
                        }
                        activity2.recreate();
                        return;
                    }
                    Class cls2 = e.f945a;
                    activity2.recreate();
                }
            });
        }
    }

    public static void setLocusContext(@NonNull Activity activity, @Nullable LocusIdCompat locusIdCompat, @Nullable Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 30) {
            g.b(activity, locusIdCompat, bundle);
        }
    }

    @RequiresApi(21)
    public static class j extends android.app.SharedElementCallback {

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int f846b = 0;

        /* renamed from: a, reason: collision with root package name */
        public final SharedElementCallback f847a;

        public j(SharedElementCallback sharedElementCallback) {
            this.f847a = sharedElementCallback;
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementStart(List<String> list, List<View> list2, List<View> list3) {
            this.f847a.onSharedElementStart(list, list2, list3);
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
            this.f847a.onSharedElementEnd(list, list2, list3);
        }

        @Override // android.app.SharedElementCallback
        public void onRejectSharedElements(List<View> list) {
            this.f847a.onRejectSharedElements(list);
        }

        @Override // android.app.SharedElementCallback
        public void onMapSharedElements(List<String> list, Map<String, View> map) {
            this.f847a.onMapSharedElements(list, map);
        }

        @Override // android.app.SharedElementCallback
        public Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
            return this.f847a.onCaptureSharedElementSnapshot(view, matrix, rectF);
        }

        @Override // android.app.SharedElementCallback
        public View onCreateSnapshotView(Context context, Parcelable parcelable) {
            return this.f847a.onCreateSnapshotView(context, parcelable);
        }

        @Override // android.app.SharedElementCallback
        @RequiresApi(23)
        public void onSharedElementsArrived(List<String> list, List<View> list2, final SharedElementCallback.OnSharedElementsReadyListener onSharedElementsReadyListener) {
            this.f847a.onSharedElementsArrived(list, list2, new SharedElementCallback.OnSharedElementsReadyListener() { // from class: androidx.core.app.b
                @Override // androidx.core.app.SharedElementCallback.OnSharedElementsReadyListener
                public final void onSharedElementsReady() {
                    SharedElementCallback.OnSharedElementsReadyListener onSharedElementsReadyListener2 = onSharedElementsReadyListener;
                    int i = ActivityCompat.j.f846b;
                    ActivityCompat.e.a(onSharedElementsReadyListener2);
                }
            });
        }
    }

    @RequiresApi(30)
    public static class g {
        private g() {
        }

        @DoNotInline
        public static void b(@NonNull Activity activity, @Nullable LocusIdCompat locusIdCompat, @Nullable Bundle bundle) {
            activity.setLocusContext(locusIdCompat == null ? null : locusIdCompat.toLocusId(), bundle);
        }

        @DoNotInline
        public static Display a(ContextWrapper contextWrapper) {
            return contextWrapper.getDisplay();
        }
    }

    @RequiresApi(31)
    public static class h {
        private h() {
        }

        @DoNotInline
        public static boolean a(@NonNull Activity activity) {
            return activity.isLaunchedFromBubble();
        }

        @DoNotInline
        @SuppressLint({"BanUncheckedReflection"})
        public static boolean b(Activity activity, String str) {
            try {
                return ((Boolean) PackageManager.class.getMethod("shouldShowRequestPermissionRationale", String.class).invoke(activity.getApplication().getPackageManager(), str)).booleanValue();
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                return activity.shouldShowRequestPermissionRationale(str);
            }
        }
    }

    @RequiresApi(32)
    public static class i {
        private i() {
        }

        @DoNotInline
        public static boolean a(Activity activity, String str) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
    }

    @RequiresApi(16)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static void b(Activity activity, Intent intent, int i, Bundle bundle) {
            activity.startActivityForResult(intent, i, bundle);
        }

        @DoNotInline
        public static void c(Activity activity, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
        }

        @DoNotInline
        public static void a(Activity activity) {
            activity.finishAffinity();
        }
    }

    @RequiresApi(21)
    public static class c {
        private c() {
        }

        @DoNotInline
        public static void a(Activity activity) {
            activity.finishAfterTransition();
        }

        @DoNotInline
        public static void c(Activity activity, android.app.SharedElementCallback sharedElementCallback) {
            activity.setEnterSharedElementCallback(sharedElementCallback);
        }

        @DoNotInline
        public static void d(Activity activity, android.app.SharedElementCallback sharedElementCallback) {
            activity.setExitSharedElementCallback(sharedElementCallback);
        }

        @DoNotInline
        public static void b(Activity activity) {
            activity.postponeEnterTransition();
        }

        @DoNotInline
        public static void e(Activity activity) {
            activity.startPostponedEnterTransition();
        }
    }

    @RequiresApi(22)
    public static class d {
        private d() {
        }

        @DoNotInline
        public static Uri a(Activity activity) {
            return activity.getReferrer();
        }
    }

    @RequiresApi(28)
    public static class f {
        private f() {
        }

        @DoNotInline
        public static <T> T a(Activity activity, int i) {
            return (T) activity.requireViewById(i);
        }
    }

    @RequiresApi(23)
    public static class e {
        private e() {
        }

        @DoNotInline
        public static void b(Activity activity, String[] strArr, int i) {
            activity.requestPermissions(strArr, i);
        }

        @DoNotInline
        public static boolean c(Activity activity, String str) {
            return activity.shouldShowRequestPermissionRationale(str);
        }

        @DoNotInline
        public static void a(Object obj) {
            ((SharedElementCallback.OnSharedElementsReadyListener) obj).onSharedElementsReady();
        }
    }
}
