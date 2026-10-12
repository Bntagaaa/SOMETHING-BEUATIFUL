package com.google.common.io;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Ascii;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.math.RoundingMode;
import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public abstract class BaseEncoding {

    /* renamed from: a, reason: collision with root package name */
    public static final BaseEncoding f4609a = new e("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");

    /* renamed from: b, reason: collision with root package name */
    public static final BaseEncoding f4610b = new e("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");
    public static final BaseEncoding c = new g("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567");
    public static final BaseEncoding d = new g("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV");
    public static final BaseEncoding e = new d(new c("base16()", "0123456789ABCDEF".toCharArray()));

    public static final class DecodingException extends IOException {
    }

    public abstract int a(byte[] bArr, CharSequence charSequence);

    public abstract void b(byte[] bArr, Appendable appendable, int i, int i2);

    public abstract int c(int i);

    public abstract boolean canDecode(CharSequence charSequence);

    public abstract int d(int i);

    @GwtIncompatible
    public abstract InputStream decodingStream(Reader reader);

    @GwtIncompatible
    public abstract OutputStream encodingStream(Writer writer);

    public abstract BaseEncoding lowerCase();

    public abstract BaseEncoding omitPadding();

    public abstract BaseEncoding upperCase();

    public abstract BaseEncoding withPadChar(char c2);

    public abstract BaseEncoding withSeparator(String str, int i);

    public String encode(byte[] bArr) {
        return encode(bArr, 0, bArr.length);
    }

    public final String encode(byte[] bArr, int i, int i2) {
        Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
        StringBuilder sb = new StringBuilder(d(i2));
        try {
            b(bArr, sb, i, i2);
            return sb.toString();
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }

    public class a extends ByteSink {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ CharSink f4611a;

        public a(CharSink charSink) {
            this.f4611a = charSink;
        }

        @Override // com.google.common.io.ByteSink
        public OutputStream openStream() throws IOException {
            return BaseEncoding.this.encodingStream(this.f4611a.openStream());
        }
    }

    @GwtIncompatible
    public final ByteSink encodingSink(CharSink charSink) {
        Preconditions.checkNotNull(charSink);
        return new a(charSink);
    }

    public final byte[] decode(CharSequence charSequence) {
        try {
            CharSequence charSequenceE = e(charSequence);
            int iC = c(charSequenceE.length());
            byte[] bArr = new byte[iC];
            int iA = a(bArr, charSequenceE);
            if (iA == iC) {
                return bArr;
            }
            byte[] bArr2 = new byte[iA];
            System.arraycopy(bArr, 0, bArr2, 0, iA);
            return bArr2;
        } catch (DecodingException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public class b extends ByteSource {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ CharSource f4613a;

        public b(CharSource charSource) {
            this.f4613a = charSource;
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() throws IOException {
            return BaseEncoding.this.decodingStream(this.f4613a.openStream());
        }
    }

    @GwtIncompatible
    public final ByteSource decodingSource(CharSource charSource) {
        Preconditions.checkNotNull(charSource);
        return new b(charSource);
    }

    public CharSequence e(CharSequence charSequence) {
        return (CharSequence) Preconditions.checkNotNull(charSequence);
    }

    public static BaseEncoding base64() {
        return f4609a;
    }

    public static BaseEncoding base64Url() {
        return f4610b;
    }

    public static BaseEncoding base32() {
        return c;
    }

    public static BaseEncoding base32Hex() {
        return d;
    }

    public static BaseEncoding base16() {
        return e;
    }

    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        public final String f4615a;

        /* renamed from: b, reason: collision with root package name */
        public final char[] f4616b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;

        /* renamed from: g, reason: collision with root package name */
        public final byte[] f4617g;
        public final boolean[] h;

        public c(String str, char[] cArr) {
            this.f4615a = (String) Preconditions.checkNotNull(str);
            this.f4616b = (char[]) Preconditions.checkNotNull(cArr);
            try {
                int iLog2 = IntMath.log2(cArr.length, RoundingMode.UNNECESSARY);
                this.d = iLog2;
                int iMin = Math.min(8, Integer.lowestOneBit(iLog2));
                try {
                    this.e = 8 / iMin;
                    this.f = iLog2 / iMin;
                    this.c = cArr.length - 1;
                    byte[] bArr = new byte[128];
                    Arrays.fill(bArr, (byte) -1);
                    for (int i = 0; i < cArr.length; i++) {
                        char c = cArr[i];
                        Preconditions.checkArgument(c < 128, "Non-ASCII character: %s", c);
                        Preconditions.checkArgument(bArr[c] == -1, "Duplicate character: %s", c);
                        bArr[c] = (byte) i;
                    }
                    this.f4617g = bArr;
                    boolean[] zArr = new boolean[this.e];
                    for (int i2 = 0; i2 < this.f; i2++) {
                        zArr[IntMath.divide(i2 * 8, this.d, RoundingMode.CEILING)] = true;
                    }
                    this.h = zArr;
                } catch (ArithmeticException e) {
                    throw new IllegalArgumentException("Illegal alphabet ".concat(new String(cArr)), e);
                }
            } catch (ArithmeticException e2) {
                throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e2);
            }
        }

        public final int a(char c) throws DecodingException {
            if (c > 127) {
                throw new DecodingException("Unrecognized character: 0x" + Integer.toHexString(c));
            }
            byte b2 = this.f4617g[c];
            if (b2 != -1) {
                return b2;
            }
            if (c <= ' ' || c == 127) {
                throw new DecodingException("Unrecognized character: 0x" + Integer.toHexString(c));
            }
            throw new DecodingException("Unrecognized character: " + c);
        }

        public boolean matches(char c) {
            byte[] bArr = this.f4617g;
            return c < bArr.length && bArr[c] != -1;
        }

        public String toString() {
            return this.f4615a;
        }

        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof c) {
                return Arrays.equals(this.f4616b, ((c) obj).f4616b);
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(this.f4616b);
        }
    }

    public static class g extends BaseEncoding {
        public final c f;

        /* renamed from: g, reason: collision with root package name */
        public final Character f4619g;
        public transient BaseEncoding h;
        public transient BaseEncoding i;

        public g(String str, String str2) {
            this(new c(str, str2.toCharArray()), (Character) '=');
        }

        public g(c cVar, Character ch) {
            this.f = (c) Preconditions.checkNotNull(cVar);
            Preconditions.checkArgument(ch == null || !cVar.matches(ch.charValue()), "Padding character %s was already in alphabet", ch);
            this.f4619g = ch;
        }

        @Override // com.google.common.io.BaseEncoding
        public final int d(int i) {
            c cVar = this.f;
            return IntMath.divide(i, cVar.f, RoundingMode.CEILING) * cVar.e;
        }

        public class a extends OutputStream {

            /* renamed from: a, reason: collision with root package name */
            public int f4620a = 0;

            /* renamed from: b, reason: collision with root package name */
            public int f4621b = 0;
            public int c = 0;
            public final /* synthetic */ Writer d;

            public a(Writer writer) {
                this.d = writer;
            }

            @Override // java.io.OutputStream
            public void write(int i) throws IOException {
                this.f4620a = (i & 255) | (this.f4620a << 8);
                this.f4621b += 8;
                while (true) {
                    int i2 = this.f4621b;
                    g gVar = g.this;
                    c cVar = gVar.f;
                    int i3 = cVar.d;
                    if (i2 < i3) {
                        return;
                    }
                    this.d.write(cVar.f4616b[(this.f4620a >> (i2 - i3)) & cVar.c]);
                    this.c++;
                    this.f4621b -= gVar.f.d;
                }
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() throws IOException {
                this.d.flush();
            }

            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                int i = this.f4621b;
                Writer writer = this.d;
                if (i > 0) {
                    int i2 = this.f4620a;
                    g gVar = g.this;
                    c cVar = gVar.f;
                    writer.write(cVar.f4616b[(i2 << (cVar.d - i)) & cVar.c]);
                    this.c++;
                    if (gVar.f4619g != null) {
                        while (this.c % gVar.f.e != 0) {
                            writer.write(gVar.f4619g.charValue());
                            this.c++;
                        }
                    }
                }
                writer.close();
            }
        }

        @Override // com.google.common.io.BaseEncoding
        @GwtIncompatible
        public OutputStream encodingStream(Writer writer) {
            Preconditions.checkNotNull(writer);
            return new a(writer);
        }

        @Override // com.google.common.io.BaseEncoding
        public void b(byte[] bArr, Appendable appendable, int i, int i2) throws IOException {
            Preconditions.checkNotNull(appendable);
            Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
            int i3 = 0;
            while (i3 < i2) {
                c cVar = this.f;
                f(bArr, appendable, i + i3, Math.min(cVar.f, i2 - i3));
                i3 += cVar.f;
            }
        }

        public final void f(byte[] bArr, Appendable appendable, int i, int i2) throws IOException {
            Preconditions.checkNotNull(appendable);
            Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
            c cVar = this.f;
            int i3 = 0;
            Preconditions.checkArgument(i2 <= cVar.f);
            long j = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                j = (j | (bArr[i + i4] & 255)) << 8;
            }
            int i5 = cVar.d;
            int i6 = ((i2 + 1) * 8) - i5;
            while (i3 < i2 * 8) {
                appendable.append(cVar.f4616b[((int) (j >>> (i6 - i3))) & cVar.c]);
                i3 += i5;
            }
            Character ch = this.f4619g;
            if (ch != null) {
                while (i3 < cVar.f * 8) {
                    appendable.append(ch.charValue());
                    i3 += i5;
                }
            }
        }

        @Override // com.google.common.io.BaseEncoding
        public final int c(int i) {
            return (int) (((this.f.d * i) + 7) / 8);
        }

        @Override // com.google.common.io.BaseEncoding
        public final CharSequence e(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            Character ch = this.f4619g;
            if (ch == null) {
                return charSequence;
            }
            char cCharValue = ch.charValue();
            int length = charSequence.length() - 1;
            while (length >= 0 && charSequence.charAt(length) == cCharValue) {
                length--;
            }
            return charSequence.subSequence(0, length + 1);
        }

        @Override // com.google.common.io.BaseEncoding
        public boolean canDecode(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            CharSequence charSequenceE = e(charSequence);
            int length = charSequenceE.length();
            c cVar = this.f;
            if (cVar.h[length % cVar.e]) {
                for (int i = 0; i < charSequenceE.length(); i++) {
                    char cCharAt = charSequenceE.charAt(i);
                    if (cCharAt <= 127 && cVar.f4617g[cCharAt] != -1) {
                    }
                }
                return true;
            }
            return false;
        }

        @Override // com.google.common.io.BaseEncoding
        public int a(byte[] bArr, CharSequence charSequence) throws DecodingException {
            int i;
            int i2;
            Preconditions.checkNotNull(bArr);
            CharSequence charSequenceE = e(charSequence);
            int length = charSequenceE.length();
            c cVar = this.f;
            if (!cVar.h[length % cVar.e]) {
                throw new DecodingException("Invalid input length " + charSequenceE.length());
            }
            int i3 = 0;
            int i4 = 0;
            while (i3 < charSequenceE.length()) {
                long jA = 0;
                int i5 = 0;
                int i6 = 0;
                while (true) {
                    i = cVar.d;
                    i2 = cVar.e;
                    if (i5 >= i2) {
                        break;
                    }
                    jA <<= i;
                    if (i3 + i5 < charSequenceE.length()) {
                        jA |= cVar.a(charSequenceE.charAt(i6 + i3));
                        i6++;
                    }
                    i5++;
                }
                int i7 = cVar.f;
                int i8 = (i7 * 8) - (i6 * i);
                int i9 = (i7 - 1) * 8;
                while (i9 >= i8) {
                    bArr[i4] = (byte) ((jA >>> i9) & 255);
                    i9 -= 8;
                    i4++;
                }
                i3 += i2;
            }
            return i4;
        }

        public class b extends InputStream {

            /* renamed from: a, reason: collision with root package name */
            public int f4622a = 0;

            /* renamed from: b, reason: collision with root package name */
            public int f4623b = 0;
            public int c = 0;
            public boolean d = false;
            public final /* synthetic */ Reader e;

            public b(Reader reader) {
                this.e = reader;
            }

            /* JADX WARN: Code restructure failed: missing block: B:24:0x006e, code lost:
            
                throw new com.google.common.io.BaseEncoding.DecodingException("Padding cannot start at index " + r5.c);
             */
            @Override // java.io.InputStream
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public int read() throws java.io.IOException {
                /*
                    r5 = this;
                L0:
                    java.io.Reader r0 = r5.e
                    int r0 = r0.read()
                    com.google.common.io.BaseEncoding$g r1 = com.google.common.io.BaseEncoding.g.this
                    r2 = -1
                    com.google.common.io.BaseEncoding$c r3 = r1.f
                    if (r0 != r2) goto L34
                    boolean r0 = r5.d
                    if (r0 != 0) goto L33
                    int r0 = r5.c
                    int r1 = r3.e
                    int r0 = r0 % r1
                    boolean[] r1 = r3.h
                    boolean r0 = r1[r0]
                    if (r0 == 0) goto L1d
                    goto L33
                L1d:
                    com.google.common.io.BaseEncoding$DecodingException r0 = new com.google.common.io.BaseEncoding$DecodingException
                    java.lang.StringBuilder r1 = new java.lang.StringBuilder
                    java.lang.String r2 = "Invalid input length "
                    r1.<init>(r2)
                    int r2 = r5.c
                    r1.append(r2)
                    java.lang.String r1 = r1.toString()
                    r0.<init>(r1)
                    throw r0
                L33:
                    return r2
                L34:
                    int r2 = r5.c
                    r4 = 1
                    int r2 = r2 + r4
                    r5.c = r2
                    char r0 = (char) r0
                    java.lang.Character r1 = r1.f4619g
                    if (r1 == 0) goto L72
                    char r1 = r1.charValue()
                    if (r1 != r0) goto L72
                    boolean r0 = r5.d
                    if (r0 != 0) goto L6f
                    int r0 = r5.c
                    if (r0 == r4) goto L59
                    int r0 = r0 + (-1)
                    int r1 = r3.e
                    int r0 = r0 % r1
                    boolean[] r1 = r3.h
                    boolean r0 = r1[r0]
                    if (r0 == 0) goto L59
                    goto L6f
                L59:
                    com.google.common.io.BaseEncoding$DecodingException r0 = new com.google.common.io.BaseEncoding$DecodingException
                    java.lang.StringBuilder r1 = new java.lang.StringBuilder
                    java.lang.String r2 = "Padding cannot start at index "
                    r1.<init>(r2)
                    int r2 = r5.c
                    r1.append(r2)
                    java.lang.String r1 = r1.toString()
                    r0.<init>(r1)
                    throw r0
                L6f:
                    r5.d = r4
                    goto L0
                L72:
                    boolean r1 = r5.d
                    if (r1 != 0) goto L96
                    int r1 = r5.f4622a
                    int r2 = r3.d
                    int r1 = r1 << r2
                    r5.f4622a = r1
                    int r0 = r3.a(r0)
                    r0 = r0 | r1
                    r5.f4622a = r0
                    int r1 = r5.f4623b
                    int r2 = r3.d
                    int r1 = r1 + r2
                    r5.f4623b = r1
                    r2 = 8
                    if (r1 < r2) goto L0
                    int r1 = r1 - r2
                    r5.f4623b = r1
                    int r0 = r0 >> r1
                    r0 = r0 & 255(0xff, float:3.57E-43)
                    return r0
                L96:
                    com.google.common.io.BaseEncoding$DecodingException r1 = new com.google.common.io.BaseEncoding$DecodingException
                    java.lang.StringBuilder r2 = new java.lang.StringBuilder
                    java.lang.String r3 = "Expected padding character but found '"
                    r2.<init>(r3)
                    r2.append(r0)
                    java.lang.String r0 = "' at index "
                    r2.append(r0)
                    int r0 = r5.c
                    r2.append(r0)
                    java.lang.String r0 = r2.toString()
                    r1.<init>(r0)
                    throw r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.common.io.BaseEncoding.g.b.read():int");
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) throws IOException {
                int i3 = i2 + i;
                Preconditions.checkPositionIndexes(i, i3, bArr.length);
                int i4 = i;
                while (i4 < i3) {
                    int i5 = read();
                    if (i5 == -1) {
                        int i6 = i4 - i;
                        if (i6 == 0) {
                            return -1;
                        }
                        return i6;
                    }
                    bArr[i4] = (byte) i5;
                    i4++;
                }
                return i4 - i;
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                this.e.close();
            }
        }

        @Override // com.google.common.io.BaseEncoding
        @GwtIncompatible
        public InputStream decodingStream(Reader reader) {
            Preconditions.checkNotNull(reader);
            return new b(reader);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding omitPadding() {
            return this.f4619g == null ? this : g(this.f, null);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withPadChar(char c) {
            Character ch;
            c cVar = this.f;
            return (8 % cVar.d == 0 || ((ch = this.f4619g) != null && ch.charValue() == c)) ? this : g(cVar, Character.valueOf(c));
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withSeparator(String str, int i) {
            for (int i2 = 0; i2 < str.length(); i2++) {
                Preconditions.checkArgument(!this.f.matches(str.charAt(i2)), "Separator (%s) cannot contain alphabet characters", str);
            }
            Character ch = this.f4619g;
            if (ch != null) {
                Preconditions.checkArgument(str.indexOf(ch.charValue()) < 0, "Separator (%s) cannot contain padding character", str);
            }
            return new f(this, str, i);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding upperCase() {
            c cVar;
            boolean z;
            BaseEncoding baseEncodingG = this.h;
            if (baseEncodingG == null) {
                c cVar2 = this.f;
                char[] cArr = cVar2.f4616b;
                int length = cArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        cVar = cVar2;
                        break;
                    }
                    if (Ascii.isLowerCase(cArr[i])) {
                        char[] cArr2 = cVar2.f4616b;
                        int length2 = cArr2.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 >= length2) {
                                z = false;
                                break;
                            }
                            if (Ascii.isUpperCase(cArr2[i2])) {
                                z = true;
                                break;
                            }
                            i2++;
                        }
                        Preconditions.checkState(!z, "Cannot call upperCase() on a mixed-case alphabet");
                        char[] cArr3 = new char[cArr2.length];
                        for (int i3 = 0; i3 < cArr2.length; i3++) {
                            cArr3[i3] = Ascii.toUpperCase(cArr2[i3]);
                        }
                        cVar = new c(_COROUTINE.a.m(new StringBuilder(), cVar2.f4615a, ".upperCase()"), cArr3);
                    } else {
                        i++;
                    }
                }
                baseEncodingG = cVar == cVar2 ? this : g(cVar, this.f4619g);
                this.h = baseEncodingG;
            }
            return baseEncodingG;
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding lowerCase() {
            c cVar;
            boolean z;
            BaseEncoding baseEncodingG = this.i;
            if (baseEncodingG == null) {
                c cVar2 = this.f;
                char[] cArr = cVar2.f4616b;
                int length = cArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        cVar = cVar2;
                        break;
                    }
                    if (Ascii.isUpperCase(cArr[i])) {
                        char[] cArr2 = cVar2.f4616b;
                        int length2 = cArr2.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 >= length2) {
                                z = false;
                                break;
                            }
                            if (Ascii.isLowerCase(cArr2[i2])) {
                                z = true;
                                break;
                            }
                            i2++;
                        }
                        Preconditions.checkState(!z, "Cannot call lowerCase() on a mixed-case alphabet");
                        char[] cArr3 = new char[cArr2.length];
                        for (int i3 = 0; i3 < cArr2.length; i3++) {
                            cArr3[i3] = Ascii.toLowerCase(cArr2[i3]);
                        }
                        cVar = new c(_COROUTINE.a.m(new StringBuilder(), cVar2.f4615a, ".lowerCase()"), cArr3);
                    } else {
                        i++;
                    }
                }
                baseEncodingG = cVar == cVar2 ? this : g(cVar, this.f4619g);
                this.i = baseEncodingG;
            }
            return baseEncodingG;
        }

        public BaseEncoding g(c cVar, Character ch) {
            return new g(cVar, ch);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("BaseEncoding.");
            c cVar = this.f;
            sb.append(cVar.toString());
            if (8 % cVar.d != 0) {
                Character ch = this.f4619g;
                if (ch == null) {
                    sb.append(".omitPadding()");
                } else {
                    sb.append(".withPadChar('");
                    sb.append(ch);
                    sb.append("')");
                }
            }
            return sb.toString();
        }

        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof g) {
                g gVar = (g) obj;
                if (this.f.equals(gVar.f) && Objects.equal(this.f4619g, gVar.f4619g)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return this.f.hashCode() ^ Objects.hashCode(this.f4619g);
        }
    }

    public static final class d extends g {
        public final char[] j;

        public d(c cVar) {
            super(cVar, (Character) null);
            this.j = new char[512];
            Preconditions.checkArgument(cVar.f4616b.length == 16);
            for (int i = 0; i < 256; i++) {
                char[] cArr = this.j;
                char[] cArr2 = cVar.f4616b;
                cArr[i] = cArr2[i >>> 4];
                cArr[i | 256] = cArr2[i & 15];
            }
        }

        @Override // com.google.common.io.BaseEncoding.g, com.google.common.io.BaseEncoding
        public final void b(byte[] bArr, Appendable appendable, int i, int i2) throws IOException {
            Preconditions.checkNotNull(appendable);
            Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = bArr[i + i3] & 255;
                char[] cArr = this.j;
                appendable.append(cArr[i4]);
                appendable.append(cArr[i4 | 256]);
            }
        }

        @Override // com.google.common.io.BaseEncoding.g, com.google.common.io.BaseEncoding
        public final int a(byte[] bArr, CharSequence charSequence) throws DecodingException {
            Preconditions.checkNotNull(bArr);
            if (charSequence.length() % 2 == 1) {
                throw new DecodingException("Invalid input length " + charSequence.length());
            }
            int i = 0;
            int i2 = 0;
            while (i < charSequence.length()) {
                char cCharAt = charSequence.charAt(i);
                c cVar = this.f;
                bArr[i2] = (byte) ((cVar.a(cCharAt) << 4) | cVar.a(charSequence.charAt(i + 1)));
                i += 2;
                i2++;
            }
            return i2;
        }

        @Override // com.google.common.io.BaseEncoding.g
        public final BaseEncoding g(c cVar, Character ch) {
            return new d(cVar);
        }
    }

    public static final class e extends g {
        public e(String str, String str2) {
            this(new c(str, str2.toCharArray()), (Character) '=');
        }

        public e(c cVar, Character ch) {
            super(cVar, ch);
            Preconditions.checkArgument(cVar.f4616b.length == 64);
        }

        @Override // com.google.common.io.BaseEncoding.g, com.google.common.io.BaseEncoding
        public final void b(byte[] bArr, Appendable appendable, int i, int i2) throws IOException {
            Preconditions.checkNotNull(appendable);
            int i3 = i + i2;
            Preconditions.checkPositionIndexes(i, i3, bArr.length);
            while (i2 >= 3) {
                int i4 = i + 2;
                int i5 = ((bArr[i + 1] & 255) << 8) | ((bArr[i] & 255) << 16);
                i += 3;
                int i6 = i5 | (bArr[i4] & 255);
                c cVar = this.f;
                appendable.append(cVar.f4616b[i6 >>> 18]);
                char[] cArr = cVar.f4616b;
                appendable.append(cArr[(i6 >>> 12) & 63]);
                appendable.append(cArr[(i6 >>> 6) & 63]);
                appendable.append(cArr[i6 & 63]);
                i2 -= 3;
            }
            if (i < i3) {
                f(bArr, appendable, i, i3 - i);
            }
        }

        @Override // com.google.common.io.BaseEncoding.g, com.google.common.io.BaseEncoding
        public final int a(byte[] bArr, CharSequence charSequence) throws DecodingException {
            Preconditions.checkNotNull(bArr);
            CharSequence charSequenceE = e(charSequence);
            int length = charSequenceE.length();
            c cVar = this.f;
            if (!cVar.h[length % cVar.e]) {
                throw new DecodingException("Invalid input length " + charSequenceE.length());
            }
            int i = 0;
            int i2 = 0;
            while (i < charSequenceE.length()) {
                int i3 = i + 2;
                int iA = (cVar.a(charSequenceE.charAt(i + 1)) << 12) | (cVar.a(charSequenceE.charAt(i)) << 18);
                int i4 = i2 + 1;
                bArr[i2] = (byte) (iA >>> 16);
                if (i3 < charSequenceE.length()) {
                    int i5 = i + 3;
                    int iA2 = iA | (cVar.a(charSequenceE.charAt(i3)) << 6);
                    int i6 = i2 + 2;
                    bArr[i4] = (byte) ((iA2 >>> 8) & 255);
                    if (i5 < charSequenceE.length()) {
                        i += 4;
                        i2 += 3;
                        bArr[i6] = (byte) ((iA2 | cVar.a(charSequenceE.charAt(i5))) & 255);
                    } else {
                        i2 = i6;
                        i = i5;
                    }
                } else {
                    i2 = i4;
                    i = i3;
                }
            }
            return i2;
        }

        @Override // com.google.common.io.BaseEncoding.g
        public final BaseEncoding g(c cVar, Character ch) {
            return new e(cVar, ch);
        }
    }

    public static final class f extends BaseEncoding {
        public final BaseEncoding f;

        /* renamed from: g, reason: collision with root package name */
        public final String f4618g;
        public final int h;

        @Override // com.google.common.io.BaseEncoding
        @GwtIncompatible
        public InputStream decodingStream(Reader reader) {
            Preconditions.checkNotNull(reader);
            String str = this.f4618g;
            Preconditions.checkNotNull(str);
            return this.f.decodingStream(new com.google.common.io.b(reader, str));
        }

        @Override // com.google.common.io.BaseEncoding
        public final void b(byte[] bArr, Appendable appendable, int i, int i2) {
            Preconditions.checkNotNull(appendable);
            String str = this.f4618g;
            Preconditions.checkNotNull(str);
            int i3 = this.h;
            Preconditions.checkArgument(i3 > 0);
            this.f.b(bArr, new com.google.common.io.c(i3, appendable, str), i, i2);
        }

        @Override // com.google.common.io.BaseEncoding
        @GwtIncompatible
        public OutputStream encodingStream(Writer writer) {
            Preconditions.checkNotNull(writer);
            String str = this.f4618g;
            Preconditions.checkNotNull(str);
            int i = this.h;
            Preconditions.checkArgument(i > 0);
            return this.f.encodingStream(new com.google.common.io.d(new com.google.common.io.c(i, writer, str), writer));
        }

        public f(BaseEncoding baseEncoding, String str, int i) {
            this.f = (BaseEncoding) Preconditions.checkNotNull(baseEncoding);
            this.f4618g = (String) Preconditions.checkNotNull(str);
            this.h = i;
            Preconditions.checkArgument(i > 0, "Cannot add a separator after every %s chars", i);
        }

        @Override // com.google.common.io.BaseEncoding
        public final CharSequence e(CharSequence charSequence) {
            return this.f.e(charSequence);
        }

        @Override // com.google.common.io.BaseEncoding
        public final int d(int i) {
            int iD = this.f.d(i);
            return (IntMath.divide(Math.max(0, iD - 1), this.h, RoundingMode.FLOOR) * this.f4618g.length()) + iD;
        }

        @Override // com.google.common.io.BaseEncoding
        public final int c(int i) {
            return this.f.c(i);
        }

        @Override // com.google.common.io.BaseEncoding
        public boolean canDecode(CharSequence charSequence) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < charSequence.length(); i++) {
                char cCharAt = charSequence.charAt(i);
                if (this.f4618g.indexOf(cCharAt) < 0) {
                    sb.append(cCharAt);
                }
            }
            return this.f.canDecode(sb);
        }

        @Override // com.google.common.io.BaseEncoding
        public final int a(byte[] bArr, CharSequence charSequence) {
            StringBuilder sb = new StringBuilder(charSequence.length());
            for (int i = 0; i < charSequence.length(); i++) {
                char cCharAt = charSequence.charAt(i);
                if (this.f4618g.indexOf(cCharAt) < 0) {
                    sb.append(cCharAt);
                }
            }
            return this.f.a(bArr, sb);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding omitPadding() {
            return this.f.omitPadding().withSeparator(this.f4618g, this.h);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withPadChar(char c) {
            return this.f.withPadChar(c).withSeparator(this.f4618g, this.h);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withSeparator(String str, int i) {
            throw new UnsupportedOperationException("Already have a separator");
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding upperCase() {
            return this.f.upperCase().withSeparator(this.f4618g, this.h);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding lowerCase() {
            return this.f.lowerCase().withSeparator(this.f4618g, this.h);
        }

        public String toString() {
            return this.f + ".withSeparator(\"" + this.f4618g + "\", " + this.h + ")";
        }
    }
}
