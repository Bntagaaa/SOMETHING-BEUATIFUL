package androidx.core.provider;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import android.os.Handler;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.provider.FontsContractCompat;
import androidx.core.provider.l;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
class k {

    /* renamed from: a, reason: collision with root package name */
    public static final LruCache f1179a = new LruCache(16);

    /* renamed from: b, reason: collision with root package name */
    public static final ThreadPoolExecutor f1180b;
    public static final Object c;
    public static final SimpleArrayMap d;

    private k() {
    }

    static {
        l.a aVar = new l.a();
        aVar.f1183a = "fonts-androidx";
        aVar.f1184b = 10;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 10000, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), aVar);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f1180b = threadPoolExecutor;
        c = new Object();
        d = new SimpleArrayMap();
    }

    public static Typeface b(Context context, FontRequest fontRequest, int i, Executor executor, c cVar) {
        String str = fontRequest.f + "-" + i;
        Typeface typeface = (Typeface) f1179a.get(str);
        if (typeface != null) {
            cVar.a(new a(typeface));
            return typeface;
        }
        h hVar = new h(cVar);
        synchronized (c) {
            try {
                SimpleArrayMap simpleArrayMap = d;
                ArrayList arrayList = (ArrayList) simpleArrayMap.get(str);
                if (arrayList != null) {
                    arrayList.add(hVar);
                    return null;
                }
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(hVar);
                simpleArrayMap.put(str, arrayList2);
                i iVar = new i(str, context, fontRequest, i);
                if (executor == null) {
                    executor = f1180b;
                }
                j jVar = new j(str);
                Handler handlerA = d.a();
                l.c cVar2 = new l.c();
                cVar2.f1187a = iVar;
                cVar2.f1188b = jVar;
                cVar2.c = handlerA;
                executor.execute(cVar2);
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static a a(String str, Context context, FontRequest fontRequest, int i) {
        LruCache lruCache = f1179a;
        Typeface typeface = (Typeface) lruCache.get(str);
        if (typeface != null) {
            return new a(typeface);
        }
        try {
            FontsContractCompat.FontFamilyResult fontFamilyResultA = f.a(context, null, fontRequest);
            int i2 = 1;
            if (fontFamilyResultA.getStatusCode() != 0) {
                i2 = fontFamilyResultA.getStatusCode() != 1 ? -3 : -2;
            } else {
                FontsContractCompat.FontInfo[] fonts = fontFamilyResultA.getFonts();
                if (fonts != null && fonts.length != 0) {
                    int length = fonts.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 >= length) {
                            i2 = 0;
                            break;
                        }
                        int resultCode = fonts[i3].getResultCode();
                        if (resultCode == 0) {
                            i3++;
                        } else if (resultCode >= 0) {
                            i2 = resultCode;
                        }
                    }
                }
            }
            if (i2 != 0) {
                return new a(i2);
            }
            Typeface typefaceCreateFromFontInfo = TypefaceCompat.createFromFontInfo(context, null, fontFamilyResultA.getFonts(), i);
            if (typefaceCreateFromFontInfo != null) {
                lruCache.put(str, typefaceCreateFromFontInfo);
                return new a(typefaceCreateFromFontInfo);
            }
            return new a(-3);
        } catch (PackageManager.NameNotFoundException unused) {
            return new a(-1);
        }
    }

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final Typeface f1181a;

        /* renamed from: b, reason: collision with root package name */
        public final int f1182b;

        public a(int i) {
            this.f1181a = null;
            this.f1182b = i;
        }

        public a(Typeface typeface) {
            this.f1181a = typeface;
            this.f1182b = 0;
        }
    }
}
