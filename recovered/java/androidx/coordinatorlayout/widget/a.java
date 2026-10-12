package androidx.coordinatorlayout.widget;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

/* loaded from: classes.dex */
class a implements OnApplyWindowInsetsListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CoordinatorLayout f833a;

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        CoordinatorLayout.Behavior behavior;
        CoordinatorLayout coordinatorLayout = this.f833a;
        if (!ObjectsCompat.equals(coordinatorLayout.o, windowInsetsCompat)) {
            coordinatorLayout.o = windowInsetsCompat;
            boolean z = windowInsetsCompat != null && windowInsetsCompat.getSystemWindowInsetTop() > 0;
            coordinatorLayout.p = z;
            coordinatorLayout.setWillNotDraw(!z && coordinatorLayout.getBackground() == null);
            if (!windowInsetsCompat.isConsumed()) {
                int childCount = coordinatorLayout.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = coordinatorLayout.getChildAt(i);
                    if (ViewCompat.getFitsSystemWindows(childAt) && (behavior = ((CoordinatorLayout.LayoutParams) childAt.getLayoutParams()).getBehavior()) != null) {
                        windowInsetsCompat = behavior.onApplyWindowInsets(coordinatorLayout, childAt, windowInsetsCompat);
                        if (windowInsetsCompat.isConsumed()) {
                            break;
                        }
                    }
                }
            }
            coordinatorLayout.requestLayout();
        }
        return windowInsetsCompat;
    }

    public a(CoordinatorLayout coordinatorLayout) {
        this.f833a = coordinatorLayout;
    }
}
