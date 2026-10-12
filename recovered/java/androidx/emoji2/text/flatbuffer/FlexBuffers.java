package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import kotlin.UShort;
import kotlin.text.Typography;

/* loaded from: classes.dex */
public class FlexBuffers {
    public static final int FBT_BLOB = 25;
    public static final int FBT_BOOL = 26;
    public static final int FBT_FLOAT = 3;
    public static final int FBT_INDIRECT_FLOAT = 8;
    public static final int FBT_INDIRECT_INT = 6;
    public static final int FBT_INDIRECT_UINT = 7;
    public static final int FBT_INT = 1;
    public static final int FBT_KEY = 4;
    public static final int FBT_MAP = 9;
    public static final int FBT_NULL = 0;
    public static final int FBT_STRING = 5;
    public static final int FBT_UINT = 2;
    public static final int FBT_VECTOR = 10;
    public static final int FBT_VECTOR_BOOL = 36;
    public static final int FBT_VECTOR_FLOAT = 13;
    public static final int FBT_VECTOR_FLOAT2 = 18;
    public static final int FBT_VECTOR_FLOAT3 = 21;
    public static final int FBT_VECTOR_FLOAT4 = 24;
    public static final int FBT_VECTOR_INT = 11;
    public static final int FBT_VECTOR_INT2 = 16;
    public static final int FBT_VECTOR_INT3 = 19;
    public static final int FBT_VECTOR_INT4 = 22;
    public static final int FBT_VECTOR_KEY = 14;
    public static final int FBT_VECTOR_STRING_DEPRECATED = 15;
    public static final int FBT_VECTOR_UINT = 12;
    public static final int FBT_VECTOR_UINT2 = 17;
    public static final int FBT_VECTOR_UINT3 = 20;
    public static final int FBT_VECTOR_UINT4 = 23;

    /* renamed from: a, reason: collision with root package name */
    public static final ArrayReadWriteBuf f1540a = new ArrayReadWriteBuf(new byte[]{0}, 1);

    public static class FlexBufferException extends RuntimeException {
    }

    public static class c {
    }

    public static int e(int i, int i2) {
        if (i2 == 0) {
            return i + 10;
        }
        if (i2 == 2) {
            return i + 15;
        }
        if (i2 == 3) {
            return i + 18;
        }
        if (i2 != 4) {
            return 0;
        }
        return i + 21;
    }

    public static int a(androidx.emoji2.text.flatbuffer.a aVar, int i, int i2) {
        return (int) (i - d(aVar, i, i2));
    }

    public static long d(androidx.emoji2.text.flatbuffer.a aVar, int i, int i2) {
        if (i2 == 1) {
            return aVar.get(i) & 255;
        }
        if (i2 == 2) {
            return aVar.getShort(i) & UShort.MAX_VALUE;
        }
        if (i2 == 4) {
            return aVar.getInt(i) & 4294967295L;
        }
        if (i2 != 8) {
            return -1L;
        }
        return aVar.getLong(i);
    }

    public static long c(androidx.emoji2.text.flatbuffer.a aVar, int i, int i2) {
        int i3;
        if (i2 == 1) {
            i3 = aVar.get(i);
        } else if (i2 == 2) {
            i3 = aVar.getShort(i);
        } else {
            if (i2 != 4) {
                if (i2 != 8) {
                    return -1L;
                }
                return aVar.getLong(i);
            }
            i3 = aVar.getInt(i);
        }
        return i3;
    }

    public static double b(androidx.emoji2.text.flatbuffer.a aVar, int i, int i2) {
        if (i2 == 4) {
            return aVar.getFloat(i);
        }
        if (i2 != 8) {
            return -1.0d;
        }
        return aVar.getDouble(i);
    }

    @Deprecated
    public static Reference getRoot(ByteBuffer byteBuffer) {
        return getRoot(byteBuffer.hasArray() ? new ArrayReadWriteBuf(byteBuffer.array(), byteBuffer.limit()) : new ByteBufferReadWriteBuf(byteBuffer));
    }

    public static Reference getRoot(androidx.emoji2.text.flatbuffer.a aVar) {
        int iLimit = aVar.limit();
        byte b2 = aVar.get(iLimit - 1);
        int i = iLimit - 2;
        return new Reference(aVar, i - b2, b2, aVar.get(i) & 255);
    }

    public static class Reference {
        public static final Reference f = new Reference(FlexBuffers.f1540a, 0, 1, 0);

        /* renamed from: a, reason: collision with root package name */
        public final androidx.emoji2.text.flatbuffer.a f1542a;

