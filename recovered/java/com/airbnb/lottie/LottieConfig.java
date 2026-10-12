package com.airbnb.lottie;

import androidx.annotation.NonNull;
import com.airbnb.lottie.network.LottieNetworkCacheProvider;
import com.airbnb.lottie.network.LottieNetworkFetcher;
import java.io.File;

/* loaded from: classes.dex */
public class LottieConfig {

    /* renamed from: a, reason: collision with root package name */
    public final LottieNetworkFetcher f2459a;

    /* renamed from: b, reason: collision with root package name */
    public final LottieNetworkCacheProvider f2460b;
    public final boolean c;

    public LottieConfig(LottieNetworkFetcher lottieNetworkFetcher, LottieNetworkCacheProvider lottieNetworkCacheProvider, boolean z) {
        this.f2459a = lottieNetworkFetcher;
        this.f2460b = lottieNetworkCacheProvider;
        this.c = z;
    }

    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public LottieNetworkFetcher f2461a;

        /* renamed from: b, reason: collision with root package name */
        public LottieNetworkCacheProvider f2462b;
        public boolean c = false;

        @NonNull
        public Builder setNetworkFetcher(@NonNull LottieNetworkFetcher lottieNetworkFetcher) {
            this.f2461a = lottieNetworkFetcher;
            return this;
        }

        @NonNull
        public Builder setNetworkCacheDir(@NonNull File file) {
            if (this.f2462b != null) {
                throw new IllegalStateException("There is already a cache provider!");
            }
            this.f2462b = new a(file);
            return this;
        }

        public class a implements LottieNetworkCacheProvider {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ File f2463a;

            public a(File file) {
                this.f2463a = file;
            }

            @Override // com.airbnb.lottie.network.LottieNetworkCacheProvider
            @NonNull
            public File getCacheDir() {
                File file = this.f2463a;
                if (file.isDirectory()) {
                    return file;
                }
                throw new IllegalArgumentException("cache file must be a directory");
            }
        }

        @NonNull
        public Builder setNetworkCacheProvider(@NonNull LottieNetworkCacheProvider lottieNetworkCacheProvider) {
            if (this.f2462b != null) {
                throw new IllegalStateException("There is already a cache provider!");
            }
            this.f2462b = new b(lottieNetworkCacheProvider);
            return this;
        }

        public class b implements LottieNetworkCacheProvider {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ LottieNetworkCacheProvider f2464a;

            public b(LottieNetworkCacheProvider lottieNetworkCacheProvider) {
                this.f2464a = lottieNetworkCacheProvider;
            }

            @Override // com.airbnb.lottie.network.LottieNetworkCacheProvider
            @NonNull
            public File getCacheDir() {
                File cacheDir = this.f2464a.getCacheDir();
                if (cacheDir.isDirectory()) {
                    return cacheDir;
                }
                throw new IllegalArgumentException("cache file must be a directory");
            }
        }

        @NonNull
        public Builder setEnableSystraceMarkers(boolean z) {
            this.c = z;
            return this;
        }

        @NonNull
        public LottieConfig build() {
            return new LottieConfig(this.f2461a, this.f2462b, this.c);
        }
    }
}
