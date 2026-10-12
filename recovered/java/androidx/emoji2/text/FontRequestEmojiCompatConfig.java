package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.provider.FontRequest;
import androidx.core.provider.FontsContractCompat;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.c;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class FontRequestEmojiCompatConfig extends EmojiCompat.Config {
    public static final FontProviderHelper j = new FontProviderHelper();

    public static abstract class RetryPolicy {
        public abstract long getRetryDelay();
    }

    public static class ExponentialBackoffRetryPolicy extends RetryPolicy {

        /* renamed from: a, reason: collision with root package name */
        public final long f1512a;

        /* renamed from: b, reason: collision with root package name */
        public long f1513b;

        public ExponentialBackoffRetryPolicy(long j) {
            this.f1512a = j;
        }

        @Override // androidx.emoji2.text.FontRequestEmojiCompatConfig.RetryPolicy
        public long getRetryDelay() {
            if (this.f1513b == 0) {
                this.f1513b = SystemClock.uptimeMillis();
                return 0L;
            }
            long jUptimeMillis = SystemClock.uptimeMillis() - this.f1513b;
            long j = this.f1512a;
            if (jUptimeMillis > j) {
                return -1L;
            }
            return Math.min(Math.max(jUptimeMillis, 1000L), j - jUptimeMillis);
        }
    }

    @NonNull
    @Deprecated
    public FontRequestEmojiCompatConfig setHandler(@Nullable final Handler handler) {
        if (handler == null) {
            return this;
        }
        setLoadingExecutor(new Executor() { // from class: androidx.emoji2.text.a
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        });
        return this;
    }

    public FontRequestEmojiCompatConfig(@NonNull Context context, @NonNull FontRequest fontRequest) {
        super(new a(context, fontRequest, j));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public FontRequestEmojiCompatConfig(@NonNull Context context, @NonNull FontRequest fontRequest, @NonNull FontProviderHelper fontProviderHelper) {
        super(new a(context, fontRequest, fontProviderHelper));
    }

    @NonNull
    public FontRequestEmojiCompatConfig setLoadingExecutor(@NonNull Executor executor) {
        ((a) getMetadataRepoLoader()).setExecutor(executor);
        return this;
    }

    @NonNull
    public FontRequestEmojiCompatConfig setRetryPolicy(@Nullable RetryPolicy retryPolicy) {
        ((a) getMetadataRepoLoader()).setRetryPolicy(retryPolicy);
        return this;
    }

    public static class a implements EmojiCompat.MetadataRepoLoader {

        /* renamed from: a, reason: collision with root package name */
        public final Context f1514a;

        /* renamed from: b, reason: collision with root package name */
        public final FontRequest f1515b;
        public final FontProviderHelper c;
        public final Object d = new Object();
        public Handler e;
        public Executor f;

        /* renamed from: g, reason: collision with root package name */
        public ThreadPoolExecutor f1516g;
        public RetryPolicy h;
        public EmojiCompat.MetadataRepoLoaderCallback i;
        public ContentObserver j;
        public j k;

        public a(Context context, FontRequest fontRequest, FontProviderHelper fontProviderHelper) {
            Preconditions.checkNotNull(context, "Context cannot be null");
            Preconditions.checkNotNull(fontRequest, "FontRequest cannot be null");
            this.f1514a = context.getApplicationContext();
            this.f1515b = fontRequest;
            this.c = fontProviderHelper;
        }

        public void setExecutor(@NonNull Executor executor) {
            synchronized (this.d) {
                this.f = executor;
            }
        }

        public void setRetryPolicy(@Nullable RetryPolicy retryPolicy) {
            synchronized (this.d) {
                this.h = retryPolicy;
            }
        }

        @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoader
        @RequiresApi(19)
        public void load(@NonNull EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback) {
            Preconditions.checkNotNull(metadataRepoLoaderCallback, "LoaderCallback cannot be null");
            synchronized (this.d) {
                this.i = metadataRepoLoaderCallback;
            }
            b();
        }

        public final void b() {
            synchronized (this.d) {
                try {
                    if (this.i == null) {
                        return;
                    }
                    if (this.f == null) {
                        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new b("emojiCompat"));
                        threadPoolExecutor.allowCoreThreadTimeOut(true);
                        this.f1516g = threadPoolExecutor;
                        this.f = threadPoolExecutor;
                    }
                    this.f.execute(new j(this, 0));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final FontsContractCompat.FontInfo c() {
            try {
                FontsContractCompat.FontFamilyResult fontFamilyResultFetchFonts = this.c.fetchFonts(this.f1514a, this.f1515b);
                if (fontFamilyResultFetchFonts.getStatusCode() != 0) {
                    throw new RuntimeException("fetchFonts failed (" + fontFamilyResultFetchFonts.getStatusCode() + ")");
                }
                FontsContractCompat.FontInfo[] fonts = fontFamilyResultFetchFonts.getFonts();
                if (fonts == null || fonts.length == 0) {
                    throw new RuntimeException("fetchFonts failed (empty result)");
                }
                return fonts[0];
            } catch (PackageManager.NameNotFoundException e) {
                throw new RuntimeException("provider not found", e);
            }
        }

        public final void d(Uri uri, long j) {
            synchronized (this.d) {
                try {
                    Handler handler = this.e;
                    if (handler == null) {
                        if (Build.VERSION.SDK_INT >= 28) {
                            handler = c.a.createAsync(Looper.getMainLooper());
                        } else {
                            handler = new Handler(Looper.getMainLooper());
                        }
                        this.e = handler;
                    }
                    if (this.j == null) {
                        k kVar = new k(this, handler);
                        this.j = kVar;
                        this.c.registerObserver(this.f1514a, uri, kVar);
                    }
                    if (this.k == null) {
                        this.k = new j(this, 1);
                    }
                    handler.postDelayed(this.k, j);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void a() {
            synchronized (this.d) {
                try {
                    this.i = null;
                    ContentObserver contentObserver = this.j;
                    if (contentObserver != null) {
                        this.c.unregisterObserver(this.f1514a, contentObserver);
                        this.j = null;
                    }
                    Handler handler = this.e;
                    if (handler != null) {
                        handler.removeCallbacks(this.k);
                    }
                    this.e = null;
                    ThreadPoolExecutor threadPoolExecutor = this.f1516g;
                    if (threadPoolExecutor != null) {
                        threadPoolExecutor.shutdown();
                    }
                    this.f = null;
                    this.f1516g = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static class FontProviderHelper {
        @NonNull
        public FontsContractCompat.FontFamilyResult fetchFonts(@NonNull Context context, @NonNull FontRequest fontRequest) throws PackageManager.NameNotFoundException {
            return FontsContractCompat.fetchFonts(context, null, fontRequest);
        }

        @Nullable
        public Typeface buildTypeface(@NonNull Context context, @NonNull FontsContractCompat.FontInfo fontInfo) throws PackageManager.NameNotFoundException {
            return FontsContractCompat.buildTypeface(context, null, new FontsContractCompat.FontInfo[]{fontInfo});
        }

        public void registerObserver(@NonNull Context context, @NonNull Uri uri, @NonNull ContentObserver contentObserver) {
            context.getContentResolver().registerContentObserver(uri, false, contentObserver);
        }

        public void unregisterObserver(@NonNull Context context, @NonNull ContentObserver contentObserver) {
            context.getContentResolver().unregisterContentObserver(contentObserver);
        }
    }
}
