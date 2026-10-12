package androidx.viewpager2.adapter;

import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;

/* loaded from: classes.dex */
class e extends ViewPager2.OnPageChangeCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FragmentStateAdapter.c f2392a;

    public e(FragmentStateAdapter.c cVar) {
        this.f2392a = cVar;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrollStateChanged(int i) {
        this.f2392a.b(false);
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageSelected(int i) {
        this.f2392a.b(false);
    }
}
