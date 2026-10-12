package androidx.emoji2.text;

import android.graphics.Typeface;
import androidx.core.graphics.TypefaceCompatUtil;
import androidx.core.os.TraceCompat;
import androidx.core.provider.FontsContractCompat;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.FontRequestEmojiCompatConfig;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final /* synthetic */ class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1568a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FontRequestEmojiCompatConfig.a f1569b;

    public /* synthetic */ j(FontRequestEmojiCompatConfig.a aVar, int i) {
        this.f1568a = i;
        this.f1569b = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1568a) {
            case 0:
                FontRequestEmojiCompatConfig.a aVar = this.f1569b;
                synchronized (aVar.d) {
                    try {
                        if (aVar.i == null) {
                            return;
                        }
                        try {
                            FontsContractCompat.FontInfo fontInfoC = aVar.c();
                            int resultCode = fontInfoC.getResultCode();
                            if (resultCode == 2) {
                                synchronized (aVar.d) {
                                    try {
                                        FontRequestEmojiCompatConfig.RetryPolicy retryPolicy = aVar.h;
                                        if (retryPolicy != null) {
                                            long retryDelay = retryPolicy.getRetryDelay();
                                            if (retryDelay >= 0) {
                                                aVar.d(fontInfoC.getUri(), retryDelay);
                                                return;
                                            }
                                        }
                                    } finally {
                                    }
                                }
                            }
                            if (resultCode != 0) {
                                throw new RuntimeException("fetchFonts result is not OK. (" + resultCode + ")");
                            }
                            try {
                                TraceCompat.beginSection("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                                Typeface typefaceBuildTypeface = aVar.c.buildTypeface(aVar.f1514a, fontInfoC);
                                ByteBuffer byteBufferMmap = TypefaceCompatUtil.mmap(aVar.f1514a, null, fontInfoC.getUri());
                                if (byteBufferMmap == null || typefaceBuildTypeface == null) {
                                    throw new RuntimeException("Unable to open file.");
                                }
                                MetadataRepo metadataRepoCreate = MetadataRepo.create(typefaceBuildTypeface, byteBufferMmap);
                                TraceCompat.endSection();
                                synchronized (aVar.d) {
                                    try {
                                        EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback = aVar.i;
                                        if (metadataRepoLoaderCallback != null) {
                                            metadataRepoLoaderCallback.onLoaded(metadataRepoCreate);
                                        }
                                    } finally {
                                    }
                                }
                                aVar.a();
                                return;
                            } catch (Throwable th) {
                                TraceCompat.endSection();
                                throw th;
                            }
                        } catch (Throwable th2) {
                            synchronized (aVar.d) {
                                try {
                                    EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback2 = aVar.i;
                                    if (metadataRepoLoaderCallback2 != null) {
                                        metadataRepoLoaderCallback2.onFailed(th2);
                                    }
                                    aVar.a();
                                    return;
                                } finally {
                                }
                            }
                        }
                    } finally {
                    }
                }
            default:
                this.f1569b.b();
                return;
        }
    }
}
