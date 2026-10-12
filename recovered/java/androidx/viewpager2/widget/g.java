package androidx.viewpager2.widget;

import androidx.viewpager2.widget.ViewPager2;

/* loaded from: classes.dex */
class g extends ViewPager2.OnPageChangeCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewPager2 f2423a;

    public g(ViewPager2 viewPager2) {
        this.f2423a = viewPager2;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageSelected(int i) {
        ViewPager2 viewPager2 = this.f2423a;
        if (viewPager2.d != i) {
            viewPager2.d = i;
            viewPager2.t.onSetNewCurrentItem();
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrollStateChanged(int i) {
        if (i == 0) {
            this.f2423a.e();
        }
    }
}
