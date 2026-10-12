package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import java.util.ArrayDeque;
import java.util.Iterator;

@Beta
@GwtCompatible
@Deprecated
/* loaded from: classes.dex */
public abstract class TreeTraverser<T> {
    public abstract Iterable<T> children(T t);

    public static class a extends TreeTraverser<T> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Function f4150a;

        public a(Function function) {
            this.f4150a = function;
        }

        @Override // com.google.common.collect.TreeTraverser
        public Iterable<T> children(T t) {
            return (Iterable) this.f4150a.apply(t);
        }
    }

    @Deprecated
    public static <T> TreeTraverser<T> using(Function<T, ? extends Iterable<T>> function) {
        Preconditions.checkNotNull(function);
        return new a(function);
    }

    public class b extends FluentIterable<T> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Object f4151b;

        public b(Object obj) {
            this.f4151b = obj;
        }

        @Override // java.lang.Iterable
        public UnmodifiableIterator<T> iterator() {
            return new h(this.f4151b);
        }
    }

    @Deprecated
    public final FluentIterable<T> preOrderTraversal(T t) {
        Preconditions.checkNotNull(t);
        return new b(t);
    }

    public final class h extends UnmodifiableIterator<T> {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayDeque f4158a;

        public h(Object obj) {
            ArrayDeque arrayDeque = new ArrayDeque();
            this.f4158a = arrayDeque;
            arrayDeque.addLast(Iterators.singletonIterator(Preconditions.checkNotNull(obj)));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f4158a.isEmpty();
        }

        @Override // java.util.Iterator
        public T next() {
            ArrayDeque arrayDeque = this.f4158a;
            Iterator it = (Iterator) arrayDeque.getLast();
            T t = (T) Preconditions.checkNotNull(it.next());
            if (!it.hasNext()) {
                arrayDeque.removeLast();
            }
            Iterator<T> it2 = TreeTraverser.this.children(t).iterator();
            if (it2.hasNext()) {
                arrayDeque.addLast(it2);
            }
            return t;
        }
    }

    public class c extends FluentIterable<T> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Object f4152b;

        public c(Object obj) {
            this.f4152b = obj;
        }

        @Override // java.lang.Iterable
        public UnmodifiableIterator<T> iterator() {
            return new f(this.f4152b);
        }
    }

    @Deprecated
    public final FluentIterable<T> postOrderTraversal(T t) {
        Preconditions.checkNotNull(t);
        return new c(t);
    }

    public static final class g<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4156a;

        /* renamed from: b, reason: collision with root package name */
        public final Iterator f4157b;

        public g(Iterator it, Object obj) {
            this.f4156a = Preconditions.checkNotNull(obj);
            this.f4157b = (Iterator) Preconditions.checkNotNull(it);
        }
    }

    public final class f extends AbstractIterator<T> {
        public final ArrayDeque c;

        public f(Object obj) {
            ArrayDeque arrayDeque = new ArrayDeque();
            this.c = arrayDeque;
            arrayDeque.addLast(new g(TreeTraverser.this.children(obj).iterator(), obj));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.AbstractIterator
        public T computeNext() {
            while (true) {
                ArrayDeque arrayDeque = this.c;
                if (!arrayDeque.isEmpty()) {
                    g gVar = (g) arrayDeque.getLast();
                    if (gVar.f4157b.hasNext()) {
                        Object next = gVar.f4157b.next();
                        arrayDeque.addLast(new g(TreeTraverser.this.children(next).iterator(), next));
                    } else {
                        arrayDeque.removeLast();
                        return (T) gVar.f4156a;
                    }
                } else {
                    return endOfData();
                }
            }
        }
    }

    public class d extends FluentIterable<T> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Object f4153b;

        public d(Object obj) {
            this.f4153b = obj;
        }

        @Override // java.lang.Iterable
        public UnmodifiableIterator<T> iterator() {
            return new e(this.f4153b);
        }
    }

    @Deprecated
    public final FluentIterable<T> breadthFirstTraversal(T t) {
        Preconditions.checkNotNull(t);
        return new d(t);
    }

    public final class e extends UnmodifiableIterator<T> implements PeekingIterator<T> {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayDeque f4154a;

        public e(Object obj) {
            ArrayDeque arrayDeque = new ArrayDeque();
            this.f4154a = arrayDeque;
            arrayDeque.add(obj);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f4154a.isEmpty();
        }

        @Override // com.google.common.collect.PeekingIterator
        public T peek() {
            return (T) this.f4154a.element();
        }

        @Override // java.util.Iterator, com.google.common.collect.PeekingIterator
        public T next() {
            ArrayDeque arrayDeque = this.f4154a;
            T t = (T) arrayDeque.remove();
            Iterables.addAll(arrayDeque, TreeTraverser.this.children(t));
            return t;
        }
    }
}
