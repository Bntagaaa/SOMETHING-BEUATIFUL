package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SinceKotlin(version = "1.4")
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u001c\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0007\u0018\u0000 M*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0001MB\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\t\b\u0016¢\u0006\u0004\b\u0005\u0010\u0007B\u0017\b\u0016\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b¢\u0006\u0004\b\u0005\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00028\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0010\u0010\u000fJ\r\u0010\u0011\u001a\u00028\u0000¢\u0006\u0004\b\u0011\u0010\u000fJ\u000f\u0010\u0012\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0012\u0010\u000fJ\u0015\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00028\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00028\u0000¢\u0006\u0004\b\u0017\u0010\u0016J\r\u0010\u0018\u001a\u00028\u0000¢\u0006\u0004\b\u0018\u0010\u000fJ\u000f\u0010\u0019\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0019\u0010\u000fJ\r\u0010\u001a\u001a\u00028\u0000¢\u0006\u0004\b\u001a\u0010\u000fJ\u000f\u0010\u001b\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u001b\u0010\u000fJ\u0017\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u001c\u0010\u001fJ\u001d\u0010 \u001a\u00020\u000b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0016¢\u0006\u0004\b \u0010!J%\u0010 \u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u00032\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0016¢\u0006\u0004\b \u0010\"J\u0018\u0010#\u001a\u00028\u00002\u0006\u0010\u001e\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b#\u0010$J \u0010%\u001a\u00028\u00002\u0006\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b%\u0010&J\u0018\u0010'\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b'\u0010\u001dJ\u0017\u0010(\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010*\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b*\u0010)J\u0017\u0010+\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b+\u0010\u001dJ\u0017\u0010,\u001a\u00028\u00002\u0006\u0010\u001e\u001a\u00020\u0003H\u0016¢\u0006\u0004\b,\u0010$J\u001d\u0010-\u001a\u00020\u000b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0016¢\u0006\u0004\b-\u0010!J\u001d\u0010.\u001a\u00020\u000b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0016¢\u0006\u0004\b.\u0010!J\u000f\u0010/\u001a\u00020\u0014H\u0016¢\u0006\u0004\b/\u0010\u0007J)\u00103\u001a\b\u0012\u0004\u0012\u00028\u000101\"\u0004\b\u0001\u001002\f\u00102\u001a\b\u0012\u0004\u0012\u00028\u000101H\u0016¢\u0006\u0004\b3\u00104J\u0017\u00103\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010501H\u0016¢\u0006\u0004\b3\u00106J\u001f\u00109\u001a\u00020\u00142\u0006\u00107\u001a\u00020\u00032\u0006\u00108\u001a\u00020\u0003H\u0014¢\u0006\u0004\b9\u0010:J)\u0010<\u001a\b\u0012\u0004\u0012\u00028\u000101\"\u0004\b\u0001\u001002\f\u00102\u001a\b\u0012\u0004\u0012\u00028\u000101H\u0000¢\u0006\u0004\b;\u00104J\u0017\u0010<\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010501H\u0000¢\u0006\u0004\b;\u00106J\u001f\u0010>\u001a\u00020\u00142\u0006\u00107\u001a\u00020\u00032\u0006\u00108\u001a\u00020\u0003H\u0000¢\u0006\u0004\b=\u0010:JO\u0010F\u001a\u00020\u00142>\u0010C\u001a:\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b@\u0012\b\bA\u0012\u0004\b\b(B\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010501¢\u0006\f\b@\u0012\b\bA\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\u00140?H\u0000¢\u0006\u0004\bD\u0010ER$\u0010L\u001a\u00020\u00032\u0006\u0010G\u001a\u00020\u00038\u0016@RX\u0096\u000e¢\u0006\f\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K¨\u0006N"}, d2 = {"Lkotlin/collections/ArrayDeque;", "E", "Lkotlin/collections/AbstractMutableList;", "", "initialCapacity", "<init>", "(I)V", "()V", "", "elements", "(Ljava/util/Collection;)V", "", "isEmpty", "()Z", "first", "()Ljava/lang/Object;", "firstOrNull", "last", "lastOrNull", "element", "", "addFirst", "(Ljava/lang/Object;)V", "addLast", "removeFirst", "removeFirstOrNull", "removeLast", "removeLastOrNull", "add", "(Ljava/lang/Object;)Z", "index", "(ILjava/lang/Object;)V", "addAll", "(Ljava/util/Collection;)Z", "(ILjava/util/Collection;)Z", "get", "(I)Ljava/lang/Object;", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "contains", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "remove", "removeAt", "removeAll", "retainAll", "clear", "T", "", "array", "toArray", "([Ljava/lang/Object;)[Ljava/lang/Object;", "", "()[Ljava/lang/Object;", "fromIndex", "toIndex", "removeRange", "(II)V", "testToArray$kotlin_stdlib", "testToArray", "testRemoveRange$kotlin_stdlib", "testRemoveRange", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "head", "structure", "internalStructure$kotlin_stdlib", "(Lkotlin/jvm/functions/Function2;)V", "internalStructure", "value", "c", "I", "getSize", "()I", "size", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nArrayDeque.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayDeque.kt\nkotlin/collections/ArrayDeque\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,660:1\n476#1,53:665\n476#1,53:718\n37#2:661\n36#2,3:662\n*S KotlinDebug\n*F\n+ 1 ArrayDeque.kt\nkotlin/collections/ArrayDeque\n*L\n471#1:665,53\n473#1:718,53\n46#1:661\n46#1:662,3\n*E\n"})
/* loaded from: classes2.dex */
public final class ArrayDeque<E> extends AbstractMutableList<E> {
    public static final Object[] d = new Object[0];

    /* renamed from: a, reason: collision with root package name */
    public int f5597a;

    /* renamed from: b, reason: collision with root package name */
    public Object[] f5598b;

    /* renamed from: c, reason: from kotlin metadata */
    public int size;

    @Override // kotlin.collections.AbstractMutableList
    public int getSize() {
        return this.size;
    }

    public ArrayDeque(int i) {
        Object[] objArr;
        if (i == 0) {
            objArr = d;
        } else {
            if (i <= 0) {
                throw new IllegalArgumentException(_COROUTINE.a.d(i, "Illegal Capacity: "));
            }
            objArr = new Object[i];
        }
        this.f5598b = objArr;
    }

    public ArrayDeque() {
        this.f5598b = d;
    }

    public ArrayDeque(@NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Object[] array = elements.toArray(new Object[0]);
        this.f5598b = array;
        this.size = array.length;
        if (array.length == 0) {
            this.f5598b = d;
        }
    }

    public final void b(int i) {
        if (i < 0) {
            throw new IllegalStateException("Deque is too big.");
        }
        Object[] objArr = this.f5598b;
        if (i <= objArr.length) {
            return;
        }
        if (objArr == d) {
            this.f5598b = new Object[RangesKt.coerceAtLeast(i, 10)];
            return;
        }
        Object[] objArr2 = new Object[AbstractList.INSTANCE.newCapacity$kotlin_stdlib(objArr.length, i)];
        Object[] objArr3 = this.f5598b;
        ArraysKt___ArraysJvmKt.copyInto(objArr3, objArr2, 0, this.f5597a, objArr3.length);
        Object[] objArr4 = this.f5598b;
        int length = objArr4.length;
        int i2 = this.f5597a;
        ArraysKt___ArraysJvmKt.copyInto(objArr4, objArr2, length - i2, 0, i2);
        this.f5597a = 0;
        this.f5598b = objArr2;
    }

    public final int f(int i) {
        Object[] objArr = this.f5598b;
        return i >= objArr.length ? i - objArr.length : i;
    }

    public final int d(int i) {
        return i < 0 ? i + this.f5598b.length : i;
    }

    public final int c(int i) {
        if (i == ArraysKt___ArraysKt.getLastIndex(this.f5598b)) {
            return 0;
        }
        return i + 1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return size() == 0;
    }

    public final E first() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        return (E) this.f5598b[this.f5597a];
    }

    @Nullable
    public final E firstOrNull() {
        if (isEmpty()) {
            return null;
        }
        return (E) this.f5598b[this.f5597a];
    }

    public final E last() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        return (E) this.f5598b[f(this.f5597a + CollectionsKt__CollectionsKt.getLastIndex(this))];
    }

    @Nullable
    public final E lastOrNull() {
        if (isEmpty()) {
            return null;
        }
        return (E) this.f5598b[f(this.f5597a + CollectionsKt__CollectionsKt.getLastIndex(this))];
    }

    public final void addFirst(E element) {
        g();
        b(size() + 1);
        int i = this.f5597a;
        int lastIndex = i == 0 ? ArraysKt___ArraysKt.getLastIndex(this.f5598b) : i - 1;
        this.f5597a = lastIndex;
        this.f5598b[lastIndex] = element;
        this.size = size() + 1;
    }

    public final void addLast(E element) {
        g();
        b(size() + 1);
        this.f5598b[f(size() + this.f5597a)] = element;
        this.size = size() + 1;
    }

    public final E removeFirst() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        g();
        Object[] objArr = this.f5598b;
        int i = this.f5597a;
        E e = (E) objArr[i];
        objArr[i] = null;
        this.f5597a = c(i);
        this.size = size() - 1;
        return e;
    }

    @Nullable
    public final E removeFirstOrNull() {
        if (isEmpty()) {
            return null;
        }
        return removeFirst();
    }

    public final E removeLast() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        g();
        int iF = f(this.f5597a + CollectionsKt__CollectionsKt.getLastIndex(this));
        Object[] objArr = this.f5598b;
        E e = (E) objArr[iF];
        objArr[iF] = null;
        this.size = size() - 1;
        return e;
    }

    @Nullable
    public final E removeLastOrNull() {
        if (isEmpty()) {
            return null;
        }
        return removeLast();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E element) {
        addLast(element);
        return true;
    }

    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public void add(int index, E element) {
        AbstractList.INSTANCE.checkPositionIndex$kotlin_stdlib(index, size());
        if (index == size()) {
            addLast(element);
            return;
        }
        if (index == 0) {
            addFirst(element);
            return;
        }
        g();
        b(size() + 1);
        int iF = f(this.f5597a + index);
        if (index < ((size() + 1) >> 1)) {
            int lastIndex = iF == 0 ? ArraysKt___ArraysKt.getLastIndex(this.f5598b) : iF - 1;
            int i = this.f5597a;
            int lastIndex2 = i == 0 ? ArraysKt___ArraysKt.getLastIndex(this.f5598b) : i - 1;
            int i2 = this.f5597a;
            if (lastIndex >= i2) {
                Object[] objArr = this.f5598b;
                objArr[lastIndex2] = objArr[i2];
                ArraysKt___ArraysJvmKt.copyInto(objArr, objArr, i2, i2 + 1, lastIndex + 1);
            } else {
                Object[] objArr2 = this.f5598b;
                ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr2, i2 - 1, i2, objArr2.length);
                Object[] objArr3 = this.f5598b;
                objArr3[objArr3.length - 1] = objArr3[0];
                ArraysKt___ArraysJvmKt.copyInto(objArr3, objArr3, 0, 1, lastIndex + 1);
            }
            this.f5598b[lastIndex] = element;
            this.f5597a = lastIndex2;
        } else {
            int iF2 = f(size() + this.f5597a);
            if (iF < iF2) {
                Object[] objArr4 = this.f5598b;
                ArraysKt___ArraysJvmKt.copyInto(objArr4, objArr4, iF + 1, iF, iF2);
            } else {
                Object[] objArr5 = this.f5598b;
                ArraysKt___ArraysJvmKt.copyInto(objArr5, objArr5, 1, 0, iF2);
                Object[] objArr6 = this.f5598b;
                objArr6[0] = objArr6[objArr6.length - 1];
                ArraysKt___ArraysJvmKt.copyInto(objArr6, objArr6, iF + 1, iF, objArr6.length - 1);
            }
            this.f5598b[iF] = element;
        }
        this.size = size() + 1;
    }

    public final void a(int i, Collection collection) {
        Iterator<E> it = collection.iterator();
        int length = this.f5598b.length;
        while (i < length && it.hasNext()) {
            this.f5598b[i] = it.next();
            i++;
        }
        int i2 = this.f5597a;
        for (int i3 = 0; i3 < i2 && it.hasNext(); i3++) {
            this.f5598b[i3] = it.next();
        }
        this.size = collection.size() + size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        g();
        b(elements.size() + size());
        a(f(size() + this.f5597a), elements);
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int index, @NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        AbstractList.INSTANCE.checkPositionIndex$kotlin_stdlib(index, size());
        if (elements.isEmpty()) {
            return false;
        }
        if (index == size()) {
            return addAll(elements);
        }
        g();
        b(elements.size() + size());
        int iF = f(size() + this.f5597a);
        int iF2 = f(this.f5597a + index);
        int size = elements.size();
        if (index < ((size() + 1) >> 1)) {
            int i = this.f5597a;
            int length = i - size;
            if (iF2 < i) {
                Object[] objArr = this.f5598b;
                ArraysKt___ArraysJvmKt.copyInto(objArr, objArr, length, i, objArr.length);
                if (size >= iF2) {
                    Object[] objArr2 = this.f5598b;
                    ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr2, objArr2.length - size, 0, iF2);
                } else {
                    Object[] objArr3 = this.f5598b;
                    ArraysKt___ArraysJvmKt.copyInto(objArr3, objArr3, objArr3.length - size, 0, size);
                    Object[] objArr4 = this.f5598b;
                    ArraysKt___ArraysJvmKt.copyInto(objArr4, objArr4, 0, size, iF2);
                }
            } else if (length >= 0) {
                Object[] objArr5 = this.f5598b;
                ArraysKt___ArraysJvmKt.copyInto(objArr5, objArr5, length, i, iF2);
            } else {
                Object[] objArr6 = this.f5598b;
                length += objArr6.length;
                int i2 = iF2 - i;
                int length2 = objArr6.length - length;
                if (length2 >= i2) {
                    ArraysKt___ArraysJvmKt.copyInto(objArr6, objArr6, length, i, iF2);
                } else {
                    ArraysKt___ArraysJvmKt.copyInto(objArr6, objArr6, length, i, i + length2);
                    Object[] objArr7 = this.f5598b;
                    ArraysKt___ArraysJvmKt.copyInto(objArr7, objArr7, 0, this.f5597a + length2, iF2);
                }
            }
            this.f5597a = length;
            a(d(iF2 - size), elements);
        } else {
            int i3 = iF2 + size;
            if (iF2 < iF) {
                int i4 = size + iF;
                Object[] objArr8 = this.f5598b;
                if (i4 <= objArr8.length) {
                    ArraysKt___ArraysJvmKt.copyInto(objArr8, objArr8, i3, iF2, iF);
                } else if (i3 >= objArr8.length) {
                    ArraysKt___ArraysJvmKt.copyInto(objArr8, objArr8, i3 - objArr8.length, iF2, iF);
                } else {
                    int length3 = iF - (i4 - objArr8.length);
                    ArraysKt___ArraysJvmKt.copyInto(objArr8, objArr8, 0, length3, iF);
                    Object[] objArr9 = this.f5598b;
                    ArraysKt___ArraysJvmKt.copyInto(objArr9, objArr9, i3, iF2, length3);
                }
            } else {
                Object[] objArr10 = this.f5598b;
                ArraysKt___ArraysJvmKt.copyInto(objArr10, objArr10, size, 0, iF);
                Object[] objArr11 = this.f5598b;
                if (i3 >= objArr11.length) {
                    ArraysKt___ArraysJvmKt.copyInto(objArr11, objArr11, i3 - objArr11.length, iF2, objArr11.length);
                } else {
                    ArraysKt___ArraysJvmKt.copyInto(objArr11, objArr11, 0, objArr11.length - size, objArr11.length);
                    Object[] objArr12 = this.f5598b;
                    ArraysKt___ArraysJvmKt.copyInto(objArr12, objArr12, i3, iF2, objArr12.length - size);
                }
            }
            a(iF2, elements);
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int index) {
        AbstractList.INSTANCE.checkElementIndex$kotlin_stdlib(index, size());
        return (E) this.f5598b[f(this.f5597a + index)];
    }

    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public E set(int index, E element) {
        AbstractList.INSTANCE.checkElementIndex$kotlin_stdlib(index, size());
        int iF = f(this.f5597a + index);
        Object[] objArr = this.f5598b;
        E e = (E) objArr[iF];
        objArr[iF] = element;
        return e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object element) {
        return indexOf(element) != -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object element) {
        int i;
        int iF = f(size() + this.f5597a);
        int length = this.f5597a;
        if (length < iF) {
            while (length < iF) {
                if (Intrinsics.areEqual(element, this.f5598b[length])) {
                    i = this.f5597a;
                } else {
                    length++;
                }
            }
            return -1;
        }
        if (length < iF) {
            return -1;
        }
        int length2 = this.f5598b.length;
        while (true) {
            if (length >= length2) {
                for (int i2 = 0; i2 < iF; i2++) {
                    if (Intrinsics.areEqual(element, this.f5598b[i2])) {
                        length = i2 + this.f5598b.length;
                        i = this.f5597a;
                    }
                }
                return -1;
            }
            if (Intrinsics.areEqual(element, this.f5598b[length])) {
                i = this.f5597a;
                break;
            }
            length++;
        }
        return length - i;
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object element) {
        int lastIndex;
        int i;
        int iF = f(size() + this.f5597a);
        int i2 = this.f5597a;
        if (i2 < iF) {
            lastIndex = iF - 1;
            if (i2 <= lastIndex) {
                while (!Intrinsics.areEqual(element, this.f5598b[lastIndex])) {
                    if (lastIndex != i2) {
                        lastIndex--;
                    }
                }
                i = this.f5597a;
                return lastIndex - i;
            }
            return -1;
        }
        if (i2 > iF) {
            int i3 = iF - 1;
            while (true) {
                if (-1 < i3) {
                    if (Intrinsics.areEqual(element, this.f5598b[i3])) {
                        lastIndex = i3 + this.f5598b.length;
                        i = this.f5597a;
                        break;
                    }
                    i3--;
                } else {
                    lastIndex = ArraysKt___ArraysKt.getLastIndex(this.f5598b);
                    int i4 = this.f5597a;
                    if (i4 <= lastIndex) {
                        while (!Intrinsics.areEqual(element, this.f5598b[lastIndex])) {
                            if (lastIndex != i4) {
                                lastIndex--;
                            }
                        }
                        i = this.f5597a;
                    }
                }
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object element) {
        int iIndexOf = indexOf(element);
        if (iIndexOf == -1) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }

    @Override // kotlin.collections.AbstractMutableList
    public E removeAt(int index) {
        AbstractList.INSTANCE.checkElementIndex$kotlin_stdlib(index, size());
        if (index == CollectionsKt__CollectionsKt.getLastIndex(this)) {
            return removeLast();
        }
        if (index == 0) {
            return removeFirst();
        }
        g();
        int iF = f(this.f5597a + index);
        E e = (E) this.f5598b[iF];
        if (index < (size() >> 1)) {
            int i = this.f5597a;
            if (iF >= i) {
                Object[] objArr = this.f5598b;
                ArraysKt___ArraysJvmKt.copyInto(objArr, objArr, i + 1, i, iF);
            } else {
                Object[] objArr2 = this.f5598b;
                ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr2, 1, 0, iF);
                Object[] objArr3 = this.f5598b;
                objArr3[0] = objArr3[objArr3.length - 1];
                int i2 = this.f5597a;
                ArraysKt___ArraysJvmKt.copyInto(objArr3, objArr3, i2 + 1, i2, objArr3.length - 1);
            }
            Object[] objArr4 = this.f5598b;
            int i3 = this.f5597a;
            objArr4[i3] = null;
            this.f5597a = c(i3);
        } else {
            int iF2 = f(this.f5597a + CollectionsKt__CollectionsKt.getLastIndex(this));
            if (iF <= iF2) {
                Object[] objArr5 = this.f5598b;
                ArraysKt___ArraysJvmKt.copyInto(objArr5, objArr5, iF, iF + 1, iF2 + 1);
            } else {
                Object[] objArr6 = this.f5598b;
                ArraysKt___ArraysJvmKt.copyInto(objArr6, objArr6, iF, iF + 1, objArr6.length);
                Object[] objArr7 = this.f5598b;
                objArr7[objArr7.length - 1] = objArr7[0];
                ArraysKt___ArraysJvmKt.copyInto(objArr7, objArr7, 0, 1, iF2 + 1);
            }
            this.f5598b[iF2] = null;
        }
        this.size = size() - 1;
        return e;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        if (!isEmpty()) {
            g();
            e(this.f5597a, f(size() + this.f5597a));
        }
        this.f5597a = 0;
        this.size = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @NotNull
    public <T> T[] toArray(@NotNull T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        if (array.length < size()) {
            array = (T[]) c.arrayOfNulls(array, size());
        }
        T[] tArr = array;
        int iF = f(size() + this.f5597a);
        int i = this.f5597a;
        if (i < iF) {
            ArraysKt___ArraysJvmKt.copyInto$default(this.f5598b, tArr, 0, i, iF, 2, (Object) null);
        } else if (!isEmpty()) {
            Object[] objArr = this.f5598b;
            ArraysKt___ArraysJvmKt.copyInto(objArr, tArr, 0, this.f5597a, objArr.length);
            Object[] objArr2 = this.f5598b;
            ArraysKt___ArraysJvmKt.copyInto(objArr2, tArr, objArr2.length - this.f5597a, 0, iF);
        }
        return (T[]) k.terminateCollectionToArray(size(), tArr);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @NotNull
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }

    @Override // java.util.AbstractList
    public void removeRange(int fromIndex, int toIndex) {
        AbstractList.INSTANCE.checkRangeIndexes$kotlin_stdlib(fromIndex, toIndex, size());
        int i = toIndex - fromIndex;
        if (i == 0) {
            return;
        }
        if (i == size()) {
            clear();
            return;
        }
        if (i == 1) {
            remove(fromIndex);
            return;
        }
        g();
        if (fromIndex < size() - toIndex) {
            int iF = f((fromIndex - 1) + this.f5597a);
            int iF2 = f((toIndex - 1) + this.f5597a);
            while (fromIndex > 0) {
                int i2 = iF + 1;
                int iMin = Math.min(fromIndex, Math.min(i2, iF2 + 1));
                Object[] objArr = this.f5598b;
                int i3 = iF2 - iMin;
                int i4 = iF - iMin;
                ArraysKt___ArraysJvmKt.copyInto(objArr, objArr, i3 + 1, i4 + 1, i2);
                iF = d(i4);
                iF2 = d(i3);
                fromIndex -= iMin;
            }
            int iF3 = f(this.f5597a + i);
            e(this.f5597a, iF3);
            this.f5597a = iF3;
        } else {
            int iF4 = f(this.f5597a + toIndex);
            int iF5 = f(this.f5597a + fromIndex);
            int size = size();
            while (true) {
                size -= toIndex;
                if (size <= 0) {
                    break;
                }
                Object[] objArr2 = this.f5598b;
                toIndex = Math.min(size, Math.min(objArr2.length - iF4, objArr2.length - iF5));
                Object[] objArr3 = this.f5598b;
                int i5 = iF4 + toIndex;
                ArraysKt___ArraysJvmKt.copyInto(objArr3, objArr3, iF5, iF4, i5);
                iF4 = f(i5);
                iF5 = f(iF5 + toIndex);
            }
            int iF6 = f(size() + this.f5597a);
            e(d(iF6 - i), iF6);
        }
        this.size = size() - i;
    }

    public final void e(int i, int i2) {
        if (i < i2) {
            ArraysKt___ArraysJvmKt.fill(this.f5598b, (Object) null, i, i2);
            return;
        }
        Object[] objArr = this.f5598b;
        ArraysKt___ArraysJvmKt.fill(objArr, (Object) null, i, objArr.length);
        ArraysKt___ArraysJvmKt.fill(this.f5598b, (Object) null, 0, i2);
    }

    public final void g() {
        ((java.util.AbstractList) this).modCount++;
    }

    @NotNull
    public final <T> T[] testToArray$kotlin_stdlib(@NotNull T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) toArray(array);
    }

    @NotNull
    public final Object[] testToArray$kotlin_stdlib() {
        return toArray();
    }

    public final void testRemoveRange$kotlin_stdlib(int fromIndex, int toIndex) {
        removeRange(fromIndex, toIndex);
    }

    public final void internalStructure$kotlin_stdlib(@NotNull Function2<? super Integer, ? super Object[], Unit> structure) {
        int i;
        Intrinsics.checkNotNullParameter(structure, "structure");
        structure.invoke(Integer.valueOf((isEmpty() || (i = this.f5597a) < f(size() + this.f5597a)) ? this.f5597a : i - this.f5598b.length), toArray());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        int iF;
        Intrinsics.checkNotNullParameter(elements, "elements");
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.f5598b.length != 0) {
            int iF2 = f(size() + this.f5597a);
            int i = this.f5597a;
            if (i < iF2) {
                iF = i;
                while (i < iF2) {
                    Object obj = this.f5598b[i];
                    if (elements.contains(obj)) {
                        z = true;
                    } else {
                        this.f5598b[iF] = obj;
                        iF++;
                    }
                    i++;
                }
                ArraysKt___ArraysJvmKt.fill(this.f5598b, (Object) null, iF, iF2);
            } else {
                int length = this.f5598b.length;
                int i2 = i;
                boolean z2 = false;
                while (i < length) {
                    Object[] objArr = this.f5598b;
                    Object obj2 = objArr[i];
                    objArr[i] = null;
                    if (elements.contains(obj2)) {
                        z2 = true;
                    } else {
                        this.f5598b[i2] = obj2;
                        i2++;
                    }
                    i++;
                }
                iF = f(i2);
                for (int i3 = 0; i3 < iF2; i3++) {
                    Object[] objArr2 = this.f5598b;
                    Object obj3 = objArr2[i3];
                    objArr2[i3] = null;
                    if (elements.contains(obj3)) {
                        z2 = true;
                    } else {
                        this.f5598b[iF] = obj3;
                        iF = c(iF);
                    }
                }
                z = z2;
            }
            if (z) {
                g();
                this.size = d(iF - this.f5597a);
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        int iF;
        Intrinsics.checkNotNullParameter(elements, "elements");
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.f5598b.length != 0) {
            int iF2 = f(size() + this.f5597a);
            int i = this.f5597a;
            if (i < iF2) {
                iF = i;
                while (i < iF2) {
                    Object obj = this.f5598b[i];
                    if (elements.contains(obj)) {
                        this.f5598b[iF] = obj;
                        iF++;
                    } else {
                        z = true;
                    }
                    i++;
                }
                ArraysKt___ArraysJvmKt.fill(this.f5598b, (Object) null, iF, iF2);
            } else {
                int length = this.f5598b.length;
                int i2 = i;
                boolean z2 = false;
                while (i < length) {
                    Object[] objArr = this.f5598b;
                    Object obj2 = objArr[i];
                    objArr[i] = null;
                    if (elements.contains(obj2)) {
                        this.f5598b[i2] = obj2;
                        i2++;
                    } else {
                        z2 = true;
                    }
                    i++;
                }
                iF = f(i2);
                for (int i3 = 0; i3 < iF2; i3++) {
                    Object[] objArr2 = this.f5598b;
                    Object obj3 = objArr2[i3];
                    objArr2[i3] = null;
                    if (elements.contains(obj3)) {
                        this.f5598b[iF] = obj3;
                        iF = c(iF);
                    } else {
                        z2 = true;
                    }
                }
                z = z2;
            }
            if (z) {
                g();
                this.size = d(iF - this.f5597a);
            }
        }
        return z;
    }
}
