package kotlin.io;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlin/io/LineReader;", "", "<init>", "()V", "Ljava/io/InputStream;", "inputStream", "Ljava/nio/charset/Charset;", "charset", "", "readLine", "(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConsole.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Console.kt\nkotlin/io/LineReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,299:1\n1#2:300\n*E\n"})
/* loaded from: classes2.dex */
public final class LineReader {

    @NotNull
    public static final LineReader INSTANCE = new LineReader();

    /* renamed from: a, reason: collision with root package name */
    public static CharsetDecoder f5771a;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f5772b;
    public static final byte[] c;
    public static final char[] d;
    public static final ByteBuffer e;
    public static final CharBuffer f;

    /* renamed from: g, reason: collision with root package name */
    public static final StringBuilder f5773g;

    private LineReader() {
    }

    static {
        byte[] bArr = new byte[32];
        c = bArr;
        char[] cArr = new char[32];
        d = cArr;
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        Intrinsics.checkNotNullExpressionValue(byteBufferWrap, "wrap(...)");
        e = byteBufferWrap;
        CharBuffer charBufferWrap = CharBuffer.wrap(cArr);
        Intrinsics.checkNotNullExpressionValue(charBufferWrap, "wrap(...)");
        f = charBufferWrap;
        f5773g = new StringBuilder();
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x008c, code lost:
    
        if (r0 <= 0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008e, code lost:
    
        r9 = kotlin.io.LineReader.d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0094, code lost:
    
        if (r9[r0 - 1] != '\n') goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0096, code lost:
    
        r1 = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0098, code lost:
    
        if (r1 <= 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x009a, code lost:
    
        r0 = r0 - 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a0, code lost:
    
        if (r9[r0] != '\r') goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a3, code lost:
    
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a4, code lost:
    
        r9 = kotlin.io.LineReader.f5773g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00aa, code lost:
    
        if (r9.length() != 0) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00b4, code lost:
    
        return new java.lang.String(kotlin.io.LineReader.d, 0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00b5, code lost:
    
        r9.append(kotlin.io.LineReader.d, 0, r0);
        r0 = r9.toString();
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, "toString(...)");
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00c7, code lost:
    
        if (r9.length() <= 32) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00c9, code lost:
    
        r9.setLength(32);
        r9.trimToSize();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00cf, code lost:
    
        r9.setLength(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00d3, code lost:
    
        return r0;
     */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.lang.String readLine(@org.jetbrains.annotations.NotNull java.io.InputStream r9, @org.jetbrains.annotations.NotNull java.nio.charset.Charset r10) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.LineReader.readLine(java.io.InputStream, java.nio.charset.Charset):java.lang.String");
    }

    public static int a(boolean z) throws CharacterCodingException {
        while (true) {
            CharsetDecoder charsetDecoder = f5771a;
            CharsetDecoder charsetDecoder2 = null;
            if (charsetDecoder == null) {
                Intrinsics.throwUninitializedPropertyAccessException("decoder");
                charsetDecoder = null;
            }
            ByteBuffer byteBuffer = e;
            CharBuffer charBuffer = f;
            CoderResult coderResultDecode = charsetDecoder.decode(byteBuffer, charBuffer, z);
            Intrinsics.checkNotNullExpressionValue(coderResultDecode, "decode(...)");
            boolean zIsError = coderResultDecode.isError();
            StringBuilder sb = f5773g;
            if (zIsError) {
                CharsetDecoder charsetDecoder3 = f5771a;
                if (charsetDecoder3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("decoder");
                } else {
                    charsetDecoder2 = charsetDecoder3;
                }
                charsetDecoder2.reset();
                byteBuffer.position(0);
                sb.setLength(0);
                coderResultDecode.throwException();
            }
            int iPosition = charBuffer.position();
            if (!coderResultDecode.isOverflow()) {
                return iPosition;
            }
            int i = iPosition - 1;
            char[] cArr = d;
            sb.append(cArr, 0, i);
            charBuffer.position(0);
            charBuffer.limit(32);
            charBuffer.put(cArr[i]);
        }
    }

    public static void b(Charset charset) {
        f5771a = charset.newDecoder();
        ByteBuffer byteBuffer = e;
        byteBuffer.clear();
        CharBuffer charBuffer = f;
        charBuffer.clear();
        byteBuffer.put((byte) 10);
        byteBuffer.flip();
        CharsetDecoder charsetDecoder = f5771a;
        CharsetDecoder charsetDecoder2 = null;
        if (charsetDecoder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("decoder");
            charsetDecoder = null;
        }
        charsetDecoder.decode(byteBuffer, charBuffer, false);
        f5772b = charBuffer.position() == 1 && charBuffer.get(0) == '\n';
        CharsetDecoder charsetDecoder3 = f5771a;
        if (charsetDecoder3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("decoder");
        } else {
            charsetDecoder2 = charsetDecoder3;
        }
        charsetDecoder2.reset();
        byteBuffer.position(0);
        f5773g.setLength(0);
    }
}
