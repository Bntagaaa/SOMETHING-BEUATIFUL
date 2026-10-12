package androidx.viewpager2.widget;

import androidx.viewpager2.widget.ViewPager2;

/* loaded from: classes.dex */
class h extends ViewPager2.OnPageChangeCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewPager2 f2424a;

    public h(ViewPager2 viewPager2) {
        this.f2424a = viewPager2;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageSelected(int i) {
        ViewPager2 viewPager2 = this.f2424a;
        viewPager2.clearFocus();
        if (viewPager2.hasFocus()) {
            viewPager2.j.requestFocus(2);
        }
    }
}
