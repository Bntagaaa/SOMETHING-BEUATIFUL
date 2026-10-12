package androidx.emoji2.text.flatbuffer;

import androidx.core.internal.view.SupportMenu;
import androidx.emoji2.text.flatbuffer.FlexBuffers;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;

/* loaded from: classes.dex */
public class FlexBuffersBuilder {
    public static final int BUILDER_FLAG_NONE = 0;
    public static final int BUILDER_FLAG_SHARE_ALL = 7;
    public static final int BUILDER_FLAG_SHARE_KEYS = 1;
    public static final int BUILDER_FLAG_SHARE_KEYS_AND_STRINGS = 3;
    public static final int BUILDER_FLAG_SHARE_KEY_VECTORS = 4;
    public static final int BUILDER_FLAG_SHARE_STRINGS = 2;

    /* renamed from: a, reason: collision with root package name */
    public final androidx.emoji2.text.flatbuffer.b f1546a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f1547b;
    public final HashMap c;
    public final HashMap d;
    public final int e;
    public final Comparator f;

    public static int e(long j) {
        if (j <= 255) {
            return 0;
        }
        if (j <= SupportMenu.USER_MASK) {
            return 1;
        }
        return j <= (((long) (-1)) & 4294967295L) ? 2 : 3;
    }

    public class a implements Comparator<b> {
        public a() {
        }

        @Override // java.util.Comparator
        public int compare(b bVar, b bVar2) {
            byte b2;
            byte b3;
            int i = bVar.e;
            int i2 = bVar2.e;
            do {
                FlexBuffersBuilder flexBuffersBuilder = FlexBuffersBuilder.this;
                b2 = flexBuffersBuilder.f1546a.get(i);
                b3 = flexBuffersBuilder.f1546a.get(i2);
                if (b2 == 0) {
                    return b2 - b3;
                }
                i++;
                i2++;
            } while (b2 == b3);
            return b2 - b3;
        }
    }

    public FlexBuffersBuilder(int i) {
        this(new ArrayReadWriteBuf(i), 1);
    }

    public FlexBuffersBuilder() {
        this(256);
    }

    @Deprecated
    public FlexBuffersBuilder(ByteBuffer byteBuffer, int i) {
        this(new ArrayReadWriteBuf(byteBuffer.array()), i);
    }

    public FlexBuffersBuilder(androidx.emoji2.text.flatbuffer.b bVar, int i) {
        this.f1547b = new ArrayList();
        this.c = new HashMap();
        this.d = new HashMap();
        this.f = new a();
        this.f1546a = bVar;
        this.e = i;
    }

    public FlexBuffersBuilder(ByteBuffer byteBuffer) {
        this(byteBuffer, 1);
    }

    public androidx.emoji2.text.flatbuffer.b getBuffer() {
        return this.f1546a;
    }

    public void putBoolean(boolean z) {
        putBoolean(null, z);
    }

    public void putBoolean(String str, boolean z) {
        this.f1547b.add(new b(c(str), 26, 0, z ? 1L : 0L));
    }

    public final int c(String str) {
        if (str == null) {
            return -1;
        }
        androidx.emoji2.text.flatbuffer.b bVar = this.f1546a;
        int iWritePosition = bVar.writePosition();
        int i = this.e & 1;
        HashMap map = this.c;
        if (i != 0) {
            Integer num = (Integer) map.get(str);
            if (num == null) {
                byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
                bVar.put(bytes, 0, bytes.length);
                bVar.put((byte) 0);
                map.put(str, Integer.valueOf(iWritePosition));
                return iWritePosition;
            }
            return num.intValue();
        }
        byte[] bytes2 = str.getBytes(StandardCharsets.UTF_8);
        bVar.put(bytes2, 0, bytes2.length);
        bVar.put((byte) 0);
        map.put(str, Integer.valueOf(iWritePosition));
        return iWritePosition;
    }

    public void putInt(int i) {
        putInt((String) null, i);
    }

    public void putInt(String str, int i) {
        putInt(str, i);
    }

    public void putInt(String str, long j) {
        int iC = c(str);
        ArrayList arrayList = this.f1547b;
        if (-128 <= j && j <= 127) {
            arrayList.add(new b(iC, 1, 0, (int) j));
            return;
        }
        if (-32768 <= j && j <= 32767) {
            arrayList.add(new b(iC, 1, 1, (int) j));
        } else if (-2147483648L <= j && j <= 2147483647L) {
            arrayList.add(new b(iC, 1, 2, (int) j));
        } else {
            arrayList.add(new b(iC, 1, 3, j));
        }
    }

    public void putInt(long j) {
        putInt((String) null, j);
    }

    public void putUInt(int i) {
        d(i);
    }

    public void putUInt(long j) {
        d(j);
    }

    public void putUInt64(BigInteger bigInteger) {
        this.f1547b.add(new b(-1, 2, 3, bigInteger.longValue()));
    }

