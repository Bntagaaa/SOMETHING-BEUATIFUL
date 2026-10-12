package gnu.kawa.util;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class AbstractHashTable<Entry extends Map.Entry<K, V>, K, V> extends AbstractMap<K, V> {
    public static final int DEFAULT_INITIAL_SIZE = 64;
    protected int mask;
    protected int num_bindings;
    protected Entry[] table;

    public abstract Entry[] allocEntries(int i);

    public abstract int getEntryHashCode(Entry entry);

    public abstract Entry getEntryNext(Entry entry);

    public abstract Entry makeEntry(K k, int i, V v);

    public abstract void setEntryNext(Entry entry, Entry entry2);

    public AbstractHashTable() {
        this(64);
    }

    public AbstractHashTable(int i) {
        int i2 = 4;
        while (true) {
            int i3 = 1 << i2;
            if (i <= i3) {
                this.table = (Entry[]) allocEntries(i3);
                this.mask = i3 - 1;
                return;
            }
            i2++;
        }
    }

    public int hash(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public int hashToIndex(int i) {
        return (i ^ (i >>> 15)) & this.mask;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean matches(Object obj, int i, Entry entry) {
        return getEntryHashCode(entry) == i && matches(entry.getKey(), obj);
    }

    public boolean matches(K k, Object obj) {
        if (k != obj) {
            return k != null && k.equals(obj);
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        return get(obj, null);
    }

    public Entry getNode(Object obj) {
        int iHash = hash(obj);
        Entry entry = this.table[hashToIndex(iHash)];
        while (entry != null) {
            if (matches(obj, iHash, entry)) {
                return entry;
            }
            entry = (Entry) getEntryNext(entry);
        }
        return null;
    }

    public V get(Object obj, V v) {
        Map.Entry node = getNode(obj);
        return node == null ? v : (V) node.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.Map$Entry] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.util.Map$Entry] */
    public void rehash() {
        Entry[] entryArr = this.table;
        int length = entryArr.length;
        int i = length * 2;
        Entry[] entryArr2 = (Entry[]) allocEntries(i);
        this.table = entryArr2;
        this.mask = i - 1;
        while (true) {
            length--;
            if (length < 0) {
                return;
            }
            Entry entry = entryArr[length];
            if (entry != null && getEntryNext(entry) != null) {
                Entry entry2 = null;
                while (true) {
                    ?? entryNext = getEntryNext(entry);
                    setEntryNext(entry, entry2);
                    if (entryNext == 0) {
                        break;
                    }
                    entry2 = entry;
                    entry = entryNext;
                }
            }
            while (entry != null) {
                ?? entryNext2 = getEntryNext(entry);
                int iHashToIndex = hashToIndex(getEntryHashCode(entry));
                setEntryNext(entry, entryArr2[iHashToIndex]);
                entryArr2[iHashToIndex] = entry;
                entry = entryNext2;
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        return put(k, hash(k), v);
    }

    public V put(K k, int i, V v) {
        int iHashToIndex = hashToIndex(i);
        Entry entry = this.table[iHashToIndex];
        Map.Entry entryNext = entry;
        while (entryNext != null) {
            if (matches(k, i, entryNext)) {
                V v2 = (V) entryNext.getValue();
                entryNext.setValue(v);
                return v2;
            }
            entryNext = getEntryNext(entryNext);
        }
        int i2 = this.num_bindings + 1;
        this.num_bindings = i2;
        if (i2 >= this.table.length) {
            rehash();
            iHashToIndex = hashToIndex(i);
            entry = this.table[iHashToIndex];
        }
        Map.Entry entryMakeEntry = makeEntry(k, i, v);
        setEntryNext(entryMakeEntry, entry);
        ((Entry[]) this.table)[iHashToIndex] = entryMakeEntry;
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.util.Map$Entry] */
    /* JADX WARN: Type inference failed for: r8v4, types: [Entry extends java.util.Map$Entry<K, V>[]] */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        int iHash = hash(obj);
        int iHashToIndex = hashToIndex(iHash);
        Entry entry = this.table[iHashToIndex];
        Entry entry2 = null;
        while (entry != null) {
            ?? entryNext = getEntryNext(entry);
            if (matches(obj, iHash, entry)) {
                if (entry2 == null) {
                    this.table[iHashToIndex] = entryNext;
                } else {
                    setEntryNext(entry2, entryNext);
                }
                this.num_bindings--;
                return (V) entry.getValue();
            }
            entry2 = entry;
            entry = entryNext;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.Map$Entry] */
    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        Entry[] entryArr = this.table;
        int length = entryArr.length;
        while (true) {
            length--;
            if (length >= 0) {
                Entry entry = entryArr[length];
                while (entry != null) {
                    ?? entryNext = getEntryNext(entry);
                    setEntryNext(entry, null);
                    entry = entryNext;
                }
                entryArr[length] = null;
            } else {
                this.num_bindings = 0;
                return;
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.num_bindings;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return new AbstractEntrySet(this);
    }

    public static class AbstractEntrySet<Entry extends Map.Entry<K, V>, K, V> extends AbstractSet<Entry> {
        AbstractHashTable<Entry, K, V> htable;

        public AbstractEntrySet(AbstractHashTable<Entry, K, V> abstractHashTable) {
            this.htable = abstractHashTable;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.htable.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Entry> iterator() {
            return (Iterator<Entry>) new Iterator<Entry>() { // from class: gnu.kawa.util.AbstractHashTable.AbstractEntrySet.1
                int curIndex = -1;
                Entry currentEntry;
                Entry nextEntry;
                int nextIndex;
                Entry previousEntry;

                @Override // java.util.Iterator
                public boolean hasNext() {
                    if (this.curIndex < 0) {
                        int length = AbstractEntrySet.this.htable.table.length;
                        this.nextIndex = length;
                        this.curIndex = length;
                        advance();
                    }
                    return this.nextEntry != null;
                }

                private void advance() {
                    while (this.nextEntry == null) {
                        int i = this.nextIndex - 1;
                        this.nextIndex = i;
                        if (i < 0) {
                            return;
                        } else {
                            this.nextEntry = AbstractEntrySet.this.htable.table[i];
                        }
                    }
                }

                @Override // java.util.Iterator
                public Entry next() {
                    Entry entry = this.nextEntry;
                    if (entry == null) {
                        throw new NoSuchElementException();
                    }
                    this.previousEntry = this.currentEntry;
                    this.currentEntry = entry;
                    this.curIndex = this.nextIndex;
                    this.nextEntry = (Entry) AbstractEntrySet.this.htable.getEntryNext(entry);
                    advance();
                    return this.currentEntry;
                }

                @Override // java.util.Iterator
                public void remove() {
                    Entry entry = this.previousEntry;
                    if (entry == this.currentEntry) {
                        throw new IllegalStateException();
                    }
                    if (entry == null) {
                        AbstractEntrySet.this.htable.table[this.curIndex] = this.nextEntry;
                    } else {
                        AbstractEntrySet.this.htable.setEntryNext(entry, this.nextEntry);
                    }
                    AbstractHashTable<Entry, K, V> abstractHashTable = AbstractEntrySet.this.htable;
                    abstractHashTable.num_bindings--;
                    this.previousEntry = this.currentEntry;
                }
            };
        }
    }
}
