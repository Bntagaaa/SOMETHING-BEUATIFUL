package androidx.core.widget;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.widget.PopupWindow;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class PopupWindowCompat {

    /* renamed from: a, reason: collision with root package name */
    public static Method f1433a;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f1434b;
    public static Method c;
    public static boolean d;
    public static Field e;
    public static boolean f;

    private PopupWindowCompat() {
    }

    public static void showAsDropDown(@NonNull PopupWindow popupWindow, @NonNull View view, int i, int i2, int i3) {
        a.a(popupWindow, view, i, i2, i3);
    }

    public static void setOverlapAnchor(@NonNull PopupWindow popupWindow, boolean z) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        if (Build.VERSION.SDK_INT >= 23) {
            b.c(popupWindow, z);
            return;
        }
        if (!f) {
            try {
                Field declaredField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                e = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.i("PopupWindowCompatApi21", "Could not fetch mOverlapAnchor field from PopupWindow", e2);
            }
            f = true;
        }
        Field field = e;
        if (field != null) {
            try {
                field.set(popupWindow, Boolean.valueOf(z));
            } catch (IllegalAccessException e3) {
                Log.i("PopupWindowCompatApi21", "Could not set overlap anchor field in PopupWindow", e3);
            }
        }
    }

    public static boolean getOverlapAnchor(@NonNull PopupWindow popupWindow) throws NoSuchFieldException, SecurityException {
        if (Build.VERSION.SDK_INT >= 23) {
            return b.a(popupWindow);
        }
        if (!f) {
            try {
                Field declaredField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                e = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.i("PopupWindowCompatApi21", "Could not fetch mOverlapAnchor field from PopupWindow", e2);
            }
            f = true;
        }
        Field field = e;
        if (field == null) {
            return false;
        }
        try {
            return ((Boolean) field.get(popupWindow)).booleanValue();
        } catch (IllegalAccessException e3) {
            Log.i("PopupWindowCompatApi21", "Could not get overlap anchor field in PopupWindow", e3);
            return false;
        }
    }

    public static void setWindowLayoutType(@NonNull PopupWindow popupWindow, int i) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT >= 23) {
            b.d(popupWindow, i);
            return;
        }
        if (!f1434b) {
            try {
                Method declaredMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                f1433a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception unused) {
            }
            f1434b = true;
        }
        Method method = f1433a;
        if (method != null) {
            try {
                method.invoke(popupWindow, Integer.valueOf(i));
            } catch (Exception unused2) {
            }
        }
    }

    public static int getWindowLayoutType(@NonNull PopupWindow popupWindow) throws NoSuchMethodException, SecurityException {
        if (Build.VERSION.SDK_INT >= 23) {
            return b.b(popupWindow);
        }
        if (!d) {
            try {
                Method declaredMethod = PopupWindow.class.getDeclaredMethod("getWindowLayoutType", new Class[0]);
                c = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception unused) {
            }
            d = true;
        }
        Method method = c;
        if (method != null) {
            try {
                return ((Integer) method.invoke(popupWindow, new Object[0])).intValue();
            } catch (Exception unused2) {
            }
        }
        return 0;
    }

    @RequiresApi(23)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static void c(PopupWindow popupWindow, boolean z) {
            popupWindow.setOverlapAnchor(z);
        }

        @DoNotInline
        public static boolean a(PopupWindow popupWindow) {
            return popupWindow.getOverlapAnchor();
        }

        @DoNotInline
        public static void d(PopupWindow popupWindow, int i) {
            popupWindow.setWindowLayoutType(i);
        }

        @DoNotInline
        public static int b(PopupWindow popupWindow) {
            return popupWindow.getWindowLayoutType();
        }
    }

    @RequiresApi(19)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static void a(PopupWindow popupWindow, View view, int i, int i2, int i3) {
            popupWindow.showAsDropDown(view, i, i2, i3);
        }
    }
}
