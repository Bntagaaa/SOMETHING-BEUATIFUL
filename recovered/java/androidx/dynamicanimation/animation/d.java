package androidx.dynamicanimation.animation;

/* loaded from: classes.dex */
class d extends FloatPropertyCompat {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FloatValueHolder f1495a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(FloatValueHolder floatValueHolder) {
        super("FloatValueHolder");
        this.f1495a = floatValueHolder;
    }

    @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
    public float getValue(Object obj) {
        return this.f1495a.getValue();
    }

    @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
    public void setValue(Object obj, float f) {
        this.f1495a.setValue(f);
    }
}
