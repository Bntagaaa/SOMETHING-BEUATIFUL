package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Objects;
import com.google.common.collect.Sets;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
public final class LinkedHashMultimap<K, V> extends g3<K, V> {
    public final transient int h;
    public final transient a i;

    public interface c<K, V> {
        c<K, V> getPredecessorInValueSet();

        c<K, V> getSuccessorInValueSet();

        void setPredecessorInValueSet(c<K, V> cVar);

        void setSuccessorInValueSet(c<K, V> cVar);
    }

    public LinkedHashMultimap(int i, int i2) {
        super(n0.createWithExpectedSize(i));
        this.h = 2;
        g0.b(i2, "expectedValuesPerKey");
        this.h = i2;
        a<K, V> aVar = new a<>(null, null, 0, null);
        this.i = aVar;
        aVar.setSuccessorInMultimap(aVar);
        aVar.setPredecessorInMultimap(aVar);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.g
    public final Collection createCollection() {
        return o0.createWithExpectedSize(this.h);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.g
    public final Set createCollection() {
        return o0.createWithExpectedSize(this.h);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsEntry(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.g, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsKey(@NullableDecl Object obj) {
        return super.containsKey(obj);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsValue(@NullableDecl Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.p, com.google.common.collect.g, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Set get(@NullableDecl Object obj) {
        return super.get((LinkedHashMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Multiset keys() {
        return super.keys();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.p, com.google.common.collect.g, com.google.common.collect.l, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean put(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.put(obj, obj2);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean putAll(Multimap multimap) {
        return super.putAll(multimap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean putAll(@NullableDecl Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.g, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Set removeAll(@NullableDecl Object obj) {
        return super.removeAll(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.p, com.google.common.collect.g, com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Collection replaceValues(@NullableDecl Object obj, Iterable iterable) {
        return replaceValues((LinkedHashMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.g, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.google.common.collect.l
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public static <K, V> LinkedHashMultimap<K, V> create() {
        return new LinkedHashMultimap<>(16, 2);
    }

    public static <K, V> LinkedHashMultimap<K, V> create(int i, int i2) {
        return new LinkedHashMultimap<>(Maps.c(i), Maps.c(i2));
    }

    public static <K, V> LinkedHashMultimap<K, V> create(Multimap<? extends K, ? extends V> multimap) {
        LinkedHashMultimap<K, V> linkedHashMultimapCreate = create(multimap.keySet().size(), 2);
        linkedHashMultimapCreate.putAll(multimap);
        return linkedHashMultimapCreate;
    }

    public static void o(a aVar, a aVar2) {
        aVar.setSuccessorInMultimap(aVar2);
        aVar2.setPredecessorInMultimap(aVar);
    }

    @VisibleForTesting
    public static final class a<K, V> extends g2<K, V> implements c<K, V> {
        public final int c;
        public a d;
        public c e;
        public c f;

        /* renamed from: g, reason: collision with root package name */
        public a f3958g;
        public a h;

        public a(Object obj, Object obj2, int i, a aVar) {
            super(obj, obj2);
            this.c = i;
            this.d = aVar;
        }

        public final boolean a(int i, Object obj) {
            return this.c == i && Objects.equal(getValue(), obj);
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public c<K, V> getPredecessorInValueSet() {
            return this.e;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public c<K, V> getSuccessorInValueSet() {
            return this.f;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public void setPredecessorInValueSet(c<K, V> cVar) {
            this.e = cVar;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public void setSuccessorInValueSet(c<K, V> cVar) {
            this.f = cVar;
        }

        public a<K, V> getPredecessorInMultimap() {
            return this.f3958g;
        }

        public a<K, V> getSuccessorInMultimap() {
            return this.h;
        }

        public void setSuccessorInMultimap(a<K, V> aVar) {
            this.h = aVar;
        }

        public void setPredecessorInMultimap(a<K, V> aVar) {
            this.f3958g = aVar;
        }
    }

    @Override // com.google.common.collect.g
    public final Collection g(Object obj) {
        return new b(obj, this.h);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.g, com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public Set<V> replaceValues(@NullableDecl K k, Iterable<? extends V> iterable) {
        return super.replaceValues((LinkedHashMultimap<K, V>) k, (Iterable) iterable);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.g, com.google.common.collect.l, com.google.common.collect.Multimap
    public Set<Map.Entry<K, V>> entries() {
        return super.entries();
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public Set<K> keySet() {
        return super.keySet();
    }

    @Override // com.google.common.collect.g, com.google.common.collect.l, com.google.common.collect.Multimap
    public Collection<V> values() {
        return super.values();
    }

    @VisibleForTesting
    public final class b extends Sets.k<V> implements c<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f3959a;

        /* renamed from: b, reason: collision with root package name */
        public a[] f3960b;
        public int c = 0;
        public int d = 0;
        public c e = this;
        public c f = this;

        public class a implements Iterator<V> {

            /* renamed from: a, reason: collision with root package name */
            public c f3962a;

            /* renamed from: b, reason: collision with root package name */
            public a f3963b;
            public int c;

            @Override // java.util.Iterator
            public boolean hasNext() {
                b bVar = b.this;
                if (bVar.d == this.c) {
                    return this.f3962a != bVar;
                }
                throw new ConcurrentModificationException();
            }

            @Override // java.util.Iterator
            public void remove() {
                b bVar = b.this;
                if (bVar.d != this.c) {
                    throw new ConcurrentModificationException();
                }
                g0.e(this.f3963b != null);
                bVar.remove(this.f3963b.getValue());
                this.c = bVar.d;
                this.f3963b = null;
            }

            public a() {
                this.f3962a = b.this.e;
                this.c = b.this.d;
            }

            @Override // java.util.Iterator
            public V next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                a aVar = (a) this.f3962a;
                V value = aVar.getValue();
                this.f3963b = aVar;
                this.f3962a = aVar.getSuccessorInValueSet();
                return value;
            }
        }

        public b(Object obj, int i) {
            this.f3959a = obj;
            this.f3960b = new a[e2.a(i, 1.0d)];
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public c<K, V> getPredecessorInValueSet() {
            return this.f;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public c<K, V> getSuccessorInValueSet() {
            return this.e;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public void setPredecessorInValueSet(c<K, V> cVar) {
            this.f = cVar;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public void setSuccessorInValueSet(c<K, V> cVar) {
            this.e = cVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<V> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            int iC = e2.c(obj);
            a[] aVarArr = this.f3960b;
            for (a aVar = aVarArr[(aVarArr.length - 1) & iC]; aVar != null; aVar = aVar.d) {
                if (aVar.a(iC, obj)) {
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v0, types: [com.google.common.collect.LinkedHashMultimap$b, com.google.common.collect.LinkedHashMultimap$c] */
        /* JADX WARN: Type inference failed for: r1v5, types: [com.google.common.collect.LinkedHashMultimap$c] */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(@NullableDecl V v) {
            int iC = e2.c(v);
            a[] aVarArr = this.f3960b;
            int length = (aVarArr.length - 1) & iC;
            a aVar = aVarArr[length];
            for (a aVar2 = aVar; aVar2 != null; aVar2 = aVar2.d) {
                if (aVar2.a(iC, v)) {
                    return false;
                }
            }
            a<K, V> aVar3 = new a<>(this.f3959a, v, iC, aVar);
            c<K, V> cVar = this.f;
            cVar.setSuccessorInValueSet(aVar3);
            aVar3.setPredecessorInValueSet(cVar);
            aVar3.setSuccessorInValueSet(this);
            setPredecessorInValueSet(aVar3);
            LinkedHashMultimap linkedHashMultimap = LinkedHashMultimap.this;
            LinkedHashMultimap.o(linkedHashMultimap.i.getPredecessorInMultimap(), aVar3);
            a<K, V> aVar4 = linkedHashMultimap.i;
            aVar3.setSuccessorInMultimap(aVar4);
            aVar4.setPredecessorInMultimap(aVar3);
            a[] aVarArr2 = this.f3960b;
            aVarArr2[length] = aVar3;
            int i = this.c + 1;
            this.c = i;
            this.d++;
            int length2 = aVarArr2.length;
            if (i > 1.0d * length2 && length2 < 1073741824) {
                int length3 = aVarArr2.length * 2;
                a[] aVarArr3 = new a[length3];
                this.f3960b = aVarArr3;
                int i2 = length3 - 1;
                for (a successorInValueSet = this.e; successorInValueSet != this; successorInValueSet = successorInValueSet.getSuccessorInValueSet()) {
                    a aVar5 = successorInValueSet;
                    int i3 = aVar5.c & i2;
                    aVar5.d = aVarArr3[i3];
                    aVarArr3[i3] = aVar5;
                }
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        public boolean remove(@NullableDecl Object obj) {
            int iC = e2.c(obj);
            a[] aVarArr = this.f3960b;
            int length = (aVarArr.length - 1) & iC;
            a aVar = null;
            for (a aVar2 = aVarArr[length]; aVar2 != null; aVar2 = aVar2.d) {
                if (aVar2.a(iC, obj)) {
                    if (aVar == null) {
                        this.f3960b[length] = aVar2.d;
                    } else {
                        aVar.d = aVar2.d;
                    }
                    c<K, V> predecessorInValueSet = aVar2.getPredecessorInValueSet();
                    c<K, V> successorInValueSet = aVar2.getSuccessorInValueSet();
                    predecessorInValueSet.setSuccessorInValueSet(successorInValueSet);
                    successorInValueSet.setPredecessorInValueSet(predecessorInValueSet);
                    LinkedHashMultimap.o(aVar2.getPredecessorInMultimap(), aVar2.getSuccessorInMultimap());
                    this.c--;
                    this.d++;
                    return true;
                }
                aVar = aVar2;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Arrays.fill(this.f3960b, (Object) null);
            this.c = 0;
            for (c successorInValueSet = this.e; successorInValueSet != this; successorInValueSet = successorInValueSet.getSuccessorInValueSet()) {
                a aVar = (a) successorInValueSet;
                LinkedHashMultimap.o(aVar.getPredecessorInMultimap(), aVar.getSuccessorInMultimap());
            }
            setSuccessorInValueSet(this);
            setPredecessorInValueSet(this);
            this.d++;
        }
    }

    @Override // com.google.common.collect.g, com.google.common.collect.l
    public final Iterator f() {
        return new f3(this);
    }

    @Override // com.google.common.collect.g
    public final Iterator l() {
        return new s3(new f3(this));
    }

    @Override // com.google.common.collect.g, com.google.common.collect.Multimap
    public void clear() {
        super.clear();
        a aVar = this.i;
        o(aVar, aVar);
    }
}
