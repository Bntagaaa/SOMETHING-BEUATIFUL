package com.google.common.graph;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterators;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.graph.ElementOrder;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
final class n<N, V> implements v<N, V> {
    public static final Object e = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Map f4522a;

    /* renamed from: b, reason: collision with root package name */
    public final AbstractCollection f4523b;
    public int c;
    public int d;

    public class a extends AbstractSet<N> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            return n.this.f4522a.containsKey(obj);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.AbstractCollection, java.util.List] */
        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<N> iterator() {
            return new C0133a(n.this.f4523b.iterator(), new HashSet());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return n.this.f4522a.size();
        }

        public a() {
        }

        /* renamed from: com.google.common.graph.n$a$a, reason: collision with other inner class name */
        public class C0133a extends AbstractIterator<N> {
            public final /* synthetic */ Iterator c;
            public final /* synthetic */ HashSet d;

            public C0133a(Iterator it, HashSet hashSet) {
                this.c = it;
                this.d = hashSet;
            }

            @Override // com.google.common.collect.AbstractIterator
            public N computeNext() {
                i iVar;
                do {
                    Iterator it = this.c;
                    if (it.hasNext()) {
                        iVar = (i) it.next();
                    } else {
                        return endOfData();
                    }
                } while (!this.d.add(iVar.f4531a));
                return (N) iVar.f4531a;
            }
        }
    }

    public class b extends AbstractSet<N> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            Object obj2 = n.this.f4522a.get(obj);
            return obj2 == n.e || (obj2 instanceof j);
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.AbstractCollection, java.util.List] */
        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<N> iterator() {
            n nVar = n.this;
            ?? r1 = nVar.f4523b;
            if (r1 == 0) {
                return new a(nVar.f4522a.entrySet().iterator());
            }
            return new C0134b(r1.iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return n.this.c;
        }

        public b() {
        }

        public class a extends AbstractIterator<N> {
            public final /* synthetic */ Iterator c;

            public a(Iterator it) {
                this.c = it;
            }

            @Override // com.google.common.collect.AbstractIterator
            public N computeNext() {
                Map.Entry entry;
                Object value;
                do {
                    Iterator it = this.c;
                    if (it.hasNext()) {
                        entry = (Map.Entry) it.next();
                        value = entry.getValue();
                        if (value == n.e) {
                            break;
                        }
                    } else {
                        return endOfData();
                    }
                } while (!(value instanceof j));
                return (N) entry.getKey();
            }
        }

        /* renamed from: com.google.common.graph.n$b$b, reason: collision with other inner class name */
        public class C0134b extends AbstractIterator<N> {
            public final /* synthetic */ Iterator c;

            public C0134b(Iterator it) {
                this.c = it;
            }

            @Override // com.google.common.collect.AbstractIterator
            public N computeNext() {
                i iVar;
                do {
                    Iterator it = this.c;
                    if (it.hasNext()) {
                        iVar = (i) it.next();
                    } else {
                        return endOfData();
                    }
                } while (!(iVar instanceof i.a));
                return (N) iVar.f4531a;
            }
        }
    }

    public class c extends AbstractSet<N> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            Object obj2 = n.this.f4522a.get(obj);
            return (obj2 == n.e || obj2 == null) ? false : true;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.AbstractCollection, java.util.List] */
        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<N> iterator() {
            n nVar = n.this;
            ?? r1 = nVar.f4523b;
            if (r1 == 0) {
                return new a(nVar.f4522a.entrySet().iterator());
            }
            return new b(r1.iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return n.this.d;
        }

        public c() {
        }

        public class a extends AbstractIterator<N> {
            public final /* synthetic */ Iterator c;

            public a(Iterator it) {
                this.c = it;
            }

            @Override // com.google.common.collect.AbstractIterator
            public N computeNext() {
                while (true) {
                    Iterator it = this.c;
                    if (it.hasNext()) {
                        Map.Entry entry = (Map.Entry) it.next();
                        Object value = entry.getValue();
                        if (value != n.e && value != null) {
                            return (N) entry.getKey();
                        }
                    } else {
                        return endOfData();
                    }
                }
            }
        }

        public class b extends AbstractIterator<N> {
            public final /* synthetic */ Iterator c;

            public b(Iterator it) {
                this.c = it;
            }

            @Override // com.google.common.collect.AbstractIterator
            public N computeNext() {
                i iVar;
                do {
                    Iterator it = this.c;
                    if (it.hasNext()) {
                        iVar = (i) it.next();
                    } else {
                        return endOfData();
                    }
                } while (!(iVar instanceof i.b));
                return (N) iVar.f4531a;
            }
        }
    }

    public static final class j {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4532a;

        public j(Object obj) {
            this.f4532a = obj;
        }
    }

    public static abstract class i<N> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4531a;

        public i(Object obj) {
            this.f4531a = Preconditions.checkNotNull(obj);
        }

        public static final class a<N> extends i<N> {
            public boolean equals(Object obj) {
                if (!(obj instanceof a)) {
                    return false;
                }
                return this.f4531a.equals(((a) obj).f4531a);
            }

            public int hashCode() {
                return this.f4531a.hashCode() + a.class.hashCode();
            }
        }

        public static final class b<N> extends i<N> {
            public boolean equals(Object obj) {
                if (!(obj instanceof b)) {
                    return false;
                }
                return this.f4531a.equals(((b) obj).f4531a);
            }

            public int hashCode() {
                return this.f4531a.hashCode() + b.class.hashCode();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public n(HashMap map, List list, int i2, int i3) {
        this.f4522a = (Map) Preconditions.checkNotNull(map);
        this.f4523b = (AbstractCollection) list;
        Graphs.a(i2);
        this.c = i2;
        Graphs.a(i3);
        this.d = i3;
        Preconditions.checkState(i2 <= map.size() && i3 <= map.size());
    }

    public static /* synthetic */ class h {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4530a;

        static {
            int[] iArr = new int[ElementOrder.Type.values().length];
            f4530a = iArr;
            try {
                iArr[ElementOrder.Type.UNORDERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4530a[ElementOrder.Type.STABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static n a(Object obj, Set set, Function function) {
        HashMap map = new HashMap();
        ImmutableList.Builder builder = ImmutableList.builder();
        Iterator it = set.iterator();
        int i2 = 0;
        int i3 = 0;
        while (it.hasNext()) {
            EndpointPair endpointPair = (EndpointPair) it.next();
            if (endpointPair.nodeU().equals(obj) && endpointPair.nodeV().equals(obj)) {
                map.put(obj, new j(function.apply(obj)));
                builder.add((ImmutableList.Builder) new i.a(obj));
                builder.add((ImmutableList.Builder) new i.b(obj));
                i2++;
            } else {
                boolean zEquals = endpointPair.nodeV().equals(obj);
                Object obj2 = e;
                if (zEquals) {
                    Object objNodeU = endpointPair.nodeU();
                    Object objPut = map.put(objNodeU, obj2);
                    if (objPut != null) {
                        map.put(objNodeU, new j(objPut));
                    }
                    builder.add((ImmutableList.Builder) new i.a(objNodeU));
                    i2++;
                } else {
                    Preconditions.checkArgument(endpointPair.nodeU().equals(obj));
                    Object objNodeV = endpointPair.nodeV();
                    Object objApply = function.apply(objNodeV);
                    Object objPut2 = map.put(objNodeV, objApply);
                    if (objPut2 != null) {
                        Preconditions.checkArgument(objPut2 == obj2);
                        map.put(objNodeV, new j(objApply));
                    }
                    builder.add((ImmutableList.Builder) new i.b(objNodeV));
                }
            }
            i3++;
        }
        return new n(map, builder.build(), i2, i3);
    }

    @Override // com.google.common.graph.v
    public Set<N> adjacentNodes() {
        if (this.f4523b == null) {
            return Collections.unmodifiableSet(this.f4522a.keySet());
        }
        return new a();
    }

    @Override // com.google.common.graph.v
    public Set<N> predecessors() {
        return new b();
    }

    @Override // com.google.common.graph.v
    public Set<N> successors() {
        return new c();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.AbstractCollection, java.util.List] */
    @Override // com.google.common.graph.v
    public Iterator<EndpointPair<N>> incidentEdgeIterator(N n) {
        Iterator itTransform;
        ?? r0 = this.f4523b;
        if (r0 == 0) {
            itTransform = Iterators.concat(Iterators.transform(predecessors().iterator(), new d(n)), Iterators.transform(successors().iterator(), new e(n)));
        } else {
            itTransform = Iterators.transform(r0.iterator(), new f(n));
        }
        return new g(itTransform, new AtomicBoolean(false));
    }

    public class d implements Function<N, EndpointPair<N>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Object f4527a;

        public d(Object obj) {
            this.f4527a = obj;
        }

        @Override // com.google.common.base.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return apply((d) obj);
        }

        @Override // com.google.common.base.Function
        public EndpointPair<N> apply(N n) {
            return EndpointPair.ordered(n, this.f4527a);
        }
    }

    public class e implements Function<N, EndpointPair<N>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Object f4528a;

        public e(Object obj) {
            this.f4528a = obj;
        }

        @Override // com.google.common.base.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return apply((e) obj);
        }

        @Override // com.google.common.base.Function
        public EndpointPair<N> apply(N n) {
            return EndpointPair.ordered(this.f4528a, n);
        }
    }

    public class f implements Function<i<N>, EndpointPair<N>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Object f4529a;

        public f(Object obj) {
            this.f4529a = obj;
        }

        @Override // com.google.common.base.Function
        public EndpointPair<N> apply(i<N> iVar) {
            boolean z = iVar instanceof i.b;
            Object obj = this.f4529a;
            if (z) {
                return EndpointPair.ordered(obj, iVar.f4531a);
            }
            return EndpointPair.ordered(iVar.f4531a, obj);
        }
    }

    public class g extends AbstractIterator<EndpointPair<N>> {
        public final /* synthetic */ Iterator c;
        public final /* synthetic */ AtomicBoolean d;

        public g(Iterator it, AtomicBoolean atomicBoolean) {
            this.c = it;
            this.d = atomicBoolean;
        }

        @Override // com.google.common.collect.AbstractIterator
        public EndpointPair<N> computeNext() {
            EndpointPair<N> endpointPair;
            do {
                Iterator it = this.c;
                if (it.hasNext()) {
                    endpointPair = (EndpointPair) it.next();
                    if (!endpointPair.nodeU().equals(endpointPair.nodeV())) {
                        break;
                    }
                } else {
                    return endOfData();
                }
            } while (this.d.getAndSet(true));
            return endpointPair;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.v
    public V value(N n) {
        V v = (V) this.f4522a.get(n);
        if (v == e) {
            return null;
        }
        return v instanceof j ? (V) ((j) v).f4532a : v;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.AbstractCollection, java.util.List] */
    @Override // com.google.common.graph.v
    public void removePredecessor(N n) {
        Map map = this.f4522a;
        Object obj = map.get(n);
        if (obj == e) {
            map.remove(n);
        } else if (!(obj instanceof j)) {
            return;
        } else {
            map.put(n, ((j) obj).f4532a);
        }
        int i2 = this.c - 1;
        this.c = i2;
        Graphs.a(i2);
        ?? r0 = this.f4523b;
        if (r0 != 0) {
            r0.remove(new i.a(n));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.AbstractCollection, java.util.List] */
    @Override // com.google.common.graph.v
    public V removeSuccessor(Object obj) {
        Object obj2;
        Map map = this.f4522a;
        Object obj3 = (V) map.get(obj);
        if (obj3 == null || obj3 == (obj2 = e)) {
            obj3 = (V) null;
        } else if (obj3 instanceof j) {
            map.put(obj, obj2);
            obj3 = (V) ((j) obj3).f4532a;
        } else {
            map.remove(obj);
        }
        if (obj3 != null) {
            int i2 = this.d - 1;
            this.d = i2;
            Graphs.a(i2);
            ?? r0 = this.f4523b;
            if (r0 != 0) {
                r0.remove(new i.b(obj));
            }
        }
        return (V) obj3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.util.AbstractCollection, java.util.List] */
    @Override // com.google.common.graph.v
    public void addPredecessor(N n, V v) {
        Object obj = e;
        Map map = this.f4522a;
        Object objPut = map.put(n, obj);
        if (objPut != null) {
            if (objPut instanceof j) {
                map.put(n, objPut);
                return;
            } else if (objPut == obj) {
                return;
            } else {
                map.put(n, new j(objPut));
            }
        }
        int i2 = this.c + 1;
        this.c = i2;
        Preconditions.checkArgument(i2 > 0, "Not true that %s is positive.", i2);
        ?? r5 = this.f4523b;
        if (r5 != 0) {
            r5.add(new i.a(n));
        }
    }

    /* JADX WARN: Type inference failed for: r6v3, types: [java.util.AbstractCollection, java.util.List] */
    @Override // com.google.common.graph.v
    public V addSuccessor(N n, V v) {
        Map map = this.f4522a;
        Object obj = (V) map.put(n, v);
        if (obj == null) {
            obj = (V) null;
        } else if (obj instanceof j) {
            map.put(n, new j(v));
            obj = (V) ((j) obj).f4532a;
        } else if (obj == e) {
            map.put(n, new j(v));
            obj = (V) null;
        }
        if (obj == null) {
            int i2 = this.d + 1;
            this.d = i2;
            Preconditions.checkArgument(i2 > 0, "Not true that %s is positive.", i2);
            ?? r6 = this.f4523b;
            if (r6 != 0) {
                r6.add(new i.b(n));
            }
        }
        return (V) obj;
    }
}
