package kotlin.io.encoding;

import com.google.appinventor.components.common.PropertyTypeConstants;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@ExperimentalEncodingApi
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ'\u0010\b\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lkotlin/io/encoding/a;", "Ljava/io/InputStream;", "input", "Lkotlin/io/encoding/Base64;", "base64", "<init>", "(Ljava/io/InputStream;Lkotlin/io/encoding/Base64;)V", "", "read", "()I", "", "destination", "offset", PropertyTypeConstants.PROPERTY_TYPE_LENGTH, "([BII)I", "", "close", "()V", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
final class a extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public final InputStream f5787a;

    /* renamed from: b, reason: collision with root package name */
    public final Base64 f5788b;
    public boolean c;
    public boolean d;
    public final byte[] e;
    public final byte[] f;

    /* renamed from: g, reason: collision with root package name */
    public final byte[] f5789g;
    public int h;
    public int i;

    public a(@NotNull InputStream input, @NotNull Base64 base64) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(base64, "base64");
        this.f5787a = input;
        this.f5788b = base64;
        this.e = new byte[1];
        this.f = new byte[1024];
        this.f5789g = new byte[1024];
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i = this.h;
        int i2 = this.i;
        if (i < i2) {
            int i3 = this.f5789g[i] & 255;
            int i4 = i + 1;
            this.h = i4;
            if (i4 == i2) {
                this.h = 0;
                this.i = 0;
            }
            return i3;
        }
        byte[] bArr = this.e;
        int i5 = read(bArr, 0, 1);
        if (i5 == -1) {
            return -1;
        }
        if (i5 == 1) {
            return bArr[0] & 255;
        }
        throw new IllegalStateException("Unreachable");
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x0117, code lost:
    
        if (r8 != r20) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0119, code lost:
    
        if (r9 == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x011d, code lost:
    
        return r8 - r20;
     */
    @Override // java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int read(@org.jetbrains.annotations.NotNull byte[] r19, int r20, int r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.encoding.a.read(byte[], int, int):int");
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.c) {
            return;
        }
        this.c = true;
        this.f5787a.close();
    }
}
