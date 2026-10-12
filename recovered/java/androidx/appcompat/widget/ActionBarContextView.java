package androidx.appcompat.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ActionBarContextView extends AbsActionBarView {
    public CharSequence c;
    public CharSequence d;
    public View e;
    public View f;

    /* renamed from: g, reason: collision with root package name */
    public View f284g;
    public LinearLayout h;
    public TextView i;
    public TextView j;
    public final int k;
    public final int l;
    public boolean m;
    public final int n;

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ void animateToVisibility(int i) {
        super.animateToVisibility(i);
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ boolean canShowOverflowMenu() {
        return super.canShowOverflowMenu();
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ void dismissPopupMenus() {
        super.dismissPopupMenus();
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ boolean isOverflowMenuShowPending() {
        return super.isOverflowMenuShowPending();
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ boolean isOverflowReserved() {
        return super.isOverflowReserved();
    }

    @Override // androidx.appcompat.widget.AbsActionBarView, android.view.View
    public /* bridge */ /* synthetic */ boolean onHoverEvent(MotionEvent motionEvent) {
        return super.onHoverEvent(motionEvent);
    }

    @Override // androidx.appcompat.widget.AbsActionBarView, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ void postShowOverflowMenu() {
        super.postShowOverflowMenu();
    }

    @Override // androidx.appcompat.widget.AbsActionBarView, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i) {
        super.setVisibility(i);
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ ViewPropertyAnimatorCompat setupAnimatorToVisibility(int i, long j) {
        return super.setupAnimatorToVisibility(i, j);
    }

    public ActionBarContextView(@NonNull Context context) {
        this(context, null);
    }

    public ActionBarContextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.actionModeStyle);
    }

    public ActionBarContextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.ActionMode, i, 0);
        ViewCompat.setBackground(this, tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.ActionMode_background));
        this.k = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.ActionMode_titleTextStyle, 0);
        this.l = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.ActionMode_subtitleTextStyle, 0);
        this.mContentHeight = tintTypedArrayObtainStyledAttributes.getLayoutDimension(R.styleable.ActionMode_height, 0);
        this.n = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.ActionMode_closeItemLayout, R.layout.abc_action_mode_close_item_material);
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b bVar = this.mActionMenuPresenter;
        if (bVar != null) {
            bVar.hideOverflowMenu();
            this.mActionMenuPresenter.hideSubMenus();
        }
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public void setContentHeight(int i) {
        this.mContentHeight = i;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f284g;
        if (view2 != null) {
            removeView(view2);
        }
        this.f284g = view;
        if (view != null && (linearLayout = this.h) != null) {
            removeView(linearLayout);
            this.h = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setTitle(CharSequence charSequence) {
        this.c = charSequence;
        c();
        ViewCompat.setAccessibilityPaneTitle(this, charSequence);
    }

    public void setSubtitle(CharSequence charSequence) {
        this.d = charSequence;
        c();
    }

    public CharSequence getTitle() {
        return this.c;
    }

    public CharSequence getSubtitle() {
        return this.d;
    }

    public final void c() {
        if (this.h == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.h = linearLayout;
            this.i = (TextView) linearLayout.findViewById(R.id.action_bar_title);
            this.j = (TextView) this.h.findViewById(R.id.action_bar_subtitle);
            int i = this.k;
            if (i != 0) {
                this.i.setTextAppearance(getContext(), i);
            }
            int i2 = this.l;
            if (i2 != 0) {
                this.j.setTextAppearance(getContext(), i2);
            }
        }
        this.i.setText(this.c);
        this.j.setText(this.d);
        boolean zIsEmpty = TextUtils.isEmpty(this.c);
        boolean zIsEmpty2 = TextUtils.isEmpty(this.d);
        this.j.setVisibility(!zIsEmpty2 ? 0 : 8);
        this.h.setVisibility((zIsEmpty && zIsEmpty2) ? 8 : 0);
        if (this.h.getParent() == null) {
            addView(this.h);
        }
    }

    public void initForMode(ActionMode actionMode) {
        View view = this.e;
        if (view == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.n, (ViewGroup) this, false);
            this.e = viewInflate;
            addView(viewInflate);
        } else if (view.getParent() == null) {
            addView(this.e);
        }
        View viewFindViewById = this.e.findViewById(R.id.action_mode_close_button);
        this.f = viewFindViewById;
        viewFindViewById.setOnClickListener(new a(actionMode));
        MenuBuilder menuBuilder = (MenuBuilder) actionMode.getMenu();
        b bVar = this.mActionMenuPresenter;
        if (bVar != null) {
            bVar.dismissPopupMenus();
        }
        b bVar2 = new b(getContext());
        this.mActionMenuPresenter = bVar2;
        bVar2.setReserveOverflow(true);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        menuBuilder.addMenuPresenter(this.mActionMenuPresenter, this.mPopupContext);
        ActionMenuView actionMenuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
        this.mMenuView = actionMenuView;
        ViewCompat.setBackground(actionMenuView, null);
        addView(this.mMenuView, layoutParams);
    }

    public class a implements View.OnClickListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ActionMode f285a;

        public a(ActionMode actionMode) {
            this.f285a = actionMode;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f285a.finish();
        }
    }

    public void closeMode() {
        if (this.e == null) {
            killMode();
        }
    }

    public void killMode() {
        removeAllViews();
        this.f284g = null;
        this.mMenuView = null;
        this.mActionMenuPresenter = null;
        View view = this.f;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public boolean showOverflowMenu() {
        b bVar = this.mActionMenuPresenter;
        if (bVar != null) {
            return bVar.showOverflowMenu();
        }
        return false;
    }

    public boolean hideOverflowMenu() {
        b bVar = this.mActionMenuPresenter;
        if (bVar != null) {
            return bVar.hideOverflowMenu();
        }
        return false;
    }

    public boolean isOverflowMenuShowing() {
        b bVar = this.mActionMenuPresenter;
        if (bVar != null) {
            return bVar.isOverflowMenuShowing();
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_width=\"match_parent\" (or fill_parent)"));
        }
        if (View.MeasureSpec.getMode(i2) == 0) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_height=\"wrap_content\""));
        }
        int size = View.MeasureSpec.getSize(i);
        int size2 = this.mContentHeight;
        if (size2 <= 0) {
            size2 = View.MeasureSpec.getSize(i2);
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = size2 - paddingBottom;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE);
        View view = this.e;
        if (view != null) {
            int iMeasureChildView = measureChildView(view, paddingLeft, iMakeMeasureSpec, 0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.e.getLayoutParams();
            paddingLeft = iMeasureChildView - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.mMenuView;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = measureChildView(this.mMenuView, paddingLeft, iMakeMeasureSpec, 0);
        }
        LinearLayout linearLayout = this.h;
        if (linearLayout != null && this.f284g == null) {
            if (this.m) {
                this.h.measure(View.MeasureSpec.makeMeasureSpec(0, 0), iMakeMeasureSpec);
                int measuredWidth = this.h.getMeasuredWidth();
                boolean z = measuredWidth <= paddingLeft;
                if (z) {
                    paddingLeft -= measuredWidth;
                }
                this.h.setVisibility(z ? 0 : 8);
            } else {
                paddingLeft = measureChildView(linearLayout, paddingLeft, iMakeMeasureSpec, 0);
            }
        }
        View view2 = this.f284g;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i3 = layoutParams.width;
            int i4 = i3 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i3 >= 0) {
                paddingLeft = Math.min(i3, paddingLeft);
            }
            int i5 = layoutParams.height;
            int i6 = i5 == -2 ? Integer.MIN_VALUE : 1073741824;
            if (i5 >= 0) {
                iMin = Math.min(i5, iMin);
            }
            this.f284g.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i4), View.MeasureSpec.makeMeasureSpec(iMin, i6));
        }
        if (this.mContentHeight <= 0) {
            int childCount = getChildCount();
            int i7 = 0;
            for (int i8 = 0; i8 < childCount; i8++) {
                int measuredHeight = getChildAt(i8).getMeasuredHeight() + paddingBottom;
                if (measuredHeight > i7) {
                    i7 = measuredHeight;
                }
            }
            setMeasuredDimension(size, i7);
            return;
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        int paddingRight = zIsLayoutRtl ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        View view = this.e;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.e.getLayoutParams();
            int i5 = zIsLayoutRtl ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i6 = zIsLayoutRtl ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int next = AbsActionBarView.next(paddingRight, i5, zIsLayoutRtl);
            paddingRight = AbsActionBarView.next(next + positionChild(this.e, next, paddingTop, paddingTop2, zIsLayoutRtl), i6, zIsLayoutRtl);
        }
        int iPositionChild = paddingRight;
        LinearLayout linearLayout = this.h;
        if (linearLayout != null && this.f284g == null && linearLayout.getVisibility() != 8) {
            iPositionChild += positionChild(this.h, iPositionChild, paddingTop, paddingTop2, zIsLayoutRtl);
        }
        View view2 = this.f284g;
        if (view2 != null) {
            positionChild(view2, iPositionChild, paddingTop, paddingTop2, zIsLayoutRtl);
        }
        int paddingLeft = zIsLayoutRtl ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        ActionMenuView actionMenuView = this.mMenuView;
        if (actionMenuView != null) {
            positionChild(actionMenuView, paddingLeft, paddingTop, paddingTop2, !zIsLayoutRtl);
        }
    }

    public void setTitleOptional(boolean z) {
        if (z != this.m) {
            requestLayout();
        }
        this.m = z;
    }

    public boolean isTitleOptional() {
        return this.m;
    }
}
