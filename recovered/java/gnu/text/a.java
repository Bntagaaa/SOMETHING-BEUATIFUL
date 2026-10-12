package gnu.text;

import gnu.kawa.util.AbstractWeakHashTable;

/* loaded from: classes2.dex */
class a extends AbstractWeakHashTable<Char, Char> {
    @Override // gnu.kawa.util.AbstractWeakHashTable
    public Char getKeyFromValue(Char r1) {
        return r1;
    }

    public Char get(int i) {
        cleanup();
        for (AbstractWeakHashTable.WEntry wEntry = ((AbstractWeakHashTable.WEntry[]) this.table)[hashToIndex(i)]; wEntry != null; wEntry = wEntry.next) {
            Char r1 = (Char) wEntry.getValue();
            if (r1 != null && r1.intValue() == i) {
                return r1;
            }
        }
        Char r0 = new Char(i);
        super.put(r0, r0);
        return r0;
    }
}
