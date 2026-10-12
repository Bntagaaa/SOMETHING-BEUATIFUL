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
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\u0015\b\u0087@\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001,B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0001\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fHÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0003H\u0086\u0002¢\u0006\u0004\b\u0015\u0010\u0016J \u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0002H\u0086\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0016\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00020\u001dH\u0096\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0018\u0010$\u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\"\u0010#J\u001d\u0010(\u001a\u00020\u00112\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010+\u001a\u00020\u0011H\u0016¢\u0006\u0004\b)\u0010*R\u001a\u0010\b\u001a\u00020\u00078\u0000X\u0081\u0004¢\u0006\f\n\u0004\b,\u0010-\u0012\u0004\b.\u0010/R\u0014\u0010\u0004\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b0\u00101\u0088\u0001\b\u0092\u0001\u00020\u0007¨\u00062"}, d2 = {"Lkotlin/UByteArray;", "", "Lkotlin/UByte;", "", "size", "constructor-impl", "(I)[B", "", "storage", "([B)[B", "", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "index", "get-w2LRezQ", "([BI)B", "get", "value", "", "set-VurrAj0", "([BIB)V", "set", "", "iterator-impl", "([B)Ljava/util/Iterator;", "iterator", "element", "contains-7apg3OU", "([BB)Z", "contains", "elements", "containsAll-impl", "([BLjava/util/Collection;)Z", "containsAll", "isEmpty-impl", "([B)Z", "isEmpty", "a", "[B", "getStorage$annotations", "()V", "getSize-impl", "([B)I", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@ExperimentalUnsignedTypes
@JvmInline
@SourceDebugExtension({"SMAP\nUByteArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UByteArray.kt\nkotlin/UByteArray\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n1734#2,3:83\n*S KotlinDebug\n*F\n+ 1 UByteArray.kt\nkotlin/UByteArray\n*L\n58#1:83,3\n*E\n"})
/* loaded from: classes2.dex */
public final class UByteArray implements Collection<UByte>, KMappedMarker {

    /* renamed from: a, reason: collision with root package name and from kotlin metadata */
    public final byte[] storage;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ UByteArray m581boximpl(byte[] bArr) {
        return new UByteArray(bArr);
    }

    @PublishedApi
    @NotNull
    /* renamed from: constructor-impl, reason: not valid java name */
    public static byte[] m583constructorimpl(@NotNull byte[] storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        return storage;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m586equalsimpl(byte[] bArr, Object obj) {
        return (obj instanceof UByteArray) && Intrinsics.areEqual(bArr, ((UByteArray) obj).getStorage());
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m587equalsimpl0(byte[] bArr, byte[] bArr2) {
        return Intrinsics.areEqual(bArr, bArr2);
    }

    @PublishedApi
    public static /* synthetic */ void getStorage$annotations() {
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m590hashCodeimpl(byte[] bArr) {
        return Arrays.hashCode(bArr);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m594toStringimpl(byte[] bArr) {
        return "UByteArray(storage=" + Arrays.toString(bArr) + ')';
    }

    @Override // java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(UByte uByte) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: add-7apg3OU, reason: not valid java name */
    public boolean m595add7apg3OU(byte b2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends UByte> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean equals(Object other) {
        return m586equalsimpl(this.storage, other);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return m590hashCodeimpl(this.storage);
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
        return m594toStringimpl(this.storage);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ byte[] getStorage() {
        return this.storage;
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof UByte) {
            return m596contains7apg3OU(((UByte) obj).getData());
        }
        return false;
    }

    public /* synthetic */ UByteArray(byte[] bArr) {
        this.storage = bArr;
    }

    @NotNull
    /* renamed from: constructor-impl, reason: not valid java name */
    public static byte[] m582constructorimpl(int i) {
        return m583constructorimpl(new byte[i]);
    }

    /* renamed from: get-w2LRezQ, reason: not valid java name */
    public static final byte m588getw2LRezQ(byte[] bArr, int i) {
        return UByte.m575constructorimpl(bArr[i]);
    }

    /* renamed from: set-VurrAj0, reason: not valid java name */
    public static final void m593setVurrAj0(byte[] bArr, int i, byte b2) {
        bArr[i] = b2;
    }

    /* renamed from: getSize-impl, reason: not valid java name */
    public static int m589getSizeimpl(byte[] bArr) {
        return bArr.length;
    }

    @Override // java.util.Collection
    /* renamed from: getSize, reason: merged with bridge method [inline-methods] */
    public int size() {
        return m589getSizeimpl(this.storage);
    }

    @NotNull
    /* renamed from: iterator-impl, reason: not valid java name */
    public static Iterator<UByte> m592iteratorimpl(byte[] bArr) {
        return new a(bArr);
    }

    @Override // java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<UByte> iterator() {
        return m592iteratorimpl(this.storage);
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u0007H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\f\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lkotlin/UByteArray$a;", "", "Lkotlin/UByte;", "", "array", "<init>", "([B)V", "", "hasNext", "()Z", "next-w2LRezQ", "()B", "next", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class a implements Iterator<UByte>, KMappedMarker {

        /* renamed from: a, reason: collision with root package name */
        public final byte[] f5563a;

        /* renamed from: b, reason: collision with root package name */
        public int f5564b;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public a(@NotNull byte[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            this.f5563a = array;
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ UByte next() {
            return UByte.m574boximpl(m598nextw2LRezQ());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f5564b < this.f5563a.length;
        }

        /* renamed from: next-w2LRezQ, reason: not valid java name */
        public byte m598nextw2LRezQ() {
            int i = this.f5564b;
            byte[] bArr = this.f5563a;
            if (i >= bArr.length) {
                throw new NoSuchElementException(String.valueOf(this.f5564b));
            }
            this.f5564b = i + 1;
            return UByte.m575constructorimpl(bArr[i]);
        }
    }

    /* renamed from: contains-7apg3OU, reason: not valid java name */
    public boolean m596contains7apg3OU(byte b2) {
        return m584contains7apg3OU(this.storage, b2);
    }

    /* renamed from: contains-7apg3OU, reason: not valid java name */
    public static boolean m584contains7apg3OU(byte[] bArr, byte b2) {
        return ArraysKt.contains(bArr, b2);
    }

    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return m585containsAllimpl(this.storage, elements);
    }

    /* renamed from: containsAll-impl, reason: not valid java name */
    public static boolean m585containsAllimpl(byte[] bArr, @NotNull Collection<UByte> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Collection<UByte> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        for (Object obj : collection) {
            if (!(obj instanceof UByte) || !ArraysKt.contains(bArr, ((UByte) obj).getData())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: isEmpty-impl, reason: not valid java name */
    public static boolean m591isEmptyimpl(byte[] bArr) {
        return bArr.length == 0;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m591isEmptyimpl(this.storage);
    }
}
