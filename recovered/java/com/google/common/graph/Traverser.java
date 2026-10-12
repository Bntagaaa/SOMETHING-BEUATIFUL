package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterables;
import com.google.common.collect.UnmodifiableIterator;
import java.util.ArrayDeque;
import java.util.HashSet;
import java.util.Iterator;

@Beta
/* loaded from: classes.dex */
public abstract class Traverser<N> {

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        public static final c f4472a = new c("PREORDER", 0);

        /* renamed from: b, reason: collision with root package name */
        public static final c f4473b = new c("POSTORDER", 1);
    }

    public abstract Iterable<N> breadthFirst(Iterable<? extends N> iterable);

    public abstract Iterable<N> breadthFirst(N n);

    public abstract Iterable<N> depthFirstPostOrder(Iterable<? extends N> iterable);

    public abstract Iterable<N> depthFirstPostOrder(N n);

    public abstract Iterable<N> depthFirstPreOrder(Iterable<? extends N> iterable);

    public abstract Iterable<N> depthFirstPreOrder(N n);

    public /* synthetic */ Traverser(int i) {
        this();
    }

    public static <N> Traverser<N> forGraph(SuccessorsFunction<N> successorsFunction) {
        Preconditions.checkNotNull(successorsFunction);
        return new b(successorsFunction);
    }

    public static <N> Traverser<N> forTree(SuccessorsFunction<N> successorsFunction) {
        Preconditions.checkNotNull(successorsFunction);
        if (successorsFunction instanceof h) {
            Preconditions.checkArgument(((h) successorsFunction).isDirected(), "Undirected graphs can never be trees.");
        }
        if (successorsFunction instanceof Network) {
            Preconditions.checkArgument(((Network) successorsFunction).isDirected(), "Undirected networks can never be trees.");
        }
        return new d(successorsFunction);
    }

    private Traverser() {
    }

    public static final class b<N> extends Traverser<N> {

        /* renamed from: a, reason: collision with root package name */
        public final SuccessorsFunction f4461a;

        public b(SuccessorsFunction successorsFunction) {
            super(0);
            this.f4461a = (SuccessorsFunction) Preconditions.checkNotNull(successorsFunction);
        }

        @Override // com.google.common.graph.Traverser
        public Iterable<N> breadthFirst(N n) {
            Preconditions.checkNotNull(n);
            return breadthFirst((Iterable) ImmutableSet.of(n));
        }

        @Override // com.google.common.graph.Traverser
        public Iterable<N> breadthFirst(Iterable<? extends N> iterable) {
            Preconditions.checkNotNull(iterable);
            if (Iterables.isEmpty(iterable)) {
                return ImmutableSet.of();
            }
            Iterator<? extends N> it = iterable.iterator();
            while (it.hasNext()) {
                this.f4461a.successors(it.next());
            }
            return new a(iterable);
        }

        public class a implements Iterable<N> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ Iterable f4462a;

            public a(Iterable iterable) {
                this.f4462a = iterable;
            }

            @Override // java.lang.Iterable
            public Iterator<N> iterator() {
                return new d(this.f4462a);
            }
        }

        @Override // com.google.common.graph.Traverser
        public Iterable<N> depthFirstPreOrder(N n) {
            Preconditions.checkNotNull(n);
            return depthFirstPreOrder((Iterable) ImmutableSet.of(n));
        }

        @Override // com.google.common.graph.Traverser
        public Iterable<N> depthFirstPreOrder(Iterable<? extends N> iterable) {
            Preconditions.checkNotNull(iterable);
            if (Iterables.isEmpty(iterable)) {
                return ImmutableSet.of();
            }
            Iterator<? extends N> it = iterable.iterator();
            while (it.hasNext()) {
                this.f4461a.successors(it.next());
            }
            return new C0127b(iterable);
        }

        /* renamed from: com.google.common.graph.Traverser$b$b, reason: collision with other inner class name */
        public class C0127b implements Iterable<N> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ Iterable f4464a;

            public C0127b(Iterable iterable) {
                this.f4464a = iterable;
            }

            @Override // java.lang.Iterable
            public Iterator<N> iterator() {
                return new e(this.f4464a, c.f4472a);
            }
        }

        @Override // com.google.common.graph.Traverser
        public Iterable<N> depthFirstPostOrder(N n) {
            Preconditions.checkNotNull(n);
            return depthFirstPostOrder((Iterable) ImmutableSet.of(n));
        }

        @Override // com.google.common.graph.Traverser
        public Iterable<N> depthFirstPostOrder(Iterable<? extends N> iterable) {
            Preconditions.checkNotNull(iterable);
            if (Iterables.isEmpty(iterable)) {
                return ImmutableSet.of();
            }
            Iterator<? extends N> it = iterable.iterator();
            while (it.hasNext()) {
                this.f4461a.successors(it.next());
            }
            return new c(iterable);
        }

        public class c implements Iterable<N> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ Iterable f4466a;

            public c(Iterable iterable) {
                this.f4466a = iterable;
            }

            @Override // java.lang.Iterable
            public Iterator<N> iterator() {
                return new e(this.f4466a, c.f4473b);
            }
        }

        public final class d extends UnmodifiableIterator<N> {

            /* renamed from: a, reason: collision with root package name */
            public final ArrayDeque f4468a = new ArrayDeque();

            /* renamed from: b, reason: collision with root package name */
            public final HashSet f4469b = new HashSet();

            public d(Iterable iterable) {
                for (Object obj : iterable) {
                    if (this.f4469b.add(obj)) {
                        this.f4468a.add(obj);
                    }
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return !this.f4468a.isEmpty();
            }

            @Override // java.util.Iterator
            public N next() {
                ArrayDeque arrayDeque = this.f4468a;
                N n = (N) arrayDeque.remove();
                for (N n2 : b.this.f4461a.successors(n)) {
                    if (this.f4469b.add(n2)) {
                        arrayDeque.add(n2);
                    }
                }
                return n;
            }
        }

        public final class e extends AbstractIterator<N> {
            public final ArrayDeque c;
            public final HashSet d;
            public final c e;

            public e(Iterable iterable, c cVar) {
                ArrayDeque arrayDeque = new ArrayDeque();
                this.c = arrayDeque;
                this.d = new HashSet();
                arrayDeque.push(new a(null, iterable));
                this.e = cVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.AbstractIterator
            public N computeNext() {
                N n;
                while (true) {
                    ArrayDeque arrayDeque = this.c;
                    if (arrayDeque.isEmpty()) {
                        return endOfData();
                    }
                    a aVar = (a) arrayDeque.getFirst();
                    HashSet hashSet = this.d;
                    boolean zAdd = hashSet.add(aVar.f4470a);
                    Iterator it = aVar.f4471b;
                    boolean zHasNext = it.hasNext();
                    c cVar = this.e;
                    boolean z = (zAdd && cVar == c.f4472a) || (!zHasNext && cVar == c.f4473b);
                    if (!zHasNext) {
                        arrayDeque.pop();
                    } else {
                        Object next = it.next();
                        if (!hashSet.contains(next)) {
                            arrayDeque.push(new a(next, b.this.f4461a.successors(next)));
                        }
                    }
                    if (z && (n = (N) aVar.f4470a) != null) {
                        return n;
                    }
                }
            }

            public final class a {

                /* renamed from: a, reason: collision with root package name */
                public final Object f4470a;

                /* renamed from: b, reason: collision with root package name */
                public final Iterator f4471b;

                public a(Object obj, Iterable iterable) {
                    this.f4470a = obj;
                    this.f4471b = iterable.iterator();
                }
            }
        }
    }

    public static final class d<N> extends Traverser<N> {

        /* renamed from: a, reason: collision with root package name */
        public final SuccessorsFunction f4474a;

        public d(SuccessorsFunction successorsFunction) {
            super(0);
            this.f4474a = (SuccessorsFunction) Preconditions.checkNotNull(successorsFunction);
        }

        @Override // com.google.common.graph.Traverser
        public Iterable<N> breadthFirst(N n) {
            Preconditions.checkNotNull(n);
            return breadthFirst((Iterable) ImmutableSet.of(n));
        }

        @Override // com.google.common.graph.Traverser
        public Iterable<N> breadthFirst(Iterable<? extends N> iterable) {
            Preconditions.checkNotNull(iterable);
            if (Iterables.isEmpty(iterable)) {
                return ImmutableSet.of();
            }
            Iterator<? extends N> it = iterable.iterator();
            while (it.hasNext()) {
                this.f4474a.successors(it.next());
            }
            return new a(iterable);
        }

        public class a implements Iterable<N> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ Iterable f4475a;

            public a(Iterable iterable) {
                this.f4475a = iterable;
            }

            @Override // java.lang.Iterable
            public Iterator<N> iterator() {
                return new C0128d(this.f4475a);
            }
        }

        @Override // com.google.common.graph.Traverser
        public Iterable<N> depthFirstPreOrder(N n) {
            Preconditions.checkNotNull(n);
            return depthFirstPreOrder((Iterable) ImmutableSet.of(n));
        }

        @Override // com.google.common.graph.Traverser
        public Iterable<N> depthFirstPreOrder(Iterable<? extends N> iterable) {
            Preconditions.checkNotNull(iterable);
            if (Iterables.isEmpty(iterable)) {
                return ImmutableSet.of();
            }
            Iterator<? extends N> it = iterable.iterator();
            while (it.hasNext()) {
                this.f4474a.successors(it.next());
            }
            return new b(iterable);
        }

        public class b implements Iterable<N> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ Iterable f4477a;

            public b(Iterable iterable) {
                this.f4477a = iterable;
            }

            @Override // java.lang.Iterable
            public Iterator<N> iterator() {
                return new f(this.f4477a);
            }
        }

        @Override // com.google.common.graph.Traverser
        public Iterable<N> depthFirstPostOrder(N n) {
            Preconditions.checkNotNull(n);
            return depthFirstPostOrder((Iterable) ImmutableSet.of(n));
        }

        @Override // com.google.common.graph.Traverser
        public Iterable<N> depthFirstPostOrder(Iterable<? extends N> iterable) {
            Preconditions.checkNotNull(iterable);
            if (Iterables.isEmpty(iterable)) {
                return ImmutableSet.of();
            }
            Iterator<? extends N> it = iterable.iterator();
            while (it.hasNext()) {
                this.f4474a.successors(it.next());
            }
            return new c(iterable);
        }

        public class c implements Iterable<N> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ Iterable f4479a;

            public c(Iterable iterable) {
                this.f4479a = iterable;
            }

            @Override // java.lang.Iterable
            public Iterator<N> iterator() {
                return new e(this.f4479a);
            }
        }

        /* renamed from: com.google.common.graph.Traverser$d$d, reason: collision with other inner class name */
        public final class C0128d extends UnmodifiableIterator<N> {

            /* renamed from: a, reason: collision with root package name */
            public final ArrayDeque f4481a = new ArrayDeque();

            public C0128d(Iterable iterable) {
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    this.f4481a.add(it.next());
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return !this.f4481a.isEmpty();
            }

            @Override // java.util.Iterator
            public N next() {
                ArrayDeque arrayDeque = this.f4481a;
                N n = (N) arrayDeque.remove();
                Iterables.addAll(arrayDeque, d.this.f4474a.successors(n));
                return n;
            }
        }

        public final class f extends UnmodifiableIterator<N> {

            /* renamed from: a, reason: collision with root package name */
            public final ArrayDeque f4485a;

            public f(Iterable iterable) {
                ArrayDeque arrayDeque = new ArrayDeque();
                this.f4485a = arrayDeque;
                arrayDeque.addLast(iterable.iterator());
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return !this.f4485a.isEmpty();
            }

            @Override // java.util.Iterator
            public N next() {
                ArrayDeque arrayDeque = this.f4485a;
                Iterator it = (Iterator) arrayDeque.getLast();
                N n = (N) Preconditions.checkNotNull(it.next());
                if (!it.hasNext()) {
                    arrayDeque.removeLast();
                }
                Iterator<? extends N> it2 = d.this.f4474a.successors(n).iterator();
                if (it2.hasNext()) {
                    arrayDeque.addLast(it2);
                }
                return n;
            }
        }

        public final class e extends AbstractIterator<N> {
            public final ArrayDeque c;

            public e(Iterable iterable) {
                ArrayDeque arrayDeque = new ArrayDeque();
                this.c = arrayDeque;
                arrayDeque.addLast(new a(null, iterable));
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.AbstractIterator
            public N computeNext() {
                while (true) {
                    ArrayDeque arrayDeque = this.c;
                    if (!arrayDeque.isEmpty()) {
                        a aVar = (a) arrayDeque.getLast();
                        if (aVar.f4484b.hasNext()) {
                            Object next = aVar.f4484b.next();
                            arrayDeque.addLast(new a(next, d.this.f4474a.successors(next)));
                        } else {
                            arrayDeque.removeLast();
                            N n = (N) aVar.f4483a;
                            if (n != null) {
                                return n;
                            }
                        }
                    } else {
                        return endOfData();
                    }
                }
            }

            public final class a {

                /* renamed from: a, reason: collision with root package name */
                public final Object f4483a;

                /* renamed from: b, reason: collision with root package name */
                public final Iterator f4484b;

                public a(Object obj, Iterable iterable) {
                    this.f4483a = obj;
                    this.f4484b = iterable.iterator();
                }
            }
        }
    }
}
