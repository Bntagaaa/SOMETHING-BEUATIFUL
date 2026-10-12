package androidx.transition;

import android.util.Property;

/* loaded from: classes.dex */
class n<T> extends Property<T, Float> {

    /* renamed from: a, reason: collision with root package name */
    public float f2296a;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.util.Property
    public /* bridge */ /* synthetic */ Float get(Object obj) {
        return get((n<T>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.util.Property
    public /* bridge */ /* synthetic */ void set(Object obj, Float f) {
        set2((n<T>) obj, f);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.util.Property
    public Float get(T t) {
        return Float.valueOf(this.f2296a);
    }

    /* renamed from: set, reason: avoid collision after fix types in other method */
    public void set2(T t, Float f) {
        this.f2296a = f.floatValue();
        throw null;
    }
}
