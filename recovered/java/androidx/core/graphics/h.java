package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.RestrictTo;
import androidx.collection.LongSparseArray;
import androidx.core.content.res.FontResourcesParserCompat;
import java.lang.reflect.Field;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
final class h {

    /* renamed from: a, reason: collision with root package name */
    public static final Field f1057a;

    /* renamed from: b, reason: collision with root package name */
    public static final LongSparseArray f1058b;
    public static final Object c;

    static {
        Field declaredField;
        try {
            declaredField = Typeface.class.getDeclaredField("native_instance");
            declaredField.setAccessible(true);
        } catch (Exception e) {
            Log.e("WeightTypeface", e.getClass().getName(), e);
            declaredField = null;
        }
        f1057a = declaredField;
        f1058b = new LongSparseArray(3);
        c = new Object();
    }

    public static Typeface a(e eVar, Context context, Typeface typeface, int i, boolean z) {
        Field field = f1057a;
        Typeface typefaceCreateFromResourcesFontFile = null;
        if (field == null) {
            return null;
        }
        int i2 = (i << 1) | (z ? 1 : 0);
        synchronized (c) {
            try {
                try {
                    long jLongValue = ((Number) field.get(typeface)).longValue();
                    LongSparseArray longSparseArray = f1058b;
                    SparseArray sparseArray = (SparseArray) longSparseArray.get(jLongValue);
                    if (sparseArray == null) {
                        sparseArray = new SparseArray(4);
                        longSparseArray.put(jLongValue, sparseArray);
                    } else {
                        Typeface typeface2 = (Typeface) sparseArray.get(i2);
                        if (typeface2 != null) {
                            return typeface2;
                        }
                    }
                    eVar.getClass();
                    long jC = e.c(typeface);
                    FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry = jC == 0 ? null : (FontResourcesParserCompat.FontFamilyFilesResourceEntry) eVar.f1056a.get(Long.valueOf(jC));
                    if (fontFamilyFilesResourceEntry != null) {
                        Resources resources = context.getResources();
                        FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry = (FontResourcesParserCompat.FontFileResourceEntry) e.b(fontFamilyFilesResourceEntry.getEntries(), i, z, new g());
                        if (fontFileResourceEntry != null) {
                            typefaceCreateFromResourcesFontFile = TypefaceCompat.createFromResourcesFontFile(context, resources, fontFileResourceEntry.getResourceId(), fontFileResourceEntry.getFileName(), 0, 0);
                            long jC2 = e.c(typefaceCreateFromResourcesFontFile);
                            if (jC2 != 0) {
                                eVar.f1056a.put(Long.valueOf(jC2), fontFamilyFilesResourceEntry);
                            }
                        }
                    }
                    if (typefaceCreateFromResourcesFontFile == null) {
                        int i3 = 1;
                        boolean z2 = i >= 600;
                        if (!z2 && !z) {
                            i3 = 0;
                        } else if (!z2) {
                            i3 = 2;
                        } else if (z) {
                            i3 = 3;
                        }
                        typefaceCreateFromResourcesFontFile = Typeface.create(typeface, i3);
                    }
                    sparseArray.put(i2, typefaceCreateFromResourcesFontFile);
                    return typefaceCreateFromResourcesFontFile;
                } catch (IllegalAccessException e) {
                    throw new RuntimeException(e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private h() {
    }
}
