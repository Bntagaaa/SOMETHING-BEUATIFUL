package okio;

import java.io.IOException;
import javax.crypto.Cipher;
import javax.crypto.ShortBufferException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0014\u0010\u0010R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lokio/CipherSink;", "Lokio/Sink;", "Lokio/BufferedSink;", "sink", "Ljavax/crypto/Cipher;", "cipher", "<init>", "(Lokio/BufferedSink;Ljavax/crypto/Cipher;)V", "Lokio/Buffer;", "source", "", "byteCount", "", "write", "(Lokio/Buffer;J)V", "flush", "()V", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "close", "b", "Ljavax/crypto/Cipher;", "getCipher", "()Ljavax/crypto/Cipher;", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCipherSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CipherSink.kt\nokio/CipherSink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,148:1\n1#2:149\n86#3:150\n*S KotlinDebug\n*F\n+ 1 CipherSink.kt\nokio/CipherSink\n*L\n47#1:150\n*E\n"})
/* loaded from: classes2.dex */
public final class CipherSink implements Sink {

    /* renamed from: a, reason: collision with root package name */
    public final BufferedSink f6768a;

    /* renamed from: b, reason: collision with root package name and from kotlin metadata */
    public final Cipher cipher;
    public final int c;
    public boolean d;

    public CipherSink(@NotNull BufferedSink sink, @NotNull Cipher cipher) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        Intrinsics.checkNotNullParameter(cipher, "cipher");
        this.f6768a = sink;
        this.cipher = cipher;
        int blockSize = cipher.getBlockSize();
        this.c = blockSize;
        if (blockSize > 0) {
            return;
        }
        throw new IllegalArgumentException(("Block cipher required " + cipher).toString());
    }

    @NotNull
    public final Cipher getCipher() {
        return this.cipher;
    }

    @Override // okio.Sink
    public void write(@NotNull Buffer source, long byteCount) throws IOException, ShortBufferException {
        int i;
        Intrinsics.checkNotNullParameter(source, "source");
        SegmentedByteString.checkOffsetAndCount(source.size(), 0L, byteCount);
        if (this.d) {
            throw new IllegalStateException("closed");
        }
        for (long j = byteCount; j > 0; j -= i) {
            Segment segment = source.head;
            Intrinsics.checkNotNull(segment);
            int iMin = (int) Math.min(j, segment.limit - segment.pos);
            BufferedSink bufferedSink = this.f6768a;
            Buffer buffer = bufferedSink.getBuffer();
            Cipher cipher = this.cipher;
            int outputSize = cipher.getOutputSize(iMin);
            i = iMin;
            while (true) {
                if (outputSize > 8192) {
                    int i2 = this.c;
                    if (i <= i2) {
                        byte[] bArrUpdate = cipher.update(source.readByteArray(j));
                        Intrinsics.checkNotNullExpressionValue(bArrUpdate, "update(...)");
                        bufferedSink.write(bArrUpdate);
                        i = (int) j;
                        break;
                    }
                    i -= i2;
                    outputSize = cipher.getOutputSize(i);
                } else {
                    Segment segmentWritableSegment$okio = buffer.writableSegment$okio(outputSize);
                    int iUpdate = this.cipher.update(segment.data, segment.pos, i, segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit);
                    segmentWritableSegment$okio.limit += iUpdate;
                    buffer.setSize$okio(buffer.size() + iUpdate);
                    if (segmentWritableSegment$okio.pos == segmentWritableSegment$okio.limit) {
                        buffer.head = segmentWritableSegment$okio.pop();
                        SegmentPool.recycle(segmentWritableSegment$okio);
                    }
                    bufferedSink.emitCompleteSegments();
                    source.setSize$okio(source.size() - i);
                    int i3 = segment.pos + i;
                    segment.pos = i3;
                    if (i3 == segment.limit) {
                        source.head = segment.pop();
                        SegmentPool.recycle(segment);
                    }
                }
            }
        }
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        this.f6768a.flush();
    }

    @Override // okio.Sink
    @NotNull
    /* renamed from: timeout */
    public Timeout getF6824b() {
        return this.f6768a.getF6824b();
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.d) {
            return;
        }
        this.d = true;
        Cipher cipher = this.cipher;
        int outputSize = cipher.getOutputSize(0);
        BufferedSink bufferedSink = this.f6768a;
        Throwable th = null;
        if (outputSize != 0) {
            if (outputSize > 8192) {
                try {
                    byte[] bArrDoFinal = cipher.doFinal();
                    Intrinsics.checkNotNullExpressionValue(bArrDoFinal, "doFinal(...)");
                    bufferedSink.write(bArrDoFinal);
                } catch (Throwable th2) {
                    th = th2;
                }
            } else {
                Buffer buffer = bufferedSink.getBuffer();
                Segment segmentWritableSegment$okio = buffer.writableSegment$okio(outputSize);
                try {
                    int iDoFinal = cipher.doFinal(segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit);
                    segmentWritableSegment$okio.limit += iDoFinal;
                    buffer.setSize$okio(buffer.size() + iDoFinal);
                } catch (Throwable th3) {
                    th = th3;
                }
                if (segmentWritableSegment$okio.pos == segmentWritableSegment$okio.limit) {
                    buffer.head = segmentWritableSegment$okio.pop();
                    SegmentPool.recycle(segmentWritableSegment$okio);
                }
            }
        }
        try {
            bufferedSink.close();
        } catch (Throwable th4) {
            if (th == null) {
                th = th4;
            }
        }
        if (th != null) {
            throw th;
        }
    }
}
