package gnu.mapping;

import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public class Table2D {
    private static Table2D instance = new Table2D();
    int log2Size;
    int mask;
    int num_bindings;
    Entry[] table;

    public static final Table2D getInstance() {
        return instance;
    }

    public Table2D() {
        this(64);
    }

    public Table2D(int i) {
        this.log2Size = 4;
        while (true) {
            int i2 = this.log2Size;
            if (i > (1 << i2)) {
                this.log2Size = i2 + 1;
            } else {
                int i3 = 1 << i2;
                this.table = new Entry[i3];
                this.mask = i3 - 1;
                return;
            }
        }
    }

    public Object get(Object obj, Object obj2, Object obj3) {
        Object obj4;
        Entry entryLookup = lookup(obj, obj2, System.identityHashCode(obj), System.identityHashCode(obj2), false);
        return (entryLookup == null || (obj4 = entryLookup.value) == entryLookup) ? obj3 : obj4;
    }

    public boolean isBound(Object obj, Object obj2) {
        Entry entryLookup = lookup(obj, obj2, System.identityHashCode(obj), System.identityHashCode(obj2), false);
        return (entryLookup == null || entryLookup.value == entryLookup) ? false : true;
    }

    public Object put(Object obj, Object obj2, Object obj3) {
        Entry entryLookup = lookup(obj, obj2, System.identityHashCode(obj), System.identityHashCode(obj2), true);
        Object value = entryLookup.getValue();
        entryLookup.value = obj3;
        return value;
    }

    public Object remove(Object obj, Object obj2) {
        return remove(obj, obj2, System.identityHashCode(obj) ^ System.identityHashCode(obj2));
    }

    public Object remove(Object obj, Object obj2, int i) {
        return remove(obj, obj2, i);
    }

    public Object remove(Object obj, Object obj2, int i, int i2) {
        int i3 = (i ^ i2) & this.mask;
        Entry entry = this.table[i3];
        Entry entry2 = null;
        while (entry != null) {
            Object obj3 = entry.key1;
            Object obj4 = entry.key2;
            boolean z = false;
            boolean z2 = (obj3 instanceof WeakReference) && (obj3 = ((WeakReference) obj3).get()) == null;
            if (obj4 instanceof WeakReference) {
                obj4 = ((WeakReference) obj4).get();
                z2 = obj4 == null;
            }
            Entry entry3 = entry.chain;
            Object obj5 = entry.value;
            if (obj3 == obj && obj4 == obj2) {
                z = true;
            }
            if (z2 || z) {
                if (entry2 == null) {
                    this.table[i3] = entry3;
                } else {
                    entry2.chain = entry3;
                }
                this.num_bindings--;
                entry.value = entry;
            } else {
                if (z) {
                    return obj5;
                }
                entry2 = entry;
            }
            entry = entry3;
        }
        return null;
    }

    public void rehash() {
        Entry[] entryArr = this.table;
        int length = entryArr.length;
        int i = length * 2;
        Entry[] entryArr2 = new Entry[i];
        int i2 = i - 1;
        this.num_bindings = 0;
        while (true) {
            length--;
            if (length >= 0) {
                Entry entry = entryArr[length];
                while (entry != null) {
                    Object obj = entry.key1;
                    Object obj2 = entry.key2;
                    boolean z = (obj instanceof WeakReference) && (obj = ((WeakReference) obj).get()) == null;
                    if (obj2 instanceof WeakReference) {
                        obj2 = ((WeakReference) obj2).get();
                        z = obj2 == null;
                    }
                    Entry entry2 = entry.chain;
                    if (z) {
                        entry.value = entry;
                    } else {
                        int iIdentityHashCode = (System.identityHashCode(obj) ^ System.identityHashCode(obj2)) & i2;
                        entry.chain = entryArr2[iIdentityHashCode];
                        entryArr2[iIdentityHashCode] = entry;
                        this.num_bindings++;
                    }
                    entry = entry2;
                }
            } else {
                this.table = entryArr2;
                this.log2Size++;
                this.mask = i2;
                return;
            }
        }
    }

    public Entry lookup(Object obj, Object obj2, int i, int i2, boolean z) {
        int i3 = (i ^ i2) & this.mask;
        Entry entry = this.table[i3];
        Entry entry2 = entry;
        Entry entry3 = null;
        while (entry2 != null) {
            Object obj3 = entry2.key1;
            Object obj4 = entry2.key2;
            boolean z2 = false;
            if ((obj3 instanceof WeakReference) && (obj3 = ((WeakReference) obj3).get()) == null) {
                z2 = true;
            }
            if (obj4 instanceof WeakReference) {
                obj4 = ((WeakReference) obj4).get();
                z2 = true;
            }
            Entry entry4 = entry2.chain;
            if (z2) {
                if (entry3 == null) {
                    this.table[i3] = entry4;
                } else {
                    entry3.chain = entry4;
                }
                this.num_bindings--;
                entry2.value = entry2;
            } else {
                if (obj3 == obj && obj4 == obj2) {
                    return entry2;
                }
                entry3 = entry2;
            }
            entry2 = entry4;
        }
        if (!z) {
            return null;
        }
        Entry entry5 = new Entry();
        Object objWrapReference = wrapReference(obj);
        Object objWrapReference2 = wrapReference(obj2);
        entry5.key1 = objWrapReference;
        entry5.key2 = objWrapReference2;
        this.num_bindings++;
        entry5.chain = entry;
        this.table[i3] = entry5;
        entry5.value = entry5;
        return entry5;
    }

    public Object wrapReference(Object obj) {
        return (obj == null || (obj instanceof Symbol)) ? obj : new WeakReference(obj);
    }
}
