package androidx.collection;

import java.util.Map;

/* loaded from: classes.dex */
class b extends d<Object, Object> {
    public final /* synthetic */ ArraySet d;

    public b(ArraySet arraySet) {
        this.d = arraySet;
    }

    @Override // androidx.collection.d
    public int colGetSize() {
        return this.d.c;
    }

    @Override // androidx.collection.d
    public Object colGetEntry(int i, int i2) {
        return this.d.f544b[i];
    }

    @Override // androidx.collection.d
    public int colIndexOfKey(Object obj) {
        return this.d.indexOf(obj);
    }

    @Override // androidx.collection.d
    public int colIndexOfValue(Object obj) {
        return this.d.indexOf(obj);
    }

    @Override // androidx.collection.d
    public Map<Object, Object> colGetMap() {
        throw new UnsupportedOperationException("not a map");
    }

    @Override // androidx.collection.d
    public void colPut(Object obj, Object obj2) {
        this.d.add(obj);
    }

    @Override // androidx.collection.d
    public Object colSetValue(int i, Object obj) {
        throw new UnsupportedOperationException("not a map");
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
