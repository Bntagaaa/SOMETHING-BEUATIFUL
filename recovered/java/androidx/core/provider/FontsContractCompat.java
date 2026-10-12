package androidx.core.provider;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Handler;
import android.provider.BaseColumns;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.collection.LruCache;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.graphics.TypefaceCompatUtil;
import androidx.core.provider.k;
import androidx.core.provider.l;
import androidx.core.util.Preconditions;
import gnu.expr.ModuleManager;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class FontsContractCompat {

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public static final String PARCEL_FONT_RESULTS = "font_results";

    public static final class Columns implements BaseColumns {
        public static final String FILE_ID = "file_id";
        public static final String ITALIC = "font_italic";
        public static final String RESULT_CODE = "result_code";
        public static final int RESULT_CODE_FONT_NOT_FOUND = 1;
        public static final int RESULT_CODE_FONT_UNAVAILABLE = 2;
        public static final int RESULT_CODE_MALFORMED_QUERY = 3;
        public static final int RESULT_CODE_OK = 0;
        public static final String TTC_INDEX = "font_ttc_index";
        public static final String VARIATION_SETTINGS = "font_variation_settings";
        public static final String WEIGHT = "font_weight";
    }

    public static class FontRequestCallback {
        public static final int FAIL_REASON_FONT_LOAD_ERROR = -3;
        public static final int FAIL_REASON_FONT_NOT_FOUND = 1;
        public static final int FAIL_REASON_FONT_UNAVAILABLE = 2;
        public static final int FAIL_REASON_MALFORMED_QUERY = 3;
        public static final int FAIL_REASON_PROVIDER_NOT_FOUND = -1;
        public static final int FAIL_REASON_SECURITY_VIOLATION = -4;
        public static final int FAIL_REASON_WRONG_CERTIFICATES = -2;

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        @Deprecated
        public static final int RESULT_OK = 0;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public @interface FontRequestFailReason {
        }

        public void onTypefaceRequestFailed(int i) {
        }

        public void onTypefaceRetrieved(Typeface typeface) {
        }
    }

    private FontsContractCompat() {
    }

    @Nullable
    public static Typeface buildTypeface(@NonNull Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontInfo[] fontInfoArr) {
        return TypefaceCompat.createFromFontInfo(context, cancellationSignal, fontInfoArr, 0);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public static void resetCache() {
        k.f1179a.evictAll();
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    @VisibleForTesting
    public static void resetTypefaceCache() {
        k.f1179a.evictAll();
    }

    @NonNull
    public static FontFamilyResult fetchFonts(@NonNull Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontRequest fontRequest) throws PackageManager.NameNotFoundException {
        return f.a(context, cancellationSignal, fontRequest);
    }

    public static void requestFont(@NonNull Context context, @NonNull FontRequest fontRequest, @NonNull FontRequestCallback fontRequestCallback, @NonNull Handler handler) {
        c cVar = new c(fontRequestCallback);
        k.b(context.getApplicationContext(), fontRequest, 0, new l.b(handler), cVar);
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static Typeface requestFont(@NonNull Context context, @NonNull FontRequest fontRequest, int i, boolean z, @IntRange(from = 0) int i2, @NonNull Handler handler, @NonNull FontRequestCallback fontRequestCallback) throws InterruptedException {
        c cVar = new c(fontRequestCallback, handler);
        if (z) {
            LruCache lruCache = k.f1179a;
            String str = fontRequest.f + "-" + i;
            Typeface typeface = (Typeface) k.f1179a.get(str);
            if (typeface != null) {
                cVar.a(new k.a(typeface));
                return typeface;
            }
            if (i2 == -1) {
                k.a aVarA = k.a(str, context, fontRequest, i);
                cVar.a(aVarA);
                return aVarA.f1181a;
            }
            try {
                try {
                    try {
                        k.a aVar = (k.a) k.f1180b.submit(new g(str, context, fontRequest, i)).get(i2, TimeUnit.MILLISECONDS);
                        cVar.a(aVar);
                        return aVar.f1181a;
                    } catch (InterruptedException e) {
                        throw e;
                    }
                } catch (ExecutionException e2) {
                    throw new RuntimeException(e2);
                } catch (TimeoutException unused) {
                    throw new InterruptedException("timeout");
                }
            } catch (InterruptedException unused2) {
                cVar.a(new k.a(-3));
                return null;
            }
        }
        return k.b(context, fontRequest, i, null, cVar);
    }

    public static class FontInfo {

        /* renamed from: a, reason: collision with root package name */
        public final Uri f1153a;

        /* renamed from: b, reason: collision with root package name */
        public final int f1154b;
        public final int c;
        public final boolean d;
        public final int e;

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        @Deprecated
        public FontInfo(@NonNull Uri uri, @IntRange(from = 0) int i, @IntRange(from = 1, to = ModuleManager.LAST_MODIFIED_CACHE_TIME) int i2, boolean z, int i3) {
            this.f1153a = (Uri) Preconditions.checkNotNull(uri);
            this.f1154b = i;
            this.c = i2;
            this.d = z;
            this.e = i3;
        }

        @NonNull
        public Uri getUri() {
            return this.f1153a;
        }

        @IntRange(from = 0)
        public int getTtcIndex() {
            return this.f1154b;
        }

        @IntRange(from = 1, to = ModuleManager.LAST_MODIFIED_CACHE_TIME)
        public int getWeight() {
            return this.c;
        }

        public boolean isItalic() {
            return this.d;
        }

        public int getResultCode() {
            return this.e;
        }
    }

    public static class FontFamilyResult {
        public static final int STATUS_OK = 0;
        public static final int STATUS_UNEXPECTED_DATA_PROVIDED = 2;
        public static final int STATUS_WRONG_CERTIFICATES = 1;

        /* renamed from: a, reason: collision with root package name */
        public final int f1151a;

        /* renamed from: b, reason: collision with root package name */
        public final FontInfo[] f1152b;

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        @Deprecated
        public FontFamilyResult(int i, @Nullable FontInfo[] fontInfoArr) {
            this.f1151a = i;
            this.f1152b = fontInfoArr;
        }

        public int getStatusCode() {
            return this.f1151a;
        }

        public FontInfo[] getFonts() {
            return this.f1152b;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public static Typeface getFontSync(Context context, FontRequest fontRequest, @Nullable ResourcesCompat.FontCallback fontCallback, @Nullable Handler handler, boolean z, int i, int i2) {
        return requestFont(context, fontRequest, i2, z, i, ResourcesCompat.FontCallback.getHandler(handler), new TypefaceCompat.ResourcesCallbackAdapter(fontCallback));
    }

    @RequiresApi(19)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public static Map<Uri, ByteBuffer> prepareFontData(Context context, FontInfo[] fontInfoArr, CancellationSignal cancellationSignal) {
        return TypefaceCompatUtil.readFontInfoIntoByteBuffer(context, fontInfoArr, cancellationSignal);
    }

    @VisibleForTesting
    @Deprecated
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static ProviderInfo getProvider(@NonNull PackageManager packageManager, @NonNull FontRequest fontRequest, @Nullable Resources resources) throws PackageManager.NameNotFoundException {
        return f.b(packageManager, fontRequest, resources);
    }
}
