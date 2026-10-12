package com.airbnb.lottie;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.os.TraceCompat;
import com.airbnb.lottie.network.DefaultLottieNetworkFetcher;
import com.airbnb.lottie.network.LottieNetworkCacheProvider;
import com.airbnb.lottie.network.LottieNetworkFetcher;
import com.airbnb.lottie.network.NetworkCache;
import com.airbnb.lottie.network.NetworkFetcher;
import java.io.File;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class L {
    public static boolean DBG = false;
    public static final String TAG = "LOTTIE";

    /* renamed from: a, reason: collision with root package name */
    public static boolean f2425a = false;

    /* renamed from: b, reason: collision with root package name */
    public static String[] f2426b;
    public static long[] c;
    public static int d;
    public static int e;
    public static LottieNetworkFetcher f;

    /* renamed from: g, reason: collision with root package name */
    public static LottieNetworkCacheProvider f2427g;
    public static volatile NetworkFetcher h;
    public static volatile NetworkCache i;

    private L() {
    }

    public static void setTraceEnabled(boolean z) {
        if (f2425a == z) {
            return;
        }
        f2425a = z;
        if (z) {
            f2426b = new String[20];
            c = new long[20];
        }
    }

    public static void beginSection(String str) {
        if (f2425a) {
            int i2 = d;
            if (i2 == 20) {
                e++;
                return;
            }
            f2426b[i2] = str;
            c[i2] = System.nanoTime();
            TraceCompat.beginSection(str);
            d++;
        }
    }

    public static float endSection(String str) {
        int i2 = e;
        if (i2 > 0) {
            e = i2 - 1;
            return 0.0f;
        }
        if (!f2425a) {
            return 0.0f;
        }
        int i3 = d - 1;
        d = i3;
        if (i3 == -1) {
            throw new IllegalStateException("Can't end trace section. There are none.");
        }
        if (!str.equals(f2426b[i3])) {
            throw new IllegalStateException(_COROUTINE.a.m(_COROUTINE.a.r("Unbalanced trace call ", str, ". Expected "), f2426b[d], "."));
        }
        TraceCompat.endSection();
        return (System.nanoTime() - c[d]) / 1000000.0f;
    }

    public static void setFetcher(LottieNetworkFetcher lottieNetworkFetcher) {
        f = lottieNetworkFetcher;
    }

    public static void setCacheProvider(LottieNetworkCacheProvider lottieNetworkCacheProvider) {
        f2427g = lottieNetworkCacheProvider;
    }

    @NonNull
    public static NetworkFetcher networkFetcher(@NonNull Context context) {
        NetworkFetcher networkFetcher;
        NetworkFetcher networkFetcher2 = h;
        if (networkFetcher2 != null) {
            return networkFetcher2;
        }
        synchronized (NetworkFetcher.class) {
            try {
                networkFetcher = h;
                if (networkFetcher == null) {
                    NetworkCache networkCache = networkCache(context);
                    LottieNetworkFetcher defaultLottieNetworkFetcher = f;
                    if (defaultLottieNetworkFetcher == null) {
                        defaultLottieNetworkFetcher = new DefaultLottieNetworkFetcher();
                    }
                    networkFetcher = new NetworkFetcher(networkCache, defaultLottieNetworkFetcher);
                    h = networkFetcher;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return networkFetcher;
    }

    @NonNull
    public static NetworkCache networkCache(@NonNull Context context) {
        NetworkCache networkCache;
        NetworkCache networkCache2 = i;
        if (networkCache2 != null) {
            return networkCache2;
        }
        synchronized (NetworkCache.class) {
            try {
                networkCache = i;
                if (networkCache == null) {
                    LottieNetworkCacheProvider aVar = f2427g;
                    if (aVar == null) {
                        aVar = new a(context);
                    }
                    networkCache = new NetworkCache(aVar);
                    i = networkCache;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return networkCache;
    }

    public class a implements LottieNetworkCacheProvider {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f2428a;

        public a(Context context) {
            this.f2428a = context;
        }

        @Override // com.airbnb.lottie.network.LottieNetworkCacheProvider
        @NonNull
        public File getCacheDir() {
            return new File(this.f2428a.getCacheDir(), "lottie_network_cache");
        }
    }
}
