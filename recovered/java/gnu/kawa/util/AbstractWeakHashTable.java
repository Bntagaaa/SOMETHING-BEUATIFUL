package gnu.kawa.util;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class AbstractWeakHashTable<K, V> extends AbstractHashTable<WEntry<K, V>, K, V> {
    ReferenceQueue<V> rqueue;

    public abstract K getKeyFromValue(V v);

    public boolean valuesEqual(V v, V v2) {
        return v == v2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // gnu.kawa.util.AbstractHashTable
    public /* bridge */ /* synthetic */ Map.Entry makeEntry(Object obj, int i, Object obj2) {
        return makeEntry((AbstractWeakHashTable<K, V>) obj, i, (int) obj2);
    }

    public AbstractWeakHashTable() {
        super(64);
        this.rqueue = new ReferenceQueue<>();
    }

    public AbstractWeakHashTable(int i) {
        super(i);
        this.rqueue = new ReferenceQueue<>();
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public int getEntryHashCode(WEntry<K, V> wEntry) {
        return wEntry.hash;
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public WEntry<K, V> getEntryNext(WEntry<K, V> wEntry) {
        return wEntry.next;
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public void setEntryNext(WEntry<K, V> wEntry, WEntry<K, V> wEntry2) {
        wEntry.next = wEntry2;
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public WEntry<K, V>[] allocEntries(int i) {
        return new WEntry[i];
    }

    public V getValueIfMatching(WEntry<K, V> wEntry, Object obj) {
        V value = wEntry.getValue();
        if (value == null || !matches(getKeyFromValue(value), obj)) {
            return null;
        }
        return value;
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public V get(Object obj, V v) {
        cleanup();
        return (V) super.get(obj, v);
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public int hash(Object obj) {
        return System.identityHashCode(obj);
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public WEntry<K, V> makeEntry(K k, int i, V v) {
        return new WEntry<>(v, this, i);
    }

    @Override // gnu.kawa.util.AbstractHashTable, java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        cleanup();
        int iHash = hash(k);
        int iHashToIndex = hashToIndex(iHash);
        WEntry wEntry = ((WEntry[]) this.table)[iHashToIndex];
        WEntry wEntry2 = wEntry;
        V v2 = null;
        WEntry wEntry3 = null;
        while (wEntry2 != null) {
            V v3 = (V) wEntry2.getValue();
            if (v3 == v) {
                return v3;
            }
            WEntry wEntry4 = wEntry2.next;
            if (v3 == null || !valuesEqual(v3, v)) {
                wEntry3 = wEntry2;
            } else {
                if (wEntry3 == null) {
                    ((WEntry[]) this.table)[iHashToIndex] = wEntry4;
                } else {
                    wEntry3.next = wEntry4;
                }
                v2 = v3;
            }
            wEntry2 = wEntry4;
        }
        int i = this.num_bindings + 1;
        this.num_bindings = i;
        if (i >= ((WEntry[]) this.table).length) {
            rehash();
            iHashToIndex = hashToIndex(iHash);
            wEntry = ((WEntry[]) this.table)[iHashToIndex];
        }
        WEntry<K, V> wEntryMakeEntry = makeEntry((AbstractWeakHashTable<K, V>) null, iHash, (int) v);
        wEntryMakeEntry.next = wEntry;
        ((WEntry[]) this.table)[iHashToIndex] = wEntryMakeEntry;
        return v2;
    }

    public void cleanup() {
        cleanup(this, this.rqueue);
    }

    public static <Entry extends Map.Entry<K, V>, K, V> void cleanup(AbstractHashTable<Entry, ?, ?> abstractHashTable, ReferenceQueue<?> referenceQueue) {
        while (true) {
            Map.Entry entry = (Map.Entry) referenceQueue.poll();
            if (entry == null) {
                return;
            }
            int iHashToIndex = abstractHashTable.hashToIndex(abstractHashTable.getEntryHashCode(entry));
            Map.Entry entry2 = abstractHashTable.table[iHashToIndex];
            Map.Entry entry3 = null;
            while (true) {
                if (entry2 != null) {
                    Map.Entry entryNext = abstractHashTable.getEntryNext(entry2);
                    if (entry2 != entry) {
                        entry3 = entry2;
                        entry2 = entryNext;
                    } else if (entry3 == null) {
                        ((Entry[]) abstractHashTable.table)[iHashToIndex] = entryNext;
                    } else {
                        abstractHashTable.setEntryNext(entry3, entryNext);
                    }
                }
            }
            abstractHashTable.num_bindings--;
        }
    }

    public static class WEntry<K, V> extends WeakReference<V> implements Map.Entry<K, V> {
        public int hash;
        AbstractWeakHashTable<K, V> htable;
        public WEntry next;

        public WEntry(V v, AbstractWeakHashTable<K, V> abstractWeakHashTable, int i) {
            super(v, abstractWeakHashTable.rqueue);
            this.htable = abstractWeakHashTable;
            this.hash = i;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            V v = get();
            if (v == null) {
                return null;
            }
            return this.htable.getKeyFromValue(v);
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return get();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException();
        }
    }
}
