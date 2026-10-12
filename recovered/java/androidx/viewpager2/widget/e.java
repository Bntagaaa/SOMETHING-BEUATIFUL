package androidx.viewpager2.widget;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;

/* loaded from: classes.dex */
final class e extends ViewPager2.OnPageChangeCallback {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayoutManager f2416a;

    /* renamed from: b, reason: collision with root package name */
    public ViewPager2.PageTransformer f2417b;

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrollStateChanged(int i) {
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageSelected(int i) {
    }

    public e(LinearLayoutManager linearLayoutManager) {
        this.f2416a = linearLayoutManager;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrolled(int i, float f, int i2) {
        if (this.f2417b == null) {
            return;
        }
        float f2 = -f;
        int i3 = 0;
        while (true) {
            LinearLayoutManager linearLayoutManager = this.f2416a;
            if (i3 >= linearLayoutManager.getChildCount()) {
                return;
            }
            View childAt = linearLayoutManager.getChildAt(i3);
            if (childAt == null) {
                Locale locale = Locale.US;
                throw new IllegalStateException("LayoutManager returned a null child at pos " + i3 + "/" + linearLayoutManager.getChildCount() + " while transforming pages");
            }
            this.f2417b.transformPage(childAt, (linearLayoutManager.getPosition(childAt) - i) + f2);
            i3++;
        }
    }
}
