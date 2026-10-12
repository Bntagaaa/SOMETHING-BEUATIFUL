package kotlin.collections;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH$¢\u0006\u0004\b\u000b\u0010\u0004J\u0017\u0010\r\u001a\u00020\n2\u0006\u0010\f\u001a\u00028\u0000H\u0004¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\nH\u0004¢\u0006\u0004\b\u000f\u0010\u0004¨\u0006\u0010"}, d2 = {"Lkotlin/collections/AbstractIterator;", "T", "", "<init>", "()V", "", "hasNext", "()Z", "next", "()Ljava/lang/Object;", "", "computeNext", "value", "setNext", "(Ljava/lang/Object;)V", "done", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public abstract class AbstractIterator<T> implements Iterator<T>, KMappedMarker {

    /* renamed from: a, reason: collision with root package name */
    public int f5585a;

    /* renamed from: b, reason: collision with root package name */
    public Object f5586b;

    public abstract void computeNext();

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        int i = this.f5585a;
        if (i == 0) {
            this.f5585a = 3;
            computeNext();
            return this.f5585a == 1;
        }
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            return false;
        }
        throw new IllegalArgumentException("hasNext called when the iterator is in the FAILED state.");
    }

    @Override // java.util.Iterator
    public T next() {
        int i = this.f5585a;
        if (i == 1) {
            this.f5585a = 0;
            return (T) this.f5586b;
        }
        if (i != 2) {
            this.f5585a = 3;
            computeNext();
            if (this.f5585a == 1) {
                this.f5585a = 0;
                return (T) this.f5586b;
            }
        }
        throw new NoSuchElementException();
    }

    public final void setNext(T value) {
        this.f5586b = value;
        this.f5585a = 1;
    }

    public final void done() {
        this.f5585a = 2;
    }
}
