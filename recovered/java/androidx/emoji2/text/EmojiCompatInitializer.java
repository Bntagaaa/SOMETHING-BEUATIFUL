package androidx.emoji2.text;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.os.TraceCompat;
import androidx.emoji2.text.EmojiCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ProcessLifecycleInitializer;
import androidx.startup.AppInitializer;
import androidx.startup.Initializer;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class EmojiCompatInitializer implements Initializer<Boolean> {

    @RequiresApi(19)
    public static class b implements EmojiCompat.MetadataRepoLoader {

        /* renamed from: a, reason: collision with root package name */
        public final Context f1507a;

        @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoader
        public void load(@NonNull final EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback) {
            final ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new androidx.emoji2.text.b("EmojiCompatInitializer"));
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            threadPoolExecutor.execute(new Runnable() { // from class: androidx.emoji2.text.g
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback2 = metadataRepoLoaderCallback;
                    ThreadPoolExecutor threadPoolExecutor2 = threadPoolExecutor;
                    try {
                        FontRequestEmojiCompatConfig fontRequestEmojiCompatConfigCreate = DefaultEmojiCompatConfig.create(this.f1559a.f1507a);
                        if (fontRequestEmojiCompatConfigCreate == null) {
                            throw new RuntimeException("EmojiCompat font provider not available on this device.");
                        }
                        fontRequestEmojiCompatConfigCreate.setLoadingExecutor(threadPoolExecutor2);
                        fontRequestEmojiCompatConfigCreate.getMetadataRepoLoader().load(new h(metadataRepoLoaderCallback2, threadPoolExecutor2));
                    } catch (Throwable th) {
                        metadataRepoLoaderCallback2.onFailed(th);
                        threadPoolExecutor2.shutdown();
                    }
                }
            });
        }

        public b(Context context) {
            this.f1507a = context.getApplicationContext();
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.startup.Initializer
    @NonNull
    public Boolean create(@NonNull Context context) {
        EmojiCompat.init(new a(context));
        Lifecycle lifecycle = ((LifecycleOwner) AppInitializer.getInstance(context).initializeComponent(ProcessLifecycleInitializer.class)).getLifecycle();
        lifecycle.addObserver(new f(this, lifecycle));
        return Boolean.TRUE;
    }

    @Override // androidx.startup.Initializer
    @NonNull
    public List<Class<? extends Initializer<?>>> dependencies() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    public static class c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            try {
                TraceCompat.beginSection("EmojiCompat.EmojiCompatInitializer.run");
                if (EmojiCompat.isConfigured()) {
                    EmojiCompat.get().load();
                }
            } finally {
                TraceCompat.endSection();
            }
        }
    }

    @RequiresApi(19)
    public static class a extends EmojiCompat.Config {
        public a(Context context) {
            super(new b(context));
            setMetadataLoadStrategy(1);
        }
    }
}
