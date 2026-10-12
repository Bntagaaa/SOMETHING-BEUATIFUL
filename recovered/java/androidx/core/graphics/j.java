package androidx.core.graphics;

import android.annotation.SuppressLint;
import android.graphics.Typeface;
import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.LongSparseArray;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(26)
@SuppressLint({"SoonBlockedPrivateApi"})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
final class j {

    /* renamed from: a, reason: collision with root package name */
    public static final Field f1061a;

    /* renamed from: b, reason: collision with root package name */
    public static final Method f1062b;
    public static final Constructor c;
    public static final LongSparseArray d;
    public static final Object e;

    static {
        Field declaredField;
        Constructor declaredConstructor;
        Method declaredMethod;
        try {
            declaredField = Typeface.class.getDeclaredField("native_instance");
            Class cls = Long.TYPE;
            declaredMethod = Typeface.class.getDeclaredMethod("nativeCreateFromTypefaceWithExactStyle", cls, Integer.TYPE, Boolean.TYPE);
            declaredMethod.setAccessible(true);
            declaredConstructor = Typeface.class.getDeclaredConstructor(cls);
            declaredConstructor.setAccessible(true);
        } catch (NoSuchFieldException | NoSuchMethodException e2) {
            Log.e("WeightTypeface", e2.getClass().getName(), e2);
            declaredField = null;
            declaredConstructor = null;
            declaredMethod = null;
        }
        f1061a = declaredField;
        f1062b = declaredMethod;
        c = declaredConstructor;
        d = new LongSparseArray(3);
        e = new Object();
    }

    public static Typeface a(Typeface typeface, int i, boolean z) {
        Field field = f1061a;
        Typeface typeface2 = null;
        if (field == null) {
            return null;
        }
        int i2 = (i << 1) | (z ? 1 : 0);
        synchronized (e) {
            try {
                try {
                    long j = field.getLong(typeface);
                    LongSparseArray longSparseArray = d;
                    SparseArray sparseArray = (SparseArray) longSparseArray.get(j);
                    if (sparseArray == null) {
                        sparseArray = new SparseArray(4);
                        longSparseArray.put(j, sparseArray);
                    } else {
                        Typeface typeface3 = (Typeface) sparseArray.get(i2);
                        if (typeface3 != null) {
                            return typeface3;
                        }
                    }
                    try {
                        Long l = (Long) f1062b.invoke(null, Long.valueOf(j), Integer.valueOf(i), Boolean.valueOf(z));
                        l.longValue();
                        try {
                            typeface2 = (Typeface) c.newInstance(l);
                        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
                        }
                        sparseArray.put(i2, typeface2);
                        return typeface2;
                    } catch (IllegalAccessException e2) {
                        throw new RuntimeException(e2);
                    } catch (InvocationTargetException e3) {
                        throw new RuntimeException(e3);
                    }
                } catch (IllegalAccessException e4) {
                    throw new RuntimeException(e4);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private j() {
    }
}
