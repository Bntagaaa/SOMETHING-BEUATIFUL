package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
public class TreeMultimap<K, V> extends q<K, V> {
    public final transient Comparator h;
    public final transient Comparator i;

    @Override // com.google.common.collect.g, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsEntry(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.g, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsKey(@NullableDecl Object obj) {
        return super.containsKey(obj);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsValue(@NullableDecl Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.g, com.google.common.collect.l, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Set entries() {
        return super.entries();
    }

    @Override // com.google.common.collect.p, com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.t, com.google.common.collect.p, com.google.common.collect.g, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @GwtIncompatible
    public /* bridge */ /* synthetic */ Collection get(@NullableDecl Object obj) {
        return get((TreeMultimap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.t, com.google.common.collect.p, com.google.common.collect.g, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @GwtIncompatible
    public /* bridge */ /* synthetic */ Set get(@NullableDecl Object obj) {
        return get((TreeMultimap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.t, com.google.common.collect.p, com.google.common.collect.g, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @GwtIncompatible
    public /* bridge */ /* synthetic */ SortedSet get(@NullableDecl Object obj) {
        return get((TreeMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Multiset keys() {
        return super.keys();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.p, com.google.common.collect.g, com.google.common.collect.l, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean put(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.put(obj, obj2);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean putAll(Multimap multimap) {
        return super.putAll(multimap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean putAll(@NullableDecl Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override // com.google.common.collect.t, com.google.common.collect.p, com.google.common.collect.g, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ SortedSet removeAll(@NullableDecl Object obj) {
        return super.removeAll(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.t, com.google.common.collect.p, com.google.common.collect.g, com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ SortedSet replaceValues(@NullableDecl Object obj, Iterable iterable) {
        return super.replaceValues((TreeMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.g, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.google.common.collect.l
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.t, com.google.common.collect.g, com.google.common.collect.l, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }

    public static <K extends Comparable, V extends Comparable> TreeMultimap<K, V> create() {
        return new TreeMultimap<>(Ordering.natural(), Ordering.natural());
    }

    public static <K, V> TreeMultimap<K, V> create(Comparator<? super K> comparator, Comparator<? super V> comparator2) {
        return new TreeMultimap<>((Comparator) Preconditions.checkNotNull(comparator), (Comparator) Preconditions.checkNotNull(comparator2));
    }

    public static <K extends Comparable, V extends Comparable> TreeMultimap<K, V> create(Multimap<? extends K, ? extends V> multimap) {
        TreeMultimap<K, V> treeMultimap = new TreeMultimap<>(Ordering.natural(), Ordering.natural());
        treeMultimap.putAll(multimap);
        return treeMultimap;
    }

    public TreeMultimap(Comparator comparator, Comparator comparator2) {
        super(new TreeMap(comparator));
        this.h = comparator;
        this.i = comparator2;
    }

    @Override // com.google.common.collect.g, com.google.common.collect.l
    public final Map a() {
        return h();
    }

    @Override // com.google.common.collect.t, com.google.common.collect.p, com.google.common.collect.g
    public final SortedSet createCollection() {
        return new TreeSet(this.i);
    }

    @Override // com.google.common.collect.g
    public final Collection g(Object obj) {
        if (obj == null) {
            keyComparator().compare(obj, obj);
        }
        return createCollection();
    }

    @Deprecated
    public Comparator<? super K> keyComparator() {
        return this.h;
    }

    @Override // com.google.common.collect.SortedSetMultimap
    public Comparator<? super V> valueComparator() {
        return this.i;
    }

    @Override // com.google.common.collect.t, com.google.common.collect.p, com.google.common.collect.g, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @GwtIncompatible
    public NavigableSet<V> get(@NullableDecl K k) {
        return (NavigableSet) super.get((TreeMultimap<K, V>) k);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.l, com.google.common.collect.Multimap
    public NavigableSet<K> keySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // com.google.common.collect.q, com.google.common.collect.t, com.google.common.collect.p, com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public NavigableMap<K, Collection<V>> asMap() {
        return (NavigableMap) super.asMap();
    }
}
