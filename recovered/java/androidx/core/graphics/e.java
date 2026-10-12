package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
class e {

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f1056a = new ConcurrentHashMap();

    public interface b<T> {
        int getWeight(T t);

        boolean isItalic(T t);
    }

    public static Object b(Object[] objArr, int i, boolean z, b bVar) {
        Object obj = null;
        int i2 = Integer.MAX_VALUE;
        for (Object obj2 : objArr) {
            int iAbs = (Math.abs(bVar.getWeight(obj2) - i) * 2) + (bVar.isItalic(obj2) == z ? 0 : 1);
            if (obj == null || i2 > iAbs) {
                obj = obj2;
                i2 = iAbs;
            }
        }
        return obj;
    }

    public static long c(Typeface typeface) throws NoSuchFieldException, SecurityException {
        if (typeface == null) {
            return 0L;
        }
        try {
            Field declaredField = Typeface.class.getDeclaredField("native_instance");
            declaredField.setAccessible(true);
            return ((Number) declaredField.get(typeface)).longValue();
        } catch (IllegalAccessException e) {
            Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e);
            return 0L;
        } catch (NoSuchFieldException e2) {
            Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e2);
            return 0L;
        }
    }

    public FontsContractCompat.FontInfo findBestInfo(FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        return (FontsContractCompat.FontInfo) b(fontInfoArr, (i & 1) == 0 ? 400 : 700, (i & 2) != 0, new a());
    }

    public class a implements b<FontsContractCompat.FontInfo> {
        @Override // androidx.core.graphics.e.b
        public int getWeight(FontsContractCompat.FontInfo fontInfo) {
            return fontInfo.getWeight();
        }

        @Override // androidx.core.graphics.e.b
        public boolean isItalic(FontsContractCompat.FontInfo fontInfo) {
            return fontInfo.isItalic();
        }
    }

    public Typeface createFromInputStream(Context context, InputStream inputStream) {
        File tempFile = TypefaceCompatUtil.getTempFile(context);
        if (tempFile == null) {
            return null;
        }
        try {
            if (TypefaceCompatUtil.copyToFile(tempFile, inputStream)) {
                return Typeface.createFromFile(tempFile.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            tempFile.delete();
        }
    }

    @Nullable
    public Typeface createFromFontInfo(Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontsContractCompat.FontInfo[] fontInfoArr, int i) throws Throwable {
        InputStream inputStreamOpenInputStream;
        InputStream inputStream = null;
        if (fontInfoArr.length < 1) {
            return null;
        }
        try {
            inputStreamOpenInputStream = context.getContentResolver().openInputStream(findBestInfo(fontInfoArr, i).getUri());
            try {
                Typeface typefaceCreateFromInputStream = createFromInputStream(context, inputStreamOpenInputStream);
                TypefaceCompatUtil.closeQuietly(inputStreamOpenInputStream);
                return typefaceCreateFromInputStream;
            } catch (IOException unused) {
                TypefaceCompatUtil.closeQuietly(inputStreamOpenInputStream);
                return null;
            } catch (Throwable th) {
                th = th;
                inputStream = inputStreamOpenInputStream;
                TypefaceCompatUtil.closeQuietly(inputStream);
                throw th;
            }
        } catch (IOException unused2) {
            inputStreamOpenInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Nullable
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i) throws NoSuchFieldException, SecurityException {
        FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry = (FontResourcesParserCompat.FontFileResourceEntry) b(fontFamilyFilesResourceEntry.getEntries(), (i & 1) == 0 ? 400 : 700, (i & 2) != 0, new f());
        if (fontFileResourceEntry == null) {
            return null;
        }
        Typeface typefaceCreateFromResourcesFontFile = TypefaceCompat.createFromResourcesFontFile(context, resources, fontFileResourceEntry.getResourceId(), fontFileResourceEntry.getFileName(), 0, i);
        long jC = c(typefaceCreateFromResourcesFontFile);
        if (jC != 0) {
            this.f1056a.put(Long.valueOf(jC), fontFamilyFilesResourceEntry);
        }
        return typefaceCreateFromResourcesFontFile;
    }

    @Nullable
    public Typeface createFromResourcesFontFile(Context context, Resources resources, int i, String str, int i2) {
        File tempFile = TypefaceCompatUtil.getTempFile(context);
        if (tempFile == null) {
            return null;
        }
        try {
            if (TypefaceCompatUtil.copyToFile(tempFile, resources, i)) {
                return Typeface.createFromFile(tempFile.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            tempFile.delete();
        }
    }

    public Typeface a(Context context, Typeface typeface, int i, boolean z) {
        Typeface typefaceA;
        try {
            typefaceA = h.a(this, context, typeface, i, z);
        } catch (RuntimeException unused) {
            typefaceA = null;
        }
        return typefaceA == null ? typeface : typefaceA;
    }
}
