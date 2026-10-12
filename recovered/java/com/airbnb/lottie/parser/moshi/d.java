package com.airbnb.lottie.parser.moshi;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.google.appinventor.components.runtime.util.Ev3Constants;
import java.io.EOFException;
import java.io.IOException;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;

/* loaded from: classes.dex */
final class d extends JsonReader {
    public static final ByteString l = ByteString.encodeUtf8("'\\");
    public static final ByteString m = ByteString.encodeUtf8("\"\\");
    public static final ByteString n = ByteString.encodeUtf8("{}[]:, \n\t\r\f/\\;#=");
    public final BufferedSource f;

    /* renamed from: g, reason: collision with root package name */
    public final Buffer f2694g;
    public int h = 0;
    public long i;
    public int j;
    public String k;

    static {
        ByteString.encodeUtf8("\n\r");
        ByteString.encodeUtf8("*/");
    }

    public d(BufferedSource bufferedSource) {
        if (bufferedSource == null) {
            throw new NullPointerException("source == null");
        }
        this.f = bufferedSource;
        this.f2694g = bufferedSource.getBufferField();
        a(6);
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void beginArray() throws IOException {
        int iD = this.h;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 3) {
            a(1);
            this.d[this.f2689a - 1] = 0;
            this.h = 0;
        } else {
            throw new a("Expected BEGIN_ARRAY but was " + peek() + " at path " + getPath());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void endArray() throws IOException {
        int iD = this.h;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 4) {
            int i = this.f2689a;
            this.f2689a = i - 1;
            int[] iArr = this.d;
            int i2 = i - 2;
            iArr[i2] = iArr[i2] + 1;
            this.h = 0;
            return;
        }
        throw new a("Expected END_ARRAY but was " + peek() + " at path " + getPath());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void beginObject() throws IOException {
        int iD = this.h;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 1) {
            a(3);
            this.h = 0;
        } else {
            throw new a("Expected BEGIN_OBJECT but was " + peek() + " at path " + getPath());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void endObject() throws IOException {
        int iD = this.h;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 2) {
            int i = this.f2689a;
            int i2 = i - 1;
            this.f2689a = i2;
            this.c[i2] = null;
            int[] iArr = this.d;
            int i3 = i - 2;
            iArr[i3] = iArr[i3] + 1;
            this.h = 0;
            return;
        }
        throw new a("Expected END_OBJECT but was " + peek() + " at path " + getPath());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public boolean hasNext() throws IOException {
        int iD = this.h;
        if (iD == 0) {
            iD = d();
        }
        return (iD == 2 || iD == 4 || iD == 18) ? false : true;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public JsonReader.Token peek() throws IOException {
        int iD = this.h;
        if (iD == 0) {
            iD = d();
        }
        switch (iD) {
            case 1:
                return JsonReader.Token.BEGIN_OBJECT;
            case 2:
                return JsonReader.Token.END_OBJECT;
            case 3:
                return JsonReader.Token.BEGIN_ARRAY;
            case 4:
                return JsonReader.Token.END_ARRAY;
            case 5:
            case 6:
                return JsonReader.Token.BOOLEAN;
            case 7:
                return JsonReader.Token.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonReader.Token.STRING;
            case 12:
            case 13:
            case 14:
            case 15:
                return JsonReader.Token.NAME;
            case 16:
            case 17:
                return JsonReader.Token.NUMBER;
            case 18:
                return JsonReader.Token.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:136:0x0194, code lost:
    
        if (f(r10) != false) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0196, code lost:
    
        if (r1 != 2) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0198, code lost:
    
        if (r4 == false) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x019e, code lost:
    
        if (r8 != Long.MIN_VALUE) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x01a0, code lost:
    
        if (r13 == false) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x01a4, code lost:
    
        if (r8 != r17) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x01a6, code lost:
    
        if (r13 != false) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x01a8, code lost:
    
        if (r13 == false) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x01ab, code lost:
    
        r8 = -r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x01ac, code lost:
    
        r22.i = r8;
        r7.skip(r2);
        r9 = 16;
        r22.h = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x01b7, code lost:
    
        if (r1 == 2) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x01ba, code lost:
    
        if (r1 == 4) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x01bd, code lost:
    
        if (r1 != 7) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x01bf, code lost:
    
        r22.j = r2;
        r9 = 17;
        r22.h = 17;
     */
    /* JADX WARN: Removed duplicated region for block: B:173:0x01ec A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0114 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0115  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int d() throws java.io.EOFException {
        /*
            Method dump skipped, instructions count: 651
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.moshi.d.d():int");
    }

    public final boolean f(int i) {
        if (i == 9 || i == 10 || i == 12 || i == 13 || i == 32) {
            return false;
        }
        if (i != 35) {
            if (i == 44) {
                return false;
            }
            if (i != 47 && i != 61) {
                if (i == 123 || i == 125 || i == 58) {
                    return false;
                }
                if (i != 59) {
                    switch (i) {
                        case 91:
                        case 93:
                            return false;
                        case 92:
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        c();
        throw null;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public String nextName() throws IOException {
        String strH;
        int iD = this.h;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 14) {
            strH = i();
        } else if (iD == 13) {
            strH = h(m);
        } else if (iD == 12) {
            strH = h(l);
        } else if (iD == 15) {
            strH = this.k;
        } else {
            throw new a("Expected a name but was " + peek() + " at path " + getPath());
        }
        this.h = 0;
        this.c[this.f2689a - 1] = strH;
        return strH;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public int selectName(JsonReader.Options options) throws IOException {
        int iD = this.h;
        if (iD == 0) {
            iD = d();
        }
        if (iD < 12 || iD > 15) {
            return -1;
        }
        if (iD == 15) {
            return e(this.k, options);
        }
        int iSelect = this.f.select(options.f2692b);
        if (iSelect != -1) {
            this.h = 0;
            this.c[this.f2689a - 1] = options.f2691a[iSelect];
            return iSelect;
        }
        String str = this.c[this.f2689a - 1];
        String strNextName = nextName();
        int iE = e(strNextName, options);
        if (iE == -1) {
            this.h = 15;
            this.k = strNextName;
            this.c[this.f2689a - 1] = str;
        }
        return iE;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void skipName() throws IOException {
        int iD = this.h;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 14) {
            long jIndexOfElement = this.f.indexOfElement(n);
            Buffer buffer = this.f2694g;
            if (jIndexOfElement == -1) {
                jIndexOfElement = buffer.size();
            }
            buffer.skip(jIndexOfElement);
        } else if (iD == 13) {
            k(m);
        } else if (iD == 12) {
            k(l);
        } else if (iD != 15) {
            throw new a("Expected a name but was " + peek() + " at path " + getPath());
        }
        this.h = 0;
        this.c[this.f2689a - 1] = "null";
    }

    public final int e(String str, JsonReader.Options options) {
        int length = options.f2691a.length;
        for (int i = 0; i < length; i++) {
            if (str.equals(options.f2691a[i])) {
                this.h = 0;
                this.c[this.f2689a - 1] = str;
                return i;
            }
        }
        return -1;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public String nextString() throws IOException {
        String utf8;
        int iD = this.h;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 10) {
            utf8 = i();
        } else if (iD == 9) {
            utf8 = h(m);
        } else if (iD == 8) {
            utf8 = h(l);
        } else if (iD == 11) {
            utf8 = this.k;
            this.k = null;
        } else if (iD == 16) {
            utf8 = Long.toString(this.i);
        } else if (iD == 17) {
            utf8 = this.f2694g.readUtf8(this.j);
        } else {
            throw new a("Expected a string but was " + peek() + " at path " + getPath());
        }
        this.h = 0;
        int[] iArr = this.d;
        int i = this.f2689a - 1;
        iArr[i] = iArr[i] + 1;
        return utf8;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public boolean nextBoolean() throws IOException {
        int iD = this.h;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 5) {
            this.h = 0;
            int[] iArr = this.d;
            int i = this.f2689a - 1;
            iArr[i] = iArr[i] + 1;
            return true;
        }
        if (iD == 6) {
            this.h = 0;
            int[] iArr2 = this.d;
            int i2 = this.f2689a - 1;
            iArr2[i2] = iArr2[i2] + 1;
            return false;
        }
        throw new a("Expected a boolean but was " + peek() + " at path " + getPath());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public double nextDouble() throws NumberFormatException, IOException {
        int iD = this.h;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 16) {
            this.h = 0;
            int[] iArr = this.d;
            int i = this.f2689a - 1;
            iArr[i] = iArr[i] + 1;
            return this.i;
        }
        if (iD == 17) {
            this.k = this.f2694g.readUtf8(this.j);
        } else if (iD == 9) {
            this.k = h(m);
        } else if (iD == 8) {
            this.k = h(l);
        } else if (iD == 10) {
            this.k = i();
        } else if (iD != 11) {
            throw new a("Expected a double but was " + peek() + " at path " + getPath());
        }
        this.h = 11;
        try {
            double d = Double.parseDouble(this.k);
            if (Double.isNaN(d) || Double.isInfinite(d)) {
                throw new b("JSON forbids NaN and infinities: " + d + " at path " + getPath());
            }
            this.k = null;
            this.h = 0;
            int[] iArr2 = this.d;
            int i2 = this.f2689a - 1;
            iArr2[i2] = iArr2[i2] + 1;
            return d;
        } catch (NumberFormatException unused) {
            throw new a("Expected a double but was " + this.k + " at path " + getPath());
        }
    }

    public final String h(ByteString byteString) throws IOException {
        StringBuilder sb = null;
        while (true) {
            long jIndexOfElement = this.f.indexOfElement(byteString);
            if (jIndexOfElement == -1) {
                b("Unterminated string");
                throw null;
            }
            Buffer buffer = this.f2694g;
            if (buffer.getByte(jIndexOfElement) != 92) {
                if (sb == null) {
                    String utf8 = buffer.readUtf8(jIndexOfElement);
                    buffer.readByte();
                    return utf8;
                }
                sb.append(buffer.readUtf8(jIndexOfElement));
                buffer.readByte();
                return sb.toString();
            }
            if (sb == null) {
                sb = new StringBuilder();
            }
            sb.append(buffer.readUtf8(jIndexOfElement));
            buffer.readByte();
            sb.append(j());
        }
    }

    public final String i() throws IOException {
        long jIndexOfElement = this.f.indexOfElement(n);
        Buffer buffer = this.f2694g;
        return jIndexOfElement != -1 ? buffer.readUtf8(jIndexOfElement) : buffer.readUtf8();
    }

    public final void k(ByteString byteString) throws IOException {
        while (true) {
            long jIndexOfElement = this.f.indexOfElement(byteString);
            if (jIndexOfElement == -1) {
                b("Unterminated string");
                throw null;
            }
            Buffer buffer = this.f2694g;
            if (buffer.getByte(jIndexOfElement) == 92) {
                buffer.skip(jIndexOfElement + 1);
                j();
            } else {
                buffer.skip(jIndexOfElement + 1);
                return;
            }
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public int nextInt() throws NumberFormatException, IOException {
        int iD = this.h;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 16) {
            long j = this.i;
            int i = (int) j;
            if (j == i) {
                this.h = 0;
                int[] iArr = this.d;
                int i2 = this.f2689a - 1;
                iArr[i2] = iArr[i2] + 1;
                return i;
            }
            throw new a("Expected an int but was " + this.i + " at path " + getPath());
        }
        if (iD == 17) {
            this.k = this.f2694g.readUtf8(this.j);
        } else if (iD == 9 || iD == 8) {
            String strH = iD == 9 ? h(m) : h(l);
            this.k = strH;
            try {
                int i3 = Integer.parseInt(strH);
                this.h = 0;
                int[] iArr2 = this.d;
                int i4 = this.f2689a - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return i3;
            } catch (NumberFormatException unused) {
            }
        } else if (iD != 11) {
            throw new a("Expected an int but was " + peek() + " at path " + getPath());
        }
        this.h = 11;
        try {
            double d = Double.parseDouble(this.k);
            int i5 = (int) d;
            if (i5 != d) {
                throw new a("Expected an int but was " + this.k + " at path " + getPath());
            }
            this.k = null;
            this.h = 0;
            int[] iArr3 = this.d;
            int i6 = this.f2689a - 1;
            iArr3[i6] = iArr3[i6] + 1;
            return i5;
        } catch (NumberFormatException unused2) {
            throw new a("Expected an int but was " + this.k + " at path " + getPath());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.h = 0;
        this.f2690b[0] = 8;
        this.f2689a = 1;
        this.f2694g.clear();
        this.f.close();
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void skipValue() throws IOException {
        int i = 0;
        do {
            int iD = this.h;
            if (iD == 0) {
                iD = d();
            }
            if (iD == 3) {
                a(1);
            } else if (iD == 1) {
                a(3);
            } else {
                if (iD == 4) {
                    i--;
                    if (i < 0) {
                        throw new a("Expected a value but was " + peek() + " at path " + getPath());
                    }
                    this.f2689a--;
                } else if (iD == 2) {
                    i--;
                    if (i < 0) {
                        throw new a("Expected a value but was " + peek() + " at path " + getPath());
                    }
                    this.f2689a--;
                } else {
                    Buffer buffer = this.f2694g;
                    if (iD == 14 || iD == 10) {
                        long jIndexOfElement = this.f.indexOfElement(n);
                        if (jIndexOfElement == -1) {
                            jIndexOfElement = buffer.size();
                        }
                        buffer.skip(jIndexOfElement);
                    } else if (iD == 9 || iD == 13) {
                        k(m);
                    } else if (iD == 8 || iD == 12) {
                        k(l);
                    } else if (iD == 17) {
                        buffer.skip(this.j);
                    } else if (iD == 18) {
                        throw new a("Expected a value but was " + peek() + " at path " + getPath());
                    }
                }
                this.h = 0;
            }
            i++;
            this.h = 0;
        } while (i != 0);
        int[] iArr = this.d;
        int i2 = this.f2689a - 1;
        iArr[i2] = iArr[i2] + 1;
        this.c[i2] = "null";
    }

    public final int g(boolean z) throws EOFException {
        int i = 0;
        while (true) {
            int i2 = i + 1;
            BufferedSource bufferedSource = this.f;
            if (!bufferedSource.request(i2)) {
                if (z) {
                    throw new EOFException("End of input");
                }
                return -1;
            }
            long j = i;
            Buffer buffer = this.f2694g;
            byte b2 = buffer.getByte(j);
            if (b2 != 10 && b2 != 32 && b2 != 13 && b2 != 9) {
                buffer.skip(j);
                if (b2 == 47) {
                    if (bufferedSource.request(2L)) {
                        c();
                        throw null;
                    }
                } else if (b2 == 35) {
                    c();
                    throw null;
                }
                return b2;
            }
            i = i2;
        }
    }

    public final void c() {
        b("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    public String toString() {
        return "JsonReader(" + this.f + ")";
    }

    public final char j() throws EOFException {
        int i;
        BufferedSource bufferedSource = this.f;
        if (!bufferedSource.request(1L)) {
            b("Unterminated escape sequence");
            throw null;
        }
        Buffer buffer = this.f2694g;
        byte b2 = buffer.readByte();
        if (b2 == 10 || b2 == 34 || b2 == 39 || b2 == 47 || b2 == 92) {
            return (char) b2;
        }
        if (b2 == 98) {
            return '\b';
        }
        if (b2 == 102) {
            return '\f';
        }
        if (b2 == 110) {
            return '\n';
        }
        if (b2 == 114) {
            return '\r';
        }
        if (b2 == 116) {
            return '\t';
        }
        if (b2 == 117) {
            if (!bufferedSource.request(4L)) {
                throw new EOFException("Unterminated escape sequence at path " + getPath());
            }
            char c = 0;
            for (int i2 = 0; i2 < 4; i2++) {
                byte b3 = buffer.getByte(i2);
                char c2 = (char) (c << 4);
                if (b3 >= 48 && b3 <= 57) {
                    i = b3 + Ev3Constants.Opcode.COM_READY;
                } else if (b3 >= 97 && b3 <= 102) {
                    i = b3 + Ev3Constants.Opcode.OUTPUT_TEST;
                } else {
                    if (b3 < 65 || b3 > 70) {
                        b("\\u" + buffer.readUtf8(4L));
                        throw null;
                    }
                    i = b3 + Ev3Constants.Opcode.READ16;
                }
                c = (char) (i + c2);
            }
            buffer.skip(4L);
            return c;
        }
        b("Invalid escape sequence: \\" + ((char) b2));
        throw null;
    }
}
