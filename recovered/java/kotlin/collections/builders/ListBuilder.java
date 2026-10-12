package kotlin.collections.builders;

import com.google.appinventor.components.common.PropertyTypeConstants;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.ArraysKt;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.markers.KMutableListIterator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010)\n\u0002\b\u0002\n\u0002\u0010+\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u000f\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u00028\u00000\u00052\u00060\u0006j\u0002`\u0007:\u0003EFGB\u0011\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0013\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0013\u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00020\bH\u0096\u0002¢\u0006\u0004\b\u0013\u0010\u0014J \u0010\u0016\u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u001a\u0010\u0019J\u0016\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u001bH\u0096\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 J\u001d\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001e2\u0006\u0010\u0012\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001f\u0010!J\u0017\u0010\"\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\"\u0010#J\u001f\u0010\"\u001a\u00020$2\u0006\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\"\u0010%J\u001d\u0010(\u001a\u00020\u000f2\f\u0010'\u001a\b\u0012\u0004\u0012\u00028\u00000&H\u0016¢\u0006\u0004\b(\u0010)J%\u0010(\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\b2\f\u0010'\u001a\b\u0012\u0004\u0012\u00028\u00000&H\u0016¢\u0006\u0004\b(\u0010*J\u000f\u0010+\u001a\u00020$H\u0016¢\u0006\u0004\b+\u0010,J\u0017\u0010-\u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00020\bH\u0016¢\u0006\u0004\b-\u0010\u0014J\u0017\u0010.\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00028\u0000H\u0016¢\u0006\u0004\b.\u0010#J\u001d\u0010/\u001a\u00020\u000f2\f\u0010'\u001a\b\u0012\u0004\u0012\u00028\u00000&H\u0016¢\u0006\u0004\b/\u0010)J\u001d\u00100\u001a\u00020\u000f2\f\u0010'\u001a\b\u0012\u0004\u0012\u00028\u00000&H\u0016¢\u0006\u0004\b0\u0010)J%\u00103\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u00101\u001a\u00020\b2\u0006\u00102\u001a\u00020\bH\u0016¢\u0006\u0004\b3\u00104J)\u00108\u001a\b\u0012\u0004\u0012\u00028\u000106\"\u0004\b\u0001\u001052\f\u00107\u001a\b\u0012\u0004\u0012\u00028\u000106H\u0016¢\u0006\u0004\b8\u00109J\u0017\u00108\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010:06H\u0016¢\u0006\u0004\b8\u0010;J\u001a\u0010=\u001a\u00020\u000f2\b\u0010<\u001a\u0004\u0018\u00010:H\u0096\u0002¢\u0006\u0004\b=\u0010#J\u000f\u0010>\u001a\u00020\bH\u0016¢\u0006\u0004\b>\u0010?J\u000f\u0010A\u001a\u00020@H\u0016¢\u0006\u0004\bA\u0010BR\u0014\u0010D\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bC\u0010?¨\u0006H"}, d2 = {"Lkotlin/collections/builders/ListBuilder;", "E", "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Lkotlin/collections/AbstractMutableList;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "initialCapacity", "<init>", "(I)V", "", "build", "()Ljava/util/List;", "", "isEmpty", "()Z", "index", "get", "(I)Ljava/lang/Object;", "element", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "", "iterator", "()Ljava/util/Iterator;", "", "listIterator", "()Ljava/util/ListIterator;", "(I)Ljava/util/ListIterator;", "add", "(Ljava/lang/Object;)Z", "", "(ILjava/lang/Object;)V", "", "elements", "addAll", "(Ljava/util/Collection;)Z", "(ILjava/util/Collection;)Z", "clear", "()V", "removeAt", "remove", "removeAll", "retainAll", "fromIndex", "toIndex", "subList", "(II)Ljava/util/List;", "T", "", "array", "toArray", "([Ljava/lang/Object;)[Ljava/lang/Object;", "", "()[Ljava/lang/Object;", "other", "equals", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "getSize", "size", "a", "b", "BuilderSubList", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/ListBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,718:1\n1#2:719\n*E\n"})
/* loaded from: classes2.dex */
public final class ListBuilder<E> extends AbstractMutableList<E> implements List<E>, RandomAccess, Serializable, KMutableList {
    public static final ListBuilder d;

    /* renamed from: a, reason: collision with root package name */
    public Object[] f5656a;

    /* renamed from: b, reason: collision with root package name */
    public int f5657b;
    public boolean c;

    public ListBuilder() {
        this(0, 1, null);
    }

    public ListBuilder(int i) {
        this.f5656a = ListBuilderKt.arrayOfUninitializedElements(i);
    }

    public /* synthetic */ ListBuilder(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 10 : i);
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlin/collections/builders/ListBuilder$a;", "", "<init>", "()V", "Lkotlin/collections/builders/ListBuilder;", "", "Empty", "Lkotlin/collections/builders/ListBuilder;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static {
        new a(null);
        ListBuilder listBuilder = new ListBuilder(0);
        listBuilder.c = true;
        d = listBuilder;
    }

    @NotNull
    public final List<E> build() {
        b();
        this.c = true;
        return this.f5657b > 0 ? this : d;
    }

    @Override // kotlin.collections.AbstractMutableList
    /* renamed from: getSize, reason: from getter */
    public int getF5657b() {
        return this.f5657b;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return this.f5657b == 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int index) {
        AbstractList.INSTANCE.checkElementIndex$kotlin_stdlib(index, this.f5657b);
        return (E) this.f5656a[index];
    }

    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public E set(int index, E element) {
        b();
        AbstractList.INSTANCE.checkElementIndex$kotlin_stdlib(index, this.f5657b);
        Object[] objArr = this.f5656a;
        E e = (E) objArr[index];
        objArr[index] = element;
        return e;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object element) {
        for (int i = 0; i < this.f5657b; i++) {
            if (Intrinsics.areEqual(this.f5656a[i], element)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object element) {
        for (int i = this.f5657b - 1; i >= 0; i--) {
            if (Intrinsics.areEqual(this.f5656a[i], element)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<E> iterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    public ListIterator<E> listIterator(int index) {
        AbstractList.INSTANCE.checkPositionIndex$kotlin_stdlib(index, this.f5657b);
        return new b(this, index);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E element) {
        b();
        int i = this.f5657b;
        ((java.util.AbstractList) this).modCount++;
        c(i, 1);
        this.f5656a[i] = element;
        return true;
    }

    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public void add(int index, E element) {
        b();
        AbstractList.INSTANCE.checkPositionIndex$kotlin_stdlib(index, this.f5657b);
        ((java.util.AbstractList) this).modCount++;
        c(index, 1);
        this.f5656a[index] = element;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        b();
        int size = elements.size();
        a(this.f5657b, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int index, @NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        b();
        AbstractList.INSTANCE.checkPositionIndex$kotlin_stdlib(index, this.f5657b);
        int size = elements.size();
        a(index, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        b();
        e(0, this.f5657b);
    }

    @Override // kotlin.collections.AbstractMutableList
    public E removeAt(int index) {
        b();
        AbstractList.INSTANCE.checkElementIndex$kotlin_stdlib(index, this.f5657b);
        return (E) d(index);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object element) {
        b();
        int iIndexOf = indexOf(element);
        if (iIndexOf >= 0) {
            remove(iIndexOf);
        }
        return iIndexOf >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        b();
        return f(0, this.f5657b, elements, false) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        b();
        return f(0, this.f5657b, elements, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    public List<E> subList(int fromIndex, int toIndex) {
        AbstractList.INSTANCE.checkRangeIndexes$kotlin_stdlib(fromIndex, toIndex, this.f5657b);
        return new BuilderSubList(this.f5656a, fromIndex, toIndex - fromIndex, null, this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @NotNull
    public <T> T[] toArray(@NotNull T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        int length = array.length;
        int i = this.f5657b;
        if (length < i) {
            T[] tArr = (T[]) Arrays.copyOfRange(this.f5656a, 0, i, array.getClass());
            Intrinsics.checkNotNullExpressionValue(tArr, "copyOfRange(...)");
            return tArr;
        }
        ArraysKt___ArraysJvmKt.copyInto(this.f5656a, array, 0, 0, i);
        return (T[]) CollectionsKt.terminateCollectionToArray(this.f5657b, array);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @NotNull
    public Object[] toArray() {
        return ArraysKt.copyOfRange(this.f5656a, 0, this.f5657b);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(@Nullable Object other) {
        if (other == this) {
            return true;
        }
        if (other instanceof List) {
            if (ListBuilderKt.access$subarrayContentEquals(this.f5656a, 0, this.f5657b, (List) other)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        return ListBuilderKt.access$subarrayContentHashCode(this.f5656a, 0, this.f5657b);
    }

    @Override // java.util.AbstractCollection
    @NotNull
    public String toString() {
        return ListBuilderKt.access$subarrayContentToString(this.f5656a, 0, this.f5657b, this);
    }

    public static final void access$addAtInternal(ListBuilder listBuilder, int i, Object obj) {
        ((java.util.AbstractList) listBuilder).modCount++;
        listBuilder.c(i, 1);
        listBuilder.f5656a[i] = obj;
    }

    public final void a(int i, Collection collection, int i2) {
        ((java.util.AbstractList) this).modCount++;
        c(i, i2);
        Iterator<E> it = collection.iterator();
        for (int i3 = 0; i3 < i2; i3++) {
            this.f5656a[i + i3] = it.next();
        }
    }

    public final Object d(int i) {
        ((java.util.AbstractList) this).modCount++;
        Object[] objArr = this.f5656a;
        Object obj = objArr[i];
        ArraysKt___ArraysJvmKt.copyInto(objArr, objArr, i, i + 1, this.f5657b);
        ListBuilderKt.resetAt(this.f5656a, this.f5657b - 1);
        this.f5657b--;
        return obj;
    }

    public final void e(int i, int i2) {
        if (i2 > 0) {
            ((java.util.AbstractList) this).modCount++;
        }
        Object[] objArr = this.f5656a;
        ArraysKt___ArraysJvmKt.copyInto(objArr, objArr, i, i + i2, this.f5657b);
        Object[] objArr2 = this.f5656a;
        int i3 = this.f5657b;
        ListBuilderKt.resetRange(objArr2, i3 - i2, i3);
        this.f5657b -= i2;
    }

    public final void b() {
        if (this.c) {
            throw new UnsupportedOperationException();
        }
    }

    public final void c(int i, int i2) {
        int i3 = this.f5657b + i2;
        if (i3 < 0) {
            throw new OutOfMemoryError();
        }
        Object[] objArr = this.f5656a;
        if (i3 > objArr.length) {
            this.f5656a = ListBuilderKt.copyOfUninitializedElements(this.f5656a, AbstractList.INSTANCE.newCapacity$kotlin_stdlib(objArr.length, i3));
        }
        Object[] objArr2 = this.f5656a;
        ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr2, i + i2, i, this.f5657b);
        this.f5657b += i2;
    }

    public final int f(int i, int i2, Collection collection, boolean z) {
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i + i3;
            if (collection.contains(this.f5656a[i5]) == z) {
                Object[] objArr = this.f5656a;
                i3++;
                objArr[i4 + i] = objArr[i5];
                i4++;
            } else {
                i3++;
            }
        }
        int i6 = i2 - i4;
        Object[] objArr2 = this.f5656a;
        ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr2, i + i4, i2 + i, this.f5657b);
        Object[] objArr3 = this.f5656a;
        int i7 = this.f5657b;
        ListBuilderKt.resetRange(objArr3, i7 - i6, i7);
        if (i6 > 0) {
            ((java.util.AbstractList) this).modCount++;
        }
        this.f5657b -= i6;
        return i6;
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\tH\u0096\u0002¢\u0006\u0004\b\f\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b\u0012\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0017\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lkotlin/collections/builders/ListBuilder$b;", "E", "", "Lkotlin/collections/builders/ListBuilder;", "list", "", "index", "<init>", "(Lkotlin/collections/builders/ListBuilder;I)V", "", "hasPrevious", "()Z", "hasNext", "previousIndex", "()I", "nextIndex", "previous", "()Ljava/lang/Object;", "next", "element", "", "set", "(Ljava/lang/Object;)V", "add", "remove", "()V", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/ListBuilder$Itr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,718:1\n1#2:719\n*E\n"})
    public static final class b<E> implements ListIterator<E>, KMutableListIterator {

        /* renamed from: a, reason: collision with root package name */
        public final ListBuilder f5662a;

        /* renamed from: b, reason: collision with root package name */
        public int f5663b;
        public int c;
        public int d;

        public b(@NotNull ListBuilder<E> list, int i) {
            Intrinsics.checkNotNullParameter(list, "list");
            this.f5662a = list;
            this.f5663b = i;
            this.c = -1;
            this.d = ((java.util.AbstractList) list).modCount;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f5663b > 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f5663b < this.f5662a.f5657b;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f5663b - 1;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f5663b;
        }

        @Override // java.util.ListIterator
        public E previous() {
            a();
            int i = this.f5663b;
            if (i <= 0) {
                throw new NoSuchElementException();
            }
            int i2 = i - 1;
            this.f5663b = i2;
            this.c = i2;
            return (E) this.f5662a.f5656a[this.c];
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public E next() {
            a();
            int i = this.f5663b;
            ListBuilder listBuilder = this.f5662a;
            if (i >= listBuilder.f5657b) {
                throw new NoSuchElementException();
            }
            int i2 = this.f5663b;
            this.f5663b = i2 + 1;
            this.c = i2;
            return (E) listBuilder.f5656a[this.c];
        }

        @Override // java.util.ListIterator
        public void set(E element) {
            a();
            int i = this.c;
            if (i == -1) {
                throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
            }
            this.f5662a.set(i, element);
        }

        @Override // java.util.ListIterator
        public void add(E element) {
            a();
            int i = this.f5663b;
            this.f5663b = i + 1;
            ListBuilder listBuilder = this.f5662a;
            listBuilder.add(i, element);
            this.c = -1;
            this.d = ((java.util.AbstractList) listBuilder).modCount;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            a();
            int i = this.c;
            if (i == -1) {
                throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
            }
            ListBuilder listBuilder = this.f5662a;
            listBuilder.remove(i);
            this.f5663b = this.c;
            this.c = -1;
            this.d = ((java.util.AbstractList) listBuilder).modCount;
        }

        public final void a() {
            if (((java.util.AbstractList) this.f5662a).modCount != this.d) {
                throw new ConcurrentModificationException();
            }
        }
    }

    @Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010)\n\u0002\b\u0002\n\u0002\u0010+\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0012\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u00028\u00010\u00052\u00060\u0006j\u0002`\u0007:\u0001GBC\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0000\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0018\u0010\u0016\u001a\u00028\u00012\u0006\u0010\u0015\u001a\u00020\nH\u0096\u0002¢\u0006\u0004\b\u0016\u0010\u0017J \u0010\u0019\u001a\u00028\u00012\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u001d\u0010\u001cJ\u0016\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00010\u001eH\u0096\u0002¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00010!H\u0016¢\u0006\u0004\b\"\u0010#J\u001d\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00010!2\u0006\u0010\u0015\u001a\u00020\nH\u0016¢\u0006\u0004\b\"\u0010$J\u0017\u0010%\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00028\u0001H\u0016¢\u0006\u0004\b%\u0010&J\u001f\u0010%\u001a\u00020'2\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00028\u0001H\u0016¢\u0006\u0004\b%\u0010(J\u001d\u0010+\u001a\u00020\u00122\f\u0010*\u001a\b\u0012\u0004\u0012\u00028\u00010)H\u0016¢\u0006\u0004\b+\u0010,J%\u0010+\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\n2\f\u0010*\u001a\b\u0012\u0004\u0012\u00028\u00010)H\u0016¢\u0006\u0004\b+\u0010-J\u000f\u0010.\u001a\u00020'H\u0016¢\u0006\u0004\b.\u0010/J\u0017\u00100\u001a\u00028\u00012\u0006\u0010\u0015\u001a\u00020\nH\u0016¢\u0006\u0004\b0\u0010\u0017J\u0017\u00101\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00028\u0001H\u0016¢\u0006\u0004\b1\u0010&J\u001d\u00102\u001a\u00020\u00122\f\u0010*\u001a\b\u0012\u0004\u0012\u00028\u00010)H\u0016¢\u0006\u0004\b2\u0010,J\u001d\u00103\u001a\u00020\u00122\f\u0010*\u001a\b\u0012\u0004\u0012\u00028\u00010)H\u0016¢\u0006\u0004\b3\u0010,J%\u00106\u001a\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u00104\u001a\u00020\n2\u0006\u00105\u001a\u00020\nH\u0016¢\u0006\u0004\b6\u00107J)\u0010:\u001a\b\u0012\u0004\u0012\u00028\u00020\b\"\u0004\b\u0002\u001082\f\u00109\u001a\b\u0012\u0004\u0012\u00028\u00020\bH\u0016¢\u0006\u0004\b:\u0010;J\u0017\u0010:\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010<0\bH\u0016¢\u0006\u0004\b:\u0010=J\u001a\u0010?\u001a\u00020\u00122\b\u0010>\u001a\u0004\u0018\u00010<H\u0096\u0002¢\u0006\u0004\b?\u0010&J\u000f\u0010@\u001a\u00020\nH\u0016¢\u0006\u0004\b@\u0010AJ\u000f\u0010C\u001a\u00020BH\u0016¢\u0006\u0004\bC\u0010DR\u0014\u0010F\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bE\u0010A¨\u0006H"}, d2 = {"Lkotlin/collections/builders/ListBuilder$BuilderSubList;", "E", "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Lkotlin/collections/AbstractMutableList;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "backing", "", "offset", PropertyTypeConstants.PROPERTY_TYPE_LENGTH, "parent", "Lkotlin/collections/builders/ListBuilder;", "root", "<init>", "([Ljava/lang/Object;IILkotlin/collections/builders/ListBuilder$BuilderSubList;Lkotlin/collections/builders/ListBuilder;)V", "", "isEmpty", "()Z", "index", "get", "(I)Ljava/lang/Object;", "element", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "", "iterator", "()Ljava/util/Iterator;", "", "listIterator", "()Ljava/util/ListIterator;", "(I)Ljava/util/ListIterator;", "add", "(Ljava/lang/Object;)Z", "", "(ILjava/lang/Object;)V", "", "elements", "addAll", "(Ljava/util/Collection;)Z", "(ILjava/util/Collection;)Z", "clear", "()V", "removeAt", "remove", "removeAll", "retainAll", "fromIndex", "toIndex", "subList", "(II)Ljava/util/List;", "T", "array", "toArray", "([Ljava/lang/Object;)[Ljava/lang/Object;", "", "()[Ljava/lang/Object;", "other", "equals", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "getSize", "size", "a", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class BuilderSubList<E> extends AbstractMutableList<E> implements List<E>, RandomAccess, Serializable, KMutableList {

        /* renamed from: a, reason: collision with root package name */
        public Object[] f5658a;

        /* renamed from: b, reason: collision with root package name */
        public final int f5659b;
        public int c;
        public final BuilderSubList d;
        public final ListBuilder e;

        public BuilderSubList(@NotNull E[] backing, int i, int i2, @Nullable BuilderSubList<E> builderSubList, @NotNull ListBuilder<E> root) {
            Intrinsics.checkNotNullParameter(backing, "backing");
            Intrinsics.checkNotNullParameter(root, "root");
            this.f5658a = backing;
            this.f5659b = i;
            this.c = i2;
            this.d = builderSubList;
            this.e = root;
            ((java.util.AbstractList) this).modCount = ((java.util.AbstractList) root).modCount;
        }

        @Override // kotlin.collections.AbstractMutableList
        /* renamed from: getSize */
        public int getF5657b() {
            c();
            return this.c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            c();
            return this.c == 0;
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int index) {
            c();
            AbstractList.INSTANCE.checkElementIndex$kotlin_stdlib(index, this.c);
            return (E) this.f5658a[this.f5659b + index];
        }

        @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
        public E set(int index, E element) {
            d();
            c();
            AbstractList.INSTANCE.checkElementIndex$kotlin_stdlib(index, this.c);
            Object[] objArr = this.f5658a;
            int i = this.f5659b;
            E e = (E) objArr[i + index];
            objArr[i + index] = element;
            return e;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object element) {
            c();
            for (int i = 0; i < this.c; i++) {
                if (Intrinsics.areEqual(this.f5658a[this.f5659b + i], element)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object element) {
            c();
            for (int i = this.c - 1; i >= 0; i--) {
                if (Intrinsics.areEqual(this.f5658a[this.f5659b + i], element)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        @NotNull
        public Iterator<E> iterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractList, java.util.List
        @NotNull
        public ListIterator<E> listIterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractList, java.util.List
        @NotNull
        public ListIterator<E> listIterator(int index) {
            c();
            AbstractList.INSTANCE.checkPositionIndex$kotlin_stdlib(index, this.c);
            return new a(this, index);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean add(E element) {
            d();
            c();
            b(this.f5659b + this.c, element);
            return true;
        }

        @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
        public void add(int index, E element) {
            d();
            c();
            AbstractList.INSTANCE.checkPositionIndex$kotlin_stdlib(index, this.c);
            b(this.f5659b + index, element);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean addAll(@NotNull Collection<? extends E> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            d();
            c();
            int size = elements.size();
            a(this.f5659b + this.c, elements, size);
            return size > 0;
        }

        @Override // java.util.AbstractList, java.util.List
        public boolean addAll(int index, @NotNull Collection<? extends E> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            d();
            c();
            AbstractList.INSTANCE.checkPositionIndex$kotlin_stdlib(index, this.c);
            int size = elements.size();
            a(this.f5659b + index, elements, size);
            return size > 0;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            d();
            c();
            f(this.f5659b, this.c);
        }

        @Override // kotlin.collections.AbstractMutableList
        public E removeAt(int index) {
            d();
            c();
            AbstractList.INSTANCE.checkElementIndex$kotlin_stdlib(index, this.c);
            return (E) e(this.f5659b + index);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean remove(Object element) {
            d();
            c();
            int iIndexOf = indexOf(element);
            if (iIndexOf >= 0) {
                remove(iIndexOf);
            }
            return iIndexOf >= 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean removeAll(@NotNull Collection<? extends Object> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            d();
            c();
            return g(this.f5659b, this.c, elements, false) > 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean retainAll(@NotNull Collection<? extends Object> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            d();
            c();
            return g(this.f5659b, this.c, elements, true) > 0;
        }

        @Override // java.util.AbstractList, java.util.List
        @NotNull
        public List<E> subList(int fromIndex, int toIndex) {
            AbstractList.INSTANCE.checkRangeIndexes$kotlin_stdlib(fromIndex, toIndex, this.c);
            return new BuilderSubList(this.f5658a, this.f5659b + fromIndex, toIndex - fromIndex, this, this.e);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        @NotNull
        public <T> T[] toArray(@NotNull T[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            c();
            int length = array.length;
            int i = this.c;
            int i2 = this.f5659b;
            if (length < i) {
                T[] tArr = (T[]) Arrays.copyOfRange(this.f5658a, i2, i + i2, array.getClass());
                Intrinsics.checkNotNullExpressionValue(tArr, "copyOfRange(...)");
                return tArr;
            }
            ArraysKt___ArraysJvmKt.copyInto(this.f5658a, array, 0, i2, i + i2);
            return (T[]) CollectionsKt.terminateCollectionToArray(this.c, array);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        @NotNull
        public Object[] toArray() {
            c();
            Object[] objArr = this.f5658a;
            int i = this.c;
            int i2 = this.f5659b;
            return ArraysKt.copyOfRange(objArr, i2, i + i2);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@Nullable Object other) {
            c();
            if (other == this) {
                return true;
            }
            if (other instanceof List) {
                return ListBuilderKt.access$subarrayContentEquals(this.f5658a, this.f5659b, this.c, (List) other);
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            c();
            return ListBuilderKt.access$subarrayContentHashCode(this.f5658a, this.f5659b, this.c);
        }

        @Override // java.util.AbstractCollection
        @NotNull
        public String toString() {
            c();
            return ListBuilderKt.access$subarrayContentToString(this.f5658a, this.f5659b, this.c, this);
        }

        public final void a(int i, Collection collection, int i2) {
            ((java.util.AbstractList) this).modCount++;
            ListBuilder listBuilder = this.e;
            BuilderSubList builderSubList = this.d;
            if (builderSubList == null) {
                listBuilder.a(i, collection, i2);
            } else {
                builderSubList.a(i, collection, i2);
            }
            this.f5658a = listBuilder.f5656a;
            this.c += i2;
        }

        public final void b(int i, Object obj) {
            ((java.util.AbstractList) this).modCount++;
            ListBuilder listBuilder = this.e;
            BuilderSubList builderSubList = this.d;
            if (builderSubList != null) {
                builderSubList.b(i, obj);
            } else {
                ListBuilder.access$addAtInternal(listBuilder, i, obj);
            }
            this.f5658a = listBuilder.f5656a;
            this.c++;
        }

        public final Object e(int i) {
            Object objD;
            ((java.util.AbstractList) this).modCount++;
            BuilderSubList builderSubList = this.d;
            if (builderSubList == null) {
                objD = this.e.d(i);
            } else {
                objD = builderSubList.e(i);
            }
            this.c--;
            return objD;
        }

        public final void f(int i, int i2) {
            if (i2 > 0) {
                ((java.util.AbstractList) this).modCount++;
            }
            BuilderSubList builderSubList = this.d;
            if (builderSubList == null) {
                this.e.e(i, i2);
            } else {
                builderSubList.f(i, i2);
            }
            this.c -= i2;
        }

        public final void c() {
            if (((java.util.AbstractList) this.e).modCount != ((java.util.AbstractList) this).modCount) {
                throw new ConcurrentModificationException();
            }
        }

        public final void d() {
            if (this.e.c) {
                throw new UnsupportedOperationException();
            }
        }

        public final int g(int i, int i2, Collection collection, boolean z) {
            int iF;
            BuilderSubList builderSubList = this.d;
            if (builderSubList == null) {
                iF = this.e.f(i, i2, collection, z);
            } else {
                iF = builderSubList.g(i, i2, collection, z);
            }
            if (iF > 0) {
                ((java.util.AbstractList) this).modCount++;
            }
            this.c -= iF;
            return iF;
        }

        @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0002\u0010\u00012\b\u0012\u0004\u0012\u00028\u00020\u0002B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\tH\u0096\u0002¢\u0006\u0004\b\f\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00028\u0002H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00028\u0002H\u0096\u0002¢\u0006\u0004\b\u0012\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00028\u0002H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00028\u0002H\u0016¢\u0006\u0004\b\u0017\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;", "E", "", "Lkotlin/collections/builders/ListBuilder$BuilderSubList;", "list", "", "index", "<init>", "(Lkotlin/collections/builders/ListBuilder$BuilderSubList;I)V", "", "hasPrevious", "()Z", "hasNext", "previousIndex", "()I", "nextIndex", "previous", "()Ljava/lang/Object;", "next", "element", "", "set", "(Ljava/lang/Object;)V", "add", "remove", "()V", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
        @SourceDebugExtension({"SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/ListBuilder$BuilderSubList$Itr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,718:1\n1#2:719\n*E\n"})
        public static final class a<E> implements ListIterator<E>, KMutableListIterator {

            /* renamed from: a, reason: collision with root package name */
            public final BuilderSubList f5660a;

            /* renamed from: b, reason: collision with root package name */
            public int f5661b;
            public int c;
            public int d;

            public a(@NotNull BuilderSubList<E> list, int i) {
                Intrinsics.checkNotNullParameter(list, "list");
                this.f5660a = list;
                this.f5661b = i;
                this.c = -1;
                this.d = ((java.util.AbstractList) list).modCount;
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return this.f5661b > 0;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public boolean hasNext() {
                return this.f5661b < this.f5660a.c;
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return this.f5661b - 1;
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return this.f5661b;
            }

            @Override // java.util.ListIterator
            public E previous() {
                a();
                int i = this.f5661b;
                if (i <= 0) {
                    throw new NoSuchElementException();
                }
                int i2 = i - 1;
                this.f5661b = i2;
                this.c = i2;
                BuilderSubList builderSubList = this.f5660a;
                return (E) builderSubList.f5658a[builderSubList.f5659b + this.c];
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public E next() {
                a();
                int i = this.f5661b;
                BuilderSubList builderSubList = this.f5660a;
                if (i >= builderSubList.c) {
                    throw new NoSuchElementException();
                }
                int i2 = this.f5661b;
                this.f5661b = i2 + 1;
                this.c = i2;
                return (E) builderSubList.f5658a[builderSubList.f5659b + this.c];
            }

            @Override // java.util.ListIterator
            public void set(E element) {
                a();
                int i = this.c;
                if (i == -1) {
                    throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
                }
                this.f5660a.set(i, element);
            }

            @Override // java.util.ListIterator
            public void add(E element) {
                a();
                int i = this.f5661b;
                this.f5661b = i + 1;
                BuilderSubList builderSubList = this.f5660a;
                builderSubList.add(i, element);
                this.c = -1;
                this.d = ((java.util.AbstractList) builderSubList).modCount;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public void remove() {
                a();
                int i = this.c;
                if (i == -1) {
                    throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
                }
                BuilderSubList builderSubList = this.f5660a;
                builderSubList.remove(i);
                this.f5661b = this.c;
                this.c = -1;
                this.d = ((java.util.AbstractList) builderSubList).modCount;
            }

            public final void a() {
                if (((java.util.AbstractList) this.f5660a.e).modCount != this.d) {
                    throw new ConcurrentModificationException();
                }
            }
        }
    }
}
