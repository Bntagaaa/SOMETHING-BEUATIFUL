package com.airbnb.lottie;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import androidx.annotation.WorkerThread;
import com.airbnb.lottie.model.LottieCompositionCache;
import com.airbnb.lottie.network.NetworkFetcher;
import com.airbnb.lottie.parser.LottieCompositionMoshiParser;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import com.google.appinventor.components.runtime.util.Ev3Constants;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import okio.BufferedSource;
import okio.Okio;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class LottieCompositionFactory {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f2441a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f2442b = {Ev3Constants.Opcode.CP_NEQ8, Ev3Constants.Opcode.CP_GTF, 3, 4};

    private LottieCompositionFactory() {
    }

    public static void setMaxCacheSize(int i) {
        LottieCompositionCache.getInstance().resize(i);
    }

    public static void clearCache(Context context) {
        f2441a.clear();
        LottieCompositionCache.getInstance().clear();
        L.networkCache(context).clear();
    }

    public static LottieTask<LottieComposition> fromUrl(Context context, String str) {
        return fromUrl(context, str, "url_" + str);
    }

    public class a implements Callable<LottieResult<LottieComposition>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f2443a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f2444b;
        public final /* synthetic */ String c;

        public a(Context context, String str, String str2) {
            this.f2443a = context;
            this.f2444b = str;
            this.c = str2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public LottieResult<LottieComposition> call() throws IOException {
            NetworkFetcher networkFetcher = L.networkFetcher(this.f2443a);
            String str = this.f2444b;
            String str2 = this.c;
            LottieResult<LottieComposition> lottieResultFetchSync = networkFetcher.fetchSync(str, str2);
            if (str2 != null && lottieResultFetchSync.getValue() != null) {
                LottieCompositionCache.getInstance().put(str2, lottieResultFetchSync.getValue());
            }
            return lottieResultFetchSync;
        }
    }

    public static LottieTask<LottieComposition> fromUrl(Context context, String str, @Nullable String str2) {
        return a(str2, new a(context, str, str2));
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromUrlSync(Context context, String str) {
        return fromUrlSync(context, str, str);
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromUrlSync(Context context, String str, @Nullable String str2) throws IOException {
        LottieResult<LottieComposition> lottieResultFetchSync = L.networkFetcher(context).fetchSync(str, str2);
        if (str2 != null && lottieResultFetchSync.getValue() != null) {
            LottieCompositionCache.getInstance().put(str2, lottieResultFetchSync.getValue());
        }
        return lottieResultFetchSync;
    }

    public static LottieTask<LottieComposition> fromAsset(Context context, String str) {
        return fromAsset(context, str, "asset_" + str);
    }

    public class b implements Callable<LottieResult<LottieComposition>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f2445a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f2446b;
        public final /* synthetic */ String c;

        public b(Context context, String str, String str2) {
            this.f2445a = context;
            this.f2446b = str;
            this.c = str2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public LottieResult<LottieComposition> call() {
            return LottieCompositionFactory.fromAssetSync(this.f2445a, this.f2446b, this.c);
        }
    }

    public static LottieTask<LottieComposition> fromAsset(Context context, String str, @Nullable String str2) {
        return a(str2, new b(context.getApplicationContext(), str, str2));
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromAssetSync(Context context, String str) {
        return fromAssetSync(context, str, "asset_" + str);
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromAssetSync(Context context, String str, @Nullable String str2) {
        try {
            if (!str.endsWith(".zip") && !str.endsWith(".lottie")) {
                return fromJsonInputStreamSync(context.getAssets().open(str), str2);
            }
            return fromZipStreamSync(new ZipInputStream(context.getAssets().open(str)), str2);
        } catch (IOException e2) {
            return new LottieResult<>((Throwable) e2);
        }
    }

    public static LottieTask<LottieComposition> fromRawRes(Context context, @RawRes int i) {
        return fromRawRes(context, i, d(context, i));
    }

    public static LottieTask<LottieComposition> fromRawRes(Context context, @RawRes int i, @Nullable String str) {
        return a(str, new c(new WeakReference(context), context.getApplicationContext(), i, str));
    }

    public class c implements Callable<LottieResult<LottieComposition>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ WeakReference f2447a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Context f2448b;
        public final /* synthetic */ int c;
        public final /* synthetic */ String d;

        public c(WeakReference weakReference, Context context, int i, String str) {
            this.f2447a = weakReference;
            this.f2448b = context;
            this.c = i;
            this.d = str;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public LottieResult<LottieComposition> call() {
            Context context = (Context) this.f2447a.get();
            if (context == null) {
                context = this.f2448b;
            }
            return LottieCompositionFactory.fromRawResSync(context, this.c, this.d);
        }
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromRawResSync(Context context, @RawRes int i) {
        return fromRawResSync(context, i, d(context, i));
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromRawResSync(Context context, @RawRes int i, @Nullable String str) {
        Boolean bool;
        try {
            BufferedSource bufferedSourceBuffer = Okio.buffer(Okio.source(context.getResources().openRawResource(i)));
            try {
                BufferedSource bufferedSourcePeek = bufferedSourceBuffer.peek();
                byte[] bArr = f2442b;
                int length = bArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 < length) {
                        if (bufferedSourcePeek.readByte() != bArr[i2]) {
                            bool = Boolean.FALSE;
                            break;
                        }
                        i2++;
                    } else {
                        bufferedSourcePeek.close();
                        bool = Boolean.TRUE;
                        break;
                    }
                }
            } catch (Exception e2) {
                Logger.error("Failed to check zip file header", e2);
                bool = Boolean.FALSE;
            }
            if (bool.booleanValue()) {
                return fromZipStreamSync(new ZipInputStream(bufferedSourceBuffer.inputStream()), str);
            }
            return fromJsonInputStreamSync(bufferedSourceBuffer.inputStream(), str);
        } catch (Resources.NotFoundException e3) {
            return new LottieResult<>((Throwable) e3);
        }
    }

    public static String d(Context context, int i) {
        StringBuilder sb = new StringBuilder("rawRes");
        sb.append((context.getResources().getConfiguration().uiMode & 48) == 32 ? "_night_" : "_day_");
        sb.append(i);
        return sb.toString();
    }

    public class d implements Callable<LottieResult<LottieComposition>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ InputStream f2449a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f2450b;

        public d(InputStream inputStream, String str) {
            this.f2449a = inputStream;
            this.f2450b = str;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public LottieResult<LottieComposition> call() {
            return LottieCompositionFactory.fromJsonInputStreamSync(this.f2449a, this.f2450b);
        }
    }

    public static LottieTask<LottieComposition> fromJsonInputStream(InputStream inputStream, @Nullable String str) {
        return a(str, new d(inputStream, str));
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromJsonInputStreamSync(InputStream inputStream, @Nullable String str) {
        try {
            return fromJsonReaderSync(JsonReader.of(Okio.buffer(Okio.source(inputStream))), str);
        } finally {
            Utils.closeQuietly(inputStream);
        }
    }

    public class e implements Callable<LottieResult<LottieComposition>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ JSONObject f2451a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f2452b;

        public e(JSONObject jSONObject, String str) {
            this.f2451a = jSONObject;
            this.f2452b = str;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public LottieResult<LottieComposition> call() {
            return LottieCompositionFactory.fromJsonSync(this.f2451a, this.f2452b);
        }
    }

    @Deprecated
    public static LottieTask<LottieComposition> fromJson(JSONObject jSONObject, @Nullable String str) {
        return a(str, new e(jSONObject, str));
    }

    @WorkerThread
    @Deprecated
    public static LottieResult<LottieComposition> fromJsonSync(JSONObject jSONObject, @Nullable String str) {
        return fromJsonStringSync(jSONObject.toString(), str);
    }

    public class f implements Callable<LottieResult<LottieComposition>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f2453a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f2454b;

        public f(String str, String str2) {
            this.f2453a = str;
            this.f2454b = str2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public LottieResult<LottieComposition> call() {
            return LottieCompositionFactory.fromJsonStringSync(this.f2453a, this.f2454b);
        }
    }

    public static LottieTask<LottieComposition> fromJsonString(String str, @Nullable String str2) {
        return a(str2, new f(str, str2));
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromJsonStringSync(String str, @Nullable String str2) {
        return fromJsonReaderSync(JsonReader.of(Okio.buffer(Okio.source(new ByteArrayInputStream(str.getBytes())))), str2);
    }

    public class g implements Callable<LottieResult<LottieComposition>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ JsonReader f2455a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f2456b;

        public g(JsonReader jsonReader, String str) {
            this.f2455a = jsonReader;
            this.f2456b = str;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public LottieResult<LottieComposition> call() {
            return LottieCompositionFactory.fromJsonReaderSync(this.f2455a, this.f2456b);
        }
    }

    public static LottieTask<LottieComposition> fromJsonReader(JsonReader jsonReader, @Nullable String str) {
        return a(str, new g(jsonReader, str));
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromJsonReaderSync(JsonReader jsonReader, @Nullable String str) {
        return b(jsonReader, str, true);
    }

    public static LottieResult b(JsonReader jsonReader, String str, boolean z) throws IOException {
        try {
            try {
                LottieComposition lottieComposition = LottieCompositionMoshiParser.parse(jsonReader);
                if (str != null) {
                    LottieCompositionCache.getInstance().put(str, lottieComposition);
                }
                LottieResult lottieResult = new LottieResult(lottieComposition);
                if (z) {
                    Utils.closeQuietly(jsonReader);
                }
                return lottieResult;
            } catch (Exception e2) {
                LottieResult lottieResult2 = new LottieResult((Throwable) e2);
                if (z) {
                    Utils.closeQuietly(jsonReader);
                }
                return lottieResult2;
            }
        } catch (Throwable th) {
            if (z) {
                Utils.closeQuietly(jsonReader);
            }
            throw th;
        }
    }

    public class h implements Callable<LottieResult<LottieComposition>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ZipInputStream f2457a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f2458b;

        public h(ZipInputStream zipInputStream, String str) {
            this.f2457a = zipInputStream;
            this.f2458b = str;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public LottieResult<LottieComposition> call() {
            return LottieCompositionFactory.fromZipStreamSync(this.f2457a, this.f2458b);
        }
    }

    public static LottieTask<LottieComposition> fromZipStream(ZipInputStream zipInputStream, @Nullable String str) {
        return a(str, new h(zipInputStream, str));
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromZipStreamSync(ZipInputStream zipInputStream, @Nullable String str) {
        try {
            return c(zipInputStream, str);
        } finally {
            Utils.closeQuietly(zipInputStream);
        }
    }

    public static LottieResult c(ZipInputStream zipInputStream, String str) throws IOException {
        LottieImageAsset next;
        HashMap map = new HashMap();
        try {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            LottieComposition lottieComposition = null;
            while (nextEntry != null) {
                String name = nextEntry.getName();
                if (name.contains("__MACOSX")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().equalsIgnoreCase("manifest.json")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().contains(".json")) {
                    lottieComposition = (LottieComposition) b(JsonReader.of(Okio.buffer(Okio.source(zipInputStream))), null, false).getValue();
                } else if (name.contains(".png") || name.contains(".webp") || name.contains(".jpg") || name.contains(".jpeg")) {
                    map.put(name.split("/")[r1.length - 1], BitmapFactory.decodeStream(zipInputStream));
                } else {
                    zipInputStream.closeEntry();
                }
                nextEntry = zipInputStream.getNextEntry();
            }
            if (lottieComposition == null) {
                return new LottieResult((Throwable) new IllegalArgumentException("Unable to parse composition"));
            }
            for (Map.Entry entry : map.entrySet()) {
                String str2 = (String) entry.getKey();
                Iterator<LottieImageAsset> it = lottieComposition.getImages().values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    if (next.getFileName().equals(str2)) {
                        break;
                    }
                }
                if (next != null) {
                    next.setBitmap(Utils.resizeBitmapIfNeeded((Bitmap) entry.getValue(), next.getWidth(), next.getHeight()));
                }
            }
            for (Map.Entry<String, LottieImageAsset> entry2 : lottieComposition.getImages().entrySet()) {
                if (entry2.getValue().getBitmap() == null) {
                    return new LottieResult((Throwable) new IllegalStateException("There is no image for " + entry2.getValue().getFileName()));
                }
            }
            if (str != null) {
                LottieCompositionCache.getInstance().put(str, lottieComposition);
            }
            return new LottieResult(lottieComposition);
        } catch (IOException e2) {
            return new LottieResult((Throwable) e2);
        }
    }

    public static LottieTask a(String str, Callable callable) {
        LottieComposition lottieComposition = str == null ? null : LottieCompositionCache.getInstance().get(str);
        if (lottieComposition != null) {
            return new LottieTask(new com.airbnb.lottie.e(lottieComposition));
        }
        HashMap map = f2441a;
        if (str != null && map.containsKey(str)) {
            return (LottieTask) map.get(str);
        }
        LottieTask lottieTask = new LottieTask(callable);
        if (str != null) {
            lottieTask.addListener(new com.airbnb.lottie.c(str));
            lottieTask.addFailureListener(new com.airbnb.lottie.d(str));
            map.put(str, lottieTask);
        }
        return lottieTask;
    }
}
