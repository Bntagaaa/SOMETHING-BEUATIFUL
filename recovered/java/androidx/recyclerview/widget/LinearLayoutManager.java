package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.appinventor.components.runtime.util.ScreenDensityUtil;
import java.util.List;

/* loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerView.LayoutManager implements ItemTouchHelper.ViewDropHandler, RecyclerView.SmoothScroller.ScrollVectorProvider {
    public static final int HORIZONTAL = 0;
    public static final int INVALID_OFFSET = Integer.MIN_VALUE;
    public static final int VERTICAL = 1;
    public boolean A;
    public SavedState B;
    public final a C;
    public final LayoutChunkResult D;
    public int E;
    public final int[] F;
    public int q;
    public b r;
    public OrientationHelper s;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;
    public boolean x;
    public int y;
    public int z;

    public static class LayoutChunkResult {
        public int mConsumed;
        public boolean mFinished;
        public boolean mFocusable;
        public boolean mIgnoreConsumed;
    }

    public void D(RecyclerView.Recycler recycler, RecyclerView.State state, a aVar, int i) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    public LinearLayoutManager(@SuppressLint({"UnknownNullness"}) Context context) {
        this(context, 1, false);
    }

    public LinearLayoutManager(@SuppressLint({"UnknownNullness"}) Context context, int i, boolean z) {
        this.q = 1;
        this.u = false;
        this.v = false;
        this.w = false;
        this.x = true;
        this.y = -1;
        this.z = Integer.MIN_VALUE;
        this.B = null;
        this.C = new a();
        this.D = new LayoutChunkResult();
        this.E = 2;
        this.F = new int[2];
        setOrientation(i);
        setReverseLayout(z);
    }

    @SuppressLint({"UnknownNullness"})
    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.q = 1;
        this.u = false;
        this.v = false;
        this.w = false;
        this.x = true;
        this.y = -1;
        this.z = Integer.MIN_VALUE;
        this.B = null;
        this.C = new a();
        this.D = new LayoutChunkResult();
        this.E = 2;
        this.F = new int[2];
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attributeSet, i, i2);
        setOrientation(properties.orientation);
        setReverseLayout(properties.reverseLayout);
        setStackFromEnd(properties.stackFromEnd);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.A;
    }

    public void setRecycleChildrenOnDetach(boolean z) {
        this.A = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        if (this.A) {
            removeAndRecycleAllViews(recycler);
            recycler.clear();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(findFirstVisibleItemPosition());
            accessibilityEvent.setToIndex(findLastVisibleItemPosition());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public Parcelable onSaveInstanceState() {
        if (this.B != null) {
            return new SavedState(this.B);
        }
        SavedState savedState = new SavedState();
        if (getChildCount() > 0) {
            r();
            boolean z = this.t ^ this.v;
            savedState.c = z;
            if (z) {
                View viewA = A();
                savedState.f2045b = this.s.getEndAfterPadding() - this.s.getDecoratedEnd(viewA);
                savedState.f2044a = getPosition(viewA);
                return savedState;
            }
            View viewB = B();
            savedState.f2044a = getPosition(viewB);
            savedState.f2045b = this.s.getDecoratedStart(viewB) - this.s.getStartAfterPadding();
            return savedState;
        }
        savedState.f2044a = -1;
        return savedState;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.B = savedState;
            if (this.y != -1) {
                savedState.f2044a = -1;
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return this.q == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return this.q == 1;
    }

    public void setStackFromEnd(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (this.w == z) {
            return;
        }
        this.w = z;
        requestLayout();
    }

    public boolean getStackFromEnd() {
        return this.w;
    }

    public int getOrientation() {
        return this.q;
    }

    public void setOrientation(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException(_COROUTINE.a.d(i, "invalid orientation:"));
        }
        assertNotInLayoutOrScroll(null);
        if (i != this.q || this.s == null) {
            OrientationHelper orientationHelperCreateOrientationHelper = OrientationHelper.createOrientationHelper(this, i);
            this.s = orientationHelperCreateOrientationHelper;
            this.C.f2046a = orientationHelperCreateOrientationHelper;
            this.q = i;
            requestLayout();
        }
    }

    public final void G() {
        if (this.q == 1 || !isLayoutRTL()) {
            this.v = this.u;
        } else {
            this.v = !this.u;
        }
    }

    public boolean getReverseLayout() {
        return this.u;
    }

    public void setReverseLayout(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (z == this.u) {
            return;
        }
        this.u = z;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public View findViewByPosition(int i) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i - getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (getPosition(childAt) == i) {
                return childAt;
            }
        }
        return super.findViewByPosition(i);
    }

    @Deprecated
    public int getExtraLayoutSpace(RecyclerView.State state) {
        if (state.hasTargetScrollPosition()) {
            return this.s.getTotalSpace();
        }
        return 0;
    }

    public void calculateExtraLayoutSpace(@NonNull RecyclerView.State state, @NonNull int[] iArr) {
        int i;
        int extraLayoutSpace = getExtraLayoutSpace(state);
        if (this.r.f == -1) {
            i = 0;
        } else {
            i = extraLayoutSpace;
            extraLayoutSpace = 0;
        }
        iArr[0] = extraLayoutSpace;
        iArr[1] = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i);
        startSmoothScroll(linearSmoothScroller);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    @SuppressLint({"UnknownNullness"})
    public PointF computeScrollVectorForPosition(int i) {
        if (getChildCount() == 0) {
            return null;
        }
        int i2 = (i < getPosition(getChildAt(0))) != this.v ? -1 : 1;
        if (this.q == 0) {
            return new PointF(i2, 0.0f);
        }
        return new PointF(0.0f, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01a3  */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @android.annotation.SuppressLint({"UnknownNullness"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayoutChildren(androidx.recyclerview.widget.RecyclerView.Recycler r17, androidx.recyclerview.widget.RecyclerView.State r18) {
        /*
            Method dump skipped, instructions count: 1042
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.onLayoutChildren(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.B = null;
        this.y = -1;
        this.z = Integer.MIN_VALUE;
        this.C.b();
    }

    public final int y(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int endAfterPadding;
        int endAfterPadding2 = this.s.getEndAfterPadding() - i;
        if (endAfterPadding2 <= 0) {
            return 0;
        }
        int i2 = -H(-endAfterPadding2, recycler, state);
        int i3 = i + i2;
        if (!z || (endAfterPadding = this.s.getEndAfterPadding() - i3) <= 0) {
            return i2;
        }
        this.s.offsetChildren(endAfterPadding);
        return endAfterPadding + i2;
    }

    public final int z(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int startAfterPadding;
        int startAfterPadding2 = i - this.s.getStartAfterPadding();
        if (startAfterPadding2 <= 0) {
            return 0;
        }
        int i2 = -H(startAfterPadding2, recycler, state);
        int i3 = i + i2;
        if (!z || (startAfterPadding = i3 - this.s.getStartAfterPadding()) <= 0) {
            return i2;
        }
        this.s.offsetChildren(-startAfterPadding);
        return i2 - startAfterPadding;
    }

    public final void J(int i, int i2) {
        this.r.c = this.s.getEndAfterPadding() - i2;
        b bVar = this.r;
        bVar.e = this.v ? -1 : 1;
        bVar.d = i;
        bVar.f = 1;
        bVar.f2049b = i2;
        bVar.f2050g = Integer.MIN_VALUE;
    }

    public final void K(int i, int i2) {
        this.r.c = i2 - this.s.getStartAfterPadding();
        b bVar = this.r;
        bVar.d = i;
        bVar.e = this.v ? 1 : -1;
        bVar.f = -1;
        bVar.f2049b = i2;
        bVar.f2050g = Integer.MIN_VALUE;
    }

    public boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    public final void r() {
        if (this.r == null) {
            this.r = new b();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i) {
        this.y = i;
        this.z = Integer.MIN_VALUE;
        SavedState savedState = this.B;
        if (savedState != null) {
            savedState.f2044a = -1;
        }
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i, int i2) {
        this.y = i;
        this.z = i2;
        SavedState savedState = this.B;
        if (savedState != null) {
            savedState.f2044a = -1;
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.q == 1) {
            return 0;
        }
        return H(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.q == 0) {
            return 0;
        }
        return H(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return o(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return o(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return n(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        return n(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return p(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return p(state);
    }

    public final int o(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        r();
        return t.b(state, this.s, u(!this.x), t(!this.x), this, this.x, this.v);
    }

    public final int n(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        r();
        return t.a(state, this.s, u(!this.x), t(!this.x), this, this.x);
    }

    public final int p(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        r();
        return t.c(state, this.s, u(!this.x), t(!this.x), this, this.x);
    }

    public void setSmoothScrollbarEnabled(boolean z) {
        this.x = z;
    }

    public boolean isSmoothScrollbarEnabled() {
        return this.x;
    }

    public final void I(int i, int i2, boolean z, RecyclerView.State state) {
        int startAfterPadding;
        this.r.l = this.s.getMode() == 0 && this.s.getEnd() == 0;
        this.r.f = i;
        int[] iArr = this.F;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(state, iArr);
        int iMax = Math.max(0, iArr[0]);
        int iMax2 = Math.max(0, iArr[1]);
        boolean z2 = i == 1;
        b bVar = this.r;
        int i3 = z2 ? iMax2 : iMax;
        bVar.h = i3;
        if (!z2) {
            iMax = iMax2;
        }
        bVar.i = iMax;
        if (z2) {
            bVar.h = this.s.getEndPadding() + i3;
            View viewA = A();
            b bVar2 = this.r;
            bVar2.e = this.v ? -1 : 1;
            int position = getPosition(viewA);
            b bVar3 = this.r;
            bVar2.d = position + bVar3.e;
            bVar3.f2049b = this.s.getDecoratedEnd(viewA);
            startAfterPadding = this.s.getDecoratedEnd(viewA) - this.s.getEndAfterPadding();
        } else {
            View viewB = B();
            b bVar4 = this.r;
            bVar4.h = this.s.getStartAfterPadding() + bVar4.h;
            b bVar5 = this.r;
            bVar5.e = this.v ? 1 : -1;
            int position2 = getPosition(viewB);
            b bVar6 = this.r;
            bVar5.d = position2 + bVar6.e;
            bVar6.f2049b = this.s.getDecoratedStart(viewB);
            startAfterPadding = (-this.s.getDecoratedStart(viewB)) + this.s.getStartAfterPadding();
        }
        b bVar7 = this.r;
        bVar7.c = i2;
        if (z) {
            bVar7.c = i2 - startAfterPadding;
        }
        bVar7.f2050g = startAfterPadding;
    }

    public void m(RecyclerView.State state, b bVar, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i = bVar.d;
        if (i < 0 || i >= state.getItemCount()) {
            return;
        }
        layoutPrefetchRegistry.addPosition(i, Math.max(0, bVar.f2050g));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void collectInitialPrefetchPositions(int i, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        boolean z;
        int i2;
        SavedState savedState = this.B;
        if (savedState != null && (i2 = savedState.f2044a) >= 0) {
            z = savedState.c;
        } else {
            G();
            z = this.v;
            i2 = this.y;
            if (i2 == -1) {
                i2 = z ? i - 1 : 0;
            }
        }
        int i3 = z ? -1 : 1;
        for (int i4 = 0; i4 < this.E && i2 >= 0 && i2 < i; i4++) {
            layoutPrefetchRegistry.addPosition(i2, 0);
            i2 += i3;
        }
    }

    public void setInitialPrefetchItemCount(int i) {
        this.E = i;
    }

    public int getInitialPrefetchItemCount() {
        return this.E;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        if (this.q != 0) {
            i = i2;
        }
        if (getChildCount() == 0 || i == 0) {
            return;
        }
        r();
        I(i > 0 ? 1 : -1, Math.abs(i), true, state);
        m(state, this.r, layoutPrefetchRegistry);
    }

    public final int H(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        r();
        this.r.f2048a = true;
        int i2 = i > 0 ? 1 : -1;
        int iAbs = Math.abs(i);
        I(i2, iAbs, true, state);
        b bVar = this.r;
        int iS = s(recycler, bVar, state, false) + bVar.f2050g;
        if (iS < 0) {
            return 0;
        }
        if (iAbs > iS) {
            i = i2 * iS;
        }
        this.s.offsetChildren(-i);
        this.r.j = i;
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void assertNotInLayoutOrScroll(String str) {
        if (this.B == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    public final void F(RecyclerView.Recycler recycler, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            while (i > i2) {
                removeAndRecycleViewAt(i, recycler);
                i--;
            }
        } else {
            for (int i3 = i2 - 1; i3 >= i; i3--) {
                removeAndRecycleViewAt(i3, recycler);
            }
        }
    }

    public final void E(RecyclerView.Recycler recycler, b bVar) {
        if (!bVar.f2048a || bVar.l) {
            return;
        }
        int i = bVar.f2050g;
        int i2 = bVar.i;
        if (bVar.f == -1) {
            int childCount = getChildCount();
            if (i < 0) {
                return;
            }
            int end = (this.s.getEnd() - i) + i2;
            if (this.v) {
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = getChildAt(i3);
                    if (this.s.getDecoratedStart(childAt) < end || this.s.getTransformedStartWithDecoration(childAt) < end) {
                        F(recycler, 0, i3);
                        return;
                    }
                }
                return;
            }
            int i4 = childCount - 1;
            for (int i5 = i4; i5 >= 0; i5--) {
                View childAt2 = getChildAt(i5);
                if (this.s.getDecoratedStart(childAt2) < end || this.s.getTransformedStartWithDecoration(childAt2) < end) {
                    F(recycler, i4, i5);
                    return;
                }
            }
            return;
        }
        if (i < 0) {
            return;
        }
        int i6 = i - i2;
        int childCount2 = getChildCount();
        if (!this.v) {
            for (int i7 = 0; i7 < childCount2; i7++) {
                View childAt3 = getChildAt(i7);
                if (this.s.getDecoratedEnd(childAt3) > i6 || this.s.getTransformedEndWithDecoration(childAt3) > i6) {
                    F(recycler, 0, i7);
                    return;
                }
            }
            return;
        }
        int i8 = childCount2 - 1;
        for (int i9 = i8; i9 >= 0; i9--) {
            View childAt4 = getChildAt(i9);
            if (this.s.getDecoratedEnd(childAt4) > i6 || this.s.getTransformedEndWithDecoration(childAt4) > i6) {
                F(recycler, i8, i9);
                return;
            }
        }
    }

    public final int s(RecyclerView.Recycler recycler, b bVar, RecyclerView.State state, boolean z) {
        int i;
        int i2 = bVar.c;
        int i3 = bVar.f2050g;
        if (i3 != Integer.MIN_VALUE) {
            if (i2 < 0) {
                bVar.f2050g = i3 + i2;
            }
            E(recycler, bVar);
        }
        int i4 = bVar.c + bVar.h;
        while (true) {
            if ((!bVar.l && i4 <= 0) || (i = bVar.d) < 0 || i >= state.getItemCount()) {
                break;
            }
            LayoutChunkResult layoutChunkResult = this.D;
            layoutChunkResult.mConsumed = 0;
            layoutChunkResult.mFinished = false;
            layoutChunkResult.mIgnoreConsumed = false;
            layoutChunkResult.mFocusable = false;
            C(recycler, state, bVar, layoutChunkResult);
            if (!layoutChunkResult.mFinished) {
                bVar.f2049b = (layoutChunkResult.mConsumed * bVar.f) + bVar.f2049b;
                if (!layoutChunkResult.mIgnoreConsumed || bVar.k != null || !state.isPreLayout()) {
                    int i5 = bVar.c;
                    int i6 = layoutChunkResult.mConsumed;
                    bVar.c = i5 - i6;
                    i4 -= i6;
                }
                int i7 = bVar.f2050g;
                if (i7 != Integer.MIN_VALUE) {
                    int i8 = i7 + layoutChunkResult.mConsumed;
                    bVar.f2050g = i8;
                    int i9 = bVar.c;
                    if (i9 < 0) {
                        bVar.f2050g = i8 + i9;
                    }
                    E(recycler, bVar);
                }
                if (z && layoutChunkResult.mFocusable) {
                    break;
                }
            } else {
                break;
            }
        }
        return i2 - bVar.c;
    }

    public void C(RecyclerView.Recycler recycler, RecyclerView.State state, b bVar, LayoutChunkResult layoutChunkResult) {
        int i;
        int i2;
        int i3;
        int i4;
        int paddingLeft;
        int decoratedMeasurementInOther;
        int i5;
        int i6;
        View viewA = bVar.a(recycler);
        if (viewA == null) {
            layoutChunkResult.mFinished = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) viewA.getLayoutParams();
        if (bVar.k == null) {
            if (this.v == (bVar.f == -1)) {
                addView(viewA);
            } else {
                addView(viewA, 0);
            }
        } else {
            if (this.v == (bVar.f == -1)) {
                addDisappearingView(viewA);
            } else {
                addDisappearingView(viewA, 0);
            }
        }
        measureChildWithMargins(viewA, 0, 0);
        layoutChunkResult.mConsumed = this.s.getDecoratedMeasurement(viewA);
        if (this.q == 1) {
            if (isLayoutRTL()) {
                decoratedMeasurementInOther = getWidth() - getPaddingRight();
                paddingLeft = decoratedMeasurementInOther - this.s.getDecoratedMeasurementInOther(viewA);
            } else {
                paddingLeft = getPaddingLeft();
                decoratedMeasurementInOther = this.s.getDecoratedMeasurementInOther(viewA) + paddingLeft;
            }
            if (bVar.f == -1) {
                i6 = bVar.f2049b;
                i5 = i6 - layoutChunkResult.mConsumed;
            } else {
                i5 = bVar.f2049b;
                i6 = layoutChunkResult.mConsumed + i5;
            }
            int i7 = paddingLeft;
            i4 = i5;
            i3 = i7;
            i2 = i6;
            i = decoratedMeasurementInOther;
        } else {
            int paddingTop = getPaddingTop();
            int decoratedMeasurementInOther2 = this.s.getDecoratedMeasurementInOther(viewA) + paddingTop;
            if (bVar.f == -1) {
                int i8 = bVar.f2049b;
                i3 = i8 - layoutChunkResult.mConsumed;
                i = i8;
                i2 = decoratedMeasurementInOther2;
            } else {
                int i9 = bVar.f2049b;
                i = layoutChunkResult.mConsumed + i9;
                i2 = decoratedMeasurementInOther2;
                i3 = i9;
            }
            i4 = paddingTop;
        }
        layoutDecoratedWithMargins(viewA, i3, i4, i, i2);
        if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
            layoutChunkResult.mIgnoreConsumed = true;
        }
        layoutChunkResult.mFocusable = viewA.hasFocusable();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean k() {
        if (getHeightMode() != 1073741824 && getWidthMode() != 1073741824) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                ViewGroup.LayoutParams layoutParams = getChildAt(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int q(int i) {
        return i != 1 ? i != 2 ? i != 17 ? i != 33 ? i != 66 ? (i == 130 && this.q == 1) ? 1 : Integer.MIN_VALUE : this.q == 0 ? 1 : Integer.MIN_VALUE : this.q == 1 ? -1 : Integer.MIN_VALUE : this.q == 0 ? -1 : Integer.MIN_VALUE : (this.q != 1 && isLayoutRTL()) ? -1 : 1 : (this.q != 1 && isLayoutRTL()) ? 1 : -1;
    }

    public final View B() {
        return getChildAt(this.v ? getChildCount() - 1 : 0);
    }

    public final View A() {
        return getChildAt(this.v ? 0 : getChildCount() - 1);
    }

    public final View u(boolean z) {
        if (this.v) {
            return w(getChildCount() - 1, -1, z, true);
        }
        return w(0, getChildCount(), z, true);
    }

    public final View t(boolean z) {
        if (this.v) {
            return w(0, getChildCount(), z, true);
        }
        return w(getChildCount() - 1, -1, z, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View x(androidx.recyclerview.widget.RecyclerView.Recycler r17, androidx.recyclerview.widget.RecyclerView.State r18, boolean r19, boolean r20) {
        /*
            r16 = this;
            r0 = r16
            r0.r()
            int r1 = r0.getChildCount()
            r2 = 0
            r3 = 1
            if (r20 == 0) goto L15
            int r1 = r0.getChildCount()
            int r1 = r1 - r3
            r4 = -1
            r5 = -1
            goto L18
        L15:
            r4 = r1
            r1 = 0
            r5 = 1
        L18:
            int r6 = r18.getItemCount()
            androidx.recyclerview.widget.OrientationHelper r7 = r0.s
            int r7 = r7.getStartAfterPadding()
            androidx.recyclerview.widget.OrientationHelper r8 = r0.s
            int r8 = r8.getEndAfterPadding()
            r9 = 0
            r10 = r9
            r11 = r10
        L2b:
            if (r1 == r4) goto L7a
            android.view.View r12 = r0.getChildAt(r1)
            int r13 = r0.getPosition(r12)
            androidx.recyclerview.widget.OrientationHelper r14 = r0.s
            int r14 = r14.getDecoratedStart(r12)
            androidx.recyclerview.widget.OrientationHelper r15 = r0.s
            int r15 = r15.getDecoratedEnd(r12)
            if (r13 < 0) goto L78
            if (r13 >= r6) goto L78
            android.view.ViewGroup$LayoutParams r13 = r12.getLayoutParams()
            androidx.recyclerview.widget.RecyclerView$LayoutParams r13 = (androidx.recyclerview.widget.RecyclerView.LayoutParams) r13
            boolean r13 = r13.isItemRemoved()
            if (r13 == 0) goto L55
            if (r11 != 0) goto L78
            r11 = r12
            goto L78
        L55:
            if (r15 > r7) goto L5b
            if (r14 >= r7) goto L5b
            r13 = 1
            goto L5c
        L5b:
            r13 = 0
        L5c:
            if (r14 < r8) goto L62
            if (r15 <= r8) goto L62
            r14 = 1
            goto L63
        L62:
            r14 = 0
        L63:
            if (r13 != 0) goto L69
            if (r14 == 0) goto L68
            goto L69
        L68:
            return r12
        L69:
            if (r19 == 0) goto L71
            if (r14 == 0) goto L6e
            goto L73
        L6e:
            if (r9 != 0) goto L78
            goto L77
        L71:
            if (r13 == 0) goto L75
        L73:
            r10 = r12
            goto L78
        L75:
            if (r9 != 0) goto L78
        L77:
            r9 = r12
        L78:
            int r1 = r1 + r5
            goto L2b
        L7a:
            if (r9 == 0) goto L7d
            return r9
        L7d:
            if (r10 == 0) goto L80
            return r10
        L80:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.x(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State, boolean, boolean):android.view.View");
    }

    public int findFirstVisibleItemPosition() {
        View viewW = w(0, getChildCount(), false, true);
        if (viewW == null) {
            return -1;
        }
        return getPosition(viewW);
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View viewW = w(0, getChildCount(), true, false);
        if (viewW == null) {
            return -1;
        }
        return getPosition(viewW);
    }

    public int findLastVisibleItemPosition() {
        View viewW = w(getChildCount() - 1, -1, false, true);
        if (viewW == null) {
            return -1;
        }
        return getPosition(viewW);
    }

    public int findLastCompletelyVisibleItemPosition() {
        View viewW = w(getChildCount() - 1, -1, true, false);
        if (viewW == null) {
            return -1;
        }
        return getPosition(viewW);
    }

    public final View w(int i, int i2, boolean z, boolean z2) {
        r();
        int i3 = ScreenDensityUtil.DEFAULT_NORMAL_SHORT_DIMENSION;
        int i4 = z ? 24579 : ScreenDensityUtil.DEFAULT_NORMAL_SHORT_DIMENSION;
        if (!z2) {
            i3 = 0;
        }
        if (this.q == 0) {
            return this.c.a(i, i2, i4, i3);
        }
        return this.d.a(i, i2, i4, i3);
    }

    public final View v(int i, int i2) {
        int i3;
        int i4;
        r();
        if (i2 <= i && i2 >= i) {
            return getChildAt(i);
        }
        if (this.s.getDecoratedStart(getChildAt(i)) < this.s.getStartAfterPadding()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
        }
        if (this.q == 0) {
            return this.c.a(i, i2, i3, i4);
        }
        return this.d.a(i, i2, i3, i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public View onFocusSearchFailed(View view, int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int iQ;
        View viewA;
        G();
        if (getChildCount() != 0 && (iQ = q(i)) != Integer.MIN_VALUE) {
            r();
            I(iQ, (int) (this.s.getTotalSpace() * 0.33333334f), false, state);
            b bVar = this.r;
            bVar.f2050g = Integer.MIN_VALUE;
            bVar.f2048a = false;
            s(recycler, bVar, state, true);
            View viewV = iQ == -1 ? this.v ? v(getChildCount() - 1, -1) : v(0, getChildCount()) : this.v ? v(0, getChildCount()) : v(getChildCount() - 1, -1);
            if (iQ == -1) {
                viewA = B();
            } else {
                viewA = A();
            }
            if (!viewA.hasFocusable()) {
                return viewV;
            }
            if (viewV != null) {
                return viewA;
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.B == null && this.t == this.w;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.ViewDropHandler
    public void prepareForDrop(@NonNull View view, @NonNull View view2, int i, int i2) {
        assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
        r();
        G();
        int position = getPosition(view);
        int position2 = getPosition(view2);
        char c = position < position2 ? (char) 1 : (char) 65535;
        if (this.v) {
            if (c == 1) {
                scrollToPositionWithOffset(position2, this.s.getEndAfterPadding() - (this.s.getDecoratedMeasurement(view) + this.s.getDecoratedStart(view2)));
                return;
            } else {
                scrollToPositionWithOffset(position2, this.s.getEndAfterPadding() - this.s.getDecoratedEnd(view2));
                return;
            }
        }
        if (c == 65535) {
            scrollToPositionWithOffset(position2, this.s.getDecoratedStart(view2));
        } else {
            scrollToPositionWithOffset(position2, this.s.getDecoratedEnd(view2) - this.s.getDecoratedMeasurement(view));
        }
    }

    public static class b {

        /* renamed from: b, reason: collision with root package name */
        public int f2049b;
        public int c;
        public int d;
        public int e;
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public int f2050g;
        public int j;
        public boolean l;

        /* renamed from: a, reason: collision with root package name */
        public boolean f2048a = true;
        public int h = 0;
        public int i = 0;
        public List k = null;

        public final View a(RecyclerView.Recycler recycler) {
            List list = this.k;
            if (list == null) {
                View viewForPosition = recycler.getViewForPosition(this.d);
                this.d += this.e;
                return viewForPosition;
            }
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = ((RecyclerView.ViewHolder) this.k.get(i)).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (!layoutParams.isItemRemoved() && this.d == layoutParams.getViewLayoutPosition()) {
                    assignPositionFromScrapList(view);
                    return view;
                }
            }
            return null;
        }

        public void assignPositionFromScrapList() {
            assignPositionFromScrapList(null);
        }

        public void assignPositionFromScrapList(View view) {
            View viewNextViewInLimitedList = nextViewInLimitedList(view);
            if (viewNextViewInLimitedList == null) {
                this.d = -1;
            } else {
                this.d = ((RecyclerView.LayoutParams) viewNextViewInLimitedList.getLayoutParams()).getViewLayoutPosition();
            }
        }

        public View nextViewInLimitedList(View view) {
            int viewLayoutPosition;
            int size = this.k.size();
            View view2 = null;
            int i = Integer.MAX_VALUE;
            for (int i2 = 0; i2 < size; i2++) {
                View view3 = ((RecyclerView.ViewHolder) this.k.get(i2)).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view3.getLayoutParams();
                if (view3 != view && !layoutParams.isItemRemoved() && (viewLayoutPosition = (layoutParams.getViewLayoutPosition() - this.d) * this.e) >= 0 && viewLayoutPosition < i) {
                    if (viewLayoutPosition == 0) {
                        return view3;
                    }
                    view2 = view3;
                    i = viewLayoutPosition;
                }
            }
            return view2;
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: a, reason: collision with root package name */
        public int f2044a;

        /* renamed from: b, reason: collision with root package name */
        public int f2045b;
        public boolean c;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public SavedState() {
        }

        @SuppressLint({"UnknownNullness"})
        public SavedState(SavedState savedState) {
            this.f2044a = savedState.f2044a;
            this.f2045b = savedState.f2045b;
            this.c = savedState.c;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f2044a);
            parcel.writeInt(this.f2045b);
            parcel.writeInt(this.c ? 1 : 0);
        }

        public class a implements Parcelable.Creator<SavedState> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                SavedState savedState = new SavedState();
                savedState.f2044a = parcel.readInt();
                savedState.f2045b = parcel.readInt();
                savedState.c = parcel.readInt() == 1;
                return savedState;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public OrientationHelper f2046a;

        /* renamed from: b, reason: collision with root package name */
        public int f2047b;
        public int c;
        public boolean d;
        public boolean e;

        public a() {
            b();
        }

        public final void b() {
            this.f2047b = -1;
            this.c = Integer.MIN_VALUE;
            this.d = false;
            this.e = false;
        }

        public final void a() {
            int startAfterPadding;
            if (this.d) {
                startAfterPadding = this.f2046a.getEndAfterPadding();
            } else {
                startAfterPadding = this.f2046a.getStartAfterPadding();
            }
            this.c = startAfterPadding;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f2047b + ", mCoordinate=" + this.c + ", mLayoutFromEnd=" + this.d + ", mValid=" + this.e + '}';
        }

        public void assignFromViewAndKeepVisibleRect(View view, int i) {
            int totalSpaceChange = this.f2046a.getTotalSpaceChange();
            if (totalSpaceChange >= 0) {
                assignFromView(view, i);
                return;
            }
            this.f2047b = i;
            if (this.d) {
                int endAfterPadding = (this.f2046a.getEndAfterPadding() - totalSpaceChange) - this.f2046a.getDecoratedEnd(view);
                this.c = this.f2046a.getEndAfterPadding() - endAfterPadding;
                if (endAfterPadding > 0) {
                    int decoratedMeasurement = this.c - this.f2046a.getDecoratedMeasurement(view);
                    int startAfterPadding = this.f2046a.getStartAfterPadding();
                    int iMin = decoratedMeasurement - (Math.min(this.f2046a.getDecoratedStart(view) - startAfterPadding, 0) + startAfterPadding);
                    if (iMin < 0) {
                        this.c = Math.min(endAfterPadding, -iMin) + this.c;
                        return;
                    }
                    return;
                }
                return;
            }
            int decoratedStart = this.f2046a.getDecoratedStart(view);
            int startAfterPadding2 = decoratedStart - this.f2046a.getStartAfterPadding();
            this.c = decoratedStart;
            if (startAfterPadding2 > 0) {
                int endAfterPadding2 = (this.f2046a.getEndAfterPadding() - Math.min(0, (this.f2046a.getEndAfterPadding() - totalSpaceChange) - this.f2046a.getDecoratedEnd(view))) - (this.f2046a.getDecoratedMeasurement(view) + decoratedStart);
                if (endAfterPadding2 < 0) {
                    this.c -= Math.min(startAfterPadding2, -endAfterPadding2);
                }
            }
        }

        public void assignFromView(View view, int i) {
            if (this.d) {
                this.c = this.f2046a.getTotalSpaceChange() + this.f2046a.getDecoratedEnd(view);
            } else {
                this.c = this.f2046a.getDecoratedStart(view);
            }
            this.f2047b = i;
        }
    }
}
