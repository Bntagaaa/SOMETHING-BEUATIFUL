package androidx.collection;

/* loaded from: classes.dex */
public final class CircularIntArray {

    /* renamed from: a, reason: collision with root package name */
    public int[] f547a;

    /* renamed from: b, reason: collision with root package name */
    public int f548b;
    public int c;
    public int d;

    public final void a() {
        int[] iArr = this.f547a;
        int length = iArr.length;
        int i = this.f548b;
        int i2 = length - i;
        int i3 = length << 1;
        if (i3 < 0) {
            throw new RuntimeException("Max array capacity exceeded");
        }
        int[] iArr2 = new int[i3];
        System.arraycopy(iArr, i, iArr2, 0, i2);
        System.arraycopy(this.f547a, 0, iArr2, i2, this.f548b);
        this.f547a = iArr2;
        this.f548b = 0;
        this.c = length;
        this.d = i3 - 1;
    }

    public CircularIntArray() {
        this(8);
    }

    public CircularIntArray(int i) {
        if (i < 1) {
            throw new IllegalArgumentException("capacity must be >= 1");
        }
        if (i > 1073741824) {
            throw new IllegalArgumentException("capacity must be <= 2^30");
        }
        i = Integer.bitCount(i) != 1 ? Integer.highestOneBit(i - 1) << 1 : i;
        this.d = i - 1;
        this.f547a = new int[i];
    }

    public void addFirst(int i) {
        int i2 = (this.f548b - 1) & this.d;
        this.f548b = i2;
        this.f547a[i2] = i;
        if (i2 == this.c) {
            a();
        }
    }

    public void addLast(int i) {
        int[] iArr = this.f547a;
        int i2 = this.c;
        iArr[i2] = i;
        int i3 = this.d & (i2 + 1);
        this.c = i3;
        if (i3 == this.f548b) {
            a();
        }
    }

    public int popFirst() {
        int i = this.f548b;
        if (i == this.c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i2 = this.f547a[i];
        this.f548b = (i + 1) & this.d;
        return i2;
    }

    public int popLast() {
        int i = this.f548b;
        int i2 = this.c;
        if (i == i2) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i3 = this.d & (i2 - 1);
        int i4 = this.f547a[i3];
        this.c = i3;
        return i4;
    }

    public void clear() {
        this.c = this.f548b;
    }

    public void removeFromStart(int i) {
        if (i <= 0) {
            return;
        }
        if (i > size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        this.f548b = this.d & (this.f548b + i);
    }

    public void removeFromEnd(int i) {
        if (i <= 0) {
            return;
        }
        if (i > size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        this.c = this.d & (this.c - i);
    }

    public int getFirst() {
        int i = this.f548b;
        if (i == this.c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.f547a[i];
    }

    public int getLast() {
        int i = this.f548b;
        int i2 = this.c;
        if (i == i2) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.f547a[(i2 - 1) & this.d];
    }

    public int get(int i) {
        if (i < 0 || i >= size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.f547a[this.d & (this.f548b + i)];
    }

    public int size() {
        return (this.c - this.f548b) & this.d;
    }

    public boolean isEmpty() {
        return this.f548b == this.c;
    }
}
