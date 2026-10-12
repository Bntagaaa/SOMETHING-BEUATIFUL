package okio;

import java.io.IOException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.ShortBufferException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\f\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lokio/CipherSource;", "Lokio/Source;", "Lokio/BufferedSource;", "source", "Ljavax/crypto/Cipher;", "cipher", "<init>", "(Lokio/BufferedSource;Ljavax/crypto/Cipher;)V", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "", "close", "()V", "b", "Ljavax/crypto/Cipher;", "getCipher", "()Ljavax/crypto/Cipher;", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCipherSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CipherSource.kt\nokio/CipherSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,120:1\n1#2:121\n*E\n"})
/* loaded from: classes2.dex */
public final class CipherSource implements Source {

    /* renamed from: a, reason: collision with root package name */
    public final BufferedSource f6770a;

    /* renamed from: b, reason: collision with root package name and from kotlin metadata */
    public final Cipher cipher;
    public final int c;
    public final Buffer d;
    public boolean e;
    public boolean f;

    public CipherSource(@NotNull BufferedSource source, @NotNull Cipher cipher) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(cipher, "cipher");
        this.f6770a = source;
        this.cipher = cipher;
        int blockSize = cipher.getBlockSize();
        this.c = blockSize;
        this.d = new Buffer();
        if (blockSize > 0) {
            return;
        }
        throw new IllegalArgumentException(("Block cipher required " + cipher).toString());
    }

    @NotNull
    public final Cipher getCipher() {
        return this.cipher;
    }

    @Override // okio.Source
    public long read(@NotNull Buffer sink, long byteCount) throws BadPaddingException, IllegalBlockSizeException, IOException, ShortBufferException {
        Buffer buffer;
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (byteCount < 0) {
            throw new IllegalArgumentException(_COROUTINE.a.g("byteCount < 0: ", byteCount).toString());
        }
        if (this.f) {
            throw new IllegalStateException("closed");
        }
        if (byteCount == 0) {
            return 0L;
        }
        while (true) {
            buffer = this.d;
            if (buffer.size() != 0 || this.e) {
                break;
            }
            BufferedSource bufferedSource = this.f6770a;
            boolean zExhausted = bufferedSource.exhausted();
            Cipher cipher = this.cipher;
            if (zExhausted) {
                this.e = true;
                int outputSize = cipher.getOutputSize(0);
                if (outputSize != 0) {
                    Segment segmentWritableSegment$okio = buffer.writableSegment$okio(outputSize);
                    int iDoFinal = cipher.doFinal(segmentWritableSegment$okio.data, segmentWritableSegment$okio.pos);
                    segmentWritableSegment$okio.limit += iDoFinal;
                    buffer.setSize$okio(buffer.size() + iDoFinal);
                    if (segmentWritableSegment$okio.pos == segmentWritableSegment$okio.limit) {
                        buffer.head = segmentWritableSegment$okio.pop();
                        SegmentPool.recycle(segmentWritableSegment$okio);
                    }
                }
            } else {
                Segment segment = bufferedSource.getBuffer().head;
                Intrinsics.checkNotNull(segment);
                int i = segment.limit - segment.pos;
                int outputSize2 = cipher.getOutputSize(i);
                while (true) {
                    if (outputSize2 > 8192) {
                        int i2 = this.c;
                        if (i <= i2) {
                            this.e = true;
                            byte[] bArrDoFinal = cipher.doFinal(bufferedSource.readByteArray());
                            Intrinsics.checkNotNullExpressionValue(bArrDoFinal, "doFinal(...)");
                            buffer.write(bArrDoFinal);
                            break;
                        }
                        i -= i2;
                        outputSize2 = cipher.getOutputSize(i);
                    } else {
                        Segment segmentWritableSegment$okio2 = buffer.writableSegment$okio(outputSize2);
                        int iUpdate = this.cipher.update(segment.data, segment.pos, i, segmentWritableSegment$okio2.data, segmentWritableSegment$okio2.pos);
                        bufferedSource.skip(i);
                        segmentWritableSegment$okio2.limit += iUpdate;
                        buffer.setSize$okio(buffer.size() + iUpdate);
                        if (segmentWritableSegment$okio2.pos == segmentWritableSegment$okio2.limit) {
                            buffer.head = segmentWritableSegment$okio2.pop();
                            SegmentPool.recycle(segmentWritableSegment$okio2);
                        }
                    }
                }
            }
        }
        return buffer.read(sink, byteCount);
    }

    @Override // okio.Source
    @NotNull
    /* renamed from: timeout */
    public Timeout getF6821b() {
        return this.f6770a.getF6821b();
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f = true;
        this.f6770a.close();
    }
}
