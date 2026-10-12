package gnu.kawa.util;

import java.util.Map;

/* loaded from: classes2.dex */
public class GeneralHashTable<K, V> extends AbstractHashTable<HashNode<K, V>, K, V> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // gnu.kawa.util.AbstractHashTable
    public /* bridge */ /* synthetic */ Map.Entry makeEntry(Object obj, int i, Object obj2) {
        return makeEntry((GeneralHashTable<K, V>) obj, i, (int) obj2);
    }

    public GeneralHashTable() {
    }

    public GeneralHashTable(int i) {
        super(i);
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public int getEntryHashCode(HashNode<K, V> hashNode) {
        return hashNode.hash;
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public HashNode<K, V> getEntryNext(HashNode<K, V> hashNode) {
        return hashNode.next;
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public void setEntryNext(HashNode<K, V> hashNode, HashNode<K, V> hashNode2) {
        hashNode.next = hashNode2;
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public HashNode<K, V>[] allocEntries(int i) {
        return new HashNode[i];
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public HashNode<K, V> makeEntry(K k, int i, V v) {
        HashNode<K, V> hashNode = new HashNode<>(k, v);
        hashNode.hash = i;
        return hashNode;
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public HashNode<K, V> getNode(Object obj) {
        return (HashNode) super.getNode(obj);
    }
}
