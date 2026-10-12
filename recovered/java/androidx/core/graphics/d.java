package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.SimpleArrayMap;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;

@RequiresApi(24)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
class d extends e {

    /* renamed from: b, reason: collision with root package name */
    public static final Class f1043b;
    public static final Constructor c;
    public static final Method d;
    public static final Method e;

    static {
        Class<?> cls;
        Method method;
        Constructor<?> constructor;
        Method method2;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            e = e2;
        }
        try {
            Class<?> cls2 = Integer.TYPE;
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
        } catch (NoSuchMethodException e3) {
            e = e3;
            Log.e("TypefaceCompatApi24Impl", e.getClass().getName(), e);
            cls = null;
            method = null;
            constructor = null;
            method2 = null;
            c = constructor;
            f1043b = cls;
            d = method2;
            e = method;
        }
        c = constructor;
        f1043b = cls;
        d = method2;
        e = method;
    }

    public static boolean isUsable() {
        Method method = d;
        if (method == null) {
            Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
        }
        return method != null;
    }

    @Override // androidx.core.graphics.e
    @Nullable
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        Object objNewInstance;
        try {
            objNewInstance = c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            objNewInstance = null;
        }
        if (objNewInstance != null) {
            for (FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry : fontFamilyFilesResourceEntry.getEntries()) {
                ByteBuffer byteBufferCopyToDirectBuffer = TypefaceCompatUtil.copyToDirectBuffer(context, resources, fontFileResourceEntry.getResourceId());
                if (byteBufferCopyToDirectBuffer != null && d(objNewInstance, byteBufferCopyToDirectBuffer, fontFileResourceEntry.getTtcIndex(), fontFileResourceEntry.getWeight(), fontFileResourceEntry.isItalic())) {
                }
            }
            return e(objNewInstance);
        }
        return null;
    }

    @Override // androidx.core.graphics.e
    @Nullable
    public Typeface createFromFontInfo(Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontsContractCompat.FontInfo[] fontInfoArr, int i) throws IllegalAccessException, InstantiationException, IOException, ArrayIndexOutOfBoundsException, IllegalArgumentException, InvocationTargetException, NegativeArraySizeException {
        Object objNewInstance;
        int i2 = 0;
        try {
            objNewInstance = c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            objNewInstance = null;
        }
        if (objNewInstance != null) {
            SimpleArrayMap simpleArrayMap = new SimpleArrayMap();
            int length = fontInfoArr.length;
            while (true) {
                if (i2 < length) {
                    FontsContractCompat.FontInfo fontInfo = fontInfoArr[i2];
                    Uri uri = fontInfo.getUri();
                    ByteBuffer byteBufferMmap = (ByteBuffer) simpleArrayMap.get(uri);
                    if (byteBufferMmap == null) {
                        byteBufferMmap = TypefaceCompatUtil.mmap(context, cancellationSignal, uri);
                        simpleArrayMap.put(uri, byteBufferMmap);
                    }
                    if (byteBufferMmap == null || !d(objNewInstance, byteBufferMmap, fontInfo.getTtcIndex(), fontInfo.getWeight(), fontInfo.isItalic())) {
                        break;
                    }
                    i2++;
                } else {
                    Typeface typefaceE = e(objNewInstance);
                    if (typefaceE != null) {
                        return Typeface.create(typefaceE, i);
                    }
                }
            }
        }
        return null;
    }

    public static boolean d(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) d.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public static Typeface e(Object obj) throws ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) f1043b, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) e.invoke(null, objNewInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // androidx.core.graphics.e
    public final Typeface a(Context context, Typeface typeface, int i, boolean z) {
        Typeface typefaceB;
        try {
            typefaceB = i.b(typeface, i, z);
        } catch (RuntimeException unused) {
            typefaceB = null;
        }
        return typefaceB == null ? super.a(context, typeface, i, z) : typefaceB;
    }
}
