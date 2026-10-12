package androidx.versionedparcelable;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
class b extends FilterInputStream {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f2351a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(c cVar, InputStream inputStream) {
        super(inputStream);
        this.f2351a = cVar;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        c cVar = this.f2351a;
        int i = cVar.i;
        if (i != -1 && cVar.f2354g >= i) {
            throw new IOException();
        }
        int i2 = super.read();
        cVar.f2354g++;
        return i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        c cVar = this.f2351a;
        int i3 = cVar.i;
        if (i3 != -1 && cVar.f2354g >= i3) {
            throw new IOException();
        }
        int i4 = super.read(bArr, i, i2);
        if (i4 > 0) {
            cVar.f2354g += i4;
        }
        return i4;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        c cVar = this.f2351a;
        int i = cVar.i;
        if (i != -1 && cVar.f2354g >= i) {
            throw new IOException();
        }
        long jSkip = super.skip(j);
        if (jSkip > 0) {
            cVar.f2354g += (int) jSkip;
        }
        return jSkip;
    }
}
