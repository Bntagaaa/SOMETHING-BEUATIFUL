package androidx.appcompat.app;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.R;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ViewUtils;
import androidx.core.content.ContextCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

/* loaded from: classes.dex */
class l implements OnApplyWindowInsetsListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppCompatDelegateImpl f171a;

    public l(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.f171a = appCompatDelegateImpl;
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        boolean z;
        boolean z2;
        int color;
        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        AppCompatDelegateImpl appCompatDelegateImpl = this.f171a;
        appCompatDelegateImpl.getClass();
        int systemWindowInsetTop2 = windowInsetsCompat.getSystemWindowInsetTop();
        ActionBarContextView actionBarContextView = appCompatDelegateImpl.v;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) appCompatDelegateImpl.v.getLayoutParams();
            if (appCompatDelegateImpl.v.isShown()) {
                if (appCompatDelegateImpl.d0 == null) {
                    appCompatDelegateImpl.d0 = new Rect();
                    appCompatDelegateImpl.e0 = new Rect();
                }
                Rect rect = appCompatDelegateImpl.d0;
                Rect rect2 = appCompatDelegateImpl.e0;
                rect.set(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
                ViewUtils.computeFitSystemWindows(appCompatDelegateImpl.B, rect, rect2);
                int i = rect.top;
                int i2 = rect.left;
                int i3 = rect.right;
                WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(appCompatDelegateImpl.B);
                int systemWindowInsetLeft = rootWindowInsets == null ? 0 : rootWindowInsets.getSystemWindowInsetLeft();
                int systemWindowInsetRight = rootWindowInsets == null ? 0 : rootWindowInsets.getSystemWindowInsetRight();
                if (marginLayoutParams.topMargin == i && marginLayoutParams.leftMargin == i2 && marginLayoutParams.rightMargin == i3) {
                    z2 = false;
                } else {
                    marginLayoutParams.topMargin = i;
                    marginLayoutParams.leftMargin = i2;
                    marginLayoutParams.rightMargin = i3;
                    z2 = true;
                }
                Context context = appCompatDelegateImpl.k;
                if (i > 0 && appCompatDelegateImpl.D == null) {
                    View view2 = new View(context);
                    appCompatDelegateImpl.D = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = systemWindowInsetLeft;
                    layoutParams.rightMargin = systemWindowInsetRight;
                    appCompatDelegateImpl.B.addView(appCompatDelegateImpl.D, -1, layoutParams);
                } else {
                    View view3 = appCompatDelegateImpl.D;
                    if (view3 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view3.getLayoutParams();
                        int i4 = marginLayoutParams2.height;
                        int i5 = marginLayoutParams.topMargin;
                        if (i4 != i5 || marginLayoutParams2.leftMargin != systemWindowInsetLeft || marginLayoutParams2.rightMargin != systemWindowInsetRight) {
                            marginLayoutParams2.height = i5;
                            marginLayoutParams2.leftMargin = systemWindowInsetLeft;
                            marginLayoutParams2.rightMargin = systemWindowInsetRight;
                            appCompatDelegateImpl.D.setLayoutParams(marginLayoutParams2);
                        }
                    }
                }
                View view4 = appCompatDelegateImpl.D;
                z = view4 != null;
                if (z && view4.getVisibility() != 0) {
                    View view5 = appCompatDelegateImpl.D;
                    if ((ViewCompat.getWindowSystemUiVisibility(view5) & 8192) != 0) {
                        color = ContextCompat.getColor(context, R.color.abc_decor_view_status_guard_light);
                    } else {
                        color = ContextCompat.getColor(context, R.color.abc_decor_view_status_guard);
                    }
                    view5.setBackgroundColor(color);
                }
                if (!appCompatDelegateImpl.I && z) {
                    systemWindowInsetTop2 = 0;
                }
                boolean z3 = z;
                z = z2;
                z = z3;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z = false;
            } else {
                z = false;
                z = false;
            }
            if (z) {
                appCompatDelegateImpl.v.setLayoutParams(marginLayoutParams);
            }
        }
        View view6 = appCompatDelegateImpl.D;
        if (view6 != null) {
            view6.setVisibility(z ? 0 : 8);
        }
        return ViewCompat.onApplyWindowInsets(view, systemWindowInsetTop != systemWindowInsetTop2 ? windowInsetsCompat.replaceSystemWindowInsets(windowInsetsCompat.getSystemWindowInsetLeft(), systemWindowInsetTop2, windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom()) : windowInsetsCompat);
    }
}
