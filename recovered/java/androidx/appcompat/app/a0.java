package androidx.appcompat.app;

import android.util.Log;
import android.util.LongSparseArray;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
class a0 {

    /* renamed from: a, reason: collision with root package name */
    public static Field f135a;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f136b;
    public static Class c;
    public static boolean d;
    public static Field e;
    public static boolean f;

    /* renamed from: g, reason: collision with root package name */
    public static Field f137g;
    public static boolean h;

    public static void a(Object obj) throws NoSuchFieldException, SecurityException {
        LongSparseArray longSparseArray;
        if (!d) {
            try {
                c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e2) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e2);
            }
            d = true;
        }
        Class cls = c;
        if (cls == null) {
            return;
        }
        if (!f) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                e = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e3) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e3);
            }
            f = true;
        }
        Field field = e;
        if (field == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException e4) {
            Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e4);
            longSparseArray = null;
        }
        if (longSparseArray != null) {
            a.a(longSparseArray);
        }
    }

    private a0() {
    }

    @RequiresApi(16)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static void a(LongSparseArray longSparseArray) {
            longSparseArray.clear();
        }
    }
}
