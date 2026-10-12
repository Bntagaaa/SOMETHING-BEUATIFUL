package androidx.emoji2.text.flatbuffer;

import com.google.appinventor.components.runtime.util.Ev3Constants;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public abstract class Utf8 {

    /* renamed from: a, reason: collision with root package name */
    public static Utf8 f1555a;

    public static class b extends IllegalArgumentException {
    }

    public abstract String decodeUtf8(ByteBuffer byteBuffer, int i, int i2);

    public abstract void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer);

    public abstract int encodedLength(CharSequence charSequence);

    public static Utf8 getDefault() {
        if (f1555a == null) {
            f1555a = new Utf8Safe();
        }
        return f1555a;
    }

    public static void setDefault(Utf8 utf8) {
        f1555a = utf8;
    }

    public static class a {
        public static boolean d(byte b2) {
            return b2 > -65;
        }

        public static void c(byte b2, byte b3, char[] cArr, int i) {
            if (b2 < -62) {
                throw new IllegalArgumentException("Invalid UTF-8: Illegal leading byte in 2 bytes utf");
            }
            if (d(b3)) {
                throw new IllegalArgumentException("Invalid UTF-8: Illegal trailing byte in 2 bytes utf");
            }
            cArr[i] = (char) (((b2 & 31) << 6) | (b3 & 63));
        }

        public static void b(byte b2, byte b3, byte b4, char[] cArr, int i) {
            if (d(b3) || ((b2 == -32 && b3 < -96) || ((b2 == -19 && b3 >= -96) || d(b4)))) {
                throw new IllegalArgumentException("Invalid UTF-8");
            }
            cArr[i] = (char) (((b2 & 15) << 12) | ((b3 & 63) << 6) | (b4 & 63));
        }

        public static void a(byte b2, byte b3, byte b4, byte b5, char[] cArr, int i) {
            if (!d(b3)) {
                if ((((b3 + Ev3Constants.Opcode.JR_NEQ8) + (b2 << 28)) >> 30) == 0 && !d(b4) && !d(b5)) {
                    int i2 = ((b2 & 7) << 18) | ((b3 & 63) << 12) | ((b4 & 63) << 6) | (b5 & 63);
                    cArr[i] = (char) ((i2 >>> 10) + okio.Utf8.HIGH_SURROGATE_HEADER);
                    cArr[i + 1] = (char) ((i2 & 1023) + okio.Utf8.LOG_SURROGATE_HEADER);
                    return;
                }
            }
            throw new IllegalArgumentException("Invalid UTF-8");
        }
    }
}
