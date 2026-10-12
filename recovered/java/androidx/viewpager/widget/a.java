package androidx.viewpager.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

/* loaded from: classes.dex */
class a implements OnApplyWindowInsetsListener {

    /* renamed from: a, reason: collision with root package name */
    public final Rect f2375a = new Rect();

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewPager f2376b;

    public a(ViewPager viewPager) {
        this.f2376b = viewPager;
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompatOnApplyWindowInsets = ViewCompat.onApplyWindowInsets(view, windowInsetsCompat);
        if (windowInsetsCompatOnApplyWindowInsets.isConsumed()) {
            return windowInsetsCompatOnApplyWindowInsets;
        }
        int systemWindowInsetLeft = windowInsetsCompatOnApplyWindowInsets.getSystemWindowInsetLeft();
        Rect rect = this.f2375a;
        rect.left = systemWindowInsetLeft;
        rect.top = windowInsetsCompatOnApplyWindowInsets.getSystemWindowInsetTop();
        rect.right = windowInsetsCompatOnApplyWindowInsets.getSystemWindowInsetRight();
        rect.bottom = windowInsetsCompatOnApplyWindowInsets.getSystemWindowInsetBottom();
        ViewPager viewPager = this.f2376b;
        int childCount = viewPager.getChildCount();
        for (int i = 0; i < childCount; i++) {
            WindowInsetsCompat windowInsetsCompatDispatchApplyWindowInsets = ViewCompat.dispatchApplyWindowInsets(viewPager.getChildAt(i), windowInsetsCompatOnApplyWindowInsets);
            rect.left = Math.min(windowInsetsCompatDispatchApplyWindowInsets.getSystemWindowInsetLeft(), rect.left);
            rect.top = Math.min(windowInsetsCompatDispatchApplyWindowInsets.getSystemWindowInsetTop(), rect.top);
            rect.right = Math.min(windowInsetsCompatDispatchApplyWindowInsets.getSystemWindowInsetRight(), rect.right);
            rect.bottom = Math.min(windowInsetsCompatDispatchApplyWindowInsets.getSystemWindowInsetBottom(), rect.bottom);
        }
        return windowInsetsCompatOnApplyWindowInsets.replaceSystemWindowInsets(rect.left, rect.top, rect.right, rect.bottom);
    }
}