        /* renamed from: b, reason: collision with root package name */
        public final int f1543b;
        public final int c;
        public final int d;
        public final int e;

        public Reference(androidx.emoji2.text.flatbuffer.a aVar, int i, int i2, int i3) {
            this(aVar, i, i2, 1 << (i3 & 3), i3 >> 2);
        }

        public Reference(androidx.emoji2.text.flatbuffer.a aVar, int i, int i2, int i3, int i4) {
            this.f1542a = aVar;
            this.f1543b = i;
            this.c = i2;
            this.d = i3;
            this.e = i4;
        }

        public int getType() {
            return this.e;
        }

        public boolean isNull() {
            return this.e == 0;
        }

        public boolean isBoolean() {
            return this.e == 26;
        }

        public boolean isNumeric() {
            return isIntOrUInt() || isFloat();
        }

        public boolean isIntOrUInt() {
            return isInt() || isUInt();
        }

        public boolean isFloat() {
            int i = this.e;
            return i == 3 || i == 8;
        }

        public boolean isInt() {
            int i = this.e;
            return i == 1 || i == 6;
        }

        public boolean isUInt() {
            int i = this.e;
            return i == 2 || i == 7;
        }

        public boolean isString() {
            return this.e == 5;
        }

        public boolean isKey() {
            return this.e == 4;
        }

        public boolean isVector() {
            int i = this.e;
            return i == 10 || i == 9;
        }

        public boolean isTypedVector() {
            int i = this.e;
            return (i >= 11 && i <= 15) || i == 36;
        }

        public boolean isMap() {
            return this.e == 9;
        }

        public boolean isBlob() {
            return this.e == 25;
        }

        public int asInt() {
            long jC;
            int i = this.f1543b;
            androidx.emoji2.text.flatbuffer.a aVar = this.f1542a;
            int i2 = this.c;
            int i3 = this.e;
            if (i3 == 1) {
                jC = FlexBuffers.c(aVar, i, i2);
            } else {
                if (i3 == 2) {
                    return (int) FlexBuffers.d(aVar, i, i2);
                }
                if (i3 == 3) {
                    return (int) FlexBuffers.b(aVar, i, i2);
                }
                if (i3 != 5) {
                    int i4 = this.d;
                    if (i3 == 6) {
                        jC = FlexBuffers.c(aVar, FlexBuffers.a(aVar, i, i2), i4);
                    } else {
                        if (i3 == 7) {
                            return (int) FlexBuffers.d(aVar, FlexBuffers.a(aVar, i, i2), i2);
                        }
                        if (i3 == 8) {
                            return (int) FlexBuffers.b(aVar, FlexBuffers.a(aVar, i, i2), i4);
                        }
                        if (i3 == 10) {
                            return asVector().size();
                        }
                        if (i3 != 26) {
                            return 0;
                        }
                        jC = FlexBuffers.c(aVar, i, i2);
                    }
                } else {
                    return Integer.parseInt(asString());
                }
            }
            return (int) jC;
        }

        public long asUInt() {
            int i = this.f1543b;
            androidx.emoji2.text.flatbuffer.a aVar = this.f1542a;
            int i2 = this.c;
            int i3 = this.e;
            if (i3 == 2) {
                return FlexBuffers.d(aVar, i, i2);
            }
            if (i3 == 1) {
                return FlexBuffers.c(aVar, i, i2);
            }
            if (i3 == 3) {
                return (long) FlexBuffers.b(aVar, i, i2);
            }
            if (i3 == 10) {
                return asVector().size();
            }
            if (i3 == 26) {
                return (int) FlexBuffers.c(aVar, i, i2);
            }
            if (i3 == 5) {
                return Long.parseLong(asString());
            }
            int i4 = this.d;
            if (i3 == 6) {
                return FlexBuffers.c(aVar, FlexBuffers.a(aVar, i, i2), i4);
            }
            if (i3 == 7) {
                return FlexBuffers.d(aVar, FlexBuffers.a(aVar, i, i2), i4);
            }
            if (i3 != 8) {
                return 0L;
            }
            return (long) FlexBuffers.b(aVar, FlexBuffers.a(aVar, i, i2), i2);
        }

