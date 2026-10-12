package kotlin.collections.builders;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.jvm.internal.markers.KMutableMap;
import kotlin.ranges.RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010&\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0010\u001f\n\u0002\b\u0003\n\u0002\u0010'\n\u0002\b\u000b\b\u0000\u0018\u0000 ^*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u00060\u0004j\u0002`\u0005:\u0006^_`abcB\t\b\u0016¢\u0006\u0004\b\u0006\u0010\u0007B\u0011\b\u0016\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0006\u0010\nJ\u0019\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000b¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0015\u0010\u0013J\u001a\u0010\u0016\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0011\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u0018\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0011\u001a\u00028\u00002\u0006\u0010\u0014\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J%\u0010\u001c\u001a\u00020\u001b2\u0014\u0010\u001a\u001a\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0019\u0010\u001e\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0011\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u001e\u0010\u0017J\u000f\u0010\u001f\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001f\u0010\u0007J\u001a\u0010\"\u001a\u00020\u000e2\b\u0010!\u001a\u0004\u0018\u00010 H\u0096\u0002¢\u0006\u0004\b\"\u0010\u0013J\u000f\u0010#\u001a\u00020\bH\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010)\u001a\u00020\u001bH\u0000¢\u0006\u0004\b(\u0010\u0007J\u0017\u0010,\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00028\u0000H\u0000¢\u0006\u0004\b*\u0010+J\u0017\u0010.\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00028\u0000H\u0000¢\u0006\u0004\b-\u0010\u0013J#\u00103\u001a\u00020\u000e2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010/H\u0000¢\u0006\u0004\b1\u00102J\u001b\u00108\u001a\u00020\u000e2\n\u00105\u001a\u0006\u0012\u0002\b\u000304H\u0000¢\u0006\u0004\b6\u00107J#\u0010:\u001a\u00020\u000e2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010/H\u0000¢\u0006\u0004\b9\u00102J\u0017\u0010=\u001a\u00020\u000e2\u0006\u0010;\u001a\u00028\u0001H\u0000¢\u0006\u0004\b<\u0010\u0013J\u001b\u0010A\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010>H\u0000¢\u0006\u0004\b?\u0010@J\u001b\u0010E\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010BH\u0000¢\u0006\u0004\bC\u0010DJ\u001b\u0010I\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010FH\u0000¢\u0006\u0004\bG\u0010HR$\u0010M\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\b8\u0016@RX\u0096\u000e¢\u0006\f\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010$R$\u0010P\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e8\u0000@BX\u0080\u000e¢\u0006\f\n\u0004\b5\u0010N\u001a\u0004\bO\u0010\u0010R\u001a\u0010T\u001a\b\u0012\u0004\u0012\u00028\u00000Q8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bR\u0010SR\u001a\u0010X\u001a\b\u0012\u0004\u0012\u00028\u00010U8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bV\u0010WR&\u0010[\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010Y0Q8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bZ\u0010SR\u0014\u0010]\u001a\u00020\b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\\\u0010$¨\u0006d"}, d2 = {"Lkotlin/collections/builders/MapBuilder;", "K", "V", "", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "<init>", "()V", "", "initialCapacity", "(I)V", "", "build", "()Ljava/util/Map;", "", "isEmpty", "()Z", "key", "containsKey", "(Ljava/lang/Object;)Z", "value", "containsValue", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "from", "", "putAll", "(Ljava/util/Map;)V", "remove", "clear", "", "other", "equals", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "checkIsMutable$kotlin_stdlib", "checkIsMutable", "addKey$kotlin_stdlib", "(Ljava/lang/Object;)I", "addKey", "removeKey$kotlin_stdlib", "removeKey", "", "entry", "containsEntry$kotlin_stdlib", "(Ljava/util/Map$Entry;)Z", "containsEntry", "", "m", "containsAllEntries$kotlin_stdlib", "(Ljava/util/Collection;)Z", "containsAllEntries", "removeEntry$kotlin_stdlib", "removeEntry", "element", "removeValue$kotlin_stdlib", "removeValue", "Lkotlin/collections/builders/MapBuilder$KeysItr;", "keysIterator$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder$KeysItr;", "keysIterator", "Lkotlin/collections/builders/MapBuilder$ValuesItr;", "valuesIterator$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder$ValuesItr;", "valuesIterator", "Lkotlin/collections/builders/MapBuilder$EntriesItr;", "entriesIterator$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder$EntriesItr;", "entriesIterator", "i", "I", "getSize", "size", "Z", "isReadOnly$kotlin_stdlib", "isReadOnly", "", "getKeys", "()Ljava/util/Set;", "keys", "", "getValues", "()Ljava/util/Collection;", "values", "", "getEntries", "entries", "getCapacity$kotlin_stdlib", "capacity", "Companion", "Itr", "KeysItr", "ValuesItr", "EntriesItr", "EntryRef", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMapBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapBuilder.kt\nkotlin/collections/builders/MapBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,747:1\n1#2:748\n*E\n"})
/* loaded from: classes2.dex */
public final class MapBuilder<K, V> implements Map<K, V>, Serializable, KMutableMap {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final MapBuilder n;

