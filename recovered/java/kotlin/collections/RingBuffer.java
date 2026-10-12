package kotlin.collections;

import java.util.Arrays;
import java.util.Iterator;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u000b\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u0004B\u001f\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bB\u0011\b\u0016\u0012\u0006\u0010\f\u001a\u00020\b¢\u0006\u0004\b\n\u0010\rJ\u0018\u0010\u000f\u001a\u00028\u00002\u0006\u0010\u000e\u001a\u00020\bH\u0096\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\u0016\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014H\u0096\u0002¢\u0006\u0004\b\u0015\u0010\u0016J)\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005\"\u0004\b\u0001\u0010\u00012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005H\u0014¢\u0006\u0004\b\u0018\u0010\u001aJ\u001b\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u001b\u001a\u00020\b¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010 \u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00028\u0000¢\u0006\u0004\b \u0010!J\u0015\u0010#\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\b¢\u0006\u0004\b#\u0010\rR$\u0010)\u001a\u00020\b2\u0006\u0010$\u001a\u00020\b8\u0016@RX\u0096\u000e¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(¨\u0006*"}, d2 = {"Lkotlin/collections/RingBuffer;", "T", "Lkotlin/collections/AbstractList;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "", "buffer", "", "filledSize", "<init>", "([Ljava/lang/Object;I)V", "capacity", "(I)V", "index", "get", "(I)Ljava/lang/Object;", "", "isFull", "()Z", "", "iterator", "()Ljava/util/Iterator;", "array", "toArray", "([Ljava/lang/Object;)[Ljava/lang/Object;", "()[Ljava/lang/Object;", "maxCapacity", "expanded", "(I)Lkotlin/collections/RingBuffer;", "element", "", "add", "(Ljava/lang/Object;)V", "n", "removeFirst", "value", "d", "I", "getSize", "()I", "size", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSlidingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,206:1\n204#1:208\n204#1:209\n204#1:210\n1#2:207\n*S KotlinDebug\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n106#1:208\n175#1:209\n188#1:210\n*E\n"})
/* loaded from: classes2.dex */
final class RingBuffer<T> extends AbstractList<T> implements RandomAccess {

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f5647a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5648b;
    public int c;

    /* renamed from: d, reason: from kotlin metadata */
    public int size;

    public RingBuffer(@NotNull Object[] buffer, int i) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        this.f5647a = buffer;
        if (i < 0) {
            throw new IllegalArgumentException(_COROUTINE.a.d(i, "ring buffer filled size should not be negative but it is ").toString());
        }
        if (i <= buffer.length) {
            this.f5648b = buffer.length;
            this.size = i;
        } else {
            StringBuilder sbO = _COROUTINE.a.o(i, "ring buffer filled size: ", " cannot be larger than the buffer size: ");
            sbO.append(buffer.length);
            throw new IllegalArgumentException(sbO.toString().toString());
        }
    }

    public RingBuffer(int i) {
        this(new Object[i], 0);
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    public int getSize() {
        return this.size;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public T get(int index) {
        AbstractList.INSTANCE.checkElementIndex$kotlin_stdlib(index, size());
        return (T) this.f5647a[(this.c + index) % this.f5648b];
    }

    public final boolean isFull() {
        return size() == this.f5648b;
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<T> iterator() {
        return new AbstractIterator<T>() { // from class: kotlin.collections.RingBuffer.iterator.1
            public int c;
            public int d;

            {
                this.c = RingBuffer.this.size();
                this.d = RingBuffer.this.c;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.collections.AbstractIterator
            public void computeNext() {
                if (this.c == 0) {
                    done();
                    return;
                }
                RingBuffer ringBuffer = RingBuffer.this;
                setNext(ringBuffer.f5647a[this.d]);
                this.d = (this.d + 1) % ringBuffer.f5648b;
                this.c--;
            }
        };
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    @NotNull
    public <T> T[] toArray(@NotNull T[] array) {
        Object[] objArr;
        Intrinsics.checkNotNullParameter(array, "array");
        int length = array.length;
        Object[] objArr2 = array;
        if (length < size()) {
            Object[] objArr3 = (T[]) Arrays.copyOf(array, size());
            Intrinsics.checkNotNullExpressionValue(objArr3, "copyOf(...)");
            objArr2 = objArr3;
        }
        int size = size();
        int i = this.c;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            objArr = this.f5647a;
            if (i3 >= size || i >= this.f5648b) {
                break;
            }
            objArr2[i3] = objArr[i];
            i3++;
            i++;
        }
        while (i3 < size) {
            objArr2[i3] = objArr[i2];
            i3++;
            i2++;
        }
        return (T[]) k.terminateCollectionToArray(size, objArr2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    @NotNull
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final RingBuffer<T> expanded(int maxCapacity) {
        Object[] array;
        int i = this.f5648b;
        int iCoerceAtMost = RangesKt.coerceAtMost(i + (i >> 1) + 1, maxCapacity);
        if (this.c == 0) {
            array = Arrays.copyOf(this.f5647a, iCoerceAtMost);
            Intrinsics.checkNotNullExpressionValue(array, "copyOf(...)");
        } else {
            array = toArray(new Object[iCoerceAtMost]);
        }
        return new RingBuffer<>(array, size());
    }

    @Override // java.util.Collection, java.util.List
    public final void add(T element) {
        if (isFull()) {
            throw new IllegalStateException("ring buffer is full");
        }
        this.f5647a[(size() + this.c) % this.f5648b] = element;
        this.size = size() + 1;
    }

    public final void removeFirst(int n) {
        if (n < 0) {
            throw new IllegalArgumentException(_COROUTINE.a.d(n, "n shouldn't be negative but it is ").toString());
        }
        if (n > size()) {
            StringBuilder sbO = _COROUTINE.a.o(n, "n shouldn't be greater than the buffer size: n = ", ", size = ");
            sbO.append(size());
            throw new IllegalArgumentException(sbO.toString().toString());
        }
        if (n > 0) {
            int i = this.c;
            int i2 = (i + n) % this.f5648b;
            Object[] objArr = this.f5647a;
            if (i > i2) {
                ArraysKt___ArraysJvmKt.fill(objArr, (Object) null, i, this.f5648b);
                ArraysKt___ArraysJvmKt.fill(objArr, (Object) null, 0, i2);
            } else {
                ArraysKt___ArraysJvmKt.fill(objArr, (Object) null, i, i2);
            }
            this.c = i2;
            this.size = size() - n;
        }
    }
}
