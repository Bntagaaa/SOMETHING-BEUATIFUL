package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;

/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.LayoutManager implements RecyclerView.SmoothScroller.ScrollVectorProvider {

    @Deprecated
    public static final int GAP_HANDLING_LAZY = 1;
    public static final int GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS = 2;
    public static final int GAP_HANDLING_NONE = 0;
    public static final int HORIZONTAL = 0;
    public static final int VERTICAL = 1;
    public boolean E;
    public boolean F;
    public SavedState G;
    public int H;
    public int[] M;
    public d[] r;
    public OrientationHelper s;
    public OrientationHelper t;
    public int u;
    public int v;
    public final p w;
    public BitSet z;
    public int q = -1;
    public boolean x = false;
    public boolean y = false;
    public int A = -1;
    public int B = Integer.MIN_VALUE;
    public final c C = new c();
    public int D = 2;
    public final Rect I = new Rect();
    public final b J = new b();
    public boolean K = false;
    public final boolean L = true;
    public final Runnable N = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.m();
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attributeSet, i, i2);
        setOrientation(properties.orientation);
        setSpanCount(properties.spanCount);
        setReverseLayout(properties.reverseLayout);
        this.w = new p();
        this.s = OrientationHelper.createOrientationHelper(this, this.u);
        this.t = OrientationHelper.createOrientationHelper(this, 1 - this.u);
    }

    public StaggeredGridLayoutManager(int i, int i2) {
        this.u = i2;
        setSpanCount(i);
        this.w = new p();
        this.s = OrientationHelper.createOrientationHelper(this, this.u);
        this.t = OrientationHelper.createOrientationHelper(this, 1 - this.u);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return this.D != 0;
    }

    public final boolean m() {
        int iV;
        int iW;
        if (getChildCount() != 0 && this.D != 0 && isAttachedToWindow()) {
            if (this.y) {
                iV = w();
                iW = v();
            } else {
                iV = v();
                iW = w();
            }
            c cVar = this.C;
            if (iV == 0 && A() != null) {
                cVar.a();
                requestSimpleAnimationsInNextLayout();
                requestLayout();
                return true;
            }
            if (this.K) {
                int i = this.y ? -1 : 1;
                int i2 = iW + 1;
                c.a firstFullSpanItemInRange = cVar.getFirstFullSpanItemInRange(iV, i2, i, true);
                if (firstFullSpanItemInRange == null) {
                    this.K = false;
                    cVar.c(i2);
                    return false;
                }
                c.a firstFullSpanItemInRange2 = cVar.getFirstFullSpanItemInRange(iV, firstFullSpanItemInRange.f2119a, i * (-1), true);
                if (firstFullSpanItemInRange2 == null) {
                    cVar.c(firstFullSpanItemInRange.f2119a);
                } else {
                    cVar.c(firstFullSpanItemInRange2.f2119a + 1);
                }
                requestSimpleAnimationsInNextLayout();
                requestLayout();
                return true;
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onScrollStateChanged(int i) {
        if (i == 0) {
            m();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        removeCallbacks(this.N);
        for (int i = 0; i < this.q; i++) {
            this.r[i].d();
        }
        recyclerView.requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00f6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View A() {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.A():android.view.View");
    }

    public void setSpanCount(int i) {
        assertNotInLayoutOrScroll(null);
        if (i != this.q) {
            invalidateSpanAssignments();
            this.q = i;
            this.z = new BitSet(this.q);
            this.r = new d[this.q];
            for (int i2 = 0; i2 < this.q; i2++) {
                this.r[i2] = new d(i2);
            }
            requestLayout();
        }
    }

    public void setOrientation(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        assertNotInLayoutOrScroll(null);
        if (i == this.u) {
            return;
        }
        this.u = i;
        OrientationHelper orientationHelper = this.s;
        this.s = this.t;
        this.t = orientationHelper;
        requestLayout();
    }

    public void setReverseLayout(boolean z) {
        assertNotInLayoutOrScroll(null);
        SavedState savedState = this.G;
        if (savedState != null && savedState.h != z) {
            savedState.h = z;
        }
        this.x = z;
        requestLayout();
    }

    public int getGapStrategy() {
        return this.D;
    }

    public void setGapStrategy(int i) {
        assertNotInLayoutOrScroll(null);
        if (i == this.D) {
            return;
        }
        if (i != 0 && i != 2) {
            throw new IllegalArgumentException("invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS");
        }
        this.D = i;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void assertNotInLayoutOrScroll(String str) {
        if (this.G == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    public int getSpanCount() {
        return this.q;
    }

    public void invalidateSpanAssignments() {
        this.C.a();
        requestLayout();
    }

    public final void I() {
        if (this.u == 1 || !isLayoutRTL()) {
            this.y = this.x;
        } else {
            this.y = !this.x;
        }
    }

    public final boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    public boolean getReverseLayout() {
        return this.x;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void setMeasuredDimension(Rect rect, int i, int i2) {
        int iChooseSize;
        int iChooseSize2;
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (this.u == 1) {
            iChooseSize2 = RecyclerView.LayoutManager.chooseSize(i2, rect.height() + paddingBottom, getMinimumHeight());
            iChooseSize = RecyclerView.LayoutManager.chooseSize(i, (this.v * this.q) + paddingRight, getMinimumWidth());
        } else {
            iChooseSize = RecyclerView.LayoutManager.chooseSize(i, rect.width() + paddingRight, getMinimumWidth());
            iChooseSize2 = RecyclerView.LayoutManager.chooseSize(i2, (this.v * this.q) + paddingBottom, getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        C(recycler, state, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAdapterChanged(@Nullable RecyclerView.Adapter adapter, @Nullable RecyclerView.Adapter adapter2) {
        this.C.a();
        for (int i = 0; i < this.q; i++) {
            this.r[i].d();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0426  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void C(androidx.recyclerview.widget.RecyclerView.Recycler r17, androidx.recyclerview.widget.RecyclerView.State r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 1091
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.C(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State, boolean):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.A = -1;
        this.B = Integer.MIN_VALUE;
        this.G = null;
        this.J.a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.G == null;
    }

    public int[] findFirstVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.q];
        } else if (iArr.length < this.q) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.q + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.q; i++) {
            iArr[i] = this.r[i].findFirstVisibleItemPosition();
        }
        return iArr;
    }

    public int[] findFirstCompletelyVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.q];
        } else if (iArr.length < this.q) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.q + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.q; i++) {
            iArr[i] = this.r[i].findFirstCompletelyVisibleItemPosition();
        }
        return iArr;
    }

    public int[] findLastVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.q];
        } else if (iArr.length < this.q) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.q + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.q; i++) {
            iArr[i] = this.r[i].findLastVisibleItemPosition();
        }
        return iArr;
    }

    public int[] findLastCompletelyVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.q];
        } else if (iArr.length < this.q) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.q + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.q; i++) {
            iArr[i] = this.r[i].findLastCompletelyVisibleItemPosition();
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return o(state);
    }

    public final int o(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        OrientationHelper orientationHelper = this.s;
        boolean z = !this.L;
        return t.b(state, orientationHelper, s(z), r(z), this, this.L, this.y);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return o(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return n(state);
    }

    public final int n(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        OrientationHelper orientationHelper = this.s;
        boolean z = !this.L;
        return t.a(state, orientationHelper, s(z), r(z), this, this.L);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        return n(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return p(state);
    }

    public final int p(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        OrientationHelper orientationHelper = this.s;
        boolean z = !this.L;
        return t.c(state, orientationHelper, s(z), r(z), this, this.L);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return p(state);
    }

    public final void B(View view, int i, int i2) {
        Rect rect = this.I;
        calculateItemDecorationsForChild(view, rect);
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int iO = O(i, ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + rect.left, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + rect.right);
        int iO2 = O(i2, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + rect.top, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + rect.bottom);
        if (j(view, iO, iO2, layoutParams)) {
            view.measure(iO, iO2);
        }
    }

    public static int O(int i, int i2, int i3) {
        int mode;
        return (!(i2 == 0 && i3 == 0) && ((mode = View.MeasureSpec.getMode(i)) == Integer.MIN_VALUE || mode == 1073741824)) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.G = savedState;
            if (this.A != -1) {
                savedState.d = null;
                savedState.c = 0;
                savedState.f2110a = -1;
                savedState.f2111b = -1;
                savedState.d = null;
                savedState.c = 0;
                savedState.e = 0;
                savedState.f = null;
                savedState.f2112g = null;
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        int iG;
        int startAfterPadding;
        int[] iArr;
        if (this.G != null) {
            return new SavedState(this.G);
        }
        SavedState savedState = new SavedState();
        savedState.h = this.x;
        savedState.i = this.E;
        savedState.j = this.F;
        c cVar = this.C;
        if (cVar != null && (iArr = cVar.f2117a) != null) {
            savedState.f = iArr;
            savedState.e = iArr.length;
            savedState.f2112g = cVar.f2118b;
        } else {
            savedState.e = 0;
        }
        if (getChildCount() > 0) {
            savedState.f2110a = this.E ? w() : v();
            View viewR = this.y ? r(true) : s(true);
            savedState.f2111b = viewR != null ? getPosition(viewR) : -1;
            int i = this.q;
            savedState.c = i;
            savedState.d = new int[i];
            for (int i2 = 0; i2 < this.q; i2++) {
                if (this.E) {
                    iG = this.r[i2].f(Integer.MIN_VALUE);
                    if (iG != Integer.MIN_VALUE) {
                        startAfterPadding = this.s.getEndAfterPadding();
                        iG -= startAfterPadding;
                    }
                } else {
                    iG = this.r[i2].g(Integer.MIN_VALUE);
                    if (iG != Integer.MIN_VALUE) {
                        startAfterPadding = this.s.getStartAfterPadding();
                        iG -= startAfterPadding;
                    }
                }
                savedState.d[i2] = iG;
            }
            return savedState;
        }
        savedState.f2110a = -1;
        savedState.f2111b = -1;
        savedState.c = 0;
        return savedState;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            View viewS = s(false);
            View viewR = r(false);
            if (viewS == null || viewR == null) {
                return;
            }
            int position = getPosition(viewS);
            int position2 = getPosition(viewR);
            if (position < position2) {
                accessibilityEvent.setFromIndex(position);
                accessibilityEvent.setToIndex(position2);
            } else {
                accessibilityEvent.setFromIndex(position2);
                accessibilityEvent.setToIndex(position);
            }
        }
    }

    public final View s(boolean z) {
        int startAfterPadding = this.s.getStartAfterPadding();
        int endAfterPadding = this.s.getEndAfterPadding();
        int childCount = getChildCount();
        View view = null;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int decoratedStart = this.s.getDecoratedStart(childAt);
            if (this.s.getDecoratedEnd(childAt) > startAfterPadding && decoratedStart < endAfterPadding) {
                if (decoratedStart >= startAfterPadding || !z) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    public final View r(boolean z) {
        int startAfterPadding = this.s.getStartAfterPadding();
        int endAfterPadding = this.s.getEndAfterPadding();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int decoratedStart = this.s.getDecoratedStart(childAt);
            int decoratedEnd = this.s.getDecoratedEnd(childAt);
            if (decoratedEnd > startAfterPadding && decoratedStart < endAfterPadding) {
                if (decoratedEnd <= endAfterPadding || !z) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    public final void t(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int endAfterPadding;
        int iX = x(Integer.MIN_VALUE);
        if (iX != Integer.MIN_VALUE && (endAfterPadding = this.s.getEndAfterPadding() - iX) > 0) {
            int i = endAfterPadding - (-J(-endAfterPadding, recycler, state));
            if (!z || i <= 0) {
                return;
            }
            this.s.offsetChildren(i);
        }
    }

    public final void u(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int startAfterPadding;
        int iY = y(Integer.MAX_VALUE);
        if (iY != Integer.MAX_VALUE && (startAfterPadding = iY - this.s.getStartAfterPadding()) > 0) {
            int iJ = startAfterPadding - J(startAfterPadding, recycler, state);
            if (!z || iJ <= 0) {
                return;
            }
            this.s.offsetChildren(-iJ);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void M(int r5, androidx.recyclerview.widget.RecyclerView.State r6) {
        /*
            r4 = this;
            androidx.recyclerview.widget.p r0 = r4.w
            r1 = 0
            r0.f2179b = r1
            r0.c = r5
            boolean r2 = r4.isSmoothScrolling()
            r3 = 1
            if (r2 == 0) goto L2f
            int r6 = r6.getTargetScrollPosition()
            r2 = -1
            if (r6 == r2) goto L2f
            boolean r2 = r4.y
            if (r6 >= r5) goto L1b
            r5 = 1
            goto L1c
        L1b:
            r5 = 0
        L1c:
            if (r2 != r5) goto L26
            androidx.recyclerview.widget.OrientationHelper r5 = r4.s
            int r5 = r5.getTotalSpace()
        L24:
            r6 = 0
            goto L31
        L26:
            androidx.recyclerview.widget.OrientationHelper r5 = r4.s
            int r5 = r5.getTotalSpace()
            r6 = r5
            r5 = 0
            goto L31
        L2f:
            r5 = 0
            goto L24
        L31:
            boolean r2 = r4.getClipToPadding()
            if (r2 == 0) goto L4a
            androidx.recyclerview.widget.OrientationHelper r2 = r4.s
            int r2 = r2.getStartAfterPadding()
            int r2 = r2 - r6
            r0.f = r2
            androidx.recyclerview.widget.OrientationHelper r6 = r4.s
            int r6 = r6.getEndAfterPadding()
            int r6 = r6 + r5
            r0.f2180g = r6
            goto L56
        L4a:
            androidx.recyclerview.widget.OrientationHelper r2 = r4.s
            int r2 = r2.getEnd()
            int r2 = r2 + r5
            r0.f2180g = r2
            int r5 = -r6
            r0.f = r5
        L56:
            r0.h = r1
            r0.f2178a = r3
            androidx.recyclerview.widget.OrientationHelper r5 = r4.s
            int r5 = r5.getMode()
            if (r5 != 0) goto L6b
            androidx.recyclerview.widget.OrientationHelper r5 = r4.s
            int r5 = r5.getEnd()
            if (r5 != 0) goto L6b
            r1 = 1
        L6b:
            r0.i = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.M(int, androidx.recyclerview.widget.RecyclerView$State):void");
    }

    public final void K(int i) {
        p pVar = this.w;
        pVar.e = i;
        pVar.d = this.y != (i == -1) ? -1 : 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void offsetChildrenHorizontal(int i) {
        super.offsetChildrenHorizontal(i);
        for (int i2 = 0; i2 < this.q; i2++) {
            d dVar = this.r[i2];
            int i3 = dVar.f2122b;
            if (i3 != Integer.MIN_VALUE) {
                dVar.f2122b = i3 + i;
            }
            int i4 = dVar.c;
            if (i4 != Integer.MIN_VALUE) {
                dVar.c = i4 + i;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void offsetChildrenVertical(int i) {
        super.offsetChildrenVertical(i);
        for (int i2 = 0; i2 < this.q; i2++) {
            d dVar = this.r[i2];
            int i3 = dVar.f2122b;
            if (i3 != Integer.MIN_VALUE) {
                dVar.f2122b = i3 + i;
            }
            int i4 = dVar.c;
            if (i4 != Integer.MIN_VALUE) {
                dVar.c = i4 + i;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        z(i, i2, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        z(i, i2, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        this.C.a();
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        z(i, i2, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        z(i, i2, 4);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void z(int r8, int r9, int r10) {
        /*
            r7 = this;
            boolean r0 = r7.y
            if (r0 == 0) goto L9
            int r0 = r7.w()
            goto Ld
        L9:
            int r0 = r7.v()
        Ld:
            r1 = 8
            if (r10 != r1) goto L1b
            if (r8 >= r9) goto L17
            int r2 = r9 + 1
        L15:
            r3 = r8
            goto L1e
        L17:
            int r2 = r8 + 1
            r3 = r9
            goto L1e
        L1b:
            int r2 = r8 + r9
            goto L15
        L1e:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r4 = r7.C
            r4.d(r3)
            r5 = 1
            if (r10 == r5) goto L37
            r6 = 2
            if (r10 == r6) goto L33
            if (r10 == r1) goto L2c
            goto L3a
        L2c:
            r4.f(r8, r5)
            r4.e(r9, r5)
            goto L3a
        L33:
            r4.f(r8, r9)
            goto L3a
        L37:
            r4.e(r8, r9)
        L3a:
            if (r2 > r0) goto L3d
            goto L4f
        L3d:
            boolean r8 = r7.y
            if (r8 == 0) goto L46
            int r8 = r7.v()
            goto L4a
        L46:
            int r8 = r7.w()
        L4a:
            if (r3 > r8) goto L4f
            r7.requestLayout()
        L4f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.z(int, int, int):void");
    }

    public final int q(RecyclerView.Recycler recycler, p pVar, RecyclerView.State state) {
        int i;
        int i2;
        int startAfterPadding;
        int iX;
        d dVar;
        boolean z;
        int iY;
        int decoratedMeasurement;
        int i3;
        int startAfterPadding2;
        int decoratedMeasurement2;
        boolean z2;
        int i4;
        int i5;
        int i6;
        StaggeredGridLayoutManager staggeredGridLayoutManager = this;
        RecyclerView.Recycler recycler2 = recycler;
        char c2 = 0;
        int i7 = 1;
        staggeredGridLayoutManager.z.set(0, staggeredGridLayoutManager.q, true);
        p pVar2 = staggeredGridLayoutManager.w;
        if (pVar2.i) {
            i2 = pVar.e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        } else {
            if (pVar.e == 1) {
                i = pVar.f2180g + pVar.f2179b;
            } else {
                i = pVar.f - pVar.f2179b;
            }
            i2 = i;
        }
        staggeredGridLayoutManager.L(pVar.e, i2);
        if (staggeredGridLayoutManager.y) {
            startAfterPadding = staggeredGridLayoutManager.s.getEndAfterPadding();
        } else {
            startAfterPadding = staggeredGridLayoutManager.s.getStartAfterPadding();
        }
        int i8 = startAfterPadding;
        boolean z3 = false;
        while (true) {
            int i9 = pVar.c;
            if (!(i9 >= 0 && i9 < state.getItemCount()) || (!pVar2.i && staggeredGridLayoutManager.z.isEmpty())) {
                break;
            }
            View viewForPosition = recycler2.getViewForPosition(pVar.c);
            pVar.c += pVar.d;
            LayoutParams layoutParams = (LayoutParams) viewForPosition.getLayoutParams();
            int viewLayoutPosition = layoutParams.getViewLayoutPosition();
            c cVar = staggeredGridLayoutManager.C;
            int[] iArr = cVar.f2117a;
            int i10 = (iArr == null || viewLayoutPosition >= iArr.length) ? -1 : iArr[viewLayoutPosition];
            boolean z4 = i10 == -1;
            if (z4) {
                if (layoutParams.f) {
                    dVar = staggeredGridLayoutManager.r[c2];
                } else {
                    if (staggeredGridLayoutManager.D(pVar.e)) {
                        i5 = staggeredGridLayoutManager.q - i7;
                        i4 = -1;
                        i6 = -1;
                    } else {
                        i4 = staggeredGridLayoutManager.q;
                        i5 = 0;
                        i6 = 1;
                    }
                    d dVar2 = null;
                    if (pVar.e == i7) {
                        int startAfterPadding3 = staggeredGridLayoutManager.s.getStartAfterPadding();
                        int i11 = Integer.MAX_VALUE;
                        while (i5 != i4) {
                            d dVar3 = staggeredGridLayoutManager.r[i5];
                            int i12 = i5;
                            int iF = dVar3.f(startAfterPadding3);
                            if (iF < i11) {
                                i11 = iF;
                                dVar2 = dVar3;
                            }
                            i5 = i12 + i6;
                        }
                    } else {
                        int endAfterPadding = staggeredGridLayoutManager.s.getEndAfterPadding();
                        int i13 = Integer.MIN_VALUE;
                        while (i5 != i4) {
                            d dVar4 = staggeredGridLayoutManager.r[i5];
                            int i14 = i5;
                            int iG = dVar4.g(endAfterPadding);
                            if (iG > i13) {
                                i13 = iG;
                                dVar2 = dVar4;
                            }
                            i5 = i14 + i6;
                        }
                    }
                    dVar = dVar2;
                }
                cVar.b(viewLayoutPosition);
                cVar.f2117a[viewLayoutPosition] = dVar.e;
            } else {
                dVar = staggeredGridLayoutManager.r[i10];
            }
            d dVar5 = dVar;
            layoutParams.e = dVar5;
            if (pVar.e == 1) {
                staggeredGridLayoutManager.addView(viewForPosition);
            } else {
                staggeredGridLayoutManager.addView(viewForPosition, 0);
            }
            if (layoutParams.f) {
                if (staggeredGridLayoutManager.u == 1) {
                    z = z4;
                    staggeredGridLayoutManager.B(viewForPosition, staggeredGridLayoutManager.H, RecyclerView.LayoutManager.getChildMeasureSpec(staggeredGridLayoutManager.getHeight(), staggeredGridLayoutManager.getHeightMode(), staggeredGridLayoutManager.getPaddingBottom() + staggeredGridLayoutManager.getPaddingTop(), ((ViewGroup.MarginLayoutParams) layoutParams).height, true));
                } else {
                    z = z4;
                    staggeredGridLayoutManager.B(viewForPosition, RecyclerView.LayoutManager.getChildMeasureSpec(staggeredGridLayoutManager.getWidth(), staggeredGridLayoutManager.getWidthMode(), staggeredGridLayoutManager.getPaddingRight() + staggeredGridLayoutManager.getPaddingLeft(), ((ViewGroup.MarginLayoutParams) layoutParams).width, true), staggeredGridLayoutManager.H);
                }
            } else {
                z = z4;
                if (staggeredGridLayoutManager.u == 1) {
                    staggeredGridLayoutManager.B(viewForPosition, RecyclerView.LayoutManager.getChildMeasureSpec(staggeredGridLayoutManager.v, staggeredGridLayoutManager.getWidthMode(), 0, ((ViewGroup.MarginLayoutParams) layoutParams).width, false), RecyclerView.LayoutManager.getChildMeasureSpec(staggeredGridLayoutManager.getHeight(), staggeredGridLayoutManager.getHeightMode(), staggeredGridLayoutManager.getPaddingBottom() + staggeredGridLayoutManager.getPaddingTop(), ((ViewGroup.MarginLayoutParams) layoutParams).height, true));
                } else {
                    staggeredGridLayoutManager.B(viewForPosition, RecyclerView.LayoutManager.getChildMeasureSpec(staggeredGridLayoutManager.getWidth(), staggeredGridLayoutManager.getWidthMode(), staggeredGridLayoutManager.getPaddingRight() + staggeredGridLayoutManager.getPaddingLeft(), ((ViewGroup.MarginLayoutParams) layoutParams).width, true), RecyclerView.LayoutManager.getChildMeasureSpec(staggeredGridLayoutManager.v, staggeredGridLayoutManager.getHeightMode(), 0, ((ViewGroup.MarginLayoutParams) layoutParams).height, false));
                }
            }
            if (pVar.e == 1) {
                decoratedMeasurement = layoutParams.f ? staggeredGridLayoutManager.x(i8) : dVar5.f(i8);
                iY = staggeredGridLayoutManager.s.getDecoratedMeasurement(viewForPosition) + decoratedMeasurement;
                if (z && layoutParams.f) {
                    c.a aVar = new c.a();
                    aVar.c = new int[staggeredGridLayoutManager.q];
                    for (int i15 = 0; i15 < staggeredGridLayoutManager.q; i15++) {
                        aVar.c[i15] = decoratedMeasurement - staggeredGridLayoutManager.r[i15].f(decoratedMeasurement);
                    }
                    aVar.f2120b = -1;
                    aVar.f2119a = viewLayoutPosition;
                    cVar.addFullSpanItem(aVar);
                }
            } else {
                iY = layoutParams.f ? staggeredGridLayoutManager.y(i8) : dVar5.g(i8);
                decoratedMeasurement = iY - staggeredGridLayoutManager.s.getDecoratedMeasurement(viewForPosition);
                if (z && layoutParams.f) {
                    c.a aVar2 = new c.a();
                    aVar2.c = new int[staggeredGridLayoutManager.q];
                    for (int i16 = 0; i16 < staggeredGridLayoutManager.q; i16++) {
                        aVar2.c[i16] = staggeredGridLayoutManager.r[i16].g(iY) - iY;
                    }
                    aVar2.f2120b = 1;
                    aVar2.f2119a = viewLayoutPosition;
                    cVar.addFullSpanItem(aVar2);
                }
            }
            if (!layoutParams.f || pVar.d != -1) {
                i3 = 1;
            } else if (z) {
                staggeredGridLayoutManager.K = true;
                i3 = 1;
            } else {
                if (pVar.e == 1) {
                    int iF2 = staggeredGridLayoutManager.r[0].f(Integer.MIN_VALUE);
                    int i17 = 1;
                    while (true) {
                        if (i17 >= staggeredGridLayoutManager.q) {
                            z2 = true;
                            break;
                        }
                        if (staggeredGridLayoutManager.r[i17].f(Integer.MIN_VALUE) != iF2) {
                            z2 = false;
                            break;
                        }
                        i17++;
                    }
                } else {
                    int iG2 = staggeredGridLayoutManager.r[0].g(Integer.MIN_VALUE);
                    int i18 = 1;
                    while (true) {
                        if (i18 >= staggeredGridLayoutManager.q) {
                            z2 = true;
                            break;
                        }
                        if (staggeredGridLayoutManager.r[i18].g(Integer.MIN_VALUE) != iG2) {
                            z2 = false;
                            break;
                        }
                        i18++;
                    }
                }
                i3 = 1;
                if (!z2) {
                    c.a fullSpanItem = cVar.getFullSpanItem(viewLayoutPosition);
                    if (fullSpanItem != null) {
                        fullSpanItem.d = true;
                    }
                    staggeredGridLayoutManager.K = true;
                }
            }
            if (pVar.e == i3) {
                if (!layoutParams.f) {
                    layoutParams.e.a(viewForPosition);
                } else {
                    for (int i19 = staggeredGridLayoutManager.q - i3; i19 >= 0; i19--) {
                        staggeredGridLayoutManager.r[i19].a(viewForPosition);
                    }
                }
            } else if (layoutParams.f) {
                for (int i20 = staggeredGridLayoutManager.q - 1; i20 >= 0; i20--) {
                    staggeredGridLayoutManager.r[i20].j(viewForPosition);
                }
            } else {
                layoutParams.e.j(viewForPosition);
            }
            if (staggeredGridLayoutManager.isLayoutRTL() && staggeredGridLayoutManager.u == 1) {
                decoratedMeasurement2 = layoutParams.f ? staggeredGridLayoutManager.t.getEndAfterPadding() : staggeredGridLayoutManager.t.getEndAfterPadding() - (((staggeredGridLayoutManager.q - 1) - dVar5.e) * staggeredGridLayoutManager.v);
                startAfterPadding2 = decoratedMeasurement2 - staggeredGridLayoutManager.t.getDecoratedMeasurement(viewForPosition);
            } else {
                startAfterPadding2 = layoutParams.f ? staggeredGridLayoutManager.t.getStartAfterPadding() : staggeredGridLayoutManager.t.getStartAfterPadding() + (dVar5.e * staggeredGridLayoutManager.v);
                decoratedMeasurement2 = staggeredGridLayoutManager.t.getDecoratedMeasurement(viewForPosition) + startAfterPadding2;
            }
            int i21 = startAfterPadding2;
            int i22 = decoratedMeasurement2;
            if (staggeredGridLayoutManager.u == 1) {
                staggeredGridLayoutManager.layoutDecoratedWithMargins(viewForPosition, i21, decoratedMeasurement, i22, iY);
                staggeredGridLayoutManager = this;
            } else {
                staggeredGridLayoutManager.layoutDecoratedWithMargins(viewForPosition, decoratedMeasurement, i21, iY, i22);
            }
            if (layoutParams.f) {
                staggeredGridLayoutManager.L(pVar2.e, i2);
            } else {
                staggeredGridLayoutManager.N(dVar5, pVar2.e, i2);
            }
            recycler2 = recycler;
            staggeredGridLayoutManager.F(recycler2, pVar2);
            if (pVar2.h && viewForPosition.hasFocusable()) {
                if (layoutParams.f) {
                    staggeredGridLayoutManager.z.clear();
                } else {
                    staggeredGridLayoutManager.z.set(dVar5.e, false);
                }
            }
            z3 = true;
            c2 = 0;
            i7 = 1;
        }
        if (!z3) {
            staggeredGridLayoutManager.F(recycler2, pVar2);
        }
        if (pVar2.e == -1) {
            iX = staggeredGridLayoutManager.s.getStartAfterPadding() - staggeredGridLayoutManager.y(staggeredGridLayoutManager.s.getStartAfterPadding());
        } else {
            iX = staggeredGridLayoutManager.x(staggeredGridLayoutManager.s.getEndAfterPadding()) - staggeredGridLayoutManager.s.getEndAfterPadding();
        }
        if (iX > 0) {
            return Math.min(pVar.f2179b, iX);
        }
        return 0;
    }

    public final void F(RecyclerView.Recycler recycler, p pVar) {
        int iMin;
        int iMin2;
        if (!pVar.f2178a || pVar.i) {
            return;
        }
        if (pVar.f2179b == 0) {
            if (pVar.e == -1) {
                G(pVar.f2180g, recycler);
                return;
            } else {
                H(pVar.f, recycler);
                return;
            }
        }
        int i = 1;
        if (pVar.e == -1) {
            int i2 = pVar.f;
            int iG = this.r[0].g(i2);
            while (i < this.q) {
                int iG2 = this.r[i].g(i2);
                if (iG2 > iG) {
                    iG = iG2;
                }
                i++;
            }
            int i3 = i2 - iG;
            if (i3 < 0) {
                iMin2 = pVar.f2180g;
            } else {
                iMin2 = pVar.f2180g - Math.min(i3, pVar.f2179b);
            }
            G(iMin2, recycler);
            return;
        }
        int i4 = pVar.f2180g;
        int iF = this.r[0].f(i4);
        while (i < this.q) {
            int iF2 = this.r[i].f(i4);
            if (iF2 < iF) {
                iF = iF2;
            }
            i++;
        }
        int i5 = iF - pVar.f2180g;
        if (i5 < 0) {
            iMin = pVar.f;
        } else {
            iMin = Math.min(i5, pVar.f2179b) + pVar.f;
        }
        H(iMin, recycler);
    }

    public final void L(int i, int i2) {
        for (int i3 = 0; i3 < this.q; i3++) {
            if (!this.r[i3].f2121a.isEmpty()) {
                N(this.r[i3], i, i2);
            }
        }
    }

    public final void N(d dVar, int i, int i2) {
        int deletedSize = dVar.getDeletedSize();
        int i3 = dVar.e;
        if (i == -1) {
            int i4 = dVar.f2122b;
            if (i4 == Integer.MIN_VALUE) {
                dVar.c();
                i4 = dVar.f2122b;
            }
            if (i4 + deletedSize <= i2) {
                this.z.set(i3, false);
                return;
            }
            return;
        }
        int i5 = dVar.c;
        if (i5 == Integer.MIN_VALUE) {
            dVar.b();
            i5 = dVar.c;
        }
        if (i5 - deletedSize >= i2) {
            this.z.set(i3, false);
        }
    }

    public final int y(int i) {
        int iG = this.r[0].g(i);
        for (int i2 = 1; i2 < this.q; i2++) {
            int iG2 = this.r[i2].g(i);
            if (iG2 < iG) {
                iG = iG2;
            }
        }
        return iG;
    }

    public final int x(int i) {
        int iF = this.r[0].f(i);
        for (int i2 = 1; i2 < this.q; i2++) {
            int iF2 = this.r[i2].f(i);
            if (iF2 > iF) {
                iF = iF2;
            }
        }
        return iF;
    }

    public final void H(int i, RecyclerView.Recycler recycler) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (this.s.getDecoratedEnd(childAt) > i || this.s.getTransformedEndWithDecoration(childAt) > i) {
                return;
            }
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.f) {
                for (int i2 = 0; i2 < this.q; i2++) {
                    if (this.r[i2].f2121a.size() == 1) {
                        return;
                    }
                }
                for (int i3 = 0; i3 < this.q; i3++) {
                    this.r[i3].i();
                }
            } else if (layoutParams.e.f2121a.size() == 1) {
                return;
            } else {
                layoutParams.e.i();
            }
            removeAndRecycleView(childAt, recycler);
        }
    }

    public final void G(int i, RecyclerView.Recycler recycler) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (this.s.getDecoratedStart(childAt) < i || this.s.getTransformedStartWithDecoration(childAt) < i) {
                return;
            }
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.f) {
                for (int i2 = 0; i2 < this.q; i2++) {
                    if (this.r[i2].f2121a.size() == 1) {
                        return;
                    }
                }
                for (int i3 = 0; i3 < this.q; i3++) {
                    this.r[i3].h();
                }
            } else if (layoutParams.e.f2121a.size() == 1) {
                return;
            } else {
                layoutParams.e.h();
            }
            removeAndRecycleView(childAt, recycler);
        }
    }

    public final boolean D(int i) {
        if (this.u == 0) {
            return (i == -1) != this.y;
        }
        return ((i == -1) == this.y) == isLayoutRTL();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return this.u == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return this.u == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return J(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return J(i, recycler, state);
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x000c  */
    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.PointF computeScrollVectorForPosition(int r4) {
        /*
            r3 = this;
            int r0 = r3.getChildCount()
            r1 = -1
            r2 = 1
            if (r0 != 0) goto Le
            boolean r4 = r3.y
            if (r4 == 0) goto L1b
        Lc:
            r1 = 1
            goto L1b
        Le:
            int r0 = r3.v()
            if (r4 >= r0) goto L16
            r4 = 1
            goto L17
        L16:
            r4 = 0
        L17:
            boolean r0 = r3.y
            if (r4 == r0) goto Lc
        L1b:
            android.graphics.PointF r4 = new android.graphics.PointF
            r4.<init>()
            if (r1 != 0) goto L24
            r4 = 0
            return r4
        L24:
            int r0 = r3.u
            r2 = 0
            if (r0 != 0) goto L2f
            float r0 = (float) r1
            r4.x = r0
            r4.y = r2
            return r4
        L2f:
            r4.x = r2
            float r0 = (float) r1
            r4.y = r0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.computeScrollVectorForPosition(int):android.graphics.PointF");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i);
        startSmoothScroll(linearSmoothScroller);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i) {
        SavedState savedState = this.G;
        if (savedState != null && savedState.f2110a != i) {
            savedState.d = null;
            savedState.c = 0;
            savedState.f2110a = -1;
            savedState.f2111b = -1;
        }
        this.A = i;
        this.B = Integer.MIN_VALUE;
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i, int i2) {
        SavedState savedState = this.G;
        if (savedState != null) {
            savedState.d = null;
            savedState.c = 0;
            savedState.f2110a = -1;
            savedState.f2111b = -1;
        }
        this.A = i;
        this.B = i2;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        p pVar;
        int iF;
        int iG;
        if (this.u != 0) {
            i = i2;
        }
        if (getChildCount() == 0 || i == 0) {
            return;
        }
        E(i, state);
        int[] iArr = this.M;
        if (iArr == null || iArr.length < this.q) {
            this.M = new int[this.q];
        }
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = this.q;
            pVar = this.w;
            if (i3 >= i5) {
                break;
            }
            if (pVar.d == -1) {
                iF = pVar.f;
                iG = this.r[i3].g(iF);
            } else {
                iF = this.r[i3].f(pVar.f2180g);
                iG = pVar.f2180g;
            }
            int i6 = iF - iG;
            if (i6 >= 0) {
                this.M[i4] = i6;
                i4++;
            }
            i3++;
        }
        Arrays.sort(this.M, 0, i4);
        for (int i7 = 0; i7 < i4; i7++) {
            int i8 = pVar.c;
            if (i8 < 0 || i8 >= state.getItemCount()) {
                return;
            }
            layoutPrefetchRegistry.addPosition(pVar.c, this.M[i7]);
            pVar.c += pVar.d;
        }
    }

    public final void E(int i, RecyclerView.State state) {
        int iV;
        int i2;
        if (i > 0) {
            iV = w();
            i2 = 1;
        } else {
            iV = v();
            i2 = -1;
        }
        p pVar = this.w;
        pVar.f2178a = true;
        M(iV, state);
        K(i2);
        pVar.c = iV + pVar.d;
        pVar.f2179b = Math.abs(i);
    }

    public final int J(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        E(i, state);
        p pVar = this.w;
        int iQ = q(recycler, pVar, state);
        if (pVar.f2179b >= iQ) {
            i = i < 0 ? -iQ : iQ;
        }
        this.s.offsetChildren(-i);
        this.E = this.y;
        pVar.f2179b = 0;
        F(recycler, pVar);
        return i;
    }

    public final int w() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getPosition(getChildAt(childCount - 1));
    }

    public final int v() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getPosition(getChildAt(0));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        if (this.u == 0) {
            return new LayoutParams(-2, -1);
        }
        return new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public int getOrientation() {
        return this.u;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x003d  */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View onFocusSearchFailed(android.view.View r10, int r11, androidx.recyclerview.widget.RecyclerView.Recycler r12, androidx.recyclerview.widget.RecyclerView.State r13) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.onFocusSearchFailed(android.view.View, int, androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State):android.view.View");
    }

    public static class LayoutParams extends RecyclerView.LayoutParams {
        public static final int INVALID_SPAN_ID = -1;
        public d e;
        public boolean f;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(RecyclerView.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public void setFullSpan(boolean z) {
            this.f = z;
        }

        public boolean isFullSpan() {
            return this.f;
        }

        public final int getSpanIndex() {
            d dVar = this.e;
            if (dVar == null) {
                return -1;
            }
            return dVar.e;
        }
    }

    public class d {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f2121a = new ArrayList();

        /* renamed from: b, reason: collision with root package name */
        public int f2122b = Integer.MIN_VALUE;
        public int c = Integer.MIN_VALUE;
        public int d = 0;
        public final int e;

        public d(int i) {
            this.e = i;
        }

        public final int g(int i) {
            int i2 = this.f2122b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f2121a.size() == 0) {
                return i;
            }
            c();
            return this.f2122b;
        }

        public final void c() {
            c.a fullSpanItem;
            View view = (View) this.f2121a.get(0);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
            this.f2122b = staggeredGridLayoutManager.s.getDecoratedStart(view);
            if (layoutParams.f && (fullSpanItem = staggeredGridLayoutManager.C.getFullSpanItem(layoutParams.getViewLayoutPosition())) != null && fullSpanItem.f2120b == -1) {
                int i = this.f2122b;
                int[] iArr = fullSpanItem.c;
                this.f2122b = i - (iArr != null ? iArr[this.e] : 0);
            }
        }

        public final int f(int i) {
            int i2 = this.c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f2121a.size() == 0) {
                return i;
            }
            b();
            return this.c;
        }

        public final void b() {
            c.a fullSpanItem;
            ArrayList arrayList = this.f2121a;
            View view = (View) arrayList.get(arrayList.size() - 1);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
            this.c = staggeredGridLayoutManager.s.getDecoratedEnd(view);
            if (layoutParams.f && (fullSpanItem = staggeredGridLayoutManager.C.getFullSpanItem(layoutParams.getViewLayoutPosition())) != null && fullSpanItem.f2120b == 1) {
                int i = this.c;
                int[] iArr = fullSpanItem.c;
                this.c = i + (iArr == null ? 0 : iArr[this.e]);
            }
        }

        public final void d() {
            this.f2121a.clear();
            this.f2122b = Integer.MIN_VALUE;
            this.c = Integer.MIN_VALUE;
            this.d = 0;
        }

        public final void h() {
            ArrayList arrayList = this.f2121a;
            int size = arrayList.size();
            View view = (View) arrayList.remove(size - 1);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.e = null;
            if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
                this.d -= StaggeredGridLayoutManager.this.s.getDecoratedMeasurement(view);
            }
            if (size == 1) {
                this.f2122b = Integer.MIN_VALUE;
            }
            this.c = Integer.MIN_VALUE;
        }

        public final void i() {
            ArrayList arrayList = this.f2121a;
            View view = (View) arrayList.remove(0);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.e = null;
            if (arrayList.size() == 0) {
                this.c = Integer.MIN_VALUE;
            }
            if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
                this.d -= StaggeredGridLayoutManager.this.s.getDecoratedMeasurement(view);
            }
            this.f2122b = Integer.MIN_VALUE;
        }

        public int getDeletedSize() {
            return this.d;
        }

        public final void a(View view) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.e = this;
            ArrayList arrayList = this.f2121a;
            arrayList.add(view);
            this.c = Integer.MIN_VALUE;
            if (arrayList.size() == 1) {
                this.f2122b = Integer.MIN_VALUE;
            }
            if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
                this.d = StaggeredGridLayoutManager.this.s.getDecoratedMeasurement(view) + this.d;
            }
        }

        public final void j(View view) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.e = this;
            ArrayList arrayList = this.f2121a;
            arrayList.add(0, view);
            this.f2122b = Integer.MIN_VALUE;
            if (arrayList.size() == 1) {
                this.c = Integer.MIN_VALUE;
            }
            if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
                this.d = StaggeredGridLayoutManager.this.s.getDecoratedMeasurement(view) + this.d;
            }
        }

        public int findFirstVisibleItemPosition() {
            return StaggeredGridLayoutManager.this.x ? e(r1.size() - 1, -1, false, true, false) : e(0, this.f2121a.size(), false, true, false);
        }

        public int findFirstPartiallyVisibleItemPosition() {
            return StaggeredGridLayoutManager.this.x ? e(r1.size() - 1, -1, false, false, true) : e(0, this.f2121a.size(), false, false, true);
        }

        public int findFirstCompletelyVisibleItemPosition() {
            return StaggeredGridLayoutManager.this.x ? e(r1.size() - 1, -1, true, true, false) : e(0, this.f2121a.size(), true, true, false);
        }

        public int findLastVisibleItemPosition() {
            return StaggeredGridLayoutManager.this.x ? e(0, this.f2121a.size(), false, true, false) : e(r1.size() - 1, -1, false, true, false);
        }

        public int findLastPartiallyVisibleItemPosition() {
            return StaggeredGridLayoutManager.this.x ? e(0, this.f2121a.size(), false, false, true) : e(r1.size() - 1, -1, false, false, true);
        }

        public int findLastCompletelyVisibleItemPosition() {
            return StaggeredGridLayoutManager.this.x ? e(0, this.f2121a.size(), true, true, false) : e(r1.size() - 1, -1, true, true, false);
        }

        public final int e(int i, int i2, boolean z, boolean z2, boolean z3) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
            int startAfterPadding = staggeredGridLayoutManager.s.getStartAfterPadding();
            int endAfterPadding = staggeredGridLayoutManager.s.getEndAfterPadding();
            int i3 = i2 > i ? 1 : -1;
            while (i != i2) {
                View view = (View) this.f2121a.get(i);
                int decoratedStart = staggeredGridLayoutManager.s.getDecoratedStart(view);
                int decoratedEnd = staggeredGridLayoutManager.s.getDecoratedEnd(view);
                boolean z4 = false;
                boolean z5 = !z3 ? decoratedStart >= endAfterPadding : decoratedStart > endAfterPadding;
                if (!z3 ? decoratedEnd > startAfterPadding : decoratedEnd >= startAfterPadding) {
                    z4 = true;
                }
                if (z5 && z4) {
                    if (z && z2) {
                        if (decoratedStart >= startAfterPadding && decoratedEnd <= endAfterPadding) {
                            return staggeredGridLayoutManager.getPosition(view);
                        }
                    } else {
                        if (z2) {
                            return staggeredGridLayoutManager.getPosition(view);
                        }
                        if (decoratedStart < startAfterPadding || decoratedEnd > endAfterPadding) {
                            return staggeredGridLayoutManager.getPosition(view);
                        }
                    }
                }
                i += i3;
            }
            return -1;
        }

        public View getFocusableViewAfter(int i, int i2) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
            ArrayList arrayList = this.f2121a;
            View view = null;
            if (i2 == -1) {
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    View view2 = (View) arrayList.get(i3);
                    if ((staggeredGridLayoutManager.x && staggeredGridLayoutManager.getPosition(view2) <= i) || ((!staggeredGridLayoutManager.x && staggeredGridLayoutManager.getPosition(view2) >= i) || !view2.hasFocusable())) {
                        break;
                    }
                    i3++;
                    view = view2;
                }
                return view;
            }
            int size2 = arrayList.size() - 1;
            while (size2 >= 0) {
                View view3 = (View) arrayList.get(size2);
                if ((staggeredGridLayoutManager.x && staggeredGridLayoutManager.getPosition(view3) >= i) || ((!staggeredGridLayoutManager.x && staggeredGridLayoutManager.getPosition(view3) <= i) || !view3.hasFocusable())) {
                    break;
                }
                size2--;
                view = view3;
            }
            return view;
        }
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public int[] f2117a;

        /* renamed from: b, reason: collision with root package name */
        public ArrayList f2118b;

        public final void c(int i) {
            ArrayList arrayList = this.f2118b;
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (((a) this.f2118b.get(size)).f2119a >= i) {
                        this.f2118b.remove(size);
                    }
                }
            }
            d(i);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x000e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int d(int r5) {
            /*
                r4 = this;
                int[] r0 = r4.f2117a
                r1 = -1
                if (r0 != 0) goto L6
                goto L9
            L6:
                int r0 = r0.length
                if (r5 < r0) goto La
            L9:
                return r1
            La:
                java.util.ArrayList r0 = r4.f2118b
                if (r0 != 0) goto L10
            Le:
                r0 = -1
                goto L46
            L10:
                androidx.recyclerview.widget.StaggeredGridLayoutManager$c$a r0 = r4.getFullSpanItem(r5)
                if (r0 == 0) goto L1b
                java.util.ArrayList r2 = r4.f2118b
                r2.remove(r0)
            L1b:
                java.util.ArrayList r0 = r4.f2118b
                int r0 = r0.size()
                r2 = 0
            L22:
                if (r2 >= r0) goto L34
                java.util.ArrayList r3 = r4.f2118b
                java.lang.Object r3 = r3.get(r2)
                androidx.recyclerview.widget.StaggeredGridLayoutManager$c$a r3 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.c.a) r3
                int r3 = r3.f2119a
                if (r3 < r5) goto L31
                goto L35
            L31:
                int r2 = r2 + 1
                goto L22
            L34:
                r2 = -1
            L35:
                if (r2 == r1) goto Le
                java.util.ArrayList r0 = r4.f2118b
                java.lang.Object r0 = r0.get(r2)
                androidx.recyclerview.widget.StaggeredGridLayoutManager$c$a r0 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.c.a) r0
                java.util.ArrayList r3 = r4.f2118b
                r3.remove(r2)
                int r0 = r0.f2119a
            L46:
                if (r0 != r1) goto L52
                int[] r0 = r4.f2117a
                int r2 = r0.length
                java.util.Arrays.fill(r0, r5, r2, r1)
                int[] r5 = r4.f2117a
                int r5 = r5.length
                return r5
            L52:
                int r0 = r0 + 1
                int[] r2 = r4.f2117a
                int r2 = r2.length
                int r0 = java.lang.Math.min(r0, r2)
                int[] r2 = r4.f2117a
                java.util.Arrays.fill(r2, r5, r0, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.c.d(int):int");
        }

        public final void b(int i) {
            int[] iArr = this.f2117a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i, 10) + 1];
                this.f2117a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i >= iArr.length) {
                int length = iArr.length;
                while (length <= i) {
                    length *= 2;
                }
                int[] iArr3 = new int[length];
                this.f2117a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.f2117a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        public final void a() {
            int[] iArr = this.f2117a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f2118b = null;
        }

        public final void f(int i, int i2) {
            int[] iArr = this.f2117a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            b(i3);
            int[] iArr2 = this.f2117a;
            System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
            int[] iArr3 = this.f2117a;
            Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
            ArrayList arrayList = this.f2118b;
            if (arrayList == null) {
                return;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                a aVar = (a) this.f2118b.get(size);
                int i4 = aVar.f2119a;
                if (i4 >= i) {
                    if (i4 < i3) {
                        this.f2118b.remove(size);
                    } else {
                        aVar.f2119a = i4 - i2;
                    }
                }
            }
        }

        public final void e(int i, int i2) {
            int[] iArr = this.f2117a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            b(i3);
            int[] iArr2 = this.f2117a;
            System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
            Arrays.fill(this.f2117a, i, i3, -1);
            ArrayList arrayList = this.f2118b;
            if (arrayList == null) {
                return;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                a aVar = (a) this.f2118b.get(size);
                int i4 = aVar.f2119a;
                if (i4 >= i) {
                    aVar.f2119a = i4 + i2;
                }
            }
        }

        public void addFullSpanItem(a aVar) {
            if (this.f2118b == null) {
                this.f2118b = new ArrayList();
            }
            int size = this.f2118b.size();
            for (int i = 0; i < size; i++) {
                a aVar2 = (a) this.f2118b.get(i);
                if (aVar2.f2119a == aVar.f2119a) {
                    this.f2118b.remove(i);
                }
                if (aVar2.f2119a >= aVar.f2119a) {
                    this.f2118b.add(i, aVar);
                    return;
                }
            }
            this.f2118b.add(aVar);
        }

        public a getFullSpanItem(int i) {
            ArrayList arrayList = this.f2118b;
            if (arrayList == null) {
                return null;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                a aVar = (a) this.f2118b.get(size);
                if (aVar.f2119a == i) {
                    return aVar;
                }
            }
            return null;
        }

        public a getFirstFullSpanItemInRange(int i, int i2, int i3, boolean z) {
            ArrayList arrayList = this.f2118b;
            if (arrayList == null) {
                return null;
            }
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                a aVar = (a) this.f2118b.get(i4);
                int i5 = aVar.f2119a;
                if (i5 >= i2) {
                    return null;
                }
                if (i5 >= i && (i3 == 0 || aVar.f2120b == i3 || (z && aVar.d))) {
                    return aVar;
                }
            }
            return null;
        }

        @SuppressLint({"BanParcelableUsage"})
        public static class a implements Parcelable {
            public static final Parcelable.Creator<a> CREATOR = new C0030a();

            /* renamed from: a, reason: collision with root package name */
            public int f2119a;

            /* renamed from: b, reason: collision with root package name */
            public int f2120b;
            public int[] c;
            public boolean d;

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f2119a);
                parcel.writeInt(this.f2120b);
                parcel.writeInt(this.d ? 1 : 0);
                int[] iArr = this.c;
                if (iArr != null && iArr.length > 0) {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.c);
                } else {
                    parcel.writeInt(0);
                }
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f2119a + ", mGapDir=" + this.f2120b + ", mHasUnwantedGapAfter=" + this.d + ", mGapPerSpan=" + Arrays.toString(this.c) + '}';
            }

            /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$c$a$a, reason: collision with other inner class name */
            public class C0030a implements Parcelable.Creator<a> {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public a createFromParcel(Parcel parcel) {
                    a aVar = new a();
                    aVar.f2119a = parcel.readInt();
                    aVar.f2120b = parcel.readInt();
                    aVar.d = parcel.readInt() == 1;
                    int i = parcel.readInt();
                    if (i > 0) {
                        int[] iArr = new int[i];
                        aVar.c = iArr;
                        parcel.readIntArray(iArr);
                    }
                    return aVar;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public a[] newArray(int i) {
                    return new a[i];
                }
            }
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: a, reason: collision with root package name */
        public int f2110a;

        /* renamed from: b, reason: collision with root package name */
        public int f2111b;
        public int c;
        public int[] d;
        public int e;
        public int[] f;

        /* renamed from: g, reason: collision with root package name */
        public ArrayList f2112g;
        public boolean h;
        public boolean i;
        public boolean j;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public SavedState() {
        }

        public SavedState(SavedState savedState) {
            this.c = savedState.c;
            this.f2110a = savedState.f2110a;
            this.f2111b = savedState.f2111b;
            this.d = savedState.d;
            this.e = savedState.e;
            this.f = savedState.f;
            this.h = savedState.h;
            this.i = savedState.i;
            this.j = savedState.j;
            this.f2112g = savedState.f2112g;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f2110a);
            parcel.writeInt(this.f2111b);
            parcel.writeInt(this.c);
            if (this.c > 0) {
                parcel.writeIntArray(this.d);
            }
            parcel.writeInt(this.e);
            if (this.e > 0) {
                parcel.writeIntArray(this.f);
            }
            parcel.writeInt(this.h ? 1 : 0);
            parcel.writeInt(this.i ? 1 : 0);
            parcel.writeInt(this.j ? 1 : 0);
            parcel.writeList(this.f2112g);
        }

        public class a implements Parcelable.Creator<SavedState> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                SavedState savedState = new SavedState();
                savedState.f2110a = parcel.readInt();
                savedState.f2111b = parcel.readInt();
                int i = parcel.readInt();
                savedState.c = i;
                if (i > 0) {
                    int[] iArr = new int[i];
                    savedState.d = iArr;
                    parcel.readIntArray(iArr);
                }
                int i2 = parcel.readInt();
                savedState.e = i2;
                if (i2 > 0) {
                    int[] iArr2 = new int[i2];
                    savedState.f = iArr2;
                    parcel.readIntArray(iArr2);
                }
                savedState.h = parcel.readInt() == 1;
                savedState.i = parcel.readInt() == 1;
                savedState.j = parcel.readInt() == 1;
                savedState.f2112g = parcel.readArrayList(c.a.class.getClassLoader());
                return savedState;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }
    }

    public class b {

        /* renamed from: a, reason: collision with root package name */
        public int f2114a;

        /* renamed from: b, reason: collision with root package name */
        public int f2115b;
        public boolean c;
        public boolean d;
        public boolean e;
        public int[] f;

        public b() {
            a();
        }

        public final void a() {
            this.f2114a = -1;
            this.f2115b = Integer.MIN_VALUE;
            this.c = false;
            this.d = false;
            this.e = false;
            int[] iArr = this.f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }
    }
}