    public final void d(long j) {
        b bVar;
        int iE = e(j);
        if (iE == 0) {
            bVar = new b(-1, 2, 0, (int) j);
        } else if (iE == 1) {
            bVar = new b(-1, 2, 1, (int) j);
        } else if (iE == 2) {
            bVar = new b(-1, 2, 2, (int) j);
        } else {
            bVar = new b(-1, 2, 3, j);
        }
        this.f1547b.add(bVar);
    }

    public void putFloat(float f) {
        putFloat((String) null, f);
    }

    public void putFloat(String str, float f) {
        this.f1547b.add(new b(c(str), 2, f));
    }

    public void putFloat(double d) {
        putFloat((String) null, d);
    }

    public void putFloat(String str, double d) {
        this.f1547b.add(new b(c(str), 3, d));
    }

    public int putString(String str) {
        return putString(null, str);
    }

    public int putString(String str, String str2) {
        int iC = c(str);
        int i = this.e & 2;
        ArrayList arrayList = this.f1547b;
        if (i != 0) {
            HashMap map = this.d;
            Integer num = (Integer) map.get(str2);
            if (num != null) {
                arrayList.add(new b(iC, 5, e(str2.length()), num.intValue()));
                return num.intValue();
            }
            b bVarG = g(str2.getBytes(StandardCharsets.UTF_8), iC, 5, true);
            int i2 = (int) bVarG.d;
            map.put(str2, Integer.valueOf(i2));
            arrayList.add(bVarG);
            return i2;
        }
        b bVarG2 = g(str2.getBytes(StandardCharsets.UTF_8), iC, 5, true);
        arrayList.add(bVarG2);
        return (int) bVarG2.d;
    }

    public final b g(byte[] bArr, int i, int i2, boolean z) {
        int iE = e(bArr.length);
        h(a(iE), bArr.length);
        androidx.emoji2.text.flatbuffer.b bVar = this.f1546a;
        int iWritePosition = bVar.writePosition();
        bVar.put(bArr, 0, bArr.length);
        if (z) {
            bVar.put((byte) 0);
        }
        return new b(i, i2, iE, iWritePosition);
    }

    public final int a(int i) {
        int i2 = 1 << i;
        androidx.emoji2.text.flatbuffer.b bVar = this.f1546a;
        int i3 = (i2 - 1) & ((~bVar.writePosition()) + 1);
        while (true) {
            int i4 = i3 - 1;
            if (i3 == 0) {
                return i2;
            }
            bVar.put((byte) 0);
            i3 = i4;
        }
    }

    public final void h(int i, long j) {
        androidx.emoji2.text.flatbuffer.b bVar = this.f1546a;
        if (i == 1) {
            bVar.put((byte) j);
            return;
        }
        if (i == 2) {
            bVar.putShort((short) j);
        } else if (i == 4) {
            bVar.putInt((int) j);
        } else {
            if (i != 8) {
                return;
            }
            bVar.putLong(j);
        }
    }

    public int putBlob(byte[] bArr) {
        return putBlob(null, bArr);
    }

    public int putBlob(String str, byte[] bArr) {
        b bVarG = g(bArr, c(str), 25, false);
        this.f1547b.add(bVarG);
        return (int) bVarG.d;
    }

    public int startVector() {
        return this.f1547b.size();
    }

    public int endVector(String str, int i, boolean z, boolean z2) {
        int iC = c(str);
        ArrayList arrayList = this.f1547b;
        b bVarB = b(iC, i, arrayList.size() - i, z, z2, null);
        while (arrayList.size() > i) {
            arrayList.remove(arrayList.size() - 1);
        }
        arrayList.add(bVarB);
        return (int) bVarB.d;
    }

    public ByteBuffer finish() {
        ArrayList arrayList = this.f1547b;
        b bVar = (b) arrayList.get(0);
        androidx.emoji2.text.flatbuffer.b bVar2 = this.f1546a;
        int iA = a(b.a(bVar.f1549a, bVar.f1550b, bVar.d, bVar2.writePosition(), 0));
        f((b) arrayList.get(0), iA);
        b bVar3 = (b) arrayList.get(0);
        bVar3.getClass();
        int i = FlexBuffers.FBT_NULL;
        int i2 = bVar3.f1549a;
        boolean z = i2 <= 3 || i2 == 26;
        int iMax = bVar3.f1550b;
        if (z) {
            iMax = Math.max(iMax, 0);
        }
        bVar2.put((byte) (iMax | (i2 << 2)));
        bVar2.put((byte) iA);
        return ByteBuffer.wrap(bVar2.data(), 0, bVar2.writePosition());
    }

