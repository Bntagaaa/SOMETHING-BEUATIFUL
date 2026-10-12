package gnu.text;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;

/* loaded from: classes2.dex */
public class LineInputStreamReader extends LineBufferedReader {

    /* renamed from: a, reason: collision with root package name */
    public final InputStream f5484a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f5485b;
    public final ByteBuffer c;
    public char[] d;
    public CharBuffer e;
    public Charset f;

    /* renamed from: g, reason: collision with root package name */
    public CharsetDecoder f5486g;

    public void markStart() throws IOException {
    }

    public void setCharset(Charset charset) {
        this.f = charset;
        this.f5486g = charset.newDecoder();
    }

    public void setCharset(String str) {
        Charset charsetForName = Charset.forName(str);
        Charset charset = this.f;
        if (charset == null) {
            setCharset(charsetForName);
        } else {
            if (charsetForName.equals(charset)) {
                return;
            }
            StringBuilder sbR = _COROUTINE.a.r("encoding ", str, " does not match previous ");
            sbR.append(this.f);
            throw new RuntimeException(sbR.toString());
        }
    }

    public LineInputStreamReader(InputStream inputStream) {
        super((Reader) null);
        byte[] bArr = new byte[8192];
        this.f5485b = bArr;
        this.e = null;
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        this.c = byteBufferWrap;
        byteBufferWrap.position(bArr.length);
        this.f5484a = inputStream;
    }

    @Override // gnu.text.LineBufferedReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Reader reader = this.in;
        if (reader != null) {
            reader.close();
        }
        this.f5484a.close();
    }

    public void resetStart(int i) throws IOException {
        this.c.position(i);
    }

    public int getByte() throws IOException {
        ByteBuffer byteBuffer = this.c;
        if (!byteBuffer.hasRemaining()) {
            byte[] bArr = this.f5485b;
            int i = this.f5484a.read(bArr, 0, bArr.length);
            ByteBuffer byteBuffer2 = this.c;
            byteBuffer2.position(0);
            byteBuffer2.limit(i >= 0 ? i : 0);
            if (i <= 0) {
                return -1;
            }
        }
        return byteBuffer.get() & 255;
    }

    @Override // gnu.text.LineBufferedReader
    public int fill(int i) throws IOException {
        int i2;
        int iPosition;
        if (this.f == null) {
            setCharset("UTF-8");
        }
        char[] cArr = this.buffer;
        if (cArr != this.d) {
            this.e = CharBuffer.wrap(cArr);
            this.d = this.buffer;
        }
        this.e.limit(this.pos + i);
        this.e.position(this.pos);
        while (true) {
            CharsetDecoder charsetDecoder = this.f5486g;
            CharBuffer charBuffer = this.e;
            ByteBuffer byteBuffer = this.c;
            CoderResult coderResultDecode = charsetDecoder.decode(byteBuffer, charBuffer, false);
            iPosition = this.e.position() - this.pos;
            if (iPosition > 0 || !coderResultDecode.isUnderflow()) {
                break;
            }
            int iRemaining = byteBuffer.remaining();
            if (iRemaining > 0) {
                byteBuffer.compact();
            }
            byte[] bArr = this.f5485b;
            int i3 = this.f5484a.read(bArr, iRemaining, bArr.length - iRemaining);
            ByteBuffer byteBuffer2 = this.c;
            byteBuffer2.position(0);
            byteBuffer2.limit(iRemaining + (i3 >= 0 ? i3 : 0));
            if (i3 < 0) {
                i2 = 1;
                break;
            }
        }
        if (iPosition != 0 || i2 == 0) {
            return iPosition;
        }
        return -1;
    }

    @Override // gnu.text.LineBufferedReader, java.io.Reader
    public boolean ready() throws IOException {
        return this.pos < this.limit || this.c.hasRemaining() || this.f5484a.available() > 0;
    }
}
