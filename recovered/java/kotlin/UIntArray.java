package kotlin;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;

@SinceKotlin(version = "1.3")
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\u0015\b\u0087@\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001,B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0001\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fHÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0003H\u0086\u0002¢\u0006\u0004\b\u0015\u0010\u0016J \u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0002H\u0086\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0016\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00020\u001dH\u0096\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0018\u0010$\u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\"\u0010#J\u001d\u0010(\u001a\u00020\u00112\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010+\u001a\u00020\u0011H\u0016¢\u0006\u0004\b)\u0010*R\u001a\u0010\b\u001a\u00020\u00078\u0000X\u0081\u0004¢\u0006\f\n\u0004\b,\u0010-\u0012\u0004\b.\u0010/R\u0014\u0010\u0004\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b0\u00101\u0088\u0001\b\u0092\u0001\u00020\u0007¨\u00062"}, d2 = {"Lkotlin/UIntArray;", "", "Lkotlin/UInt;", "", "size", "constructor-impl", "(I)[I", "", "storage", "([I)[I", "", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "index", "get-pVg5ArA", "([II)I", "get", "value", "", "set-VXSXFK8", "([III)V", "set", "", "iterator-impl", "([I)Ljava/util/Iterator;", "iterator", "element", "contains-WZ4Q5Ns", "([II)Z", "contains", "elements", "containsAll-impl", "([ILjava/util/Collection;)Z", "containsAll", "isEmpty-impl", "([I)Z", "isEmpty", "a", "[I", "getStorage$annotations", "()V", "getSize-impl", "([I)I", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@ExperimentalUnsignedTypes
@JvmInline
@SourceDebugExtension({"SMAP\nUIntArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UIntArray.kt\nkotlin/UIntArray\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n1734#2,3:83\n*S KotlinDebug\n*F\n+ 1 UIntArray.kt\nkotlin/UIntArray\n*L\n58#1:83,3\n*E\n"})
/* loaded from: classes2.dex */
public final class UIntArray implements Collection<UInt>, KMappedMarker {

    /* renamed from: a, reason: collision with root package name and from kotlin metadata */
    public final int[] storage;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ UIntArray m606boximpl(int[] iArr) {
        return new UIntArray(iArr);
    }

    @PublishedApi
    @NotNull
    /* renamed from: constructor-impl, reason: not valid java name */
    public static int[] m608constructorimpl(@NotNull int[] storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        return storage;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m611equalsimpl(int[] iArr, Object obj) {
        return (obj instanceof UIntArray) && Intrinsics.areEqual(iArr, ((UIntArray) obj).getStorage());
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m612equalsimpl0(int[] iArr, int[] iArr2) {
        return Intrinsics.areEqual(iArr, iArr2);
    }

    @PublishedApi
    public static /* synthetic */ void getStorage$annotations() {
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m615hashCodeimpl(int[] iArr) {
        return Arrays.hashCode(iArr);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m619toStringimpl(int[] iArr) {
        return "UIntArray(storage=" + Arrays.toString(iArr) + ')';
    }

    @Override // java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(UInt uInt) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: add-WZ4Q5Ns, reason: not valid java name */
    public boolean m620addWZ4Q5Ns(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends UInt> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean equals(Object other) {
        return m611equalsimpl(this.storage, other);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return m615hashCodeimpl(this.storage);
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) CollectionToArray.toArray(this, array);
    }

    public String toString() {
        return m619toStringimpl(this.storage);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ int[] getStorage() {
        return this.storage;
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof UInt) {
            return m621containsWZ4Q5Ns(((UInt) obj).getData());
        }
        return false;
    }

    public /* synthetic */ UIntArray(int[] iArr) {
        this.storage = iArr;
    }

    @NotNull
    /* renamed from: constructor-impl, reason: not valid java name */
    public static int[] m607constructorimpl(int i) {
        return m608constructorimpl(new int[i]);
    }

    /* renamed from: get-pVg5ArA, reason: not valid java name */
    public static final int m613getpVg5ArA(int[] iArr, int i) {
        return UInt.m600constructorimpl(iArr[i]);
    }

    /* renamed from: set-VXSXFK8, reason: not valid java name */
    public static final void m618setVXSXFK8(int[] iArr, int i, int i2) {
        iArr[i] = i2;
    }

    /* renamed from: getSize-impl, reason: not valid java name */
    public static int m614getSizeimpl(int[] iArr) {
        return iArr.length;
    }

    @Override // java.util.Collection
    /* renamed from: getSize, reason: merged with bridge method [inline-methods] */
    public int size() {
        return m614getSizeimpl(this.storage);
    }

    @NotNull
    /* renamed from: iterator-impl, reason: not valid java name */
    public static Iterator<UInt> m617iteratorimpl(int[] iArr) {
        return new a(iArr);
    }

    @Override // java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<UInt> iterator() {
        return m617iteratorimpl(this.storage);
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u0007H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\f\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lkotlin/UIntArray$a;", "", "Lkotlin/UInt;", "", "array", "<init>", "([I)V", "", "hasNext", "()Z", "next-pVg5ArA", "()I", "next", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class a implements Iterator<UInt>, KMappedMarker {

        /* renamed from: a, reason: collision with root package name */
        public final int[] f5567a;

        /* renamed from: b, reason: collision with root package name */
        public int f5568b;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public a(@NotNull int[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            this.f5567a = array;
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ UInt next() {
            return UInt.m599boximpl(m623nextpVg5ArA());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f5568b < this.f5567a.length;
        }

        /* renamed from: next-pVg5ArA, reason: not valid java name */
        public int m623nextpVg5ArA() {
            int i = this.f5568b;
            int[] iArr = this.f5567a;
            if (i >= iArr.length) {
                throw new NoSuchElementException(String.valueOf(this.f5568b));
            }
            this.f5568b = i + 1;
            return UInt.m600constructorimpl(iArr[i]);
        }
    }

    /* renamed from: contains-WZ4Q5Ns, reason: not valid java name */
    public boolean m621containsWZ4Q5Ns(int i) {
        return m609containsWZ4Q5Ns(this.storage, i);
    }

    /* renamed from: contains-WZ4Q5Ns, reason: not valid java name */
    public static boolean m609containsWZ4Q5Ns(int[] iArr, int i) {
        return ArraysKt.contains(iArr, i);
    }

    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return m610containsAllimpl(this.storage, elements);
    }

    /* renamed from: containsAll-impl, reason: not valid java name */
    public static boolean m610containsAllimpl(int[] iArr, @NotNull Collection<UInt> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Collection<UInt> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        for (Object obj : collection) {
            if (!(obj instanceof UInt) || !ArraysKt.contains(iArr, ((UInt) obj).getData())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: isEmpty-impl, reason: not valid java name */
    public static boolean m616isEmptyimpl(int[] iArr) {
        return iArr.length == 0;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m616isEmptyimpl(this.storage);
    }
}