    public final b b(int i, int i2, int i3, boolean z, boolean z2, b bVar) {
        int i4;
        int i5;
        int iE;
        long j = i3;
        int iMax = Math.max(0, e(j));
        androidx.emoji2.text.flatbuffer.b bVar2 = this.f1546a;
        if (bVar != null) {
            iMax = Math.max(iMax, b.a(bVar.f1549a, bVar.f1550b, bVar.d, bVar2.writePosition(), 0));
            i4 = 3;
        } else {
            i4 = 1;
        }
        int iMax2 = iMax;
        int i6 = 4;
        int i7 = i2;
        while (true) {
            ArrayList arrayList = this.f1547b;
            if (i7 < arrayList.size()) {
                b bVar3 = (b) arrayList.get(i7);
                iMax2 = Math.max(iMax2, b.a(bVar3.f1549a, bVar3.f1550b, bVar3.d, bVar2.writePosition(), i7 + i4));
                if (z && i7 == i2 && (((i6 = ((b) arrayList.get(i7)).f1549a) < 1 || i6 > 4) && i6 != 26)) {
                    throw new FlexBuffers.FlexBufferException("TypedVector does not support this element type");
                }
                i7++;
            } else {
                int i8 = i2;
                int iA = a(iMax2);
                if (bVar != null) {
                    i5 = 1;
                    h(iA, (int) (bVar2.writePosition() - bVar.d));
                    h(iA, 1 << bVar.f1550b);
                } else {
                    i5 = 1;
                }
                if (!z2) {
                    h(iA, j);
                }
                int iWritePosition = bVar2.writePosition();
                for (int i9 = i8; i9 < arrayList.size(); i9 += i5) {
                    f((b) arrayList.get(i9), iA);
                }
                if (!z) {
                    while (i8 < arrayList.size()) {
                        b bVar4 = (b) arrayList.get(i8);
                        bVar4.getClass();
                        int i10 = FlexBuffers.FBT_NULL;
                        int i11 = bVar4.f1549a;
                        boolean z3 = i11 <= 3 || i11 == 26;
                        int iMax3 = bVar4.f1550b;
                        if (z3) {
                            iMax3 = Math.max(iMax3, iMax2);
                        }
                        bVar2.put((byte) (iMax3 | (i11 << 2)));
                        i8 += i5;
                    }
                }
                if (bVar != null) {
                    iE = 9;
                } else if (z) {
                    iE = FlexBuffers.e(i6, z2 ? i3 : 0);
                } else {
                    iE = 10;
                }
                return new b(i, iE, iMax2, iWritePosition);
            }
        }
    }

    public final void f(b bVar, int i) {
        int i2 = bVar.f1549a;
        long j = bVar.d;
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            androidx.emoji2.text.flatbuffer.b bVar2 = this.f1546a;
            if (i2 == 3) {
                double d = bVar.c;
                if (i == 4) {
                    bVar2.putFloat((float) d);
                    return;
                } else {
                    if (i == 8) {
                        bVar2.putDouble(d);
                        return;
                    }
                    return;
                }
            }
            if (i2 != 26) {
                h(i, (int) (bVar2.writePosition() - j));
                return;
            }
        }
        h(i, j);
    }

    public int startMap() {
        return this.f1547b.size();
    }

    public int endMap(String str, int i) {
        androidx.emoji2.text.flatbuffer.b bVar;
        int iC = c(str);
        ArrayList arrayList = this.f1547b;
        Collections.sort(arrayList.subList(i, arrayList.size()), this.f);
        long size = arrayList.size() - i;
        int iMax = Math.max(0, e(size));
        int i2 = i;
        while (true) {
            int size2 = arrayList.size();
            bVar = this.f1546a;
            if (i2 >= size2) {
                break;
            }
            int i3 = i2 + 1;
            iMax = Math.max(iMax, b.a(4, 0, ((b) arrayList.get(i2)).e, bVar.writePosition(), i3));
            i2 = i3;
        }
        int iA = a(iMax);
        h(iA, size);
        int iWritePosition = bVar.writePosition();
        for (int i4 = i; i4 < arrayList.size(); i4++) {
            int i5 = ((b) arrayList.get(i4)).e;
            h(iA, (int) (bVar.writePosition() - ((b) arrayList.get(i4)).e));
        }
        b bVarB = b(iC, i, arrayList.size() - i, false, false, new b(-1, FlexBuffers.e(4, 0), iMax, iWritePosition));
        while (arrayList.size() > i) {
            arrayList.remove(arrayList.size() - 1);
        }
        arrayList.add(bVarB);
        return (int) bVarB.d;
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final int f1549a;

        /* renamed from: b, reason: collision with root package name */
        public final int f1550b;
        public final double c;
        public final long d;
        public final int e;

        public b(int i, int i2, int i3, long j) {
            this.e = i;
            this.f1549a = i2;
            this.f1550b = i3;
            this.d = j;
            this.c = Double.MIN_VALUE;
        }

        public b(int i, int i2, double d) {
            this.e = i;
            this.f1549a = 3;
            this.f1550b = i2;
            this.c = d;
            this.d = Long.MIN_VALUE;
        }

        public static int a(int i, int i2, long j, int i3, int i4) {
            int i5 = FlexBuffers.FBT_NULL;
            if (i <= 3 || i == 26) {
                return i2;
            }
            for (int i6 = 1; i6 <= 32; i6 *= 2) {
                int iE = FlexBuffersBuilder.e((int) (((i4 * i6) + ((((~i3) + 1) & (i6 - 1)) + i3)) - j));
                if ((1 << iE) == i6) {
                    return iE;
                }
            }
            return 3;
        }
    }
}
