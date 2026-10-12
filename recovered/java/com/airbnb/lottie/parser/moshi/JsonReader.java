package com.airbnb.lottie.parser.moshi;

import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;
import okio.BufferedSource;

/* loaded from: classes.dex */
public abstract class JsonReader implements Closeable {
    public static final String[] e = new String[128];

    /* renamed from: a, reason: collision with root package name */
    public int f2689a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f2690b = new int[32];
    public String[] c = new String[32];
    public int[] d = new int[32];

    public abstract void beginArray() throws IOException;

    public abstract void beginObject() throws IOException;

    public abstract void endArray() throws IOException;

    public abstract void endObject() throws IOException;

    public abstract boolean hasNext() throws IOException;

    public abstract boolean nextBoolean() throws IOException;

    public abstract double nextDouble() throws IOException;

    public abstract int nextInt() throws IOException;

    public abstract String nextName() throws IOException;

    public abstract String nextString() throws IOException;

    public abstract Token peek() throws IOException;

    public abstract int selectName(Options options) throws IOException;

    public abstract void skipName() throws IOException;

    public abstract void skipValue() throws IOException;

    static {
        for (int i = 0; i <= 31; i++) {
            e[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = e;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    public static JsonReader of(BufferedSource bufferedSource) {
        return new d(bufferedSource);
    }

    public final void a(int i) {
        int i2 = this.f2689a;
        int[] iArr = this.f2690b;
        if (i2 == iArr.length) {
            if (i2 == 256) {
                throw new a("Nesting too deep at " + getPath());
            }
            this.f2690b = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.c;
            this.c = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
            int[] iArr2 = this.d;
            this.d = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.f2690b;
        int i3 = this.f2689a;
        this.f2689a = i3 + 1;
        iArr3[i3] = i;
    }

    public final void b(String str) {
        StringBuilder sbQ = _COROUTINE.a.q(str, " at path ");
        sbQ.append(getPath());
        throw new b(sbQ.toString());
    }

    public final String getPath() {
        int i = this.f2689a;
        int[] iArr = this.f2690b;
        String[] strArr = this.c;
        int[] iArr2 = this.d;
        StringBuilder sb = new StringBuilder("$");
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2];
            if (i3 == 1 || i3 == 2) {
                sb.append('[');
                sb.append(iArr2[i2]);
                sb.append(']');
            } else if (i3 == 3 || i3 == 4 || i3 == 5) {
                sb.append('.');
                String str = strArr[i2];
                if (str != null) {
                    sb.append(str);
                }
            }
        }
        return sb.toString();
    }

    public static final class Options {

        /* renamed from: a, reason: collision with root package name */
        public final String[] f2691a;

        /* renamed from: b, reason: collision with root package name */
        public final okio.Options f2692b;

        public Options(String[] strArr, okio.Options options) {
            this.f2691a = strArr;
            this.f2692b = options;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x003a A[Catch: IOException -> 0x0069, TryCatch #0 {IOException -> 0x0069, blocks: (B:2:0x0000, B:3:0x000a, B:5:0x000d, B:7:0x001e, B:9:0x0026, B:21:0x0042, B:19:0x003a, B:20:0x003d, B:23:0x0047, B:24:0x004a, B:25:0x0059), top: B:30:0x0000 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.airbnb.lottie.parser.moshi.JsonReader.Options of(java.lang.String... r12) {
            /*
                int r0 = r12.length     // Catch: java.io.IOException -> L69
                okio.ByteString[] r0 = new okio.ByteString[r0]     // Catch: java.io.IOException -> L69
                okio.Buffer r1 = new okio.Buffer     // Catch: java.io.IOException -> L69
                r1.<init>()     // Catch: java.io.IOException -> L69
                r2 = 0
                r3 = 0
            La:
                int r4 = r12.length     // Catch: java.io.IOException -> L69
                if (r3 >= r4) goto L59
                r4 = r12[r3]     // Catch: java.io.IOException -> L69
                java.lang.String[] r5 = com.airbnb.lottie.parser.moshi.JsonReader.e     // Catch: java.io.IOException -> L69
                r6 = 34
                r1.writeByte(r6)     // Catch: java.io.IOException -> L69
                int r7 = r4.length()     // Catch: java.io.IOException -> L69
                r8 = 0
                r9 = 0
            L1c:
                if (r8 >= r7) goto L45
                char r10 = r4.charAt(r8)     // Catch: java.io.IOException -> L69
                r11 = 128(0x80, float:1.8E-43)
                if (r10 >= r11) goto L2b
                r10 = r5[r10]     // Catch: java.io.IOException -> L69
                if (r10 != 0) goto L38
                goto L42
            L2b:
                r11 = 8232(0x2028, float:1.1535E-41)
                if (r10 != r11) goto L32
                java.lang.String r10 = "\\u2028"
                goto L38
            L32:
                r11 = 8233(0x2029, float:1.1537E-41)
                if (r10 != r11) goto L42
                java.lang.String r10 = "\\u2029"
            L38:
                if (r9 >= r8) goto L3d
                r1.writeUtf8(r4, r9, r8)     // Catch: java.io.IOException -> L69
            L3d:
                r1.writeUtf8(r10)     // Catch: java.io.IOException -> L69
                int r9 = r8 + 1
            L42:
                int r8 = r8 + 1
                goto L1c
            L45:
                if (r9 >= r7) goto L4a
                r1.writeUtf8(r4, r9, r7)     // Catch: java.io.IOException -> L69
            L4a:
                r1.writeByte(r6)     // Catch: java.io.IOException -> L69
                r1.readByte()     // Catch: java.io.IOException -> L69
                okio.ByteString r4 = r1.readByteString()     // Catch: java.io.IOException -> L69
                r0[r3] = r4     // Catch: java.io.IOException -> L69
                int r3 = r3 + 1
                goto La
            L59:
                com.airbnb.lottie.parser.moshi.JsonReader$Options r1 = new com.airbnb.lottie.parser.moshi.JsonReader$Options     // Catch: java.io.IOException -> L69
                java.lang.Object r12 = r12.clone()     // Catch: java.io.IOException -> L69
                java.lang.String[] r12 = (java.lang.String[]) r12     // Catch: java.io.IOException -> L69
                okio.Options r0 = okio.Options.of(r0)     // Catch: java.io.IOException -> L69
                r1.<init>(r12, r0)     // Catch: java.io.IOException -> L69
                return r1
            L69:
                r12 = move-exception
                java.lang.AssertionError r0 = new java.lang.AssertionError
                r0.<init>(r12)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.moshi.JsonReader.Options.of(java.lang.String[]):com.airbnb.lottie.parser.moshi.JsonReader$Options");
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Token {
        public static final Token BEGIN_ARRAY;
        public static final Token BEGIN_OBJECT;
        public static final Token BOOLEAN;
        public static final Token END_ARRAY;
        public static final Token END_DOCUMENT;
        public static final Token END_OBJECT;
        public static final Token NAME;
        public static final Token NULL;
        public static final Token NUMBER;
        public static final Token STRING;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Token[] f2693a;

        public static Token valueOf(String str) {
            return (Token) Enum.valueOf(Token.class, str);
        }

        public static Token[] values() {
            return (Token[]) f2693a.clone();
        }

        static {
            Token token = new Token("BEGIN_ARRAY", 0);
            BEGIN_ARRAY = token;
            Token token2 = new Token("END_ARRAY", 1);
            END_ARRAY = token2;
            Token token3 = new Token("BEGIN_OBJECT", 2);
            BEGIN_OBJECT = token3;
            Token token4 = new Token("END_OBJECT", 3);
            END_OBJECT = token4;
            Token token5 = new Token("NAME", 4);
            NAME = token5;
            Token token6 = new Token("STRING", 5);
            STRING = token6;
            Token token7 = new Token("NUMBER", 6);
            NUMBER = token7;
            Token token8 = new Token("BOOLEAN", 7);
            BOOLEAN = token8;
            Token token9 = new Token("NULL", 8);
            NULL = token9;
            Token token10 = new Token("END_DOCUMENT", 9);
            END_DOCUMENT = token10;
            f2693a = new Token[]{token, token2, token3, token4, token5, token6, token7, token8, token9, token10};
        }
    }
}
