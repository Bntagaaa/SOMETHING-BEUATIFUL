package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\b\u0006\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\b\u0012\u0004\u0012\u00028\u00020\u0004:\u0001\rBC\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\b0\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00020\bH\u0096\u0002¢\u0006\u0004\b\t\u0010\f¨\u0006\u000e"}, d2 = {"Lkotlin/sequences/FlatteningSequence;", "T", "R", "E", "Lkotlin/sequences/Sequence;", "sequence", "Lkotlin/Function1;", "transformer", "", "iterator", "<init>", "(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "()Ljava/util/Iterator;", "a", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class FlatteningSequence<T, R, E> implements Sequence<E> {

    /* renamed from: a, reason: collision with root package name */
    public final Sequence f5945a;

    /* renamed from: b, reason: collision with root package name */
    public final Function1 f5946b;
    public final Function1 c;

    public FlatteningSequence(@NotNull Sequence<? extends T> sequence, @NotNull Function1<? super T, ? extends R> transformer, @NotNull Function1<? super R, ? extends Iterator<? extends E>> iterator) {
        Intrinsics.checkNotNullParameter(sequence, "sequence");
        Intrinsics.checkNotNullParameter(transformer, "transformer");
        Intrinsics.checkNotNullParameter(iterator, "iterator");
        this.f5945a = sequence;
        this.f5946b = transformer;
        this.c = iterator;
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/sequences/FlatteningSequence$a;", "", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class a {
        static {
            new a();
        }

        private a() {
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\b*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0010\u0010\u0002\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0005\u001a\u00020\u0004H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u001d\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00010\u00018\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR*\u0010\u0010\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\b\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"kotlin/sequences/FlatteningSequence$iterator$1", "", "next", "()Ljava/lang/Object;", "", "hasNext", "()Z", "a", "Ljava/util/Iterator;", "getIterator", "()Ljava/util/Iterator;", "iterator", "b", "getItemIterator", "setItemIterator", "(Ljava/util/Iterator;)V", "itemIterator", "", "c", "I", "getState", "()I", "setState", "(I)V", "state", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* renamed from: kotlin.sequences.FlatteningSequence$iterator$1, reason: invalid class name */
    public static final class AnonymousClass1 implements Iterator<E>, KMappedMarker {

        /* renamed from: a, reason: collision with root package name and from kotlin metadata */
        public final Iterator iterator;

        /* renamed from: b, reason: collision with root package name and from kotlin metadata */
        public Iterator itemIterator;

        /* renamed from: c, reason: from kotlin metadata */
        public int state;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public AnonymousClass1() {
            this.iterator = FlatteningSequence.this.f5945a.iterator();
        }

        public final Iterator<T> getIterator() {
            return this.iterator;
        }

        public final Iterator<E> getItemIterator() {
            return this.itemIterator;
        }

        public final void setItemIterator(Iterator<? extends E> it) {
            this.itemIterator = it;
        }

        public final int getState() {
            return this.state;
        }

        public final void setState(int i) {
            this.state = i;
        }

        @Override // java.util.Iterator
        public E next() {
            int i = this.state;
            if (i == 2) {
                throw new NoSuchElementException();
            }
            if (i == 0 && !a()) {
                throw new NoSuchElementException();
            }
            this.state = 0;
            Iterator it = this.itemIterator;
            Intrinsics.checkNotNull(it);
            return (E) it.next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            int i = this.state;
            if (i == 1) {
                return true;
            }
            if (i == 2) {
                return false;
            }
            return a();
        }

        public final boolean a() {
            Iterator it;
            Iterator it2 = this.itemIterator;
            if (it2 != null && it2.hasNext()) {
                this.state = 1;
                return true;
            }
            do {
                Iterator it3 = this.iterator;
                if (it3.hasNext()) {
                    Object next = it3.next();
                    FlatteningSequence flatteningSequence = FlatteningSequence.this;
                    it = (Iterator) flatteningSequence.c.invoke(flatteningSequence.f5946b.invoke(next));
                } else {
                    this.state = 2;
                    this.itemIterator = null;
                    return false;
                }
            } while (!it.hasNext());
            this.itemIterator = it;
            this.state = 1;
            return true;
        }
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<E> iterator() {
        return new AnonymousClass1();
    }
}