    /* renamed from: a, reason: collision with root package name */
    public Object[] f5664a;

    /* renamed from: b, reason: collision with root package name */
    public Object[] f5665b;
    public int[] c;
    public int[] d;
    public int e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f5666g;
    public int h;

    /* renamed from: i, reason: from kotlin metadata */
    public int size;
    public MapBuilderKeys j;
    public MapBuilderValues k;
    public MapBuilderEntries l;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean isReadOnly;

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return getEntries();
    }

    @Override // java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return getKeys();
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return getValues();
    }

    public int getSize() {
        return this.size;
    }

    /* renamed from: isReadOnly$kotlin_stdlib, reason: from getter */
    public final boolean getIsReadOnly() {
        return this.isReadOnly;
    }

    public MapBuilder() {
        this(8);
    }

    public MapBuilder(int i) {
        Object[] objArrArrayOfUninitializedElements = ListBuilderKt.arrayOfUninitializedElements(i);
        int[] iArr = new int[i];
        Companion companion = INSTANCE;
        int iAccess$computeHashSize = Companion.access$computeHashSize(companion, i);
        this.f5664a = objArrArrayOfUninitializedElements;
        this.f5665b = null;
        this.c = iArr;
        this.d = new int[iAccess$computeHashSize];
        this.e = 2;
        this.f = 0;
        this.f5666g = Companion.access$computeShift(companion, iAccess$computeHashSize);
    }

    @NotNull
    public final Map<K, V> build() {
        checkIsMutable$kotlin_stdlib();
        this.isReadOnly = true;
        if (size() > 0) {
            return this;
        }
        MapBuilder mapBuilder = n;
        Intrinsics.checkNotNull(mapBuilder, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.builders.MapBuilder, V of kotlin.collections.builders.MapBuilder>");
        return mapBuilder;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public boolean containsKey(Object key) {
        return c(key) >= 0;
    }

    @Override // java.util.Map
    public boolean containsValue(Object value) {
        return d(value) >= 0;
    }

    @Override // java.util.Map
    @Nullable
    public V get(Object key) {
        int iC = c(key);
        if (iC < 0) {
            return null;
        }
        Object[] objArr = this.f5665b;
        Intrinsics.checkNotNull(objArr);
        return (V) objArr[iC];
    }

    @Override // java.util.Map
    @Nullable
    public V put(K key, V value) {
        checkIsMutable$kotlin_stdlib();
        int iAddKey$kotlin_stdlib = addKey$kotlin_stdlib(key);
        Object[] objArrArrayOfUninitializedElements = this.f5665b;
        if (objArrArrayOfUninitializedElements == null) {
            objArrArrayOfUninitializedElements = ListBuilderKt.arrayOfUninitializedElements(getCapacity$kotlin_stdlib());
            this.f5665b = objArrArrayOfUninitializedElements;
        }
        if (iAddKey$kotlin_stdlib < 0) {
            int i = (-iAddKey$kotlin_stdlib) - 1;
            V v = (V) objArrArrayOfUninitializedElements[i];
            objArrArrayOfUninitializedElements[i] = value;
            return v;
        }
        objArrArrayOfUninitializedElements[iAddKey$kotlin_stdlib] = value;
        return null;
    }

    @Override // java.util.Map
    public void putAll(@NotNull Map<? extends K, ? extends V> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        checkIsMutable$kotlin_stdlib();
        Set<Map.Entry<? extends K, ? extends V>> setEntrySet = from.entrySet();
        if (setEntrySet.isEmpty()) {
            return;
        }
        b(setEntrySet.size());
        for (Map.Entry<? extends K, ? extends V> entry : setEntrySet) {
            int iAddKey$kotlin_stdlib = addKey$kotlin_stdlib(entry.getKey());
            Object[] objArrArrayOfUninitializedElements = this.f5665b;
            if (objArrArrayOfUninitializedElements == null) {
                objArrArrayOfUninitializedElements = ListBuilderKt.arrayOfUninitializedElements(getCapacity$kotlin_stdlib());
                this.f5665b = objArrArrayOfUninitializedElements;
            }
            if (iAddKey$kotlin_stdlib >= 0) {
                objArrArrayOfUninitializedElements[iAddKey$kotlin_stdlib] = entry.getValue();
            } else {
                int i = (-iAddKey$kotlin_stdlib) - 1;
                if (!Intrinsics.areEqual(entry.getValue(), objArrArrayOfUninitializedElements[i])) {
                    objArrArrayOfUninitializedElements[i] = entry.getValue();
                }
            }
        }
    }

    @Override // java.util.Map
    @Nullable
    public V remove(Object key) {
        checkIsMutable$kotlin_stdlib();
        int iC = c(key);
        if (iC < 0) {
            return null;
        }
        Object[] objArr = this.f5665b;
        Intrinsics.checkNotNull(objArr);
        V v = (V) objArr[iC];
        g(iC);
        return v;
    }

    @Override // java.util.Map
    public void clear() {
        checkIsMutable$kotlin_stdlib();
        int i = this.f - 1;
        if (i >= 0) {
            int i2 = 0;
            while (true) {
                int[] iArr = this.c;
                int i3 = iArr[i2];
                if (i3 >= 0) {
                    this.d[i3] = 0;
                    iArr[i2] = -1;
                }
                if (i2 == i) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        ListBuilderKt.resetRange(this.f5664a, 0, this.f);
        Object[] objArr = this.f5665b;
        if (objArr != null) {
            ListBuilderKt.resetRange(objArr, 0, this.f);
        }
        this.size = 0;
        this.f = 0;
        this.h++;
    }

    @NotNull
    public Set<K> getKeys() {
        MapBuilderKeys mapBuilderKeys = this.j;
        if (mapBuilderKeys != null) {
            return mapBuilderKeys;
        }
        MapBuilderKeys mapBuilderKeys2 = new MapBuilderKeys(this);
        this.j = mapBuilderKeys2;
        return mapBuilderKeys2;
    }

    @NotNull
    public Collection<V> getValues() {
        MapBuilderValues mapBuilderValues = this.k;
        if (mapBuilderValues != null) {
            return mapBuilderValues;
        }
        MapBuilderValues mapBuilderValues2 = new MapBuilderValues(this);
        this.k = mapBuilderValues2;
        return mapBuilderValues2;
    }

    @NotNull
    public Set<Map.Entry<K, V>> getEntries() {
        MapBuilderEntries mapBuilderEntries = this.l;
        if (mapBuilderEntries != null) {
            return mapBuilderEntries;
        }
        MapBuilderEntries mapBuilderEntries2 = new MapBuilderEntries(this);
        this.l = mapBuilderEntries2;
        return mapBuilderEntries2;
    }

    @Override // java.util.Map
    public boolean equals(@Nullable Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Map)) {
            return false;
        }
        Map map = (Map) other;
        return size() == map.size() && containsAllEntries$kotlin_stdlib(map.entrySet());
    }

    @Override // java.util.Map
    public int hashCode() {
        EntriesItr<K, V> entriesItrEntriesIterator$kotlin_stdlib = entriesIterator$kotlin_stdlib();
        int iNextHashCode$kotlin_stdlib = 0;
        while (entriesItrEntriesIterator$kotlin_stdlib.hasNext()) {
            iNextHashCode$kotlin_stdlib += entriesItrEntriesIterator$kotlin_stdlib.nextHashCode$kotlin_stdlib();
        }
        return iNextHashCode$kotlin_stdlib;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder((size() * 3) + 2);
        sb.append("{");
        EntriesItr<K, V> entriesItrEntriesIterator$kotlin_stdlib = entriesIterator$kotlin_stdlib();
        int i = 0;
        while (entriesItrEntriesIterator$kotlin_stdlib.hasNext()) {
            if (i > 0) {
                sb.append(", ");
            }
            entriesItrEntriesIterator$kotlin_stdlib.nextAppendString(sb);
            i++;
        }
        sb.append("}");
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public final int getCapacity$kotlin_stdlib() {
        return this.f5664a.length;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0034, code lost:
    
        r3[r0] = r6;
        r5.c[r2] = r0;
        r2 = r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(int r6) {
        /*
            r5 = this;
            int r0 = r5.h
            int r0 = r0 + 1
            r5.h = r0
            int r0 = r5.f
            int r1 = r5.size()
            r2 = 0
            if (r0 <= r1) goto L12
            r5.a(r2)
        L12:
            int[] r0 = new int[r6]
            r5.d = r0
            kotlin.collections.builders.MapBuilder$Companion r0 = kotlin.collections.builders.MapBuilder.INSTANCE
            int r6 = kotlin.collections.builders.MapBuilder.Companion.access$computeShift(r0, r6)
            r5.f5666g = r6
        L1e:
            int r6 = r5.f
            if (r2 >= r6) goto L52
            int r6 = r2 + 1
            java.lang.Object[] r0 = r5.f5664a
            r0 = r0[r2]
            int r0 = r5.e(r0)
            int r1 = r5.e
        L2e:
            int[] r3 = r5.d
            r4 = r3[r0]
            if (r4 != 0) goto L3c
            r3[r0] = r6
            int[] r1 = r5.c
            r1[r2] = r0
            r2 = r6
            goto L1e
        L3c:
            int r1 = r1 + (-1)
            if (r1 < 0) goto L4a
            int r4 = r0 + (-1)
            if (r0 != 0) goto L48
            int r0 = r3.length
            int r0 = r0 + (-1)
            goto L2e
        L48:
            r0 = r4
            goto L2e
        L4a:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?"
            r6.<init>(r0)
            throw r6
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.builders.MapBuilder.f(int):void");
    }

    public final void checkIsMutable$kotlin_stdlib() {
        if (this.isReadOnly) {
            throw new UnsupportedOperationException();
        }
    }

    public final void b(int i) {
        int capacity$kotlin_stdlib = getCapacity$kotlin_stdlib();
        int i2 = this.f;
        int i3 = capacity$kotlin_stdlib - i2;
        int size = i2 - size();
        if (i3 < i && i3 + size >= i && size >= getCapacity$kotlin_stdlib() / 4) {
            a(true);
            return;
        }
        int i4 = this.f + i;
        if (i4 < 0) {
            throw new OutOfMemoryError();
        }
        if (i4 > getCapacity$kotlin_stdlib()) {
            int iNewCapacity$kotlin_stdlib = AbstractList.INSTANCE.newCapacity$kotlin_stdlib(getCapacity$kotlin_stdlib(), i4);
            this.f5664a = ListBuilderKt.copyOfUninitializedElements(this.f5664a, iNewCapacity$kotlin_stdlib);
            Object[] objArr = this.f5665b;
            this.f5665b = objArr != null ? ListBuilderKt.copyOfUninitializedElements(objArr, iNewCapacity$kotlin_stdlib) : null;
            int[] iArrCopyOf = Arrays.copyOf(this.c, iNewCapacity$kotlin_stdlib);
            Intrinsics.checkNotNullExpressionValue(iArrCopyOf, "copyOf(...)");
            this.c = iArrCopyOf;
            int iAccess$computeHashSize = Companion.access$computeHashSize(INSTANCE, iNewCapacity$kotlin_stdlib);
            if (iAccess$computeHashSize > this.d.length) {
                f(iAccess$computeHashSize);
            }
        }
    }

    public static final Object[] access$allocateValuesArray(MapBuilder mapBuilder) {
        Object[] objArr = mapBuilder.f5665b;
        if (objArr != null) {
            return objArr;
        }
        Object[] objArrArrayOfUninitializedElements = ListBuilderKt.arrayOfUninitializedElements(mapBuilder.getCapacity$kotlin_stdlib());
        mapBuilder.f5665b = objArrArrayOfUninitializedElements;
        return objArrArrayOfUninitializedElements;
    }

    public final int e(Object obj) {
        return ((obj != null ? obj.hashCode() : 0) * (-1640531527)) >>> this.f5666g;
    }

    public final void a(boolean z) {
        int i;
        Object[] objArr = this.f5665b;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = this.f;
            if (i2 >= i) {
                break;
            }
            int[] iArr = this.c;
            int i4 = iArr[i2];
            if (i4 >= 0) {
                Object[] objArr2 = this.f5664a;
                objArr2[i3] = objArr2[i2];
                if (objArr != null) {
                    objArr[i3] = objArr[i2];
                }
                if (z) {
                    iArr[i3] = i4;
                    this.d[i4] = i3 + 1;
                }
                i3++;
            }
            i2++;
        }
        ListBuilderKt.resetRange(this.f5664a, i3, i);
        if (objArr != null) {
            ListBuilderKt.resetRange(objArr, i3, this.f);
        }
        this.f = i3;
    }

    public final int c(Object obj) {
        int iE = e(obj);
        int i = this.e;
        while (true) {
            int i2 = this.d[iE];
            if (i2 == 0) {
                return -1;
            }
            if (i2 > 0) {
                int i3 = i2 - 1;
                if (Intrinsics.areEqual(this.f5664a[i3], obj)) {
                    return i3;
                }
            }
            i--;
            if (i < 0) {
                return -1;
            }
            iE = iE == 0 ? this.d.length - 1 : iE - 1;
        }
    }

    public final int d(Object obj) {
        int i = this.f;
        while (true) {
            i--;
            if (i < 0) {
                return -1;
            }
            if (this.c[i] >= 0) {
                Object[] objArr = this.f5665b;
                Intrinsics.checkNotNull(objArr);
                if (Intrinsics.areEqual(objArr[i], obj)) {
                    return i;
                }
            }
        }
    }

    public final int addKey$kotlin_stdlib(K key) {
        checkIsMutable$kotlin_stdlib();
        while (true) {
            int iE = e(key);
            int iCoerceAtMost = RangesKt.coerceAtMost(this.e * 2, this.d.length / 2);
            int i = 0;
            while (true) {
                int i2 = this.d[iE];
                if (i2 <= 0) {
                    if (this.f >= getCapacity$kotlin_stdlib()) {
                        b(1);
                    } else {
                        int i3 = this.f;
                        int i4 = i3 + 1;
                        this.f = i4;
                        this.f5664a[i3] = key;
                        this.c[i3] = iE;
                        this.d[iE] = i4;
                        this.size = size() + 1;
                        this.h++;
                        if (i > this.e) {
                            this.e = i;
                        }
                        return i3;
                    }
                } else {
                    if (Intrinsics.areEqual(this.f5664a[i2 - 1], key)) {
                        return -i2;
                    }
                    i++;
                    if (i <= iCoerceAtMost) {
                        iE = iE == 0 ? this.d.length - 1 : iE - 1;
                    } else {
                        f(this.d.length * 2);
                        break;
                    }
                }
            }
        }
    }

    public final boolean removeKey$kotlin_stdlib(K key) {
        checkIsMutable$kotlin_stdlib();
        int iC = c(key);
        if (iC < 0) {
            return false;
        }
        g(iC);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0065 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[LOOP:0: B:6:0x0021->B:30:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(int r12) {
        /*
            r11 = this;
            java.lang.Object[] r0 = r11.f5664a
            kotlin.collections.builders.ListBuilderKt.resetAt(r0, r12)
            java.lang.Object[] r0 = r11.f5665b
            if (r0 == 0) goto Lc
            kotlin.collections.builders.ListBuilderKt.resetAt(r0, r12)
        Lc:
            int[] r0 = r11.c
            r0 = r0[r12]
            int r1 = r11.e
            int r1 = r1 * 2
            int[] r2 = r11.d
            int r2 = r2.length
            int r2 = r2 / 2
            int r1 = kotlin.ranges.RangesKt.coerceAtMost(r1, r2)
            r2 = 0
            r3 = r1
            r4 = 0
            r1 = r0
        L21:
            int r5 = r0 + (-1)
            if (r0 != 0) goto L2b
            int[] r0 = r11.d
            int r0 = r0.length
            int r0 = r0 + (-1)
            goto L2c
        L2b:
            r0 = r5
        L2c:
            int r4 = r4 + 1
            int r5 = r11.e
            r6 = -1
            if (r4 <= r5) goto L38
            int[] r0 = r11.d
            r0[r1] = r2
            goto L69
        L38:
            int[] r5 = r11.d
            r7 = r5[r0]
            if (r7 != 0) goto L41
            r5[r1] = r2
            goto L69
        L41:
            if (r7 >= 0) goto L48
            r5[r1] = r6
        L45:
            r1 = r0
            r4 = 0
            goto L62
        L48:
            java.lang.Object[] r5 = r11.f5664a
            int r8 = r7 + (-1)
            r5 = r5[r8]
            int r5 = r11.e(r5)
            int r5 = r5 - r0
            int[] r9 = r11.d
            int r10 = r9.length
            int r10 = r10 + (-1)
            r5 = r5 & r10
            if (r5 < r4) goto L62
            r9[r1] = r7
            int[] r4 = r11.c
            r4[r8] = r1
            goto L45
        L62:
            int r3 = r3 + r6
            if (r3 >= 0) goto L21
            int[] r0 = r11.d
            r0[r1] = r6
        L69:
            int[] r0 = r11.c
            r0[r12] = r6
            int r12 = r11.size()
            int r12 = r12 + r6
            r11.size = r12
            int r12 = r11.h
            int r12 = r12 + 1
            r11.h = r12
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.builders.MapBuilder.g(int):void");
    }

    public final boolean containsEntry$kotlin_stdlib(@NotNull Map.Entry<? extends K, ? extends V> entry) {
        Intrinsics.checkNotNullParameter(entry, "entry");
        int iC = c(entry.getKey());
        if (iC < 0) {
            return false;
        }
        Object[] objArr = this.f5665b;
        Intrinsics.checkNotNull(objArr);
        return Intrinsics.areEqual(objArr[iC], entry.getValue());
    }

    public final boolean containsAllEntries$kotlin_stdlib(@NotNull Collection<?> m) {
        Intrinsics.checkNotNullParameter(m, "m");
        for (Object obj : m) {
            if (obj != null) {
                try {
                    if (!containsEntry$kotlin_stdlib((Map.Entry) obj)) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean removeEntry$kotlin_stdlib(@NotNull Map.Entry<? extends K, ? extends V> entry) {
        Intrinsics.checkNotNullParameter(entry, "entry");
        checkIsMutable$kotlin_stdlib();
        int iC = c(entry.getKey());
        if (iC < 0) {
            return false;
        }
        Object[] objArr = this.f5665b;
        Intrinsics.checkNotNull(objArr);
        if (!Intrinsics.areEqual(objArr[iC], entry.getValue())) {
            return false;
        }
        g(iC);
        return true;
    }

    public final boolean removeValue$kotlin_stdlib(V element) {
        checkIsMutable$kotlin_stdlib();
        int iD = d(element);
        if (iD < 0) {
            return false;
        }
        g(iD);
        return true;
    }

    @NotNull
    public final KeysItr<K, V> keysIterator$kotlin_stdlib() {
        return new KeysItr<>(this);
    }

    @NotNull
    public final ValuesItr<K, V> valuesIterator$kotlin_stdlib() {
        return new ValuesItr<>(this);
    }

    @NotNull
    public final EntriesItr<K, V> entriesIterator$kotlin_stdlib() {
        return new EntriesItr<>(this);
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R&\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\fR\u0014\u0010\u000e\u001a\u00020\n8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\fR\u0014\u0010\u000f\u001a\u00020\n8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\f¨\u0006\u0010"}, d2 = {"Lkotlin/collections/builders/MapBuilder$Companion;", "", "<init>", "()V", "Lkotlin/collections/builders/MapBuilder;", "", "Empty", "Lkotlin/collections/builders/MapBuilder;", "getEmpty$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder;", "", "MAGIC", "I", "INITIAL_CAPACITY", "INITIAL_MAX_PROBE_DISTANCE", "TOMBSTONE", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static final int access$computeHashSize(Companion companion, int i) {
            companion.getClass();
            return Integer.highestOneBit(RangesKt.coerceAtLeast(i, 1) * 3);
        }

        public static final int access$computeShift(Companion companion, int i) {
            companion.getClass();
            return Integer.numberOfLeadingZeros(i) + 1;
        }

        @NotNull
        public final MapBuilder getEmpty$kotlin_stdlib() {
            return MapBuilder.n;
        }
    }

    static {
        MapBuilder mapBuilder = new MapBuilder(0);
        mapBuilder.isReadOnly = true;
        n = mapBuilder;
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\f\b\u0010\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u00020\u0003B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\u000b\u001a\u00020\bH\u0000¢\u0006\u0004\b\t\u0010\nJ\r\u0010\r\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\b¢\u0006\u0004\b\u000f\u0010\nJ\u000f\u0010\u0011\u001a\u00020\bH\u0000¢\u0006\u0004\b\u0010\u0010\nR&\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\"\u0010\u001d\u001a\u00020\u00168\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010!\u001a\u00020\u00168\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0018\u001a\u0004\b\u001f\u0010\u001a\"\u0004\b \u0010\u001c¨\u0006\""}, d2 = {"Lkotlin/collections/builders/MapBuilder$Itr;", "K", "V", "", "Lkotlin/collections/builders/MapBuilder;", "map", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "", "initNext$kotlin_stdlib", "()V", "initNext", "", "hasNext", "()Z", "remove", "checkForComodification$kotlin_stdlib", "checkForComodification", "a", "Lkotlin/collections/builders/MapBuilder;", "getMap$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder;", "", "b", "I", "getIndex$kotlin_stdlib", "()I", "setIndex$kotlin_stdlib", "(I)V", "index", "c", "getLastIndex$kotlin_stdlib", "setLastIndex$kotlin_stdlib", "lastIndex", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nMapBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapBuilder.kt\nkotlin/collections/builders/MapBuilder$Itr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,747:1\n1#2:748\n*E\n"})
    public static class Itr<K, V> {

        /* renamed from: a, reason: collision with root package name and from kotlin metadata */
        public final MapBuilder map;

        /* renamed from: b, reason: collision with root package name and from kotlin metadata */
        public int index;

        /* renamed from: c, reason: from kotlin metadata */
        public int lastIndex;
        public int d;

        public Itr(@NotNull MapBuilder<K, V> map) {
            Intrinsics.checkNotNullParameter(map, "map");
            this.map = map;
            this.lastIndex = -1;
            this.d = map.h;
            initNext$kotlin_stdlib();
        }

        @NotNull
        public final MapBuilder<K, V> getMap$kotlin_stdlib() {
            return this.map;
        }

        /* renamed from: getIndex$kotlin_stdlib, reason: from getter */
        public final int getIndex() {
            return this.index;
        }

        public final void setIndex$kotlin_stdlib(int i) {
            this.index = i;
        }

        /* renamed from: getLastIndex$kotlin_stdlib, reason: from getter */
        public final int getLastIndex() {
            return this.lastIndex;
        }

        public final void setLastIndex$kotlin_stdlib(int i) {
            this.lastIndex = i;
        }

        public final void initNext$kotlin_stdlib() {
            while (true) {
                int i = this.index;
                MapBuilder mapBuilder = this.map;
                if (i >= mapBuilder.f) {
                    return;
                }
                int[] iArr = mapBuilder.c;
                int i2 = this.index;
                if (iArr[i2] >= 0) {
                    return;
                } else {
                    this.index = i2 + 1;
                }
            }
        }

        public final boolean hasNext() {
            return this.index < this.map.f;
        }

        public final void remove() {
            checkForComodification$kotlin_stdlib();
            if (this.lastIndex == -1) {
                throw new IllegalStateException("Call next() before removing element from the iterator.");
            }
            MapBuilder mapBuilder = this.map;
            mapBuilder.checkIsMutable$kotlin_stdlib();
            mapBuilder.g(this.lastIndex);
            this.lastIndex = -1;
            this.d = mapBuilder.h;
        }

        public final void checkForComodification$kotlin_stdlib() {
            if (this.map.h != this.d) {
                throw new ConcurrentModificationException();
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u0004B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000e\u0010\t\u001a\u00028\u0002H\u0096\u0002¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlin/collections/builders/MapBuilder$KeysItr;", "K", "V", "Lkotlin/collections/builders/MapBuilder$Itr;", "", "map", "Lkotlin/collections/builders/MapBuilder;", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class KeysItr<K, V> extends Itr<K, V> implements Iterator<K>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public KeysItr(@NotNull MapBuilder<K, V> map) {
            super(map);
            Intrinsics.checkNotNullParameter(map, "map");
        }

        @Override // java.util.Iterator
        public K next() {
            checkForComodification$kotlin_stdlib();
            if (getIndex() >= getMap$kotlin_stdlib().f) {
                throw new NoSuchElementException();
            }
            int index = getIndex();
            setIndex$kotlin_stdlib(index + 1);
            setLastIndex$kotlin_stdlib(index);
            K k = (K) getMap$kotlin_stdlib().f5664a[getLastIndex()];
            initNext$kotlin_stdlib();
            return k;
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00020\u0004B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000e\u0010\t\u001a\u00028\u0003H\u0096\u0002¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlin/collections/builders/MapBuilder$ValuesItr;", "K", "V", "Lkotlin/collections/builders/MapBuilder$Itr;", "", "map", "Lkotlin/collections/builders/MapBuilder;", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ValuesItr<K, V> extends Itr<K, V> implements Iterator<V>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ValuesItr(@NotNull MapBuilder<K, V> map) {
            super(map);
            Intrinsics.checkNotNullParameter(map, "map");
        }

        @Override // java.util.Iterator
        public V next() {
            checkForComodification$kotlin_stdlib();
            if (getIndex() >= getMap$kotlin_stdlib().f) {
                throw new NoSuchElementException();
            }
            int index = getIndex();
            setIndex$kotlin_stdlib(index + 1);
            setLastIndex$kotlin_stdlib(index);
            Object[] objArr = getMap$kotlin_stdlib().f5665b;
            Intrinsics.checkNotNull(objArr);
            V v = (V) objArr[getLastIndex()];
            initNext$kotlin_stdlib();
            return v;
        }
    }

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0002\u0010'\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00050\u0004B\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0007¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u000bH\u0096\u0002J\r\u0010\f\u001a\u00020\rH\u0000¢\u0006\u0002\b\u000eJ\u0012\u0010\u000f\u001a\u00020\u00102\n\u0010\u0011\u001a\u00060\u0012j\u0002`\u0013¨\u0006\u0014"}, d2 = {"Lkotlin/collections/builders/MapBuilder$EntriesItr;", "K", "V", "Lkotlin/collections/builders/MapBuilder$Itr;", "", "", "map", "Lkotlin/collections/builders/MapBuilder;", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "next", "Lkotlin/collections/builders/MapBuilder$EntryRef;", "nextHashCode", "", "nextHashCode$kotlin_stdlib", "nextAppendString", "", "sb", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class EntriesItr<K, V> extends Itr<K, V> implements Iterator<Map.Entry<K, V>>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EntriesItr(@NotNull MapBuilder<K, V> map) {
            super(map);
            Intrinsics.checkNotNullParameter(map, "map");
        }

        @Override // java.util.Iterator
        @NotNull
        public EntryRef<K, V> next() {
            checkForComodification$kotlin_stdlib();
            if (getIndex() >= getMap$kotlin_stdlib().f) {
                throw new NoSuchElementException();
            }
            int index = getIndex();
            setIndex$kotlin_stdlib(index + 1);
            setLastIndex$kotlin_stdlib(index);
            EntryRef<K, V> entryRef = new EntryRef<>(getMap$kotlin_stdlib(), getLastIndex());
            initNext$kotlin_stdlib();
            return entryRef;
        }

        public final int nextHashCode$kotlin_stdlib() {
            if (getIndex() >= getMap$kotlin_stdlib().f) {
                throw new NoSuchElementException();
            }
            int index = getIndex();
            setIndex$kotlin_stdlib(index + 1);
            setLastIndex$kotlin_stdlib(index);
            Object obj = getMap$kotlin_stdlib().f5664a[getLastIndex()];
            int iHashCode = obj != null ? obj.hashCode() : 0;
            Object[] objArr = getMap$kotlin_stdlib().f5665b;
            Intrinsics.checkNotNull(objArr);
            Object obj2 = objArr[getLastIndex()];
            int iHashCode2 = iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
            initNext$kotlin_stdlib();
            return iHashCode2;
        }

        public final void nextAppendString(@NotNull StringBuilder sb) {
            Intrinsics.checkNotNullParameter(sb, "sb");
            if (getIndex() >= getMap$kotlin_stdlib().f) {
                throw new NoSuchElementException();
            }
            int index = getIndex();
            setIndex$kotlin_stdlib(index + 1);
            setLastIndex$kotlin_stdlib(index);
            Object obj = getMap$kotlin_stdlib().f5664a[getLastIndex()];
            if (obj == getMap$kotlin_stdlib()) {
                sb.append("(this Map)");
            } else {
                sb.append(obj);
            }
            sb.append('=');
            Object[] objArr = getMap$kotlin_stdlib().f5665b;
            Intrinsics.checkNotNull(objArr);
            Object obj2 = objArr[getLastIndex()];
            if (obj2 == getMap$kotlin_stdlib()) {
                sb.append("(this Map)");
            } else {
                sb.append(obj2);
            }
            initNext$kotlin_stdlib();
        }
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010'\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0003B#\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00028\u00032\u0006\u0010\n\u001a\u00028\u0003H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0096\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0019\u001a\u00028\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001b\u001a\u00028\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0018¨\u0006\u001c"}, d2 = {"Lkotlin/collections/builders/MapBuilder$EntryRef;", "K", "V", "", "Lkotlin/collections/builders/MapBuilder;", "map", "", "index", "<init>", "(Lkotlin/collections/builders/MapBuilder;I)V", "newValue", "setValue", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "getKey", "()Ljava/lang/Object;", "key", "getValue", "value", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class EntryRef<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {

        /* renamed from: a, reason: collision with root package name */
        public final MapBuilder f5667a;

        /* renamed from: b, reason: collision with root package name */
        public final int f5668b;
        public final int c;

        public EntryRef(@NotNull MapBuilder<K, V> map, int i) {
            Intrinsics.checkNotNullParameter(map, "map");
            this.f5667a = map;
            this.f5668b = i;
            this.c = map.h;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            a();
            return (K) this.f5667a.f5664a[this.f5668b];
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            a();
            Object[] objArr = this.f5667a.f5665b;
            Intrinsics.checkNotNull(objArr);
            return (V) objArr[this.f5668b];
        }

        @Override // java.util.Map.Entry
        public V setValue(V newValue) {
            a();
            MapBuilder mapBuilder = this.f5667a;
            mapBuilder.checkIsMutable$kotlin_stdlib();
            Object[] objArrAccess$allocateValuesArray = MapBuilder.access$allocateValuesArray(mapBuilder);
            int i = this.f5668b;
            V v = (V) objArrAccess$allocateValuesArray[i];
            objArrAccess$allocateValuesArray[i] = newValue;
            return v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(@Nullable Object other) {
            if (!(other instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) other;
            return Intrinsics.areEqual(entry.getKey(), getKey()) && Intrinsics.areEqual(entry.getValue(), getValue());
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K key = getKey();
            int iHashCode = key != null ? key.hashCode() : 0;
            V value = getValue();
            return iHashCode ^ (value != null ? value.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(getKey());
            sb.append('=');
            sb.append(getValue());
            return sb.toString();
        }

        public final void a() {
            if (this.f5667a.h != this.c) {
                throw new ConcurrentModificationException("The backing map has been modified after this entry was obtained.");
            }
        }
    }
}
