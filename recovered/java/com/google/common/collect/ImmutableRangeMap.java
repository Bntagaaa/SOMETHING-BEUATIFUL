package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Maps;
import com.google.common.collect.Range;
import com.google.common.collect.q5;
import com.google.common.collect.w0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.DoNotMock;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public class ImmutableRangeMap<K extends Comparable<?>, V> implements RangeMap<K, V>, Serializable {
    public static final ImmutableRangeMap c = new ImmutableRangeMap(ImmutableList.of(), ImmutableList.of());

    /* renamed from: a, reason: collision with root package name */
    public final transient ImmutableList f3911a;

    /* renamed from: b, reason: collision with root package name */
    public final transient ImmutableList f3912b;

    public static class c<K extends Comparable<?>, V> implements Serializable {
    }

    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> of() {
        return c;
    }

    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> of(Range<K> range, V v) {
        return new ImmutableRangeMap<>(ImmutableList.of(range), ImmutableList.of(v));
    }

    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> copyOf(RangeMap<K, ? extends V> rangeMap) {
        if (rangeMap instanceof ImmutableRangeMap) {
            return (ImmutableRangeMap) rangeMap;
        }
        Map<Range<K>, ? extends V> mapAsMapOfRanges = rangeMap.asMapOfRanges();
        ImmutableList.Builder builder = new ImmutableList.Builder(mapAsMapOfRanges.size());
        ImmutableList.Builder builder2 = new ImmutableList.Builder(mapAsMapOfRanges.size());
        for (Map.Entry entry : mapAsMapOfRanges.entrySet()) {
            builder.add((ImmutableList.Builder) entry.getKey());
            builder2.add((ImmutableList.Builder) entry.getValue());
        }
        return new ImmutableRangeMap<>(builder.build(), builder2.build());
    }

    public static <K extends Comparable<?>, V> Builder<K, V> builder() {
        return new Builder<>();
    }

    @DoNotMock
    public static final class Builder<K extends Comparable<?>, V> {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f3913a = Lists.newArrayList();

        @CanIgnoreReturnValue
        public Builder<K, V> put(Range<K> range, V v) {
            Preconditions.checkNotNull(range);
            Preconditions.checkNotNull(v);
            Preconditions.checkArgument(!range.isEmpty(), "Range must not be empty, but was %s", range);
            this.f3913a.add(Maps.immutableEntry(range, v));
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CanIgnoreReturnValue
        public Builder<K, V> putAll(RangeMap<K, ? extends V> rangeMap) {
            for (Map.Entry entry : rangeMap.asMapOfRanges().entrySet()) {
                put((Range) entry.getKey(), entry.getValue());
            }
            return this;
        }

        public ImmutableRangeMap<K, V> build() {
            Range range = Range.c;
            Ordering orderingOnResultOf = Range.c.f4088a.onResultOf(Maps.e.f4009a);
            ArrayList arrayList = this.f3913a;
            Collections.sort(arrayList, orderingOnResultOf);
            ImmutableList.Builder builder = new ImmutableList.Builder(arrayList.size());
            ImmutableList.Builder builder2 = new ImmutableList.Builder(arrayList.size());
            for (int i = 0; i < arrayList.size(); i++) {
                Range range2 = (Range) ((Map.Entry) arrayList.get(i)).getKey();
                if (i > 0) {
                    Range range3 = (Range) ((Map.Entry) arrayList.get(i - 1)).getKey();
                    if (range2.isConnected(range3) && !range2.intersection(range3).isEmpty()) {
                        throw new IllegalArgumentException("Overlapping ranges: range " + range3 + " overlaps with entry " + range2);
                    }
                }
                builder.add((ImmutableList.Builder) range2);
                builder2.add((ImmutableList.Builder) ((Map.Entry) arrayList.get(i)).getValue());
            }
            return new ImmutableRangeMap<>(builder.build(), builder2.build());
        }
    }

    public ImmutableRangeMap(ImmutableList immutableList, ImmutableList immutableList2) {
        this.f3911a = immutableList;
        this.f3912b = immutableList2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.RangeMap
    @NullableDecl
    public V get(K k) {
        Range range = Range.c;
        Range.b bVar = Range.b.f4087a;
        w0.e eVarA = w0.a(k);
        q5.c.a aVar = q5.c.f4325a;
        q5.b.a aVar2 = q5.b.f4323a;
        ImmutableList immutableList = this.f3911a;
        int iBinarySearch = q5.binarySearch(immutableList, bVar, eVarA, aVar, aVar2);
        if (iBinarySearch != -1 && ((Range) immutableList.get(iBinarySearch)).contains(k)) {
            return (V) this.f3912b.get(iBinarySearch);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.RangeMap
    @NullableDecl
    public Map.Entry<Range<K>, V> getEntry(K k) {
        Range range = Range.c;
        Range.b bVar = Range.b.f4087a;
        w0.e eVarA = w0.a(k);
        q5.c.a aVar = q5.c.f4325a;
        q5.b.a aVar2 = q5.b.f4323a;
        ImmutableList immutableList = this.f3911a;
        int iBinarySearch = q5.binarySearch(immutableList, bVar, eVarA, aVar, aVar2);
        if (iBinarySearch == -1) {
            return null;
        }
        Range range2 = (Range) immutableList.get(iBinarySearch);
        if (range2.contains(k)) {
            return Maps.immutableEntry(range2, this.f3912b.get(iBinarySearch));
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.RangeMap
    public Range<K> span() {
        ImmutableList immutableList = this.f3911a;
        if (immutableList.isEmpty()) {
            throw new NoSuchElementException();
        }
        return new Range<>(((Range) immutableList.get(0)).f4084a, ((Range) immutableList.get(immutableList.size() - 1)).f4085b);
    }

    @Override // com.google.common.collect.RangeMap
    @Deprecated
    public void put(Range<K> range, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.RangeMap
    @Deprecated
    public void putCoalescing(Range<K> range, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.RangeMap
    @Deprecated
    public void putAll(RangeMap<K, V> rangeMap) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.RangeMap
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.RangeMap
    @Deprecated
    public void remove(Range<K> range) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.RangeMap
    public ImmutableMap<Range<K>, V> asMapOfRanges() {
        ImmutableList immutableList = this.f3911a;
        if (immutableList.isEmpty()) {
            return ImmutableMap.of();
        }
        Range range = Range.c;
        return new ImmutableSortedMap(new f5(immutableList, Range.c.f4088a), this.f3912b, null);
    }

    @Override // com.google.common.collect.RangeMap
    public ImmutableMap<Range<K>, V> asDescendingMapOfRanges() {
        ImmutableList immutableList = this.f3911a;
        if (immutableList.isEmpty()) {
            return ImmutableMap.of();
        }
        ImmutableList immutableListReverse = immutableList.reverse();
        Range range = Range.c;
        return new ImmutableSortedMap(new f5(immutableListReverse, Range.c.f4088a.reverse()), this.f3912b.reverse(), null);
    }

    @Override // com.google.common.collect.RangeMap
    public ImmutableRangeMap<K, V> subRangeMap(Range<K> range) {
        if (((Range) Preconditions.checkNotNull(range)).isEmpty()) {
            return of();
        }
        ImmutableList immutableList = this.f3911a;
        if (immutableList.isEmpty() || range.encloses(span())) {
            return this;
        }
        Range.d dVar = Range.d.f4089a;
        q5.c.d dVar2 = q5.c.d;
        q5.b.C0116b c0116b = q5.b.f4324b;
        int iBinarySearch = q5.binarySearch(immutableList, dVar, range.f4084a, dVar2, c0116b);
        int iBinarySearch2 = q5.binarySearch(immutableList, Range.b.f4087a, range.f4085b, q5.c.f4325a, c0116b);
        if (iBinarySearch >= iBinarySearch2) {
            return of();
        }
        return new b(new a(iBinarySearch2 - iBinarySearch, iBinarySearch, range), this.f3912b.subList(iBinarySearch, iBinarySearch2), range, this);
    }

    public class a extends ImmutableList<Range<K>> {
        public final /* synthetic */ int c;
        public final /* synthetic */ int d;
        public final /* synthetic */ Range e;

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return true;
        }

        public a(int i, int i2, Range range) {
            this.c = i;
            this.d = i2;
            this.e = range;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.c;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.List
        public Range<K> get(int i) {
            int i2 = this.c;
            Preconditions.checkElementIndex(i, i2);
            int i3 = this.d;
            ImmutableRangeMap immutableRangeMap = ImmutableRangeMap.this;
            if (i == 0 || i == i2 - 1) {
                return ((Range) immutableRangeMap.f3911a.get(i + i3)).intersection(this.e);
            }
            return (Range) immutableRangeMap.f3911a.get(i + i3);
        }
    }

    public class b extends ImmutableRangeMap<K, V> {
        public final /* synthetic */ Range d;
        public final /* synthetic */ ImmutableRangeMap e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(ImmutableList immutableList, ImmutableList immutableList2, Range range, ImmutableRangeMap immutableRangeMap) {
            super(immutableList, immutableList2);
            this.d = range;
            this.e = immutableRangeMap;
        }

        @Override // com.google.common.collect.ImmutableRangeMap, com.google.common.collect.RangeMap
        public /* bridge */ /* synthetic */ Map asDescendingMapOfRanges() {
            return super.asDescendingMapOfRanges();
        }

        @Override // com.google.common.collect.ImmutableRangeMap, com.google.common.collect.RangeMap
        public /* bridge */ /* synthetic */ Map asMapOfRanges() {
            return super.asMapOfRanges();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableRangeMap, com.google.common.collect.RangeMap
        public ImmutableRangeMap<K, V> subRangeMap(Range<K> range) {
            Range<C> range2 = this.d;
            if (range2.isConnected(range)) {
                return this.e.subRangeMap((Range) range.intersection(range2));
            }
            return ImmutableRangeMap.of();
        }
    }

    @Override // com.google.common.collect.RangeMap
    public int hashCode() {
        return asMapOfRanges().hashCode();
    }

    @Override // com.google.common.collect.RangeMap
    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof RangeMap) {
            return asMapOfRanges().equals(((RangeMap) obj).asMapOfRanges());
        }
        return false;
    }

    @Override // com.google.common.collect.RangeMap
    public String toString() {
        return asMapOfRanges().toString();
    }
}