        public long asLong() {
            int i = this.f1543b;
            androidx.emoji2.text.flatbuffer.a aVar = this.f1542a;
            int i2 = this.c;
            int i3 = this.e;
            if (i3 == 1) {
                return FlexBuffers.c(aVar, i, i2);
            }
            if (i3 == 2) {
                return FlexBuffers.d(aVar, i, i2);
            }
            if (i3 == 3) {
                return (long) FlexBuffers.b(aVar, i, i2);
            }
            if (i3 == 5) {
                try {
                    return Long.parseLong(asString());
                } catch (NumberFormatException unused) {
                    return 0L;
                }
            }
            int i4 = this.d;
            if (i3 == 6) {
                return FlexBuffers.c(aVar, FlexBuffers.a(aVar, i, i2), i4);
            }
            if (i3 == 7) {
                return FlexBuffers.d(aVar, FlexBuffers.a(aVar, i, i2), i2);
            }
            if (i3 == 8) {
                return (long) FlexBuffers.b(aVar, FlexBuffers.a(aVar, i, i2), i4);
            }
            if (i3 == 10) {
                return asVector().size();
            }
            if (i3 != 26) {
                return 0L;
            }
            return (int) FlexBuffers.c(aVar, i, i2);
        }

        public double asFloat() {
            int i = this.c;
            int i2 = this.f1543b;
            androidx.emoji2.text.flatbuffer.a aVar = this.f1542a;
            int i3 = this.e;
            if (i3 == 3) {
                return FlexBuffers.b(aVar, i2, i);
            }
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 5) {
                        int i4 = this.d;
                        if (i3 == 6) {
                            return (int) FlexBuffers.c(aVar, FlexBuffers.a(aVar, i2, i), i4);
                        }
                        if (i3 == 7) {
                            return FlexBuffers.d(aVar, FlexBuffers.a(aVar, i2, i), i4);
                        }
                        if (i3 == 8) {
                            return FlexBuffers.b(aVar, FlexBuffers.a(aVar, i2, i), i4);
                        }
                        if (i3 == 10) {
                            return asVector().size();
                        }
                        if (i3 != 26) {
                            return 0.0d;
                        }
                    } else {
                        return Double.parseDouble(asString());
                    }
                }
                return FlexBuffers.d(aVar, i2, i);
            }
            return (int) FlexBuffers.c(aVar, i2, i);
        }

        public Key asKey() {
            if (isKey()) {
                int i = this.f1543b;
                int i2 = this.c;
                androidx.emoji2.text.flatbuffer.a aVar = this.f1542a;
                return new Key(aVar, FlexBuffers.a(aVar, i, i2), this.d);
            }
            return Key.empty();
        }

        public String asString() {
            boolean zIsString = isString();
            int i = this.d;
            int i2 = this.f1543b;
            androidx.emoji2.text.flatbuffer.a aVar = this.f1542a;
            if (zIsString) {
                int iA = FlexBuffers.a(aVar, i2, this.c);
                return aVar.getString(iA, (int) FlexBuffers.d(aVar, iA - i, i));
            }
            if (isKey()) {
                int iA2 = FlexBuffers.a(aVar, i2, i);
                int i3 = iA2;
                while (aVar.get(i3) != 0) {
                    i3++;
                }
                return aVar.getString(iA2, i3 - iA2);
            }
            return "";
        }

        public Map asMap() {
            if (isMap()) {
                int i = this.f1543b;
                int i2 = this.c;
                androidx.emoji2.text.flatbuffer.a aVar = this.f1542a;
                return new Map(aVar, FlexBuffers.a(aVar, i, i2), this.d);
            }
            return Map.empty();
        }

        public Vector asVector() {
            boolean zIsVector = isVector();
            int i = this.d;
            int i2 = this.c;
            int i3 = this.f1543b;
            androidx.emoji2.text.flatbuffer.a aVar = this.f1542a;
            if (!zIsVector) {
                int i4 = this.e;
                if (i4 == 15) {
                    return new TypedVector(aVar, FlexBuffers.a(aVar, i3, i2), i, 4);
                }
                if ((i4 >= 11 && i4 <= 15) || i4 == 36) {
                    return new TypedVector(aVar, FlexBuffers.a(aVar, i3, i2), i, i4 - 10);
                }
                return Vector.empty();
            }
            return new Vector(aVar, FlexBuffers.a(aVar, i3, i2), i);
        }

        public Blob asBlob() {
            if (isBlob() || isString()) {
                int i = this.f1543b;
                int i2 = this.c;
                androidx.emoji2.text.flatbuffer.a aVar = this.f1542a;
                return new Blob(aVar, FlexBuffers.a(aVar, i, i2), this.d);
            }
            return Blob.empty();
        }

        public boolean asBoolean() {
            return isBoolean() ? this.f1542a.get(this.f1543b) != 0 : asUInt() != 0;
        }

        public String toString() {
            return a(new StringBuilder(128)).toString();
        }

        public final StringBuilder a(StringBuilder sb) {
            int i = this.e;
            if (i != 36) {
                switch (i) {
                    case 0:
                        sb.append("null");
                        return sb;
                    case 1:
                    case 6:
                        sb.append(asLong());
                        return sb;
                    case 2:
                    case 7:
                        sb.append(asUInt());
                        return sb;
                    case 3:
                    case 8:
                        sb.append(asFloat());
                        return sb;
                    case 4:
                        Key keyAsKey = asKey();
                        sb.append(Typography.quote);
                        StringBuilder string = keyAsKey.toString(sb);
                        string.append(Typography.quote);
                        return string;
                    case 5:
                        sb.append(Typography.quote);
                        sb.append(asString());
                        sb.append(Typography.quote);
                        return sb;
                    case 9:
                        return asMap().toString(sb);
                    case 10:
                        return asVector().toString(sb);
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                        break;
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                        throw new FlexBufferException(_COROUTINE.a.d(i, "not_implemented:"));
                    case 25:
                        return asBlob().toString(sb);
                    case 26:
                        sb.append(asBoolean());
                        return sb;
                    default:
                        return sb;
                }
            }
            sb.append(asVector());
            return sb;
        }
    }

    public static abstract class a {

        /* renamed from: a, reason: collision with root package name */
        public final androidx.emoji2.text.flatbuffer.a f1544a;

        /* renamed from: b, reason: collision with root package name */
        public final int f1545b;
        public final int c;

        public abstract StringBuilder toString(StringBuilder sb);

        public a(androidx.emoji2.text.flatbuffer.a aVar, int i, int i2) {
            this.f1544a = aVar;
            this.f1545b = i;
            this.c = i2;
        }

        public String toString() {
            return toString(new StringBuilder(128)).toString();
        }
    }

    public static abstract class b extends a {
        protected final int size;

        public b(androidx.emoji2.text.flatbuffer.a aVar, int i, int i2) {
            super(aVar, i, i2);
            this.size = (int) FlexBuffers.c(aVar, i - i2, i2);
        }

        public int size() {
            return this.size;
        }
    }

    public static class Blob extends b {
        public static final Blob d = new Blob(FlexBuffers.f1540a, 1, 1);

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.b
        public /* bridge */ /* synthetic */ int size() {
            return super.size();
        }

        public static Blob empty() {
            return d;
        }

        public ByteBuffer data() {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(this.f1544a.data());
            int i = this.f1545b;
            byteBufferWrap.position(i);
            byteBufferWrap.limit(size() + i);
            return byteBufferWrap.asReadOnlyBuffer().slice();
        }

        public byte[] getBytes() {
            int size = size();
            byte[] bArr = new byte[size];
            for (int i = 0; i < size; i++) {
                bArr[i] = this.f1544a.get(this.f1545b + i);
            }
            return bArr;
        }

        public byte get(int i) {
            return this.f1544a.get(this.f1545b + i);
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.a
        public String toString() {
            return this.f1544a.getString(this.f1545b, size());
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.a
        public StringBuilder toString(StringBuilder sb) {
            sb.append(Typography.quote);
            sb.append(this.f1544a.getString(this.f1545b, size()));
            sb.append(Typography.quote);
            return sb;
        }
    }

    public static class Key extends a {
        public static final Key d = new Key(FlexBuffers.f1540a, 0, 0);

        public static Key empty() {
            return d;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.a
        public StringBuilder toString(StringBuilder sb) {
            sb.append(toString());
            return sb;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.a
        public String toString() {
            int i = this.f1545b;
            int i2 = i;
            while (true) {
                androidx.emoji2.text.flatbuffer.a aVar = this.f1544a;
                if (aVar.get(i2) == 0) {
                    return aVar.getString(i, i2 - i);
                }
                i2++;
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Key)) {
                return false;
            }
            Key key = (Key) obj;
            return key.f1545b == this.f1545b && key.c == this.c;
        }

        public int hashCode() {
            return this.f1545b ^ this.c;
        }
    }

    public static class Map extends Vector {
        public static final Map e = new Map(FlexBuffers.f1540a, 1, 1);

        public static Map empty() {
            return e;
        }

        public Reference get(String str) {
            return get(str.getBytes(StandardCharsets.UTF_8));
        }

        public Reference get(byte[] bArr) {
            int i;
            byte b2;
            byte b3;
            KeyVector keyVectorKeys = keys();
            int size = keyVectorKeys.size();
            int size2 = keyVectorKeys.size() - 1;
            int i2 = 0;
            while (true) {
                if (i2 > size2) {
                    i = -(i2 + 1);
                    break;
                }
                i = (i2 + size2) >>> 1;
                Key key = keyVectorKeys.get(i);
                int i3 = key.f1545b;
                int i4 = 0;
                do {
                    b2 = key.f1544a.get(i3);
                    b3 = bArr[i4];
                    if (b2 == 0) {
                        break;
                    }
                    i3++;
                    i4++;
                    if (i4 == bArr.length) {
                        break;
                    }
                } while (b2 == b3);
                int i5 = b2 - b3;
                if (i5 >= 0) {
                    if (i5 <= 0) {
                        break;
                    }
                    size2 = i - 1;
                } else {
                    i2 = i + 1;
                }
            }
            if (i < 0 || i >= size) {
                return Reference.f;
            }
            return get(i);
        }

        public KeyVector keys() {
            int i = this.c;
            int i2 = this.f1545b - (i * 3);
            androidx.emoji2.text.flatbuffer.a aVar = this.f1544a;
            return new KeyVector(new TypedVector(aVar, FlexBuffers.a(aVar, i2, i), (int) FlexBuffers.c(aVar, i2 + i, i), 4));
        }

        public Vector values() {
            return new Vector(this.f1544a, this.f1545b, this.c);
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Vector, androidx.emoji2.text.flatbuffer.FlexBuffers.a
        public StringBuilder toString(StringBuilder sb) {
            sb.append("{ ");
            KeyVector keyVectorKeys = keys();
            int size = size();
            Vector vectorValues = values();
            for (int i = 0; i < size; i++) {
                sb.append(Typography.quote);
                sb.append(keyVectorKeys.get(i).toString());
                sb.append("\" : ");
                sb.append(vectorValues.get(i).toString());
                if (i != size - 1) {
                    sb.append(", ");
                }
            }
            sb.append(" }");
            return sb;
        }
    }

    public static class Vector extends b {
        public static final Vector d = new Vector(FlexBuffers.f1540a, 1, 1);

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.b
        public /* bridge */ /* synthetic */ int size() {
            return super.size();
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.a
        public /* bridge */ /* synthetic */ String toString() {
            return super.toString();
        }

        public static Vector empty() {
            return d;
        }

        public boolean isEmpty() {
            return this == d;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.a
        public StringBuilder toString(StringBuilder sb) {
            sb.append("[ ");
            int size = size();
            for (int i = 0; i < size; i++) {
                get(i).a(sb);
                if (i != size - 1) {
                    sb.append(", ");
                }
            }
            sb.append(" ]");
            return sb;
        }

        public Reference get(int i) {
            long size = size();
            long j = i;
            if (j >= size) {
                return Reference.f;
            }
            int i2 = this.f1545b;
            int i3 = this.c;
            int i4 = (int) ((size * i3) + i2 + j);
            androidx.emoji2.text.flatbuffer.a aVar = this.f1544a;
            return new Reference(aVar, (i * i3) + i2, i3, aVar.get(i4) & 255);
        }
    }

    public static class TypedVector extends Vector {
        public static final TypedVector f = new TypedVector(FlexBuffers.f1540a, 1, 1, 1);
        public final int e;

        public TypedVector(androidx.emoji2.text.flatbuffer.a aVar, int i, int i2, int i3) {
            super(aVar, i, i2);
            this.e = i3;
        }

        public static TypedVector empty() {
            return f;
        }

        public boolean isEmptyVector() {
            return this == f;
        }

        public int getElemType() {
            return this.e;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Vector
        public Reference get(int i) {
            if (i >= size()) {
                return Reference.f;
            }
            return new Reference(this.f1544a, (i * this.c) + this.f1545b, this.c, 1, this.e);
        }
    }

    public static class KeyVector {

        /* renamed from: a, reason: collision with root package name */
        public final TypedVector f1541a;

        public KeyVector(TypedVector typedVector) {
            this.f1541a = typedVector;
        }

        public Key get(int i) {
            if (i >= size()) {
                return Key.d;
            }
            TypedVector typedVector = this.f1541a;
            int i2 = (i * typedVector.c) + typedVector.f1545b;
            androidx.emoji2.text.flatbuffer.a aVar = typedVector.f1544a;
            return new Key(aVar, FlexBuffers.a(aVar, i2, typedVector.c), 1);
        }

        public int size() {
            return this.f1541a.size();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            int i = 0;
            while (true) {
                TypedVector typedVector = this.f1541a;
                if (i < typedVector.size()) {
                    typedVector.get(i).a(sb);
                    if (i != typedVector.size() - 1) {
                        sb.append(", ");
                    }
                    i++;
                } else {
                    sb.append("]");
                    return sb.toString();
                }
            }
        }
    }
}
