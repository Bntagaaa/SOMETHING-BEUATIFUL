package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.StandardCharsets;

/* loaded from: classes.dex */
public class Utf8Old extends Utf8 {

    /* renamed from: b, reason: collision with root package name */
    public static final ThreadLocal f1556b = ThreadLocal.withInitial(new c());

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final CharsetEncoder f1557a;

        /* renamed from: b, reason: collision with root package name */
        public final CharsetDecoder f1558b;
        public CharSequence c = null;
        public ByteBuffer d = null;

        public a() {
            Charset charset = StandardCharsets.UTF_8;
            this.f1557a = charset.newEncoder();
            this.f1558b = charset.newDecoder();
        }
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public int encodedLength(CharSequence charSequence) throws CharacterCodingException {
        a aVar = (a) f1556b.get();
        int iMaxBytesPerChar = (int) (aVar.f1557a.maxBytesPerChar() * charSequence.length());
        ByteBuffer byteBuffer = aVar.d;
        if (byteBuffer == null || byteBuffer.capacity() < iMaxBytesPerChar) {
            aVar.d = ByteBuffer.allocate(Math.max(128, iMaxBytesPerChar));
        }
        aVar.d.clear();
        aVar.c = charSequence;
        CoderResult coderResultEncode = aVar.f1557a.encode(charSequence instanceof CharBuffer ? (CharBuffer) charSequence : CharBuffer.wrap(charSequence), aVar.d, true);
        if (coderResultEncode.isError()) {
            try {
                coderResultEncode.throwException();
            } catch (CharacterCodingException e) {
                throw new IllegalArgumentException("bad character encoding", e);
            }
        }
        aVar.d.flip();
        return aVar.d.remaining();
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) throws CharacterCodingException {
        a aVar = (a) f1556b.get();
        if (aVar.c != charSequence) {
            encodedLength(charSequence);
        }
        byteBuffer.put(aVar.d);
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public String decodeUtf8(ByteBuffer byteBuffer, int i, int i2) {
        CharsetDecoder charsetDecoder = ((a) f1556b.get()).f1558b;
        charsetDecoder.reset();
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        byteBufferDuplicate.position(i);
        byteBufferDuplicate.limit(i + i2);
        try {
            return charsetDecoder.decode(byteBufferDuplicate).toString();
        } catch (CharacterCodingException e) {
            throw new IllegalArgumentException("Bad encoding", e);
        }
    }
}
