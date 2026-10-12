package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import java.util.Comparator;
import java.util.NoSuchElementException;
import java.util.SortedMap;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
public abstract class ForwardingSortedMap<K, V> extends ForwardingMap<K, V> implements SortedMap<K, V> {
    @Override // com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
    public abstract SortedMap<K, V> delegate();

    @Override // java.util.SortedMap
    public Comparator<? super K> comparator() {
        return delegate().comparator();
    }

    @Override // java.util.SortedMap
    public K firstKey() {
        return delegate().firstKey();
    }

    @Override // java.util.SortedMap
    public SortedMap<K, V> headMap(K k) {
        return delegate().headMap(k);
    }

    @Override // java.util.SortedMap
    public K lastKey() {
        return delegate().lastKey();
    }

    @Override // java.util.SortedMap
    public SortedMap<K, V> subMap(K k, K k2) {
        return delegate().subMap(k, k2);
    }

    @Override // java.util.SortedMap
    public SortedMap<K, V> tailMap(K k) {
        return delegate().tailMap(k);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Beta
    public SortedMap<K, V> standardSubMap(K k, K k2) {
        int iCompare;
        Comparator<? super K> comparator = comparator();
        if (comparator == null) {
            iCompare = ((Comparable) k).compareTo(k2);
        } else {
            iCompare = comparator.compare(k, k2);
        }
        Preconditions.checkArgument(iCompare <= 0, "fromKey must be <= toKey");
        return tailMap(k).headMap(k2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ForwardingMap
    @Beta
    public boolean standardContainsKey(@NullableDecl Object obj) {
        int iCompare;
        try {
            K kFirstKey = tailMap(obj).firstKey();
            Comparator<? super K> comparator = comparator();
            if (comparator == null) {
                iCompare = ((Comparable) kFirstKey).compareTo(obj);
            } else {
                iCompare = comparator.compare(kFirstKey, obj);
            }
            return iCompare == 0;
        } catch (ClassCastException | NullPointerException | NoSuchElementException unused) {
            return false;
        }
    }

    @Beta
    public class StandardKeySet extends Maps.s<K, V> {
        public StandardKeySet(ForwardingSortedMap forwardingSortedMap) {
            super(forwardingSortedMap);
        }
    }
}
