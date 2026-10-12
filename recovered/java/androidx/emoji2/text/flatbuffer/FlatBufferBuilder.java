package androidx.emoji2.text.flatbuffer;

import java.io.IOException;
import java.io.InputStream;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* loaded from: classes.dex */
public class FlatBufferBuilder {

    /* renamed from: a, reason: collision with root package name */
    public ByteBuffer f1536a;

    /* renamed from: b, reason: collision with root package name */
    public int f1537b;
    public int c;
    public int[] d;
    public int e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f1538g;
    public int h;
    public int[] i;
    public int j;
    public int k;
    public boolean l;
    public ByteBufferFactory m;
    public final Utf8 n;

    public static abstract class ByteBufferFactory {
        public abstract ByteBuffer newByteBuffer(int i);

        public void releaseByteBuffer(ByteBuffer byteBuffer) {
        }
    }

    public FlatBufferBuilder(int i, ByteBufferFactory byteBufferFactory) {
        this(i, byteBufferFactory, null, Utf8.getDefault());
    }

    public FlatBufferBuilder(int i, ByteBufferFactory byteBufferFactory, ByteBuffer byteBuffer, Utf8 utf8) {
        this.c = 1;
        this.d = null;
        this.e = 0;
        this.f = false;
        this.f1538g = false;
        this.i = new int[16];
        this.j = 0;
        this.k = 0;
        this.l = false;
        i = i <= 0 ? 1 : i;
        this.m = byteBufferFactory;
        if (byteBuffer != null) {
            this.f1536a = byteBuffer;
            byteBuffer.clear();
            this.f1536a.order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.f1536a = byteBufferFactory.newByteBuffer(i);
        }
        this.n = utf8;
        this.f1537b = this.f1536a.capacity();
    }

    public FlatBufferBuilder(int i) {
        this(i, HeapByteBufferFactory.INSTANCE, null, Utf8.getDefault());
    }

    public FlatBufferBuilder() {
        this(1024);
    }

    public FlatBufferBuilder(ByteBuffer byteBuffer, ByteBufferFactory byteBufferFactory) {
        this(byteBuffer.capacity(), byteBufferFactory, byteBuffer, Utf8.getDefault());
    }

    public FlatBufferBuilder(ByteBuffer byteBuffer) {
        this(byteBuffer, new HeapByteBufferFactory());
    }

    public FlatBufferBuilder init(ByteBuffer byteBuffer, ByteBufferFactory byteBufferFactory) {
        this.m = byteBufferFactory;
        this.f1536a = byteBuffer;
        byteBuffer.clear();
        this.f1536a.order(ByteOrder.LITTLE_ENDIAN);
        this.c = 1;
        this.f1537b = this.f1536a.capacity();
        this.e = 0;
        this.f = false;
        this.f1538g = false;
        this.h = 0;
        this.j = 0;
        this.k = 0;
        return this;
    }

    public static final class HeapByteBufferFactory extends ByteBufferFactory {
        public static final HeapByteBufferFactory INSTANCE = new HeapByteBufferFactory();

        @Override // androidx.emoji2.text.flatbuffer.FlatBufferBuilder.ByteBufferFactory
        public ByteBuffer newByteBuffer(int i) {
            return ByteBuffer.allocate(i).order(ByteOrder.LITTLE_ENDIAN);
        }
    }

    public static boolean isFieldPresent(Table table, int i) {
        return table.__offset(i) != 0;
    }

    public void clear() {
        this.f1537b = this.f1536a.capacity();
        this.f1536a.clear();
        this.c = 1;
        while (true) {
            int i = this.e;
            if (i <= 0) {
                this.e = 0;
                this.f = false;
                this.f1538g = false;
                this.h = 0;
                this.j = 0;
                this.k = 0;
                return;
            }
            int[] iArr = this.d;
            int i2 = i - 1;
            this.e = i2;
            iArr[i2] = 0;
        }
    }

    public int offset() {
        return this.f1536a.capacity() - this.f1537b;
    }

