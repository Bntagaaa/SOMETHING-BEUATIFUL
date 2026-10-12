package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class TreeMultiset<E> extends s<E> implements Serializable {
    public static final /* synthetic */ int h = 0;
    public final transient d e;
    public final transient b2 f;

    /* renamed from: g, reason: collision with root package name */
    public final transient c f4120g;

    @Override // com.google.common.collect.s, com.google.common.collect.SortedMultiset, com.google.common.collect.o5
    public /* bridge */ /* synthetic */ Comparator comparator() {
        return super.comparator();
    }

    @Override // com.google.common.collect.m, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean contains(@NullableDecl Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.s, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset descendingMultiset() {
        return super.descendingMultiset();
    }

    @Override // com.google.common.collect.s, com.google.common.collect.m, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ NavigableSet elementSet() {
        return super.elementSet();
    }

    @Override // com.google.common.collect.m, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.s, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ Multiset.Entry firstEntry() {
        return super.firstEntry();
    }

    @Override // com.google.common.collect.m, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.s, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ Multiset.Entry lastEntry() {
        return super.lastEntry();
    }

    @Override // com.google.common.collect.s, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ Multiset.Entry pollFirstEntry() {
        return super.pollFirstEntry();
    }

    @Override // com.google.common.collect.s, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ Multiset.Entry pollLastEntry() {
        return super.pollLastEntry();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.s, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset subMultiset(@NullableDecl Object obj, BoundType boundType, @NullableDecl Object obj2, BoundType boundType2) {
        return super.subMultiset(obj, boundType, obj2, boundType2);
    }

    public static <E extends Comparable> TreeMultiset<E> create() {
        return new TreeMultiset<>(Ordering.natural());
    }

    public static <E> TreeMultiset<E> create(@NullableDecl Comparator<? super E> comparator) {
        return comparator == null ? new TreeMultiset<>(Ordering.natural()) : new TreeMultiset<>(comparator);
    }

    public static <E extends Comparable> TreeMultiset<E> create(Iterable<? extends E> iterable) {
        TreeMultiset<E> treeMultisetCreate = create();
        Iterables.addAll(treeMultisetCreate, iterable);
        return treeMultisetCreate;
    }

    public TreeMultiset(d dVar, b2 b2Var, c cVar) {
        super(b2Var.f4176a);
        this.e = dVar;
        this.f = b2Var;
        this.f4120g = cVar;
    }

    public TreeMultiset(Comparator comparator) {
        super(comparator);
        BoundType boundType = BoundType.OPEN;
        this.f = new b2(comparator, false, null, boundType, false, null, boundType);
        c cVar = new c(null, 1);
        this.f4120g = cVar;
        cVar.i = cVar;
        cVar.h = cVar;
        this.e = new d(0);
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static abstract class b {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4122a = new a();

        /* renamed from: b, reason: collision with root package name */
        public static final C0111b f4123b = new C0111b();

        public abstract int a(c cVar);

        public abstract long b(c cVar);

        public enum a extends b {
            public a() {
                super("SIZE", 0);
            }

            @Override // com.google.common.collect.TreeMultiset.b
            public final int a(c cVar) {
                return cVar.f4125b;
            }

            @Override // com.google.common.collect.TreeMultiset.b
            public final long b(c cVar) {
                if (cVar == null) {
                    return 0L;
                }
                return cVar.d;
            }
        }

        /* renamed from: com.google.common.collect.TreeMultiset$b$b, reason: collision with other inner class name */
        public enum C0111b extends b {
            @Override // com.google.common.collect.TreeMultiset.b
            public final int a(c cVar) {
                return 1;
            }

            public C0111b() {
                super("DISTINCT", 1);
            }

            @Override // com.google.common.collect.TreeMultiset.b
            public final long b(c cVar) {
                if (cVar == null) {
                    return 0L;
                }
                return cVar.c;
            }
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        b2 b2Var = this.f;
        if (b2Var.f4177b || b2Var.e) {
            Iterators.b(new h6(this));
            return;
        }
        c cVar = this.f4120g;
        c cVar2 = cVar.i;
        while (cVar2 != cVar) {
            c cVar3 = cVar2.i;
            cVar2.f4125b = 0;
            cVar2.f = null;
            cVar2.f4126g = null;
            cVar2.h = null;
            cVar2.i = null;
            cVar2 = cVar3;
        }
        cVar.i = cVar;
        cVar.h = cVar;
        this.e.f4127a = null;
    }

    public final long h(b bVar) {
        c cVar = (c) this.e.get();
        long jB = bVar.b(cVar);
        b2 b2Var = this.f;
        if (b2Var.f4177b) {
            jB -= g(bVar, cVar);
        }
        return b2Var.e ? jB - f(bVar, cVar) : jB;
    }

    public final long g(b bVar, c cVar) {
        if (cVar == null) {
            return 0L;
        }
        Comparator comparator = comparator();
        b2 b2Var = this.f;
        int iCompare = comparator.compare(b2Var.c, cVar.f4124a);
        if (iCompare < 0) {
            return g(bVar, cVar.f);
        }
        if (iCompare != 0) {
            return g(bVar, cVar.f4126g) + bVar.b(cVar.f) + bVar.a(cVar);
        }
        int i = a.f4121a[b2Var.d.ordinal()];
        if (i == 1) {
            return bVar.a(cVar) + bVar.b(cVar.f);
        }
        if (i == 2) {
            return bVar.b(cVar.f);
        }
        throw new AssertionError();
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4121a;

        static {
            int[] iArr = new int[BoundType.values().length];
            f4121a = iArr;
            try {
                iArr[BoundType.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4121a[BoundType.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public final long f(b bVar, c cVar) {
        if (cVar == null) {
            return 0L;
        }
        Comparator comparator = comparator();
        b2 b2Var = this.f;
        int iCompare = comparator.compare(b2Var.f, cVar.f4124a);
        if (iCompare > 0) {
            return f(bVar, cVar.f4126g);
        }
        if (iCompare != 0) {
            return f(bVar, cVar.f) + bVar.b(cVar.f4126g) + bVar.a(cVar);
        }
        int i = a.f4121a[b2Var.f4178g.ordinal()];
        if (i == 1) {
            return bVar.a(cVar) + bVar.b(cVar.f4126g);
        }
        if (i == 2) {
            return bVar.b(cVar.f4126g);
        }
        throw new AssertionError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public int size() {
        return Ints.saturatedCast(h(b.f4122a));
    }

    @Override // com.google.common.collect.m
    public final int b() {
        return Ints.saturatedCast(h(b.f4123b));
    }

    @Override // com.google.common.collect.Multiset
    public int count(@NullableDecl Object obj) {
        try {
            c cVar = (c) this.e.get();
            if (this.f.a(obj) && cVar != null) {
                return cVar.count(comparator(), obj);
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    @Override // com.google.common.collect.m, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int add(@NullableDecl E e, int i) {
        g0.b(i, "occurrences");
        if (i == 0) {
            return count(e);
        }
        Preconditions.checkArgument(this.f.a(e));
        d dVar = this.e;
        c cVar = (c) dVar.get();
        if (cVar != null) {
            int[] iArr = new int[1];
            dVar.checkAndSet(cVar, cVar.a(comparator(), e, i, iArr));
            return iArr[0];
        }
        comparator().compare(e, e);
        c cVar2 = new c(e, i);
        c cVar3 = this.f4120g;
        cVar3.i = cVar2;
        cVar2.h = cVar3;
        cVar2.i = cVar3;
        cVar3.h = cVar2;
        dVar.checkAndSet(cVar, cVar2);
        return 0;
    }

    @Override // com.google.common.collect.m, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int remove(@NullableDecl Object obj, int i) {
        g0.b(i, "occurrences");
        if (i == 0) {
            return count(obj);
        }
        d dVar = this.e;
        c cVar = (c) dVar.get();
        int[] iArr = new int[1];
        try {
            if (this.f.a(obj) && cVar != null) {
                dVar.checkAndSet(cVar, cVar.k(comparator(), obj, i, iArr));
                return iArr[0];
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    @Override // com.google.common.collect.m, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int setCount(@NullableDecl E e, int i) {
        g0.b(i, "count");
        if (!this.f.a(e)) {
            Preconditions.checkArgument(i == 0);
            return 0;
        }
        d dVar = this.e;
        c cVar = (c) dVar.get();
        if (cVar == null) {
            if (i > 0) {
                add(e, i);
            }
            return 0;
        }
        int[] iArr = new int[1];
        dVar.checkAndSet(cVar, cVar.q(comparator(), e, i, iArr));
        return iArr[0];
    }

    @Override // com.google.common.collect.m, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public boolean setCount(@NullableDecl E e, int i, int i2) {
        g0.b(i2, "newCount");
        g0.b(i, "oldCount");
        Preconditions.checkArgument(this.f.a(e));
        d dVar = this.e;
        c cVar = (c) dVar.get();
        if (cVar != null) {
            int[] iArr = new int[1];
            dVar.checkAndSet(cVar, cVar.p(comparator(), e, i, i2, iArr));
            return iArr[0] == i;
        }
        if (i == 0) {
            if (i2 > 0) {
                add(e, i2);
                return true;
            }
        }
    }

    @Override // com.google.common.collect.m
    public final Iterator c() {
        return new l4(new h6(this));
    }

    @Override // com.google.common.collect.m
    public final Iterator d() {
        return new h6(this);
    }

    @Override // com.google.common.collect.s
    public final Iterator e() {
        return new i6(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
    public Iterator<E> iterator() {
        return Multisets.c(this);
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> headMultiset(@NullableDecl E e, BoundType boundType) {
        return new TreeMultiset(this.e, this.f.b(new b2(comparator(), false, null, BoundType.OPEN, true, e, boundType)), this.f4120g);
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> tailMultiset(@NullableDecl E e, BoundType boundType) {
        return new TreeMultiset(this.e, this.f.b(new b2(comparator(), true, e, boundType, false, null, BoundType.OPEN)), this.f4120g);
    }

    public static final class d<T> {

        /* renamed from: a, reason: collision with root package name */
        public Object f4127a;

        private d() {
        }

        public /* synthetic */ d(int i) {
            this();
        }

        @NullableDecl
        public T get() {
            return (T) this.f4127a;
        }

        public void checkAndSet(@NullableDecl T t, T t2) {
            if (this.f4127a != t) {
                throw new ConcurrentModificationException();
            }
            this.f4127a = t2;
        }
    }

    public static final class c<E> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4124a;

        /* renamed from: b, reason: collision with root package name */
        public int f4125b;
        public int c;
        public long d;
        public int e;
        public c f;

        /* renamed from: g, reason: collision with root package name */
        public c f4126g;
        public c h;
        public c i;

        public c(Object obj, int i) {
            Preconditions.checkArgument(i > 0);
            this.f4124a = obj;
            this.f4125b = i;
            this.d = i;
            this.c = 1;
            this.e = 1;
            this.f = null;
            this.f4126g = null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int count(Comparator<? super E> comparator, E e) {
            int iCompare = comparator.compare(e, (Object) this.f4124a);
            if (iCompare < 0) {
                c cVar = this.f;
                if (cVar == null) {
                    return 0;
                }
                return cVar.count(comparator, e);
            }
            if (iCompare > 0) {
                c cVar2 = this.f4126g;
                if (cVar2 == null) {
                    return 0;
                }
                return cVar2.count(comparator, e);
            }
            return this.f4125b;
        }

        public final void c(int i, Object obj) {
            c cVar = new c(obj, i);
            this.f4126g = cVar;
            c cVar2 = this.i;
            int i2 = TreeMultiset.h;
            this.i = cVar;
            cVar.h = this;
            cVar.i = cVar2;
            cVar2.h = cVar;
            this.e = Math.max(2, this.e);
            this.c++;
            this.d += i;
        }

        public final void b(int i, Object obj) {
            c cVar = new c(obj, i);
            this.f = cVar;
            c cVar2 = this.h;
            int i2 = TreeMultiset.h;
            cVar2.i = cVar;
            cVar.h = cVar2;
            cVar.i = this;
            this.h = cVar;
            this.e = Math.max(2, this.e);
            this.c++;
            this.d += i;
        }

        public final c a(Comparator comparator, Object obj, int i, int[] iArr) {
            int iCompare = comparator.compare(obj, this.f4124a);
            if (iCompare < 0) {
                c cVar = this.f;
                if (cVar == null) {
                    iArr[0] = 0;
                    b(i, obj);
                    return this;
                }
                int i2 = cVar.e;
                c cVarA = cVar.a(comparator, obj, i, iArr);
                this.f = cVarA;
                if (iArr[0] == 0) {
                    this.c++;
                }
                this.d += i;
                if (cVarA.e != i2) {
                    return h();
                }
            } else if (iCompare > 0) {
                c cVar2 = this.f4126g;
                if (cVar2 == null) {
                    iArr[0] = 0;
                    c(i, obj);
                    return this;
                }
                int i3 = cVar2.e;
                c cVarA2 = cVar2.a(comparator, obj, i, iArr);
                this.f4126g = cVarA2;
                if (iArr[0] == 0) {
                    this.c++;
                }
                this.d += i;
                if (cVarA2.e != i3) {
                    return h();
                }
            } else {
                int i4 = this.f4125b;
                iArr[0] = i4;
                long j = i;
                Preconditions.checkArgument(((long) i4) + j <= 2147483647L);
                this.f4125b += i;
                this.d += j;
                return this;
            }
            return this;
        }

        public final c k(Comparator comparator, Object obj, int i, int[] iArr) {
            int iCompare = comparator.compare(obj, this.f4124a);
            if (iCompare < 0) {
                c cVar = this.f;
                if (cVar == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.f = cVar.k(comparator, obj, i, iArr);
                int i2 = iArr[0];
                if (i2 > 0) {
                    if (i >= i2) {
                        this.c--;
                        this.d -= i2;
                    } else {
                        this.d -= i;
                    }
                }
                return i2 == 0 ? this : h();
            }
            if (iCompare > 0) {
                c cVar2 = this.f4126g;
                if (cVar2 == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.f4126g = cVar2.k(comparator, obj, i, iArr);
                int i3 = iArr[0];
                if (i3 > 0) {
                    if (i >= i3) {
                        this.c--;
                        this.d -= i3;
                    } else {
                        this.d -= i;
                    }
                }
                return h();
            }
            int i4 = this.f4125b;
            iArr[0] = i4;
            if (i >= i4) {
                return f();
            }
            this.f4125b = i4 - i;
            this.d -= i;
            return this;
        }

        public final c q(Comparator comparator, Object obj, int i, int[] iArr) {
            int iCompare = comparator.compare(obj, this.f4124a);
            if (iCompare < 0) {
                c cVar = this.f;
                if (cVar == null) {
                    iArr[0] = 0;
                    if (i > 0) {
                        b(i, obj);
                        return this;
                    }
                } else {
                    this.f = cVar.q(comparator, obj, i, iArr);
                    if (i == 0 && iArr[0] != 0) {
                        this.c--;
                    } else if (i > 0 && iArr[0] == 0) {
                        this.c++;
                    }
                    this.d += i - iArr[0];
                    return h();
                }
            } else if (iCompare > 0) {
                c cVar2 = this.f4126g;
                if (cVar2 == null) {
                    iArr[0] = 0;
                    if (i > 0) {
                        c(i, obj);
                    }
                } else {
                    this.f4126g = cVar2.q(comparator, obj, i, iArr);
                    if (i == 0 && iArr[0] != 0) {
                        this.c--;
                    } else if (i > 0 && iArr[0] == 0) {
                        this.c++;
                    }
                    this.d += i - iArr[0];
                    return h();
                }
            } else {
                iArr[0] = this.f4125b;
                if (i == 0) {
                    return f();
                }
                this.d += i - r3;
                this.f4125b = i;
                return this;
            }
            return this;
        }

        public final c p(Comparator comparator, Object obj, int i, int i2, int[] iArr) {
            int iCompare = comparator.compare(obj, this.f4124a);
            if (iCompare < 0) {
                c cVar = this.f;
                if (cVar == null) {
                    iArr[0] = 0;
                    if (i == 0 && i2 > 0) {
                        b(i2, obj);
                        return this;
                    }
                } else {
                    this.f = cVar.p(comparator, obj, i, i2, iArr);
                    int i3 = iArr[0];
                    if (i3 == i) {
                        if (i2 == 0 && i3 != 0) {
                            this.c--;
                        } else if (i2 > 0 && i3 == 0) {
                            this.c++;
                        }
                        this.d += i2 - i3;
                    }
                    return h();
                }
            } else if (iCompare > 0) {
                c cVar2 = this.f4126g;
                if (cVar2 == null) {
                    iArr[0] = 0;
                    if (i == 0 && i2 > 0) {
                        c(i2, obj);
                        return this;
                    }
                } else {
                    this.f4126g = cVar2.p(comparator, obj, i, i2, iArr);
                    int i4 = iArr[0];
                    if (i4 == i) {
                        if (i2 == 0 && i4 != 0) {
                            this.c--;
                        } else if (i2 > 0 && i4 == 0) {
                            this.c++;
                        }
                        this.d += i2 - i4;
                    }
                    return h();
                }
            } else {
                int i5 = this.f4125b;
                iArr[0] = i5;
                if (i == i5) {
                    if (i2 == 0) {
                        return f();
                    }
                    this.d += i2 - i5;
                    this.f4125b = i2;
                }
            }
            return this;
        }

        public final c f() {
            int i = this.f4125b;
            this.f4125b = 0;
            c cVar = this.h;
            c cVar2 = this.i;
            int i2 = TreeMultiset.h;
            cVar.i = cVar2;
            cVar2.h = cVar;
            c cVar3 = this.f;
            if (cVar3 == null) {
                return this.f4126g;
            }
            c cVar4 = this.f4126g;
            if (cVar4 == null) {
                return cVar3;
            }
            if (cVar3.e >= cVar4.e) {
                c cVar5 = this.h;
                cVar5.f = cVar3.l(cVar5);
                cVar5.f4126g = this.f4126g;
                cVar5.c = this.c - 1;
                cVar5.d = this.d - i;
                return cVar5.h();
            }
            c cVar6 = this.i;
            cVar6.f4126g = cVar4.m(cVar6);
            cVar6.f = this.f;
            cVar6.c = this.c - 1;
            cVar6.d = this.d - i;
            return cVar6.h();
        }

        public final c m(c cVar) {
            c cVar2 = this.f;
            if (cVar2 == null) {
                return this.f4126g;
            }
            this.f = cVar2.m(cVar);
            this.c--;
            this.d -= cVar.f4125b;
            return h();
        }

        public final c l(c cVar) {
            c cVar2 = this.f4126g;
            if (cVar2 == null) {
                return this.f;
            }
            this.f4126g = cVar2.l(cVar);
            this.c--;
            this.d -= cVar.f4125b;
            return h();
        }

        public final void i() {
            c cVar = this.f;
            int i = TreeMultiset.h;
            int i2 = (cVar == null ? 0 : cVar.c) + 1;
            c cVar2 = this.f4126g;
            this.c = i2 + (cVar2 != null ? cVar2.c : 0);
            this.d = this.f4125b + (cVar == null ? 0L : cVar.d) + (cVar2 != null ? cVar2.d : 0L);
            j();
        }

        public final void j() {
            c cVar = this.f;
            int i = cVar == null ? 0 : cVar.e;
            c cVar2 = this.f4126g;
            this.e = Math.max(i, cVar2 != null ? cVar2.e : 0) + 1;
        }

        public final c h() {
            int iD = d();
            if (iD == -2) {
                if (this.f4126g.d() > 0) {
                    this.f4126g = this.f4126g.o();
                }
                return n();
            }
            if (iD == 2) {
                if (this.f.d() < 0) {
                    this.f = this.f.n();
                }
                return o();
            }
            j();
            return this;
        }

        public final int d() {
            c cVar = this.f;
            int i = cVar == null ? 0 : cVar.e;
            c cVar2 = this.f4126g;
            return i - (cVar2 != null ? cVar2.e : 0);
        }

        public final c n() {
            Preconditions.checkState(this.f4126g != null);
            c cVar = this.f4126g;
            this.f4126g = cVar.f;
            cVar.f = this;
            cVar.d = this.d;
            cVar.c = this.c;
            i();
            cVar.j();
            return cVar;
        }

        public final c o() {
            Preconditions.checkState(this.f != null);
            c cVar = this.f;
            this.f = cVar.f4126g;
            cVar.f4126g = this;
            cVar.d = this.d;
            cVar.c = this.c;
            i();
            cVar.j();
            return cVar;
        }

        public final c e(Comparator comparator, Object obj) {
            int iCompare = comparator.compare(obj, this.f4124a);
            if (iCompare < 0) {
                c cVar = this.f;
                if (cVar != null) {
                    return (c) MoreObjects.firstNonNull(cVar.e(comparator, obj), this);
                }
            } else if (iCompare != 0) {
                c cVar2 = this.f4126g;
                if (cVar2 == null) {
                    return null;
                }
                return cVar2.e(comparator, obj);
            }
            return this;
        }

        public final c g(Comparator comparator, Object obj) {
            int iCompare = comparator.compare(obj, this.f4124a);
            if (iCompare > 0) {
                c cVar = this.f4126g;
                if (cVar != null) {
                    return (c) MoreObjects.firstNonNull(cVar.g(comparator, obj), this);
                }
            } else if (iCompare != 0) {
                c cVar2 = this.f;
                if (cVar2 == null) {
                    return null;
                }
                return cVar2.g(comparator, obj);
            }
            return this;
        }

        public String toString() {
            return Multisets.immutableEntry(this.f4124a, this.f4125b).toString();
        }
    }
}
