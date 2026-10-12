package androidx.emoji2.text;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.emoji2.text.EmojiCompat;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes.dex */
class h extends EmojiCompat.MetadataRepoLoaderCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ EmojiCompat.MetadataRepoLoaderCallback f1561a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ThreadPoolExecutor f1562b;

    public h(EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback, ThreadPoolExecutor threadPoolExecutor) {
        this.f1561a = metadataRepoLoaderCallback;
        this.f1562b = threadPoolExecutor;
    }

    @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
    public void onLoaded(@NonNull MetadataRepo metadataRepo) {
        ThreadPoolExecutor threadPoolExecutor = this.f1562b;
        try {
            this.f1561a.onLoaded(metadataRepo);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }

    @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
    public void onFailed(@Nullable Throwable th) {
        ThreadPoolExecutor threadPoolExecutor = this.f1562b;
        try {
            this.f1561a.onFailed(th);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }
}
