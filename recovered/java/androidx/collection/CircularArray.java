package androidx.collection;

/* loaded from: classes.dex */
public final class CircularArray<E> {

    /* renamed from: a, reason: collision with root package name */
    public Object[] f545a;

    /* renamed from: b, reason: collision with root package name */
    public int f546b;
    public int c;
    public int d;

    public final void a() {
        Object[] objArr = this.f545a;
        int length = objArr.length;
        int i = this.f546b;
        int i2 = length - i;
        int i3 = length << 1;
        if (i3 < 0) {
            throw new RuntimeException("Max array capacity exceeded");
        }
        Object[] objArr2 = new Object[i3];
        System.arraycopy(objArr, i, objArr2, 0, i2);
        System.arraycopy(this.f545a, 0, objArr2, i2, this.f546b);
        this.f545a = objArr2;
        this.f546b = 0;
        this.c = length;
        this.d = i3 - 1;
    }

    public CircularArray() {
        this(8);
    }

    public CircularArray(int i) {
        if (i < 1) {
            throw new IllegalArgumentException("capacity must be >= 1");
        }
        if (i > 1073741824) {
            throw new IllegalArgumentException("capacity must be <= 2^30");
        }
        i = Integer.bitCount(i) != 1 ? Integer.highestOneBit(i - 1) << 1 : i;
        this.d = i - 1;
        this.f545a = new Object[i];
    }

    public void addFirst(E e) {
        int i = (this.f546b - 1) & this.d;
        this.f546b = i;
        this.f545a[i] = e;
        if (i == this.c) {
            a();
        }
    }

    public void addLast(E e) {
        Object[] objArr = this.f545a;
        int i = this.c;
        objArr[i] = e;
        int i2 = this.d & (i + 1);
        this.c = i2;
        if (i2 == this.f546b) {
            a();
        }
    }

    public E popFirst() {
        int i = this.f546b;
        if (i == this.c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        Object[] objArr = this.f545a;
        E e = (E) objArr[i];
        objArr[i] = null;
        this.f546b = (i + 1) & this.d;
        return e;
    }

    public E popLast() {
        int i = this.f546b;
        int i2 = this.c;
        if (i == i2) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i3 = this.d & (i2 - 1);
        Object[] objArr = this.f545a;
        E e = (E) objArr[i3];
        objArr[i3] = null;
        this.c = i3;
        return e;
    }

    public void clear() {
        removeFromStart(size());
    }

    public void removeFromStart(int i) {
        if (i <= 0) {
            return;
        }
        if (i > size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int length = this.f545a.length;
        int i2 = this.f546b;
        if (i < length - i2) {
            length = i2 + i;
        }
        while (i2 < length) {
            this.f545a[i2] = null;
            i2++;
        }
        int i3 = this.f546b;
        int i4 = length - i3;
        int i5 = i - i4;
        this.f546b = this.d & (i3 + i4);
        if (i5 > 0) {
            for (int i6 = 0; i6 < i5; i6++) {
                this.f545a[i6] = null;
            }
            this.f546b = i5;
        }
    }

    public void removeFromEnd(int i) {
        int i2;
        if (i <= 0) {
            return;
        }
        if (i > size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i3 = this.c;
        int i4 = i < i3 ? i3 - i : 0;
        int i5 = i4;
        while (true) {
            i2 = this.c;
            if (i5 >= i2) {
                break;
            }
            this.f545a[i5] = null;
            i5++;
        }
        int i6 = i2 - i4;
        int i7 = i - i6;
        this.c = i2 - i6;
        if (i7 > 0) {
            int length = this.f545a.length;
            this.c = length;
            int i8 = length - i7;
            for (int i9 = i8; i9 < this.c; i9++) {
                this.f545a[i9] = null;
            }
            this.c = i8;
        }
    }

    public E getFirst() {
        int i = this.f546b;
        if (i == this.c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return (E) this.f545a[i];
    }

    public E getLast() {
        int i = this.f546b;
        int i2 = this.c;
        if (i == i2) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return (E) this.f545a[(i2 - 1) & this.d];
    }

    public E get(int i) {
        if (i < 0 || i >= size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return (E) this.f545a[this.d & (this.f546b + i)];
    }

    public int size() {
        return (this.c - this.f546b) & this.d;
    }

    public boolean isEmpty() {
        return this.f546b == this.c;
    }
}
