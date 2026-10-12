package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import androidx.annotation.NonNull;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;

/* loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    public static final int DEFAULT_SPAN_COUNT = -1;
    public boolean G;
    public int H;
    public int[] I;
    public View[] J;
    public final SparseIntArray K;
    public final SparseIntArray L;
    public SpanSizeLookup M;
    public final Rect N;
    public boolean O;

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.G = false;
        this.H = -1;
        this.K = new SparseIntArray();
        this.L = new SparseIntArray();
        this.M = new DefaultSpanSizeLookup();
        this.N = new Rect();
        setSpanCount(RecyclerView.LayoutManager.getProperties(context, attributeSet, i, i2).spanCount);
    }

    public GridLayoutManager(Context context, int i) {
        super(context);
        this.G = false;
        this.H = -1;
        this.K = new SparseIntArray();
        this.L = new SparseIntArray();
        this.M = new DefaultSpanSizeLookup();
        this.N = new Rect();
        setSpanCount(i);
    }

    public GridLayoutManager(Context context, int i, int i2, boolean z) {
        super(context, i2, z);
        this.G = false;
        this.H = -1;
        this.K = new SparseIntArray();
        this.L = new SparseIntArray();
        this.M = new DefaultSpanSizeLookup();
        this.N = new Rect();
        setSpanCount(i);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void setStackFromEnd(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.setStackFromEnd(false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int getRowCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.q == 0) {
            return this.H;
        }
        if (state.getItemCount() < 1) {
            return 0;
        }
        return Q(state.getItemCount() - 1, recycler, state) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int getColumnCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.q == 1) {
            return this.H;
        }
        if (state.getItemCount() < 1) {
            return 0;
        }
        return Q(state.getItemCount() - 1, recycler, state) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.Recycler recycler, RecyclerView.State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            c(view, accessibilityNodeInfoCompat);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        int iQ = Q(layoutParams2.getViewLayoutPosition(), recycler, state);
        if (this.q == 0) {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(layoutParams2.getSpanIndex(), layoutParams2.getSpanSize(), iQ, 1, false, false));
        } else {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(iQ, 1, layoutParams2.getSpanIndex(), layoutParams2.getSpanSize(), false, false));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityNodeInfo(@NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(recycler, state, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.setClassName(GridView.class.getName());
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        boolean zIsPreLayout = state.isPreLayout();
        SparseIntArray sparseIntArray = this.L;
        SparseIntArray sparseIntArray2 = this.K;
        if (zIsPreLayout) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
                int viewLayoutPosition = layoutParams.getViewLayoutPosition();
                sparseIntArray2.put(viewLayoutPosition, layoutParams.getSpanSize());
                sparseIntArray.put(viewLayoutPosition, layoutParams.getSpanIndex());
            }
        }
        super.onLayoutChildren(recycler, state);
        sparseIntArray2.clear();
        sparseIntArray.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.G = false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        this.M.invalidateSpanIndexCache();
        this.M.invalidateSpanGroupIndexCache();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        this.M.invalidateSpanIndexCache();
        this.M.invalidateSpanGroupIndexCache();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        this.M.invalidateSpanIndexCache();
        this.M.invalidateSpanGroupIndexCache();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.M.invalidateSpanIndexCache();
        this.M.invalidateSpanGroupIndexCache();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        this.M.invalidateSpanIndexCache();
        this.M.invalidateSpanGroupIndexCache();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        if (this.q == 0) {
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

    public void setSpanSizeLookup(SpanSizeLookup spanSizeLookup) {
        this.M = spanSizeLookup;
    }

    public SpanSizeLookup getSpanSizeLookup() {
        return this.M;
    }

    public final void U() {
        int height;
        int paddingTop;
        if (getOrientation() == 1) {
            height = getWidth() - getPaddingRight();
            paddingTop = getPaddingLeft();
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = getPaddingTop();
        }
        L(height - paddingTop);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void setMeasuredDimension(Rect rect, int i, int i2) {
        int iChooseSize;
        int iChooseSize2;
        if (this.I == null) {
            super.setMeasuredDimension(rect, i, i2);
        }
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (this.q == 1) {
            iChooseSize2 = RecyclerView.LayoutManager.chooseSize(i2, rect.height() + paddingBottom, getMinimumHeight());
            int[] iArr = this.I;
            iChooseSize = RecyclerView.LayoutManager.chooseSize(i, iArr[iArr.length - 1] + paddingRight, getMinimumWidth());
        } else {
            iChooseSize = RecyclerView.LayoutManager.chooseSize(i, rect.width() + paddingRight, getMinimumWidth());
            int[] iArr2 = this.I;
            iChooseSize2 = RecyclerView.LayoutManager.chooseSize(i2, iArr2[iArr2.length - 1] + paddingBottom, getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    public final void L(int i) {
        int i2;
        int[] iArr = this.I;
        int i3 = this.H;
        if (iArr == null || iArr.length != i3 + 1 || iArr[iArr.length - 1] != i) {
            iArr = new int[i3 + 1];
        }
        int i4 = 0;
        iArr[0] = 0;
        int i5 = i / i3;
        int i6 = i % i3;
        int i7 = 0;
        for (int i8 = 1; i8 <= i3; i8++) {
            i4 += i6;
            if (i4 <= 0 || i3 - i4 >= i6) {
                i2 = i5;
            } else {
                i2 = i5 + 1;
                i4 -= i3;
            }
            i7 += i2;
            iArr[i8] = i7;
        }
        this.I = iArr;
    }

    public final int P(int i, int i2) {
        if (this.q == 1 && isLayoutRTL()) {
            int[] iArr = this.I;
            int i3 = this.H;
            return iArr[i3 - i] - iArr[(i3 - i) - i2];
        }
        int[] iArr2 = this.I;
        return iArr2[i2 + i] - iArr2[i];
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void D(RecyclerView.Recycler recycler, RecyclerView.State state, LinearLayoutManager.a aVar, int i) {
        U();
        if (state.getItemCount() > 0 && !state.isPreLayout()) {
            boolean z = i == 1;
            int iR = R(aVar.f2047b, recycler, state);
            if (z) {
                while (iR > 0) {
                    int i2 = aVar.f2047b;
                    if (i2 <= 0) {
                        break;
                    }
                    int i3 = i2 - 1;
                    aVar.f2047b = i3;
                    iR = R(i3, recycler, state);
                }
            } else {
                int itemCount = state.getItemCount() - 1;
                int i4 = aVar.f2047b;
                while (i4 < itemCount) {
                    int i5 = i4 + 1;
                    int iR2 = R(i5, recycler, state);
                    if (iR2 <= iR) {
                        break;
                    }
                    i4 = i5;
                    iR = iR2;
                }
                aVar.f2047b = i4;
            }
        }
        O();
    }

    public final void O() {
        View[] viewArr = this.J;
        if (viewArr == null || viewArr.length != this.H) {
            this.J = new View[this.H];
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        U();
        O();
        return super.scrollHorizontallyBy(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        U();
        O();
        return super.scrollVerticallyBy(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final View x(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z, boolean z2) {
        int i;
        int childCount;
        int childCount2 = getChildCount();
        int i2 = 1;
        if (z2) {
            childCount = getChildCount() - 1;
            i = -1;
            i2 = -1;
        } else {
            i = childCount2;
            childCount = 0;
        }
        int itemCount = state.getItemCount();
        r();
        int startAfterPadding = this.s.getStartAfterPadding();
        int endAfterPadding = this.s.getEndAfterPadding();
        View view = null;
        View view2 = null;
        while (childCount != i) {
            View childAt = getChildAt(childCount);
            int position = getPosition(childAt);
            if (position >= 0 && position < itemCount && R(position, recycler, state) == 0) {
                if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.s.getDecoratedStart(childAt) < endAfterPadding && this.s.getDecoratedEnd(childAt) >= startAfterPadding) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            childCount += i2;
        }
        return view != null ? view : view2;
    }

    public final int Q(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (!state.isPreLayout()) {
            return this.M.b(i, this.H);
        }
        int iConvertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(i);
        if (iConvertPreLayoutPositionToPostLayout == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
            return 0;
        }
        return this.M.b(iConvertPreLayoutPositionToPostLayout, this.H);
    }

    public final int R(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (!state.isPreLayout()) {
            return this.M.c(i, this.H);
        }
        int i2 = this.L.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int iConvertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(i);
        if (iConvertPreLayoutPositionToPostLayout == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
            return 0;
        }
        return this.M.c(iConvertPreLayoutPositionToPostLayout, this.H);
    }

    public final int S(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (!state.isPreLayout()) {
            return this.M.getSpanSize(i);
        }
        int i2 = this.K.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int iConvertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(i);
        if (iConvertPreLayoutPositionToPostLayout == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
            return 1;
        }
        return this.M.getSpanSize(iConvertPreLayoutPositionToPostLayout);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void m(RecyclerView.State state, LinearLayoutManager.b bVar, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i;
        int spanSize = this.H;
        for (int i2 = 0; i2 < this.H && (i = bVar.d) >= 0 && i < state.getItemCount() && spanSize > 0; i2++) {
            int i3 = bVar.d;
            layoutPrefetchRegistry.addPosition(i3, Math.max(0, bVar.f2050g));
            spanSize -= this.M.getSpanSize(i3);
            bVar.d += bVar.e;
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void C(RecyclerView.Recycler recycler, RecyclerView.State state, LinearLayoutManager.b bVar, LinearLayoutManager.LayoutChunkResult layoutChunkResult) {
        int i;
        int i2;
        int i3;
        int decoratedMeasurementInOther;
        int paddingLeft;
        int paddingTop;
        int decoratedMeasurementInOther2;
        int childMeasureSpec;
        int childMeasureSpec2;
        boolean z;
        int i4;
        View viewA;
        int modeInOther = this.s.getModeInOther();
        boolean z2 = modeInOther != 1073741824;
        int i5 = getChildCount() > 0 ? this.I[this.H] : 0;
        if (z2) {
            U();
        }
        boolean z3 = bVar.e == 1;
        int iR = this.H;
        if (!z3) {
            iR = R(bVar.d, recycler, state) + S(bVar.d, recycler, state);
        }
        int i6 = 0;
        while (i6 < this.H && (i4 = bVar.d) >= 0 && i4 < state.getItemCount() && iR > 0) {
            int i7 = bVar.d;
            int iS = S(i7, recycler, state);
            if (iS > this.H) {
                StringBuilder sbN = _COROUTINE.a.n(i7, iS, "Item at position ", " requires ", " spans but GridLayoutManager has only ");
                sbN.append(this.H);
                sbN.append(" spans.");
                throw new IllegalArgumentException(sbN.toString());
            }
            iR -= iS;
            if (iR < 0 || (viewA = bVar.a(recycler)) == null) {
                break;
            }
            this.J[i6] = viewA;
            i6++;
        }
        if (i6 == 0) {
            layoutChunkResult.mFinished = true;
            return;
        }
        if (z3) {
            i2 = i6;
            i = 0;
            i3 = 1;
        } else {
            i = i6 - 1;
            i2 = -1;
            i3 = -1;
        }
        int i8 = 0;
        while (i != i2) {
            View view = this.J[i];
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int iS2 = S(getPosition(view), recycler, state);
            layoutParams.f = iS2;
            layoutParams.e = i8;
            i8 += iS2;
            i += i3;
        }
        float f = 0.0f;
        int i9 = 0;
        for (int i10 = 0; i10 < i6; i10++) {
            View view2 = this.J[i10];
            if (bVar.k != null) {
                z = false;
                if (z3) {
                    addDisappearingView(view2);
                } else {
                    addDisappearingView(view2, 0);
                }
            } else if (z3) {
                addView(view2);
                z = false;
            } else {
                z = false;
                addView(view2, 0);
            }
            calculateItemDecorationsForChild(view2, this.N);
            T(view2, z, modeInOther);
            int decoratedMeasurement = this.s.getDecoratedMeasurement(view2);
            if (decoratedMeasurement > i9) {
                i9 = decoratedMeasurement;
            }
            float decoratedMeasurementInOther3 = (this.s.getDecoratedMeasurementInOther(view2) * 1.0f) / ((LayoutParams) view2.getLayoutParams()).f;
            if (decoratedMeasurementInOther3 > f) {
                f = decoratedMeasurementInOther3;
            }
        }
        if (z2) {
            L(Math.max(Math.round(f * this.H), i5));
            i9 = 0;
            for (int i11 = 0; i11 < i6; i11++) {
                View view3 = this.J[i11];
                T(view3, true, 1073741824);
                int decoratedMeasurement2 = this.s.getDecoratedMeasurement(view3);
                if (decoratedMeasurement2 > i9) {
                    i9 = decoratedMeasurement2;
                }
            }
        }
        for (int i12 = 0; i12 < i6; i12++) {
            View view4 = this.J[i12];
            if (this.s.getDecoratedMeasurement(view4) != i9) {
                LayoutParams layoutParams2 = (LayoutParams) view4.getLayoutParams();
                Rect rect = layoutParams2.f2065b;
                int i13 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
                int i14 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                int iP = P(layoutParams2.e, layoutParams2.f);
                if (this.q == 1) {
                    childMeasureSpec2 = RecyclerView.LayoutManager.getChildMeasureSpec(iP, 1073741824, i14, ((ViewGroup.MarginLayoutParams) layoutParams2).width, false);
                    childMeasureSpec = View.MeasureSpec.makeMeasureSpec(i9 - i13, 1073741824);
                } else {
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i9 - i14, 1073741824);
                    childMeasureSpec = RecyclerView.LayoutManager.getChildMeasureSpec(iP, 1073741824, i13, ((ViewGroup.MarginLayoutParams) layoutParams2).height, false);
                    childMeasureSpec2 = iMakeMeasureSpec;
                }
                if (l(view4, childMeasureSpec2, childMeasureSpec, (RecyclerView.LayoutParams) view4.getLayoutParams())) {
                    view4.measure(childMeasureSpec2, childMeasureSpec);
                }
            }
        }
        layoutChunkResult.mConsumed = i9;
        if (this.q != 1) {
            if (bVar.f == -1) {
                int i15 = bVar.f2049b;
                paddingLeft = i15 - i9;
                decoratedMeasurementInOther = i15;
            } else {
                int i16 = bVar.f2049b;
                decoratedMeasurementInOther = i16 + i9;
                paddingLeft = i16;
            }
            paddingTop = 0;
            decoratedMeasurementInOther2 = 0;
        } else if (bVar.f == -1) {
            decoratedMeasurementInOther2 = bVar.f2049b;
            paddingTop = decoratedMeasurementInOther2 - i9;
            paddingLeft = 0;
            decoratedMeasurementInOther = 0;
        } else {
            int i17 = bVar.f2049b;
            paddingTop = i17;
            decoratedMeasurementInOther = 0;
            decoratedMeasurementInOther2 = i17 + i9;
            paddingLeft = 0;
        }
        for (int i18 = 0; i18 < i6; i18++) {
            View view5 = this.J[i18];
            LayoutParams layoutParams3 = (LayoutParams) view5.getLayoutParams();
            if (this.q != 1) {
                paddingTop = getPaddingTop() + this.I[layoutParams3.e];
                decoratedMeasurementInOther2 = this.s.getDecoratedMeasurementInOther(view5) + paddingTop;
            } else if (isLayoutRTL()) {
                decoratedMeasurementInOther = this.I[this.H - layoutParams3.e] + getPaddingLeft();
                paddingLeft = decoratedMeasurementInOther - this.s.getDecoratedMeasurementInOther(view5);
            } else {
                paddingLeft = getPaddingLeft() + this.I[layoutParams3.e];
                decoratedMeasurementInOther = this.s.getDecoratedMeasurementInOther(view5) + paddingLeft;
            }
            int i19 = decoratedMeasurementInOther;
            int i20 = paddingLeft;
            int i21 = decoratedMeasurementInOther2;
            layoutDecoratedWithMargins(view5, i20, paddingTop, i19, i21);
            paddingLeft = i20;
            decoratedMeasurementInOther = i19;
            decoratedMeasurementInOther2 = i21;
            if (layoutParams3.isItemRemoved() || layoutParams3.isItemChanged()) {
                layoutChunkResult.mIgnoreConsumed = true;
            }
            layoutChunkResult.mFocusable = view5.hasFocusable() | layoutChunkResult.mFocusable;
        }
        Arrays.fill(this.J, (Object) null);
    }

    public final void T(View view, boolean z, int i) {
        int childMeasureSpec;
        int childMeasureSpec2;
        boolean zJ;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = layoutParams.f2065b;
        int i2 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        int i3 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        int iP = P(layoutParams.e, layoutParams.f);
        if (this.q == 1) {
            childMeasureSpec2 = RecyclerView.LayoutManager.getChildMeasureSpec(iP, i, i3, ((ViewGroup.MarginLayoutParams) layoutParams).width, false);
            childMeasureSpec = RecyclerView.LayoutManager.getChildMeasureSpec(this.s.getTotalSpace(), getHeightMode(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height, true);
        } else {
            int childMeasureSpec3 = RecyclerView.LayoutManager.getChildMeasureSpec(iP, i, i2, ((ViewGroup.MarginLayoutParams) layoutParams).height, false);
            int childMeasureSpec4 = RecyclerView.LayoutManager.getChildMeasureSpec(this.s.getTotalSpace(), getWidthMode(), i3, ((ViewGroup.MarginLayoutParams) layoutParams).width, true);
            childMeasureSpec = childMeasureSpec3;
            childMeasureSpec2 = childMeasureSpec4;
        }
        RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (z) {
            zJ = l(view, childMeasureSpec2, childMeasureSpec, layoutParams2);
        } else {
            zJ = j(view, childMeasureSpec2, childMeasureSpec, layoutParams2);
        }
        if (zJ) {
            view.measure(childMeasureSpec2, childMeasureSpec);
        }
    }

    public int getSpanCount() {
        return this.H;
    }

    public void setSpanCount(int i) {
        if (i == this.H) {
            return;
        }
        this.G = true;
        if (i < 1) {
            throw new IllegalArgumentException(_COROUTINE.a.d(i, "Span count should be at least 1. Provided "));
        }
        this.H = i;
        this.M.invalidateSpanIndexCache();
        requestLayout();
    }

    public static abstract class SpanSizeLookup {

        /* renamed from: a, reason: collision with root package name */
        public final SparseIntArray f2030a = new SparseIntArray();

        /* renamed from: b, reason: collision with root package name */
        public final SparseIntArray f2031b = new SparseIntArray();
        public boolean c = false;
        public boolean d = false;

        public abstract int getSpanSize(int i);

        public void setSpanIndexCacheEnabled(boolean z) {
            if (!z) {
                this.f2031b.clear();
            }
            this.c = z;
        }

        public void setSpanGroupIndexCacheEnabled(boolean z) {
            if (!z) {
                this.f2031b.clear();
            }
            this.d = z;
        }

        public void invalidateSpanIndexCache() {
            this.f2030a.clear();
        }

        public void invalidateSpanGroupIndexCache() {
            this.f2031b.clear();
        }

        public boolean isSpanIndexCacheEnabled() {
            return this.c;
        }

        public boolean isSpanGroupIndexCacheEnabled() {
            return this.d;
        }

        public final int c(int i, int i2) {
            if (!this.c) {
                return getSpanIndex(i, i2);
            }
            SparseIntArray sparseIntArray = this.f2030a;
            int i3 = sparseIntArray.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int spanIndex = getSpanIndex(i, i2);
            sparseIntArray.put(i, spanIndex);
            return spanIndex;
        }

        public final int b(int i, int i2) {
            if (!this.d) {
                return getSpanGroupIndex(i, i2);
            }
            SparseIntArray sparseIntArray = this.f2031b;
            int i3 = sparseIntArray.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int spanGroupIndex = getSpanGroupIndex(i, i2);
            sparseIntArray.put(i, spanGroupIndex);
            return spanGroupIndex;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0022  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0031  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0029 -> B:17:0x002e). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x002b -> B:17:0x002e). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x002d -> B:17:0x002e). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int getSpanIndex(int r6, int r7) {
            /*
                r5 = this;
                int r0 = r5.getSpanSize(r6)
                r1 = 0
                if (r0 != r7) goto L8
                return r1
            L8:
                boolean r2 = r5.c
                if (r2 == 0) goto L1e
                android.util.SparseIntArray r2 = r5.f2030a
                int r3 = a(r2, r6)
                if (r3 < 0) goto L1e
                int r2 = r2.get(r3)
                int r4 = r5.getSpanSize(r3)
                int r4 = r4 + r2
                goto L2e
            L1e:
                r3 = 0
                r4 = 0
            L20:
                if (r3 >= r6) goto L31
                int r2 = r5.getSpanSize(r3)
                int r4 = r4 + r2
                if (r4 != r7) goto L2b
                r4 = 0
                goto L2e
            L2b:
                if (r4 <= r7) goto L2e
                r4 = r2
            L2e:
                int r3 = r3 + 1
                goto L20
            L31:
                int r0 = r0 + r4
                if (r0 > r7) goto L35
                return r4
            L35:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup.getSpanIndex(int, int):int");
        }

        public static int a(SparseIntArray sparseIntArray, int i) {
            int size = sparseIntArray.size() - 1;
            int i2 = 0;
            while (i2 <= size) {
                int i3 = (i2 + size) >>> 1;
                if (sparseIntArray.keyAt(i3) < i) {
                    i2 = i3 + 1;
                } else {
                    size = i3 - 1;
                }
            }
            int i4 = i2 - 1;
            if (i4 < 0 || i4 >= sparseIntArray.size()) {
                return -1;
            }
            return sparseIntArray.keyAt(i4);
        }

        public int getSpanGroupIndex(int i, int i2) {
            int i3;
            int spanSize;
            int i4;
            SparseIntArray sparseIntArray;
            int iA;
            if (!this.d || (iA = a((sparseIntArray = this.f2031b), i)) == -1) {
                i3 = 0;
                spanSize = 0;
                i4 = 0;
            } else {
                i3 = sparseIntArray.get(iA);
                i4 = iA + 1;
                spanSize = getSpanSize(iA) + c(iA, i2);
                if (spanSize == i2) {
                    i3++;
                    spanSize = 0;
                }
            }
            int spanSize2 = getSpanSize(i);
            while (i4 < i) {
                int spanSize3 = getSpanSize(i4);
                spanSize += spanSize3;
                if (spanSize == i2) {
                    i3++;
                    spanSize = 0;
                } else if (spanSize > i2) {
                    i3++;
                    spanSize = spanSize3;
                }
                i4++;
            }
            return spanSize + spanSize2 > i2 ? i3 + 1 : i3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x00d3, code lost:
    
        if (r13 == (r2 > r15)) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0111  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View onFocusSearchFailed(android.view.View r24, int r25, androidx.recyclerview.widget.RecyclerView.Recycler r26, androidx.recyclerview.widget.RecyclerView.State r27) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.onFocusSearchFailed(android.view.View, int, androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State):android.view.View");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.B == null && !this.G;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        if (this.O) {
            return N(state);
        }
        return super.computeHorizontalScrollRange(state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        if (this.O) {
            return N(state);
        }
        return super.computeVerticalScrollRange(state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        if (this.O) {
            return M(state);
        }
        return super.computeHorizontalScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        if (this.O) {
            return M(state);
        }
        return super.computeVerticalScrollOffset(state);
    }

    public void setUsingSpansToEstimateScrollbarDimensions(boolean z) {
        this.O = z;
    }

    public boolean isUsingSpansToEstimateScrollbarDimensions() {
        return this.O;
    }

    public final int N(RecyclerView.State state) {
        if (getChildCount() == 0 || state.getItemCount() == 0) {
            return 0;
        }
        r();
        View viewU = u(!isSmoothScrollbarEnabled());
        View viewT = t(!isSmoothScrollbarEnabled());
        if (viewU == null || viewT == null) {
            return 0;
        }
        if (!isSmoothScrollbarEnabled()) {
            return this.M.b(state.getItemCount() - 1, this.H) + 1;
        }
        int decoratedEnd = this.s.getDecoratedEnd(viewT) - this.s.getDecoratedStart(viewU);
        int iB = this.M.b(getPosition(viewU), this.H);
        return (int) ((decoratedEnd / ((this.M.b(getPosition(viewT), this.H) - iB) + 1)) * (this.M.b(state.getItemCount() - 1, this.H) + 1));
    }

    public final int M(RecyclerView.State state) {
        int iMax;
        if (getChildCount() != 0 && state.getItemCount() != 0) {
            r();
            boolean zIsSmoothScrollbarEnabled = isSmoothScrollbarEnabled();
            boolean z = !zIsSmoothScrollbarEnabled;
            View viewU = u(z);
            View viewT = t(z);
            if (viewU != null && viewT != null) {
                int iB = this.M.b(getPosition(viewU), this.H);
                int iB2 = this.M.b(getPosition(viewT), this.H);
                int iMin = Math.min(iB, iB2);
                int iMax2 = Math.max(iB, iB2);
                int iB3 = this.M.b(state.getItemCount() - 1, this.H) + 1;
                if (this.v) {
                    iMax = Math.max(0, (iB3 - iMax2) - 1);
                } else {
                    iMax = Math.max(0, iMin);
                }
                if (!zIsSmoothScrollbarEnabled) {
                    return iMax;
                }
                return Math.round((iMax * (Math.abs(this.s.getDecoratedEnd(viewT) - this.s.getDecoratedStart(viewU)) / ((this.M.b(getPosition(viewT), this.H) - this.M.b(getPosition(viewU), this.H)) + 1))) + (this.s.getStartAfterPadding() - this.s.getDecoratedStart(viewU)));
            }
        }
        return 0;
    }

    public static final class DefaultSpanSizeLookup extends SpanSizeLookup {
        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int i) {
            return 1;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanIndex(int i, int i2) {
            return i % i2;
        }
    }

    public static class LayoutParams extends RecyclerView.LayoutParams {
        public static final int INVALID_SPAN_ID = -1;
        public int e;
        public int f;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.e = -1;
            this.f = 0;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.e = -1;
            this.f = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.e = -1;
            this.f = 0;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.e = -1;
            this.f = 0;
        }

        public LayoutParams(RecyclerView.LayoutParams layoutParams) {
            super(layoutParams);
            this.e = -1;
            this.f = 0;
        }

        public int getSpanIndex() {
            return this.e;
        }

        public int getSpanSize() {
            return this.f;
        }
    }
}
