package gnu.kawa.util;

import java.lang.ref.ReferenceQueue;
import java.util.Map;

/* loaded from: classes2.dex */
public class WeakIdentityHashMap<K, V> extends AbstractHashTable<WeakHashNode<K, V>, K, V> {
    ReferenceQueue<K> rqueue;

    @Override // gnu.kawa.util.AbstractHashTable
    public boolean matches(K k, Object obj) {
        return k == obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // gnu.kawa.util.AbstractHashTable
    public /* bridge */ /* synthetic */ Map.Entry makeEntry(Object obj, int i, Object obj2) {
        return makeEntry((WeakIdentityHashMap<K, V>) obj, i, (int) obj2);
    }

    public WeakIdentityHashMap() {
        super(64);
        this.rqueue = new ReferenceQueue<>();
    }

    public WeakIdentityHashMap(int i) {
        super(i);
        this.rqueue = new ReferenceQueue<>();
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public int getEntryHashCode(WeakHashNode<K, V> weakHashNode) {
        return weakHashNode.hash;
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public WeakHashNode<K, V> getEntryNext(WeakHashNode<K, V> weakHashNode) {
        return weakHashNode.next;
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public void setEntryNext(WeakHashNode<K, V> weakHashNode, WeakHashNode<K, V> weakHashNode2) {
        weakHashNode.next = weakHashNode2;
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public WeakHashNode<K, V>[] allocEntries(int i) {
        return new WeakHashNode[i];
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public int hash(Object obj) {
        return System.identityHashCode(obj);
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public WeakHashNode<K, V> makeEntry(K k, int i, V v) {
        WeakHashNode<K, V> weakHashNode = new WeakHashNode<>(k, this.rqueue, i);
        weakHashNode.value = v;
        return weakHashNode;
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public V get(Object obj, V v) {
        cleanup();
        return (V) super.get(obj, v);
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public V put(K k, int i, V v) {
        cleanup();
        return (V) super.put(k, i, v);
    }

    @Override // gnu.kawa.util.AbstractHashTable, java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        cleanup();
        return (V) super.remove(obj);
    }

    public void cleanup() {
        AbstractWeakHashTable.cleanup(this, this.rqueue);
    }
}
