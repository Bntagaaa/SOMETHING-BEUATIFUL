package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class PagerSnapHelper extends SnapHelper {
    public OrientationHelper d;
    public OrientationHelper e;

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    public int[] calculateDistanceToFinalSnap(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view) {
        int[] iArr = new int[2];
        if (layoutManager.canScrollHorizontally()) {
            iArr[0] = b(view, d(layoutManager));
        } else {
            iArr[0] = 0;
        }
        if (layoutManager.canScrollVertically()) {
            iArr[1] = b(view, e(layoutManager));
            return iArr;
        }
        iArr[1] = 0;
        return iArr;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    @SuppressLint({"UnknownNullness"})
    public View findSnapView(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager.canScrollVertically()) {
            return c(layoutManager, e(layoutManager));
        }
        if (layoutManager.canScrollHorizontally()) {
            return c(layoutManager, d(layoutManager));
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.SnapHelper
    @SuppressLint({"UnknownNullness"})
    public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int i, int i2) {
        OrientationHelper orientationHelperD;
        PointF pointFComputeScrollVectorForPosition;
        int itemCount = layoutManager.getItemCount();
        if (itemCount != 0) {
            View view = null;
            if (layoutManager.canScrollVertically()) {
                orientationHelperD = e(layoutManager);
            } else {
                orientationHelperD = layoutManager.canScrollHorizontally() ? d(layoutManager) : null;
            }
            if (orientationHelperD != null) {
                int childCount = layoutManager.getChildCount();
                boolean z = false;
                View view2 = null;
                int i3 = Integer.MIN_VALUE;
                int i4 = Integer.MAX_VALUE;
                for (int i5 = 0; i5 < childCount; i5++) {
                    View childAt = layoutManager.getChildAt(i5);
                    if (childAt != null) {
                        int iB = b(childAt, orientationHelperD);
                        if (iB <= 0 && iB > i3) {
                            view2 = childAt;
                            i3 = iB;
                        }
                        if (iB >= 0 && iB < i4) {
                            view = childAt;
                            i4 = iB;
                        }
                    }
                }
                boolean z2 = !layoutManager.canScrollHorizontally() ? i2 <= 0 : i <= 0;
                if (z2 && view != null) {
                    return layoutManager.getPosition(view);
                }
                if (!z2 && view2 != null) {
                    return layoutManager.getPosition(view2);
                }
                if (z2) {
                    view = view2;
                }
                if (view != null) {
                    int position = layoutManager.getPosition(view);
                    int itemCount2 = layoutManager.getItemCount();
                    if ((layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) && (pointFComputeScrollVectorForPosition = ((RecyclerView.SmoothScroller.ScrollVectorProvider) layoutManager).computeScrollVectorForPosition(itemCount2 - 1)) != null && (pointFComputeScrollVectorForPosition.x < 0.0f || pointFComputeScrollVectorForPosition.y < 0.0f)) {
                        z = true;
                    }
                    int i6 = position + (z == z2 ? -1 : 1);
                    if (i6 >= 0 && i6 < itemCount) {
                        return i6;
                    }
                }
            }
        }
        return -1;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    public RecyclerView.SmoothScroller createScroller(@NonNull RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) {
            return new a(this.f2095a.getContext());
        }
        return null;
    }

    public class a extends LinearSmoothScroller {
        public a(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
        public void onTargetFound(@NonNull View view, @NonNull RecyclerView.State state, @NonNull RecyclerView.SmoothScroller.Action action) {
            PagerSnapHelper pagerSnapHelper = PagerSnapHelper.this;
            int[] iArrCalculateDistanceToFinalSnap = pagerSnapHelper.calculateDistanceToFinalSnap(pagerSnapHelper.f2095a.getLayoutManager(), view);
            int i = iArrCalculateDistanceToFinalSnap[0];
            int i2 = iArrCalculateDistanceToFinalSnap[1];
            int iCalculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i), Math.abs(i2)));
            if (iCalculateTimeForDeceleration > 0) {
                action.update(i, i2, iCalculateTimeForDeceleration, this.mDecelerateInterpolator);
            }
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public float calculateSpeedPerPixel(@NonNull DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public int calculateTimeForScrolling(int i) {
            return Math.min(100, super.calculateTimeForScrolling(i));
        }
    }

    public static int b(View view, OrientationHelper orientationHelper) {
        return ((orientationHelper.getDecoratedMeasurement(view) / 2) + orientationHelper.getDecoratedStart(view)) - ((orientationHelper.getTotalSpace() / 2) + orientationHelper.getStartAfterPadding());
    }

    public static View c(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        int childCount = layoutManager.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int totalSpace = (orientationHelper.getTotalSpace() / 2) + orientationHelper.getStartAfterPadding();
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = layoutManager.getChildAt(i2);
            int iAbs = Math.abs(((orientationHelper.getDecoratedMeasurement(childAt) / 2) + orientationHelper.getDecoratedStart(childAt)) - totalSpace);
            if (iAbs < i) {
                view = childAt;
                i = iAbs;
            }
        }
        return view;
    }

    public final OrientationHelper e(RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.d;
        if (orientationHelper == null || orientationHelper.mLayoutManager != layoutManager) {
            this.d = OrientationHelper.createVerticalHelper(layoutManager);
        }
        return this.d;
    }

    public final OrientationHelper d(RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.e;
        if (orientationHelper == null || orientationHelper.mLayoutManager != layoutManager) {
            this.e = OrientationHelper.createHorizontalHelper(layoutManager);
        }
        return this.e;
    }
}
