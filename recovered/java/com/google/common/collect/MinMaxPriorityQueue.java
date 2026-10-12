package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.AbstractCollection;
import java.util.AbstractQueue;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

@Beta
@GwtCompatible
/* loaded from: classes.dex */
public final class MinMaxPriorityQueue<E> extends AbstractQueue<E> {

    /* renamed from: a, reason: collision with root package name */
    public final b f4030a;

    /* renamed from: b, reason: collision with root package name */
    public final b f4031b;
    public final int c;
    public Object[] d;
    public int e;
    public int f;

    public class b {

        /* renamed from: a, reason: collision with root package name */
        public final Ordering f4034a;

        /* renamed from: b, reason: collision with root package name */
        public b f4035b;

        public final int c(int i, int i2) {
            MinMaxPriorityQueue minMaxPriorityQueue = MinMaxPriorityQueue.this;
            if (i >= minMaxPriorityQueue.e) {
                return -1;
            }
            Preconditions.checkState(i > 0);
            int iMin = Math.min(i, minMaxPriorityQueue.e - i2) + i2;
            for (int i3 = i + 1; i3 < iMin; i3++) {
                Object[] objArr = minMaxPriorityQueue.d;
                if (this.f4034a.compare(objArr[i3], objArr[i]) < 0) {
                    i = i3;
                }
            }
            return i;
        }

        public b(Ordering ordering) {
            this.f4034a = ordering;
        }

        public final int a(int i, Object obj) {
            MinMaxPriorityQueue minMaxPriorityQueue;
            while (true) {
                minMaxPriorityQueue = MinMaxPriorityQueue.this;
                if (i <= 2) {
                    break;
                }
                int iD = d(d(i));
                Object obj2 = minMaxPriorityQueue.d[iD];
                if (this.f4034a.compare(obj2, obj) <= 0) {
                    break;
                }
                minMaxPriorityQueue.d[i] = obj2;
                i = iD;
            }
            minMaxPriorityQueue.d[i] = obj;
            return i;
        }

        public final int b(int i, Object obj) {
            int iD;
            MinMaxPriorityQueue minMaxPriorityQueue = MinMaxPriorityQueue.this;
            if (i == 0) {
                minMaxPriorityQueue.d[0] = obj;
                return 0;
            }
            int iD2 = d(i);
            Object obj2 = minMaxPriorityQueue.d[iD2];
            Ordering ordering = this.f4034a;
            if (iD2 != 0 && (iD = (d(iD2) * 2) + 2) != iD2 && (iD * 2) + 1 >= minMaxPriorityQueue.e) {
                Object obj3 = minMaxPriorityQueue.d[iD];
                if (ordering.compare(obj3, obj2) < 0) {
                    iD2 = iD;
                    obj2 = obj3;
                }
            }
            if (ordering.compare(obj2, obj) >= 0) {
                minMaxPriorityQueue.d[i] = obj;
                return i;
            }
            Object[] objArr = minMaxPriorityQueue.d;
            objArr[i] = obj2;
            objArr[iD2] = obj;
            return iD2;
        }

        public static int d(int i) {
            return (i - 1) / 2;
        }
    }

    public class d implements Iterator<E> {

        /* renamed from: a, reason: collision with root package name */
        public int f4038a = -1;

        /* renamed from: b, reason: collision with root package name */
        public int f4039b = -1;
        public int c;
        public ArrayDeque d;
        public ArrayList e;
        public Object f;

        /* renamed from: g, reason: collision with root package name */
        public boolean f4040g;

        @Override // java.util.Iterator
        public boolean hasNext() {
            ArrayDeque arrayDeque;
            MinMaxPriorityQueue minMaxPriorityQueue = MinMaxPriorityQueue.this;
            if (minMaxPriorityQueue.f == this.c) {
                b(this.f4038a + 1);
                return this.f4039b < minMaxPriorityQueue.size() || !((arrayDeque = this.d) == null || arrayDeque.isEmpty());
            }
            throw new ConcurrentModificationException();
        }

        @Override // java.util.Iterator
        public E next() {
            MinMaxPriorityQueue minMaxPriorityQueue = MinMaxPriorityQueue.this;
            if (minMaxPriorityQueue.f == this.c) {
                b(this.f4038a + 1);
                if (this.f4039b < minMaxPriorityQueue.size()) {
                    int i = this.f4039b;
                    this.f4038a = i;
                    this.f4040g = true;
                    return (E) minMaxPriorityQueue.d[i];
                }
                if (this.d != null) {
                    this.f4038a = minMaxPriorityQueue.size();
                    E e = (E) this.d.poll();
                    this.f = e;
                    if (e != null) {
                        this.f4040g = true;
                        return e;
                    }
                }
                throw new NoSuchElementException("iterator moved past last element in queue.");
            }
            throw new ConcurrentModificationException();
        }

