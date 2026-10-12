package gnu.kawa.util;

import java.util.Map;

/* loaded from: classes2.dex */
public class HashNode<K, V> implements Map.Entry<K, V> {
    int hash;
    K key;
    public HashNode<K, V> next;
    V value;

    @Override // java.util.Map.Entry
    public K getKey() {
        return this.key;
    }

    @Override // java.util.Map.Entry
    public V getValue() {
        return this.value;
    }

    @Override // java.util.Map.Entry
    public V setValue(V v) {
        V v2 = this.value;
        this.value = v;
        return v2;
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        K k = this.key;
        int iHashCode = k == null ? 0 : k.hashCode();
        V v = this.value;
        return iHashCode ^ (v != null ? v.hashCode() : 0);
    }

    public HashNode(K k, V v) {
        this.key = k;
        this.value = v;
    }

    public V get(V v) {
        return getValue();
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (!(obj instanceof HashNode)) {
            return false;
        }
        HashNode hashNode = (HashNode) obj;
        K k = this.key;
        if (k != null ? k.equals(hashNode.key) : hashNode.key == null) {
            V v = this.value;
            V v2 = hashNode.value;
            if (v == null) {
                if (v2 == null) {
                    return true;
                }
            } else if (v.equals(v2)) {
                return true;
            }
        }
        return false;
    }
}
