package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
public final class Bytes {
    public static int hashCode(byte b2) {
        return b2;
    }

    private Bytes() {
    }

    public static boolean contains(byte[] bArr, byte b2) {
        for (byte b3 : bArr) {
            if (b3 == b2) {
                return true;
            }
        }
        return false;
    }

    public static int indexOf(byte[] bArr, byte b2) {
        return a(bArr, b2, 0, bArr.length);
    }

    public static int a(byte[] bArr, byte b2, int i, int i2) {
        while (i < i2) {
            if (bArr[i] == b2) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0023, code lost:
    
        r0 = r0 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int indexOf(byte[] r5, byte[] r6) {
        /*
            java.lang.String r0 = "array"
            com.google.common.base.Preconditions.checkNotNull(r5, r0)
            java.lang.String r0 = "target"
            com.google.common.base.Preconditions.checkNotNull(r6, r0)
            int r0 = r6.length
            r1 = 0
            if (r0 != 0) goto Lf
            return r1
        Lf:
            r0 = 0
        L10:
            int r2 = r5.length
            int r3 = r6.length
            int r2 = r2 - r3
            int r2 = r2 + 1
            if (r0 >= r2) goto L2a
            r2 = 0
        L18:
            int r3 = r6.length
            if (r2 >= r3) goto L29
            int r3 = r0 + r2
            r3 = r5[r3]
            r4 = r6[r2]
            if (r3 == r4) goto L26
            int r0 = r0 + 1
            goto L10
        L26:
            int r2 = r2 + 1
            goto L18
        L29:
            return r0
        L2a:
            r5 = -1
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.primitives.Bytes.indexOf(byte[], byte[]):int");
    }

    public static int lastIndexOf(byte[] bArr, byte b2) {
        for (int length = bArr.length - 1; length >= 0; length--) {
            if (bArr[length] == b2) {
                return length;
            }
        }
        return -1;
    }

    public static byte[] concat(byte[]... bArr) {
        int length = 0;
        for (byte[] bArr2 : bArr) {
            length += bArr2.length;
        }
        byte[] bArr3 = new byte[length];
        int length2 = 0;
        for (byte[] bArr4 : bArr) {
            System.arraycopy(bArr4, 0, bArr3, length2, bArr4.length);
            length2 += bArr4.length;
        }
        return bArr3;
    }

    public static byte[] ensureCapacity(byte[] bArr, int i, int i2) {
        Preconditions.checkArgument(i >= 0, "Invalid minLength: %s", i);
        Preconditions.checkArgument(i2 >= 0, "Invalid padding: %s", i2);
        return bArr.length < i ? Arrays.copyOf(bArr, i + i2) : bArr;
    }

    public static byte[] toArray(Collection<? extends Number> collection) {
        if (collection instanceof a) {
            a aVar = (a) collection;
            return Arrays.copyOfRange(aVar.f4749a, aVar.f4750b, aVar.c);
        }
        Object[] array = collection.toArray();
        int length = array.length;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = ((Number) Preconditions.checkNotNull(array[i])).byteValue();
        }
        return bArr;
    }

    public static List<Byte> asList(byte... bArr) {
        if (bArr.length == 0) {
            return Collections.EMPTY_LIST;
        }
        return new a(bArr, 0, bArr.length);
    }

    @GwtCompatible
    public static class a extends AbstractList<Byte> implements RandomAccess, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final byte[] f4749a;

        /* renamed from: b, reason: collision with root package name */
        public final int f4750b;
        public final int c;

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        public a(byte[] bArr, int i, int i2) {
            this.f4749a = bArr;
            this.f4750b = i;
            this.c = i2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.c - this.f4750b;
        }

        @Override // java.util.AbstractList, java.util.List
        public Byte get(int i) {
            Preconditions.checkElementIndex(i, size());
            return Byte.valueOf(this.f4749a[this.f4750b + i]);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            if (obj instanceof Byte) {
                return Bytes.a(this.f4749a, ((Byte) obj).byteValue(), this.f4750b, this.c) != -1;
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            if (!(obj instanceof Byte)) {
                return -1;
            }
            byte bByteValue = ((Byte) obj).byteValue();
            byte[] bArr = this.f4749a;
            int i = this.f4750b;
            int iA = Bytes.a(bArr, bByteValue, i, this.c);
            if (iA >= 0) {
                return iA - i;
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int i;
            if (obj instanceof Byte) {
                byte bByteValue = ((Byte) obj).byteValue();
                int i2 = this.c;
                while (true) {
                    i2--;
                    i = this.f4750b;
                    if (i2 < i) {
                        i2 = -1;
                        break;
                    }
                    if (this.f4749a[i2] == bByteValue) {
                        break;
                    }
                }
                if (i2 >= 0) {
                    return i2 - i;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public Byte set(int i, Byte b2) {
            Preconditions.checkElementIndex(i, size());
            int i2 = this.f4750b;
            byte[] bArr = this.f4749a;
            byte b3 = bArr[i2 + i];
            bArr[i2 + i] = ((Byte) Preconditions.checkNotNull(b2)).byteValue();
            return Byte.valueOf(b3);
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Byte> subList(int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, size());
            if (i == i2) {
                return Collections.EMPTY_LIST;
            }
            int i3 = this.f4750b;
            return new a(this.f4749a, i + i3, i3 + i2);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@NullableDecl Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                int size = size();
                if (aVar.size() != size) {
                    return false;
                }
                for (int i = 0; i < size; i++) {
                    if (this.f4749a[this.f4750b + i] != aVar.f4749a[aVar.f4750b + i]) {
                        return false;
                    }
                }
                return true;
            }
            return super.equals(obj);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int iHashCode = 1;
            for (int i = this.f4750b; i < this.c; i++) {
                iHashCode = (iHashCode * 31) + Bytes.hashCode(this.f4749a[i]);
            }
            return iHashCode;
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 5);
            sb.append('[');
            byte[] bArr = this.f4749a;
            int i = this.f4750b;
            sb.append((int) bArr[i]);
            while (true) {
                i++;
                if (i < this.c) {
                    sb.append(", ");
                    sb.append((int) bArr[i]);
                } else {
                    sb.append(']');
                    return sb.toString();
                }
            }
        }
    }

    public static void reverse(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        reverse(bArr, 0, bArr.length);
    }

    public static void reverse(byte[] bArr, int i, int i2) {
        Preconditions.checkNotNull(bArr);
        Preconditions.checkPositionIndexes(i, i2, bArr.length);
        for (int i3 = i2 - 1; i < i3; i3--) {
            byte b2 = bArr[i];
            bArr[i] = bArr[i3];
            bArr[i3] = b2;
            i++;
        }
    }
}
