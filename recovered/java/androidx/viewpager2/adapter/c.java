package androidx.viewpager2.adapter;

/* loaded from: classes.dex */
class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FragmentStateAdapter f2389a;

    public c(FragmentStateAdapter fragmentStateAdapter) {
        this.f2389a = fragmentStateAdapter;
    }

    @Override // java.lang.Runnable
    public void run() {
        FragmentStateAdapter fragmentStateAdapter = this.f2389a;
        fragmentStateAdapter.h = false;
        fragmentStateAdapter.b();
    }
}
