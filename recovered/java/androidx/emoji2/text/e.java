package androidx.emoji2.text;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.emoji2.text.EmojiCompat;
import java.util.ArrayList;

/* loaded from: classes.dex */
class e extends EmojiCompat.MetadataRepoLoaderCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ EmojiCompat.a f1529a;

    public e(EmojiCompat.a aVar) {
        this.f1529a = aVar;
    }

    @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
    public void onLoaded(@NonNull MetadataRepo metadataRepo) {
        EmojiCompat.a aVar = this.f1529a;
        if (metadataRepo == null) {
            aVar.f1504a.b(new IllegalArgumentException("metadataRepo cannot be null"));
            return;
        }
        aVar.c = metadataRepo;
        MetadataRepo metadataRepo2 = aVar.c;
        EmojiCompat.d dVar = new EmojiCompat.d();
        EmojiCompat emojiCompat = aVar.f1504a;
        aVar.f1503b = new i(metadataRepo2, dVar, emojiCompat.m, emojiCompat.h, emojiCompat.i);
        EmojiCompat emojiCompat2 = aVar.f1504a;
        emojiCompat2.getClass();
        ArrayList arrayList = new ArrayList();
        emojiCompat2.f1497a.writeLock().lock();
        try {
            emojiCompat2.c = 1;
            arrayList.addAll(emojiCompat2.f1498b);
            emojiCompat2.f1498b.clear();
            emojiCompat2.f1497a.writeLock().unlock();
            emojiCompat2.d.post(new EmojiCompat.c(arrayList, emojiCompat2.c, null));
        } catch (Throwable th) {
            emojiCompat2.f1497a.writeLock().unlock();
            throw th;
        }
    }

    @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
    public void onFailed(@Nullable Throwable th) {
        this.f1529a.f1504a.b(th);
    }
}
