package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.Maps;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.SortedMap;

@GwtIncompatible
/* loaded from: classes.dex */
public abstract class ForwardingNavigableMap<K, V> extends ForwardingSortedMap<K, V> implements NavigableMap<K, V> {
    @Override // com.google.common.collect.ForwardingSortedMap, com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
    public abstract NavigableMap<K, V> delegate();

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> lowerEntry(K k) {
        return delegate().lowerEntry(k);
    }

    public Map.Entry<K, V> standardLowerEntry(K k) {
        return headMap(k, false).lastEntry();
    }

    @Override // java.util.NavigableMap
    public K lowerKey(K k) {
        return delegate().lowerKey(k);
    }

    public K standardLowerKey(K k) {
        return (K) Maps.f(lowerEntry(k));
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> floorEntry(K k) {
        return delegate().floorEntry(k);
    }

    public Map.Entry<K, V> standardFloorEntry(K k) {
        return headMap(k, true).lastEntry();
    }

    @Override // java.util.NavigableMap
    public K floorKey(K k) {
        return delegate().floorKey(k);
    }

    public K standardFloorKey(K k) {
        return (K) Maps.f(floorEntry(k));
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> ceilingEntry(K k) {
        return delegate().ceilingEntry(k);
    }

    public Map.Entry<K, V> standardCeilingEntry(K k) {
        return tailMap(k, true).firstEntry();
    }

    @Override // java.util.NavigableMap
    public K ceilingKey(K k) {
        return delegate().ceilingKey(k);
    }

    public K standardCeilingKey(K k) {
        return (K) Maps.f(ceilingEntry(k));
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> higherEntry(K k) {
        return delegate().higherEntry(k);
    }

    public Map.Entry<K, V> standardHigherEntry(K k) {
        return tailMap(k, false).firstEntry();
    }

    @Override // java.util.NavigableMap
    public K higherKey(K k) {
        return delegate().higherKey(k);
    }

    public K standardHigherKey(K k) {
        return (K) Maps.f(higherEntry(k));
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> firstEntry() {
        return delegate().firstEntry();
    }

    public Map.Entry<K, V> standardFirstEntry() {
        return (Map.Entry) Iterables.getFirst(entrySet(), null);
    }

    public K standardFirstKey() {
        Map.Entry<K, V> entryFirstEntry = firstEntry();
        if (entryFirstEntry == null) {
            throw new NoSuchElementException();
        }
        return entryFirstEntry.getKey();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> lastEntry() {
        return delegate().lastEntry();
    }

    public Map.Entry<K, V> standardLastEntry() {
        return (Map.Entry) Iterables.getFirst(descendingMap().entrySet(), null);
    }

    public K standardLastKey() {
        Map.Entry<K, V> entryLastEntry = lastEntry();
        if (entryLastEntry == null) {
            throw new NoSuchElementException();
        }
        return entryLastEntry.getKey();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> pollFirstEntry() {
        return delegate().pollFirstEntry();
    }

    public Map.Entry<K, V> standardPollFirstEntry() {
        return (Map.Entry) Iterators.c(entrySet().iterator());
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> pollLastEntry() {
        return delegate().pollLastEntry();
    }

    public Map.Entry<K, V> standardPollLastEntry() {
        return (Map.Entry) Iterators.c(descendingMap().entrySet().iterator());
    }

    @Override // java.util.NavigableMap
    public NavigableMap<K, V> descendingMap() {
        return delegate().descendingMap();
    }

    @Beta
    public class StandardDescendingMap extends Maps.d<K, V> {
        public StandardDescendingMap() {
        }

        @Override // com.google.common.collect.Maps.d
        public final NavigableMap a() {
            return ForwardingNavigableMap.this;
        }

        public class a implements Iterator<Map.Entry<K, V>> {

            /* renamed from: a, reason: collision with root package name */
            public Map.Entry f3872a = null;

            /* renamed from: b, reason: collision with root package name */
            public Map.Entry f3873b;

            public a() {
                this.f3873b = ForwardingNavigableMap.this.lastEntry();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f3873b != null;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Iterator
            public Map.Entry<K, V> next() {
                StandardDescendingMap standardDescendingMap = StandardDescendingMap.this;
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                try {
                    Map.Entry<K, V> entry = this.f3873b;
                    this.f3872a = entry;
                    this.f3873b = ForwardingNavigableMap.this.lowerEntry(entry.getKey());
                    return entry;
                } catch (Throwable th) {
                    this.f3872a = this.f3873b;
                    this.f3873b = ForwardingNavigableMap.this.lowerEntry(this.f3873b.getKey());
                    throw th;
                }
            }

            @Override // java.util.Iterator
            public void remove() {
                g0.e(this.f3872a != null);
                ForwardingNavigableMap.this.remove(this.f3872a.getKey());
                this.f3872a = null;
            }
        }

        @Override // com.google.common.collect.Maps.d
        public Iterator<Map.Entry<K, V>> entryIterator() {
            return new a();
        }
    }

    @Override // java.util.NavigableMap
    public NavigableSet<K> navigableKeySet() {
        return delegate().navigableKeySet();
    }

    @Override // java.util.NavigableMap
    public NavigableSet<K> descendingKeySet() {
        return delegate().descendingKeySet();
    }

    @Beta
    public NavigableSet<K> standardDescendingKeySet() {
        return descendingMap().navigableKeySet();
    }

    @Override // com.google.common.collect.ForwardingSortedMap
    public SortedMap<K, V> standardSubMap(K k, K k2) {
        return subMap(k, true, k2, false);
    }

    @Override // java.util.NavigableMap
    public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
        return delegate().subMap(k, z, k2, z2);
    }

    @Override // java.util.NavigableMap
    public NavigableMap<K, V> headMap(K k, boolean z) {
        return delegate().headMap(k, z);
    }

    @Override // java.util.NavigableMap
    public NavigableMap<K, V> tailMap(K k, boolean z) {
        return delegate().tailMap(k, z);
    }

    public SortedMap<K, V> standardHeadMap(K k) {
        return headMap(k, false);
    }

    public SortedMap<K, V> standardTailMap(K k) {
        return tailMap(k, true);
    }

    @Beta
    public class StandardNavigableKeySet extends Maps.q<K, V> {
        public StandardNavigableKeySet(ForwardingNavigableMap forwardingNavigableMap) {
            super(forwardingNavigableMap);
        }
    }
}
