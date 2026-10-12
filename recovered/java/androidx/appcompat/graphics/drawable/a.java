package androidx.appcompat.graphics.drawable;

/* loaded from: classes.dex */
class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ StateListDrawableCompat f201a;

    public a(StateListDrawableCompat stateListDrawableCompat) {
        this.f201a = stateListDrawableCompat;
    }

    @Override // java.lang.Runnable
    public void run() {
        StateListDrawableCompat stateListDrawableCompat = this.f201a;
        stateListDrawableCompat.a(true);
        stateListDrawableCompat.invalidateSelf();
    }
}
