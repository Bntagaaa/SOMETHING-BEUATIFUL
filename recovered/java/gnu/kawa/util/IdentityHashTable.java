package gnu.kawa.util;

/* loaded from: classes2.dex */
public class IdentityHashTable<K, V> extends GeneralHashTable<K, V> {
    @Override // gnu.kawa.util.AbstractHashTable
    public boolean matches(K k, Object obj) {
        return k == obj;
    }

    public IdentityHashTable() {
    }

    public IdentityHashTable(int i) {
        super(i);
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public int hash(Object obj) {
        return System.identityHashCode(obj);
    }
}
