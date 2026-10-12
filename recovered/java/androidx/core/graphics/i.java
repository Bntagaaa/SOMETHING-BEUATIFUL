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

@RequiresApi(21)
@SuppressLint({"SoonBlockedPrivateApi"})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
final class i {

    /* renamed from: a, reason: collision with root package name */
    public static final Field f1059a;

    /* renamed from: b, reason: collision with root package name */
    public static final Method f1060b;
    public static final Method c;
    public static final Constructor d;
    public static final LongSparseArray e;
    public static final Object f;

    static {
        Field declaredField;
        Method declaredMethod;
        Constructor declaredConstructor;
        Method declaredMethod2;
        try {
            declaredField = Typeface.class.getDeclaredField("native_instance");
            Class cls = Long.TYPE;
            Class cls2 = Integer.TYPE;
            try {
                declaredMethod2 = Typeface.class.getDeclaredMethod("nativeCreateFromTypeface", cls, cls2);
                declaredMethod2.setAccessible(true);
                declaredMethod = Typeface.class.getDeclaredMethod("nativeCreateWeightAlias", cls, cls2);
                declaredMethod.setAccessible(true);
                declaredConstructor = Typeface.class.getDeclaredConstructor(cls);
                declaredConstructor.setAccessible(true);
            } catch (NoSuchMethodException e2) {
                e = e2;
                Log.e("WeightTypeface", e.getClass().getName(), e);
                declaredField = null;
                declaredMethod = null;
                declaredConstructor = null;
                declaredMethod2 = null;
                f1059a = declaredField;
                f1060b = declaredMethod2;
                c = declaredMethod;
                d = declaredConstructor;
                e = new LongSparseArray(3);
                f = new Object();
            }
        } catch (NoSuchFieldException | NoSuchMethodException e3) {
            e = e3;
        }
        f1059a = declaredField;
        f1060b = declaredMethod2;
        c = declaredMethod;
        d = declaredConstructor;
        e = new LongSparseArray(3);
        f = new Object();
    }

    public static Typeface b(Typeface typeface, int i, boolean z) {
        Typeface typefaceA;
        Field field = f1059a;
        if (field == null) {
            return null;
        }
        int i2 = (i << 1) | (z ? 1 : 0);
        synchronized (f) {
            try {
                try {
                    long j = field.getLong(typeface);
                    LongSparseArray longSparseArray = e;
                    SparseArray sparseArray = (SparseArray) longSparseArray.get(j);
                    if (sparseArray == null) {
                        sparseArray = new SparseArray(4);
                        longSparseArray.put(j, sparseArray);
                    } else {
                        Typeface typeface2 = (Typeface) sparseArray.get(i2);
                        if (typeface2 != null) {
                            return typeface2;
                        }
                    }
                    if (z == typeface.isItalic()) {
                        try {
                            try {
                                typefaceA = a(((Long) c.invoke(null, Long.valueOf(j), Integer.valueOf(i))).longValue());
                            } catch (InvocationTargetException e2) {
                                throw new RuntimeException(e2);
                            }
                        } catch (IllegalAccessException e3) {
                            throw new RuntimeException(e3);
                        }
                    } else {
                        typefaceA = a(c(j, i, z));
                    }
                    sparseArray.put(i2, typefaceA);
                    return typefaceA;
                } catch (IllegalAccessException e4) {
                    throw new RuntimeException(e4);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static long c(long j, int i, boolean z) {
        try {
            Long l = (Long) f1060b.invoke(null, Long.valueOf(j), Integer.valueOf(z ? 2 : 0));
            l.longValue();
            return ((Long) c.invoke(null, l, Integer.valueOf(i))).longValue();
        } catch (IllegalAccessException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    public static Typeface a(long j) {
        try {
            return (Typeface) d.newInstance(Long.valueOf(j));
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    private i() {
    }
}
