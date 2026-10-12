package androidx.collection;

import java.util.Map;

/* loaded from: classes.dex */
class a extends d<Object, Object> {
    public final /* synthetic */ ArrayMap d;

    public a(ArrayMap arrayMap) {
        this.d = arrayMap;
    }

    @Override // androidx.collection.d
    public int colGetSize() {
        return this.d.c;
    }

    @Override // androidx.collection.d
    public Object colGetEntry(int i, int i2) {
        return this.d.f556b[(i << 1) + i2];
    }

    @Override // androidx.collection.d
    public int colIndexOfKey(Object obj) {
        return this.d.indexOfKey(obj);
    }

    @Override // androidx.collection.d
    public int colIndexOfValue(Object obj) {
        return this.d.e(obj);
    }

    @Override // androidx.collection.d
    public Map<Object, Object> colGetMap() {
        return this.d;
    }

    @Override // androidx.collection.d
    public void colPut(Object obj, Object obj2) {
        this.d.put(obj, obj2);
    }

    @Override // androidx.collection.d
    public Object colSetValue(int i, Object obj) {
        return this.d.setValueAt(i, obj);
    }

    @Override // androidx.collection.d
    public void colRemoveAt(int i) {
        this.d.removeAt(i);
    }

    @Override // androidx.collection.d
    public void colClear() {
        this.d.clear();
    }
}