    public void pad(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            ByteBuffer byteBuffer = this.f1536a;
            int i3 = this.f1537b - 1;
            this.f1537b = i3;
            byteBuffer.put(i3, (byte) 0);
        }
    }

    public void prep(int i, int i2) {
        if (i > this.c) {
            this.c = i;
        }
        int i3 = ((~((this.f1536a.capacity() - this.f1537b) + i2)) + 1) & (i - 1);
        while (this.f1537b < i3 + i + i2) {
            int iCapacity = this.f1536a.capacity();
            ByteBuffer byteBuffer = this.f1536a;
            ByteBufferFactory byteBufferFactory = this.m;
            int iCapacity2 = byteBuffer.capacity();
            if (((-1073741824) & iCapacity2) != 0) {
                throw new AssertionError("FlatBuffers: cannot grow buffer beyond 2 gigabytes.");
            }
            int i4 = iCapacity2 == 0 ? 1 : iCapacity2 << 1;
            byteBuffer.position(0);
            ByteBuffer byteBufferNewByteBuffer = byteBufferFactory.newByteBuffer(i4);
            byteBufferNewByteBuffer.position(byteBufferNewByteBuffer.clear().capacity() - iCapacity2);
            byteBufferNewByteBuffer.put(byteBuffer);
            this.f1536a = byteBufferNewByteBuffer;
            if (byteBuffer != byteBufferNewByteBuffer) {
                this.m.releaseByteBuffer(byteBuffer);
            }
            this.f1537b = (this.f1536a.capacity() - iCapacity) + this.f1537b;
        }
        pad(i3);
    }

    public void putBoolean(boolean z) {
        ByteBuffer byteBuffer = this.f1536a;
        int i = this.f1537b - 1;
        this.f1537b = i;
        byteBuffer.put(i, z ? (byte) 1 : (byte) 0);
    }

    public void putByte(byte b2) {
        ByteBuffer byteBuffer = this.f1536a;
        int i = this.f1537b - 1;
        this.f1537b = i;
        byteBuffer.put(i, b2);
    }

    public void putShort(short s) {
        ByteBuffer byteBuffer = this.f1536a;
        int i = this.f1537b - 2;
        this.f1537b = i;
        byteBuffer.putShort(i, s);
    }

    public void putInt(int i) {
        ByteBuffer byteBuffer = this.f1536a;
        int i2 = this.f1537b - 4;
        this.f1537b = i2;
        byteBuffer.putInt(i2, i);
    }

    public void putLong(long j) {
        ByteBuffer byteBuffer = this.f1536a;
        int i = this.f1537b - 8;
        this.f1537b = i;
        byteBuffer.putLong(i, j);
    }

    public void putFloat(float f) {
        ByteBuffer byteBuffer = this.f1536a;
        int i = this.f1537b - 4;
        this.f1537b = i;
        byteBuffer.putFloat(i, f);
    }

    public void putDouble(double d) {
        ByteBuffer byteBuffer = this.f1536a;
        int i = this.f1537b - 8;
        this.f1537b = i;
        byteBuffer.putDouble(i, d);
    }

    public void addBoolean(boolean z) {
        prep(1, 0);
        putBoolean(z);
    }

    public void addByte(byte b2) {
        prep(1, 0);
        putByte(b2);
    }

    public void addShort(short s) {
        prep(2, 0);
        putShort(s);
    }

    public void addInt(int i) {
        prep(4, 0);
        putInt(i);
    }

    public void addLong(long j) {
        prep(8, 0);
        putLong(j);
    }

    public void addFloat(float f) {
        prep(4, 0);
        putFloat(f);
    }

    public void addDouble(double d) {
        prep(8, 0);
        putDouble(d);
    }

    public void addOffset(int i) {
        prep(4, 0);
        putInt((offset() - i) + 4);
    }

    public void startVector(int i, int i2, int i3) {
        notNested();
        this.k = i2;
        int i4 = i * i2;
        prep(4, i4);
        prep(i3, i4);
        this.f = true;
    }

    public int endVector() {
        if (!this.f) {
            throw new AssertionError("FlatBuffers: endVector called without startVector");
        }
        this.f = false;
        putInt(this.k);
        return offset();
    }

    public ByteBuffer createUnintializedVector(int i, int i2, int i3) {
        int i4 = i * i2;
        startVector(i, i2, i3);
        ByteBuffer byteBuffer = this.f1536a;
        int i5 = this.f1537b - i4;
        this.f1537b = i5;
        byteBuffer.position(i5);
        ByteBuffer byteBufferOrder = this.f1536a.slice().order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.limit(i4);
        return byteBufferOrder;
    }

    public int createVectorOfTables(int[] iArr) {
        notNested();
        startVector(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            addOffset(iArr[length]);
        }
        return endVector();
    }

    public <T extends Table> int createSortedVectorOfTables(T t, int[] iArr) {
        t.sortTables(iArr, this.f1536a);
        return createVectorOfTables(iArr);
    }

    public int createString(CharSequence charSequence) {
        Utf8 utf8 = this.n;
        int iEncodedLength = utf8.encodedLength(charSequence);
        addByte((byte) 0);
        startVector(1, iEncodedLength, 1);
        ByteBuffer byteBuffer = this.f1536a;
        int i = this.f1537b - iEncodedLength;
        this.f1537b = i;
        byteBuffer.position(i);
        utf8.encodeUtf8(charSequence, this.f1536a);
        return endVector();
    }

    public int createString(ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        addByte((byte) 0);
        startVector(1, iRemaining, 1);
        ByteBuffer byteBuffer2 = this.f1536a;
        int i = this.f1537b - iRemaining;
        this.f1537b = i;
        byteBuffer2.position(i);
        this.f1536a.put(byteBuffer);
        return endVector();
    }

    public int createByteVector(byte[] bArr) {
        int length = bArr.length;
        startVector(1, length, 1);
        ByteBuffer byteBuffer = this.f1536a;
        int i = this.f1537b - length;
        this.f1537b = i;
        byteBuffer.position(i);
        this.f1536a.put(bArr);
        return endVector();
    }

    public int createByteVector(byte[] bArr, int i, int i2) {
        startVector(1, i2, 1);
        ByteBuffer byteBuffer = this.f1536a;
        int i3 = this.f1537b - i2;
        this.f1537b = i3;
        byteBuffer.position(i3);
        this.f1536a.put(bArr, i, i2);
        return endVector();
    }

    public int createByteVector(ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        startVector(1, iRemaining, 1);
        ByteBuffer byteBuffer2 = this.f1536a;
        int i = this.f1537b - iRemaining;
        this.f1537b = i;
        byteBuffer2.position(i);
        this.f1536a.put(byteBuffer);
        return endVector();
    }

    public void finished() {
        if (!this.f1538g) {
            throw new AssertionError("FlatBuffers: you can only access the serialized buffer after it has been finished by FlatBufferBuilder.finish().");
        }
    }

    public void notNested() {
        if (this.f) {
            throw new AssertionError("FlatBuffers: object serialization must not be nested.");
        }
    }

    public void Nested(int i) {
        if (i != offset()) {
            throw new AssertionError("FlatBuffers: struct must be serialized inline.");
        }
    }

    public void startTable(int i) {
        notNested();
        int[] iArr = this.d;
        if (iArr == null || iArr.length < i) {
            this.d = new int[i];
        }
        this.e = i;
        Arrays.fill(this.d, 0, i, 0);
        this.f = true;
        this.h = offset();
    }

    public void addBoolean(int i, boolean z, boolean z2) {
        if (this.l || z != z2) {
            addBoolean(z);
            slot(i);
        }
    }

    public void addByte(int i, byte b2, int i2) {
        if (this.l || b2 != i2) {
            addByte(b2);
            slot(i);
        }
    }

    public void addShort(int i, short s, int i2) {
        if (this.l || s != i2) {
            addShort(s);
            slot(i);
        }
    }

    public void addInt(int i, int i2, int i3) {
        if (this.l || i2 != i3) {
            addInt(i2);
            slot(i);
        }
    }

    public void addLong(int i, long j, long j2) {
        if (this.l || j != j2) {
            addLong(j);
            slot(i);
        }
    }

    public void addFloat(int i, float f, double d) {
        if (this.l || f != d) {
            addFloat(f);
            slot(i);
        }
    }

    public void addDouble(int i, double d, double d2) {
        if (this.l || d != d2) {
            addDouble(d);
            slot(i);
        }
    }

    public void addOffset(int i, int i2, int i3) {
        if (this.l || i2 != i3) {
            addOffset(i2);
            slot(i);
        }
    }

    public void addStruct(int i, int i2, int i3) {
        if (i2 != i3) {
            Nested(i2);
            slot(i);
        }
    }

    public void slot(int i) {
        this.d[i] = offset();
    }

    public int endTable() {
        int i;
        if (this.d == null || !this.f) {
            throw new AssertionError("FlatBuffers: endTable called without startTable");
        }
        addInt(0);
        int iOffset = offset();
        int i2 = this.e - 1;
        while (i2 >= 0 && this.d[i2] == 0) {
            i2--;
        }
        for (int i3 = i2; i3 >= 0; i3--) {
            int i4 = this.d[i3];
            addShort((short) (i4 != 0 ? iOffset - i4 : 0));
        }
        addShort((short) (iOffset - this.h));
        addShort((short) ((i2 + 3) * 2));
        int i5 = 0;
        loop2: while (true) {
            if (i5 >= this.j) {
                i = 0;
                break;
            }
            int iCapacity = this.f1536a.capacity() - this.i[i5];
            int i6 = this.f1537b;
            short s = this.f1536a.getShort(iCapacity);
            if (s == this.f1536a.getShort(i6)) {
                for (int i7 = 2; i7 < s; i7 += 2) {
                    if (this.f1536a.getShort(iCapacity + i7) != this.f1536a.getShort(i6 + i7)) {
                        break;
                    }
                }
                i = this.i[i5];
                break loop2;
            }
            i5++;
        }
        if (i != 0) {
            int iCapacity2 = this.f1536a.capacity() - iOffset;
            this.f1537b = iCapacity2;
            this.f1536a.putInt(iCapacity2, i - iOffset);
        } else {
            int i8 = this.j;
            int[] iArr = this.i;
            if (i8 == iArr.length) {
                this.i = Arrays.copyOf(iArr, i8 * 2);
            }
            int[] iArr2 = this.i;
            int i9 = this.j;
            this.j = i9 + 1;
            iArr2[i9] = offset();
            ByteBuffer byteBuffer = this.f1536a;
            byteBuffer.putInt(byteBuffer.capacity() - iOffset, offset() - iOffset);
        }
        this.f = false;
        return iOffset;
    }

    public void required(int i, int i2) {
        int iCapacity = this.f1536a.capacity() - i;
        if (this.f1536a.getShort((iCapacity - this.f1536a.getInt(iCapacity)) + i2) == 0) {
            throw new AssertionError(_COROUTINE.a.e(i2, "FlatBuffers: field ", " must be set"));
        }
    }

    public void finish(int i, boolean z) {
        prep(this.c, (z ? 4 : 0) + 4);
        addOffset(i);
        if (z) {
            addInt(this.f1536a.capacity() - this.f1537b);
        }
        this.f1536a.position(this.f1537b);
        this.f1538g = true;
    }

    public void finish(int i) {
        finish(i, false);
    }

    public void finishSizePrefixed(int i) {
        finish(i, true);
    }

    public void finish(int i, String str, boolean z) {
        prep(this.c, (z ? 4 : 0) + 8);
        if (str.length() != 4) {
            throw new AssertionError("FlatBuffers: file identifier must be length 4");
        }
        for (int i2 = 3; i2 >= 0; i2--) {
            addByte((byte) str.charAt(i2));
        }
        finish(i, z);
    }

    public void finish(int i, String str) {
        finish(i, str, false);
    }

    public void finishSizePrefixed(int i, String str) {
        finish(i, str, true);
    }

    public FlatBufferBuilder forceDefaults(boolean z) {
        this.l = z;
        return this;
    }

    public ByteBuffer dataBuffer() {
        finished();
        return this.f1536a;
    }

    public byte[] sizedByteArray(int i, int i2) {
        finished();
        byte[] bArr = new byte[i2];
        this.f1536a.position(i);
        this.f1536a.get(bArr);
        return bArr;
    }

    public byte[] sizedByteArray() {
        return sizedByteArray(this.f1537b, this.f1536a.capacity() - this.f1537b);
    }

    public InputStream sizedInputStream() {
        finished();
        ByteBuffer byteBufferDuplicate = this.f1536a.duplicate();
        byteBufferDuplicate.position(this.f1537b);
        byteBufferDuplicate.limit(this.f1536a.capacity());
        return new a(byteBufferDuplicate);
    }

    public static class a extends InputStream {

        /* renamed from: a, reason: collision with root package name */
        public final ByteBuffer f1539a;

        public a(ByteBuffer byteBuffer) {
            this.f1539a = byteBuffer;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            try {
                return this.f1539a.get() & 255;
            } catch (BufferUnderflowException unused) {
                return -1;
            }
        }
    }
}
