package kotlin.io.encoding;

import com.google.appinventor.components.common.PropertyTypeConstants;
import java.io.IOException;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@ExperimentalEncodingApi
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\b\b\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ'\u0010\n\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0013\u0010\u0012¨\u0006\u0014"}, d2 = {"Lkotlin/io/encoding/b;", "Ljava/io/OutputStream;", "output", "Lkotlin/io/encoding/Base64;", "base64", "<init>", "(Ljava/io/OutputStream;Lkotlin/io/encoding/Base64;)V", "", "b", "", "write", "(I)V", "", "source", "offset", PropertyTypeConstants.PROPERTY_TYPE_LENGTH, "([BII)V", "flush", "()V", "close", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
final class b extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    public final OutputStream f5790a;

    /* renamed from: b, reason: collision with root package name */
    public final Base64 f5791b;
    public boolean c;
    public int d;
    public final byte[] e;
    public final byte[] f;

    /* renamed from: g, reason: collision with root package name */
    public int f5792g;

    public b(@NotNull OutputStream output, @NotNull Base64 base64) {
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(base64, "base64");
        this.f5790a = output;
        this.f5791b = base64;
        this.d = base64.getIsMimeScheme() ? 76 : -1;
        this.e = new byte[1024];
        this.f = new byte[3];
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.c) {
            return;
        }
        this.c = true;
        if (this.f5792g != 0) {
            a();
        }
        this.f5790a.close();
    }

    public final void a() {
        if (b(this.f, 0, this.f5792g) != 4) {
            throw new IllegalStateException("Check failed.");
        }
        this.f5792g = 0;
    }

    public final int b(byte[] bArr, int i, int i2) throws IOException {
        int iEncodeIntoByteArray = this.f5791b.encodeIntoByteArray(bArr, this.e, 0, i, i2);
        int i3 = this.d;
        OutputStream outputStream = this.f5790a;
        if (i3 == 0) {
            outputStream.write(Base64.INSTANCE.getMimeLineSeparatorSymbols$kotlin_stdlib());
            this.d = 76;
            if (iEncodeIntoByteArray > 76) {
                throw new IllegalStateException("Check failed.");
            }
        }
        outputStream.write(this.e, 0, iEncodeIntoByteArray);
        this.d -= iEncodeIntoByteArray;
        return iEncodeIntoByteArray;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        if (!this.c) {
            this.f5790a.flush();
            return;
        }
        throw new IOException("The output stream is closed.");
    }

    @Override // java.io.OutputStream
    public void write(int b2) throws IOException {
        if (!this.c) {
            int i = this.f5792g;
            int i2 = i + 1;
            this.f5792g = i2;
            this.f[i] = (byte) b2;
            if (i2 == 3) {
                a();
                return;
            }
            return;
        }
        throw new IOException("The output stream is closed.");
    }

    @Override // java.io.OutputStream
    public void write(@NotNull byte[] source, int offset, int length) throws IOException {
        int i;
        Intrinsics.checkNotNullParameter(source, "source");
        if (this.c) {
            throw new IOException("The output stream is closed.");
        }
        if (offset < 0 || length < 0 || (i = offset + length) > source.length) {
            StringBuilder sbN = _COROUTINE.a.n(offset, length, "offset: ", ", length: ", ", source size: ");
            sbN.append(source.length);
            throw new IndexOutOfBoundsException(sbN.toString());
        }
        if (length == 0) {
            return;
        }
        int i2 = this.f5792g;
        if (i2 >= 3) {
            throw new IllegalStateException("Check failed.");
        }
        byte[] bArr = this.f;
        if (i2 != 0) {
            int iMin = Math.min(3 - i2, i - offset);
            int i3 = offset + iMin;
            ArraysKt.copyInto(source, bArr, this.f5792g, offset, i3);
            int i4 = this.f5792g + iMin;
            this.f5792g = i4;
            if (i4 == 3) {
                a();
            }
            if (this.f5792g != 0) {
                return;
            } else {
                offset = i3;
            }
        }
        while (offset + 3 <= i) {
            int iMin2 = Math.min((this.f5791b.getIsMimeScheme() ? this.d : this.e.length) / 4, (i - offset) / 3);
            int i5 = (iMin2 * 3) + offset;
            if (b(source, offset, i5) != iMin2 * 4) {
                throw new IllegalStateException("Check failed.");
            }
            offset = i5;
        }
        ArraysKt.copyInto(source, bArr, 0, offset, i);
        this.f5792g = i - offset;
    }
}