        public d() {
            this.c = MinMaxPriorityQueue.this.f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Iterator
        public void remove() {
            g0.e(this.f4040g);
            MinMaxPriorityQueue minMaxPriorityQueue = MinMaxPriorityQueue.this;
            int i = minMaxPriorityQueue.f;
            int i2 = this.c;
            if (i == i2) {
                boolean z = false;
                this.f4040g = false;
                this.c = i2 + 1;
                if (this.f4038a < minMaxPriorityQueue.size()) {
                    c cVarC = minMaxPriorityQueue.c(this.f4038a);
                    if (cVarC != null) {
                        if (this.d == null) {
                            this.d = new ArrayDeque();
                            this.e = new ArrayList(3);
                        }
                        ArrayList arrayList = this.e;
                        Object obj = cVarC.f4036a;
                        if (!a(arrayList, obj)) {
                            this.d.add(obj);
                        }
                        ArrayDeque arrayDeque = this.d;
                        Object obj2 = cVarC.f4037b;
                        if (!a(arrayDeque, obj2)) {
                            this.e.add(obj2);
                        }
                    }
                    this.f4038a--;
                    this.f4039b--;
                    return;
                }
                Object obj3 = this.f;
                int i3 = 0;
                while (true) {
                    if (i3 >= minMaxPriorityQueue.e) {
                        break;
                    }
                    if (minMaxPriorityQueue.d[i3] == obj3) {
                        minMaxPriorityQueue.c(i3);
                        z = true;
                        break;
                    }
                    i3++;
                }
                Preconditions.checkState(z);
                this.f = null;
                return;
            }
            throw new ConcurrentModificationException();
        }

        public static boolean a(AbstractCollection abstractCollection, Object obj) {
            Iterator it = abstractCollection.iterator();
            while (it.hasNext()) {
                if (it.next() == obj) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }

        public final void b(int i) {
            if (this.f4039b < i) {
                if (this.e != null) {
                    while (true) {
                        MinMaxPriorityQueue minMaxPriorityQueue = MinMaxPriorityQueue.this;
                        if (i >= minMaxPriorityQueue.size() || !a(this.e, minMaxPriorityQueue.d[i])) {
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                this.f4039b = i;
            }
        }
    }

    public static <E extends Comparable<E>> MinMaxPriorityQueue<E> create() {
        return new Builder(Ordering.natural()).create();
    }

    public static <E extends Comparable<E>> MinMaxPriorityQueue<E> create(Iterable<? extends E> iterable) {
        return new Builder(Ordering.natural()).create(iterable);
    }

    public static <B> Builder<B> orderedBy(Comparator<B> comparator) {
        return new Builder<>(comparator);
    }

    public static Builder<Comparable> expectedSize(int i) {
        return new Builder(Ordering.natural()).expectedSize(i);
    }

    public static Builder<Comparable> maximumSize(int i) {
        return new Builder(Ordering.natural()).maximumSize(i);
    }

    @Beta
    public static final class Builder<B> {

        /* renamed from: a, reason: collision with root package name */
        public final Comparator f4032a;

        /* renamed from: b, reason: collision with root package name */
        public int f4033b = -1;
        public int c = Integer.MAX_VALUE;

        public Builder(Comparator comparator) {
            this.f4032a = (Comparator) Preconditions.checkNotNull(comparator);
        }

        @CanIgnoreReturnValue
        public Builder<B> expectedSize(int i) {
            Preconditions.checkArgument(i >= 0);
            this.f4033b = i;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<B> maximumSize(int i) {
            Preconditions.checkArgument(i > 0);
            this.c = i;
            return this;
        }

        public <T extends B> MinMaxPriorityQueue<T> create() {
            return create(Collections.EMPTY_SET);
        }

        public <T extends B> MinMaxPriorityQueue<T> create(Iterable<? extends T> iterable) {
            int iMax = this.f4033b;
            int i = this.c;
            if (iMax == -1) {
                iMax = 11;
            }
            if (iterable instanceof Collection) {
                iMax = Math.max(iMax, ((Collection) iterable).size());
            }
            MinMaxPriorityQueue<T> minMaxPriorityQueue = new MinMaxPriorityQueue<>(this, Math.min(iMax - 1, i) + 1);
            Iterator<? extends T> it = iterable.iterator();
            while (it.hasNext()) {
                minMaxPriorityQueue.offer(it.next());
            }
            return minMaxPriorityQueue;
        }
    }

    public MinMaxPriorityQueue(Builder builder, int i) {
        Ordering orderingFrom = Ordering.from(builder.f4032a);
        b bVar = new b(orderingFrom);
        this.f4030a = bVar;
        b bVar2 = new b(orderingFrom.reverse());
        this.f4031b = bVar2;
        bVar.f4035b = bVar2;
        bVar2.f4035b = bVar;
        this.c = builder.c;
        this.d = new Object[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.e;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection, java.util.Queue
    @CanIgnoreReturnValue
    public boolean add(E e) {
        offer(e);
        return true;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    public boolean addAll(Collection<? extends E> collection) {
        Iterator<? extends E> it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            offer(it.next());
            z = true;
        }
        return z;
    }

    @Override // java.util.Queue
    @CanIgnoreReturnValue
    public boolean offer(E e) {
        Preconditions.checkNotNull(e);
        this.f++;
        int i = this.e;
        int i2 = i + 1;
        this.e = i2;
        Object[] objArr = this.d;
        int length = objArr.length;
        int i3 = this.c;
        if (i2 > length) {
            int length2 = objArr.length;
            Object[] objArr2 = new Object[Math.min((length2 < 64 ? (length2 + 1) * 2 : IntMath.checkedMultiply(length2 / 2, 3)) - 1, i3) + 1];
            Object[] objArr3 = this.d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.d = objArr2;
        }
        b bVarB = b(i);
        int iB = bVarB.b(i, e);
        if (iB != i) {
            bVarB = bVarB.f4035b;
            i = iB;
        }
        bVarB.a(i, e);
        return this.e <= i3 || pollLast() != e;
    }

    @Override // java.util.Queue
    @CanIgnoreReturnValue
    public E poll() {
        if (isEmpty()) {
            return null;
        }
        E e = (E) this.d[0];
        c(0);
        return e;
    }

    @Override // java.util.Queue
    public E peek() {
        if (isEmpty()) {
            return null;
        }
        return (E) this.d[0];
    }

    public final int a() {
        int i = this.e;
        if (i == 1) {
            return 0;
        }
        if (i != 2) {
            b bVar = this.f4031b;
            Object[] objArr = MinMaxPriorityQueue.this.d;
            if (bVar.f4034a.compare(objArr[1], objArr[2]) > 0) {
                return 2;
            }
        }
        return 1;
    }

    @CanIgnoreReturnValue
    public E pollFirst() {
        return poll();
    }

    @CanIgnoreReturnValue
    public E removeFirst() {
        return remove();
    }

    public E peekFirst() {
        return peek();
    }

    @CanIgnoreReturnValue
    public E pollLast() {
        if (isEmpty()) {
            return null;
        }
        int iA = a();
        E e = (E) this.d[iA];
        c(iA);
        return e;
    }

    @CanIgnoreReturnValue
    public E removeLast() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        int iA = a();
        E e = (E) this.d[iA];
        c(iA);
        return e;
    }

    public E peekLast() {
        if (isEmpty()) {
            return null;
        }
        return (E) this.d[a()];
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.common.collect.MinMaxPriorityQueue.c c(int r11) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.MinMaxPriorityQueue.c(int):com.google.common.collect.MinMaxPriorityQueue$c");
    }

    public static class c<E> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4036a;

        /* renamed from: b, reason: collision with root package name */
        public final Object f4037b;

        public c(Object obj, Object obj2) {
            this.f4036a = obj;
            this.f4037b = obj2;
        }
    }

    public final b b(int i) {
        int i2 = ~(~(i + 1));
        Preconditions.checkState(i2 > 0, "negative index");
        return (1431655765 & i2) > (i2 & (-1431655766)) ? this.f4030a : this.f4031b;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new d();
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        for (int i = 0; i < this.e; i++) {
            this.d[i] = null;
        }
        this.e = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        int i = this.e;
        Object[] objArr = new Object[i];
        System.arraycopy(this.d, 0, objArr, 0, i);
        return objArr;
    }

    public Comparator<? super E> comparator() {
        return this.f4030a.f4034a;
    }
}
