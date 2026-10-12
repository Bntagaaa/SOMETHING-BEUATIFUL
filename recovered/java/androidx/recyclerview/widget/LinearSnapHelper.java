package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class LinearSnapHelper extends SnapHelper {
    public OrientationHelper d;
    public OrientationHelper e;

    @Override // androidx.recyclerview.widget.SnapHelper
    public int[] calculateDistanceToFinalSnap(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view) {
        int[] iArr = new int[2];
        if (layoutManager.canScrollHorizontally()) {
            OrientationHelper orientationHelperD = d(layoutManager);
            iArr[0] = ((orientationHelperD.getDecoratedMeasurement(view) / 2) + orientationHelperD.getDecoratedStart(view)) - ((orientationHelperD.getTotalSpace() / 2) + orientationHelperD.getStartAfterPadding());
        } else {
            iArr[0] = 0;
        }
        if (layoutManager.canScrollVertically()) {
            OrientationHelper orientationHelperE = e(layoutManager);
            iArr[1] = ((orientationHelperE.getDecoratedMeasurement(view) / 2) + orientationHelperE.getDecoratedStart(view)) - ((orientationHelperE.getTotalSpace() / 2) + orientationHelperE.getStartAfterPadding());
            return iArr;
        }
        iArr[1] = 0;
        return iArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.SnapHelper
    public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int i, int i2) {
        int itemCount;
        View viewFindSnapView;
        int position;
        int i3;
        PointF pointFComputeScrollVectorForPosition;
        int iB;
        int iB2;
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) || (itemCount = layoutManager.getItemCount()) == 0 || (viewFindSnapView = findSnapView(layoutManager)) == null || (position = layoutManager.getPosition(viewFindSnapView)) == -1 || (pointFComputeScrollVectorForPosition = ((RecyclerView.SmoothScroller.ScrollVectorProvider) layoutManager).computeScrollVectorForPosition(itemCount - 1)) == null) {
            return -1;
        }
        if (layoutManager.canScrollHorizontally()) {
            iB = b(layoutManager, d(layoutManager), i, 0);
            if (pointFComputeScrollVectorForPosition.x < 0.0f) {
                iB = -iB;
            }
        } else {
            iB = 0;
        }
        if (layoutManager.canScrollVertically()) {
            iB2 = b(layoutManager, e(layoutManager), 0, i2);
            if (pointFComputeScrollVectorForPosition.y < 0.0f) {
                iB2 = -iB2;
            }
        } else {
            iB2 = 0;
        }
        if (layoutManager.canScrollVertically()) {
            iB = iB2;
        }
        if (iB == 0) {
            return -1;
        }
        int i4 = position + iB;
        int i5 = i4 >= 0 ? i4 : 0;
        return i5 >= itemCount ? i3 : i5;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public View findSnapView(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager.canScrollVertically()) {
            return c(layoutManager, e(layoutManager));
        }
        if (layoutManager.canScrollHorizontally()) {
            return c(layoutManager, d(layoutManager));
        }
        return null;
    }

    public final int b(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper, int i, int i2) {
        int[] iArrCalculateScrollDistance = calculateScrollDistance(i, i2);
        int childCount = layoutManager.getChildCount();
        float f = 1.0f;
        if (childCount != 0) {
            View view = null;
            View view2 = null;
            int i3 = Integer.MAX_VALUE;
            int i4 = Integer.MIN_VALUE;
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = layoutManager.getChildAt(i5);
                int position = layoutManager.getPosition(childAt);
                if (position != -1) {
                    if (position < i3) {
                        view = childAt;
                        i3 = position;
                    }
                    if (position > i4) {
                        view2 = childAt;
                        i4 = position;
                    }
                }
            }
            if (view != null && view2 != null) {
                int iMax = Math.max(orientationHelper.getDecoratedEnd(view), orientationHelper.getDecoratedEnd(view2)) - Math.min(orientationHelper.getDecoratedStart(view), orientationHelper.getDecoratedStart(view2));
                if (iMax != 0) {
                    f = (iMax * 1.0f) / ((i4 - i3) + 1);
                }
            }
        }
        if (f <= 0.0f) {
            return 0;
        }
        return Math.round((Math.abs(iArrCalculateScrollDistance[0]) > Math.abs(iArrCalculateScrollDistance[1]) ? iArrCalculateScrollDistance[0] : iArrCalculateScrollDistance[1]) / f);
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
