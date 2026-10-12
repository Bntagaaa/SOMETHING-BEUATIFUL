package androidx.emoji2.text;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.util.SparseArray;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.os.TraceCompat;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.flatbuffer.MetadataList;
import androidx.emoji2.text.l;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

@AnyThread
@RequiresApi(19)
/* loaded from: classes.dex */
public final class MetadataRepo {

    /* renamed from: a, reason: collision with root package name */
    public final MetadataList f1517a;

    /* renamed from: b, reason: collision with root package name */
    public final char[] f1518b;
    public final a c = new a(1024);
    public final Typeface d;

    public MetadataRepo(Typeface typeface, MetadataList metadataList) {
        this.d = typeface;
        this.f1517a = metadataList;
        this.f1518b = new char[metadataList.listLength() * 2];
        int iListLength = metadataList.listLength();
        for (int i = 0; i < iListLength; i++) {
            EmojiMetadata emojiMetadata = new EmojiMetadata(this, i);
            Character.toChars(emojiMetadata.getId(), this.f1518b, i * 2);
            Preconditions.checkNotNull(emojiMetadata, "emoji metadata cannot be null");
            Preconditions.checkArgument(emojiMetadata.getCodepointsLength() > 0, "invalid metadata codepoint length");
            this.c.a(emojiMetadata, 0, emojiMetadata.getCodepointsLength() - 1);
        }
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.TESTS})
    public static MetadataRepo create(@NonNull Typeface typeface) {
        try {
            TraceCompat.beginSection("EmojiCompat.MetadataRepo.create");
            return new MetadataRepo(typeface, new MetadataList());
        } finally {
            TraceCompat.endSection();
        }
    }

    @NonNull
    public static MetadataRepo create(@NonNull Typeface typeface, @NonNull InputStream inputStream) throws IOException {
        try {
            TraceCompat.beginSection("EmojiCompat.MetadataRepo.create");
            return new MetadataRepo(typeface, l.b(inputStream));
        } finally {
            TraceCompat.endSection();
        }
    }

    @NonNull
    public static MetadataRepo create(@NonNull Typeface typeface, @NonNull ByteBuffer byteBuffer) throws IOException {
        try {
            TraceCompat.beginSection("EmojiCompat.MetadataRepo.create");
            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
            byteBufferDuplicate.position((int) l.a(new l.a(byteBufferDuplicate)).f1574a);
            return new MetadataRepo(typeface, MetadataList.getRootAsMetadataList(byteBufferDuplicate));
        } finally {
            TraceCompat.endSection();
        }
    }

    @NonNull
    public static MetadataRepo create(@NonNull AssetManager assetManager, @NonNull String str) throws IOException {
        try {
            TraceCompat.beginSection("EmojiCompat.MetadataRepo.create");
            Typeface typefaceCreateFromAsset = Typeface.createFromAsset(assetManager, str);
            InputStream inputStreamOpen = assetManager.open(str);
            try {
                MetadataList metadataListB = l.b(inputStreamOpen);
                inputStreamOpen.close();
                return new MetadataRepo(typefaceCreateFromAsset, metadataListB);
            } finally {
            }
        } finally {
            TraceCompat.endSection();
        }
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public char[] getEmojiCharArray() {
        return this.f1518b;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public MetadataList getMetadataList() {
        return this.f1517a;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final SparseArray f1519a;

        /* renamed from: b, reason: collision with root package name */
        public EmojiMetadata f1520b;

        private a() {
            this(1);
        }

        public a(int i) {
            this.f1519a = new SparseArray(i);
        }

        public final void a(EmojiMetadata emojiMetadata, int i, int i2) {
            int codepointAt = emojiMetadata.getCodepointAt(i);
            SparseArray sparseArray = this.f1519a;
            a aVar = sparseArray == null ? null : (a) sparseArray.get(codepointAt);
            if (aVar == null) {
                aVar = new a();
                sparseArray.put(emojiMetadata.getCodepointAt(i), aVar);
            }
            if (i2 > i) {
                aVar.a(emojiMetadata, i + 1, i2);
            } else {
                aVar.f1520b = emojiMetadata;
            }
        }
    }
}
