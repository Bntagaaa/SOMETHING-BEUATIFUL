package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Px;
import androidx.core.util.Preconditions;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;

/* loaded from: classes.dex */
public final class MarginPageTransformer implements ViewPager2.PageTransformer {

    /* renamed from: a, reason: collision with root package name */
    public final int f2396a;

    public MarginPageTransformer(@Px int i) {
        Preconditions.checkArgumentNonnegative(i, "Margin must be non-negative");
        this.f2396a = i;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
    public void transformPage(@NonNull View view, float f) {
        ViewParent parent = view.getParent();
        ViewParent parent2 = parent.getParent();
        if ((parent instanceof RecyclerView) && (parent2 instanceof ViewPager2)) {
            ViewPager2 viewPager2 = (ViewPager2) parent2;
            float f2 = this.f2396a * f;
            if (viewPager2.getOrientation() != 0) {
                view.setTranslationY(f2);
                return;
            }
            if (viewPager2.f2399g.getLayoutDirection() == 1) {
                f2 = -f2;
            }
            view.setTranslationX(f2);
            return;
        }
        throw new IllegalStateException("Expected the page view to be managed by a ViewPager2 instance.");
    }
}
