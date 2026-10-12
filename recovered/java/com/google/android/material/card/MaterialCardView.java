package com.google.android.material.card;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.cardview.widget.CardView;
import androidx.core.graphics.drawable.DrawableCompat;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class MaterialCardView extends CardView implements Checkable, Shapeable {
    private static final String ACCESSIBILITY_CLASS_NAME = "androidx.cardview.widget.CardView";
    public static final int CHECKED_ICON_GRAVITY_BOTTOM_END = 8388693;
    public static final int CHECKED_ICON_GRAVITY_BOTTOM_START = 8388691;
    public static final int CHECKED_ICON_GRAVITY_TOP_END = 8388661;
    public static final int CHECKED_ICON_GRAVITY_TOP_START = 8388659;
    private static final String LOG_TAG = "MaterialCardView";

    @NonNull
    private final b cardViewHelper;
    private boolean checked;
    private boolean dragged;
    private boolean isParentCardViewDoneInitializing;
    private OnCheckedChangeListener onCheckedChangeListener;
    private static final int[] CHECKABLE_STATE_SET = {R.attr.state_checkable};
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    private static final int[] DRAGGED_STATE_SET = {com.google.android.material.R.attr.state_dragged};
    private static final int DEF_STYLE_RES = com.google.android.material.R.style.Widget_MaterialComponents_CardView;

    @Retention(RetentionPolicy.SOURCE)
    public @interface CheckedIconGravity {
    }

    public interface OnCheckedChangeListener {
        void onCheckedChanged(MaterialCardView materialCardView, boolean z);
    }

    public MaterialCardView(Context context) {
        this(context, null);
    }

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.google.android.material.R.attr.materialCardViewStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialCardView(Context context, AttributeSet attributeSet, int i) {
        Drawable drawable;
        int i2 = DEF_STYLE_RES;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        this.checked = false;
        this.dragged = false;
        this.isParentCardViewDoneInitializing = true;
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(getContext(), attributeSet, com.google.android.material.R.styleable.MaterialCardView, i, i2, new int[0]);
        b bVar = new b(this, attributeSet, i, i2);
        this.cardViewHelper = bVar;
        ColorStateList cardBackgroundColor = super.getCardBackgroundColor();
        MaterialShapeDrawable materialShapeDrawable = bVar.c;
        materialShapeDrawable.setFillColor(cardBackgroundColor);
        bVar.f2855b.set(super.getContentPaddingLeft(), super.getContentPaddingTop(), super.getContentPaddingRight(), super.getContentPaddingBottom());
        bVar.i();
        MaterialCardView materialCardView = bVar.f2854a;
        ColorStateList colorStateList = MaterialResources.getColorStateList(materialCardView.getContext(), typedArrayObtainStyledAttributes, com.google.android.material.R.styleable.MaterialCardView_strokeColor);
        bVar.n = colorStateList;
        if (colorStateList == null) {
            bVar.n = ColorStateList.valueOf(-1);
        }
        bVar.h = typedArrayObtainStyledAttributes.getDimensionPixelSize(com.google.android.material.R.styleable.MaterialCardView_strokeWidth, 0);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(com.google.android.material.R.styleable.MaterialCardView_android_checkable, false);
        bVar.t = z;
        materialCardView.setLongClickable(z);
        bVar.l = MaterialResources.getColorStateList(materialCardView.getContext(), typedArrayObtainStyledAttributes, com.google.android.material.R.styleable.MaterialCardView_checkedIconTint);
        bVar.f(MaterialResources.getDrawable(materialCardView.getContext(), typedArrayObtainStyledAttributes, com.google.android.material.R.styleable.MaterialCardView_checkedIcon));
        bVar.f = typedArrayObtainStyledAttributes.getDimensionPixelSize(com.google.android.material.R.styleable.MaterialCardView_checkedIconSize, 0);
        bVar.e = typedArrayObtainStyledAttributes.getDimensionPixelSize(com.google.android.material.R.styleable.MaterialCardView_checkedIconMargin, 0);
        bVar.f2856g = typedArrayObtainStyledAttributes.getInteger(com.google.android.material.R.styleable.MaterialCardView_checkedIconGravity, 8388661);
        ColorStateList colorStateList2 = MaterialResources.getColorStateList(materialCardView.getContext(), typedArrayObtainStyledAttributes, com.google.android.material.R.styleable.MaterialCardView_rippleColor);
        bVar.k = colorStateList2;
        if (colorStateList2 == null) {
            bVar.k = ColorStateList.valueOf(MaterialColors.getColor(materialCardView, com.google.android.material.R.attr.colorControlHighlight));
        }
        ColorStateList colorStateList3 = MaterialResources.getColorStateList(materialCardView.getContext(), typedArrayObtainStyledAttributes, com.google.android.material.R.styleable.MaterialCardView_cardForegroundColor);
        MaterialShapeDrawable materialShapeDrawable2 = bVar.d;
        materialShapeDrawable2.setFillColor(colorStateList3 == null ? ColorStateList.valueOf(0) : colorStateList3);
        if (RippleUtils.USE_FRAMEWORK_RIPPLE && (drawable = bVar.o) != null) {
            ((RippleDrawable) drawable).setColor(bVar.k);
        } else {
            MaterialShapeDrawable materialShapeDrawable3 = bVar.q;
            if (materialShapeDrawable3 != null) {
                materialShapeDrawable3.setFillColor(bVar.k);
            }
        }
        materialShapeDrawable.setElevation(materialCardView.getCardElevation());
        materialShapeDrawable2.setStroke(bVar.h, bVar.n);
        materialCardView.setBackgroundInternal(bVar.d(materialShapeDrawable));
        Drawable drawableC = materialCardView.isClickable() ? bVar.c() : materialShapeDrawable2;
        bVar.i = drawableC;
        materialCardView.setForeground(bVar.d(drawableC));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ACCESSIBILITY_CLASS_NAME);
        accessibilityNodeInfo.setCheckable(isCheckable());
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(isChecked());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ACCESSIBILITY_CLASS_NAME);
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // androidx.cardview.widget.CardView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.cardViewHelper.e(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setStrokeColor(@ColorInt int i) {
        setStrokeColor(ColorStateList.valueOf(i));
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        b bVar = this.cardViewHelper;
        if (bVar.n != colorStateList) {
            bVar.n = colorStateList;
            bVar.d.setStroke(bVar.h, colorStateList);
        }
        invalidate();
    }

    @ColorInt
    @Deprecated
    public int getStrokeColor() {
        ColorStateList colorStateList = this.cardViewHelper.n;
        if (colorStateList == null) {
            return -1;
        }
        return colorStateList.getDefaultColor();
    }

    @Nullable
    public ColorStateList getStrokeColorStateList() {
        return this.cardViewHelper.n;
    }

    public void setStrokeWidth(@Dimension int i) {
        b bVar = this.cardViewHelper;
        if (i != bVar.h) {
            bVar.h = i;
            bVar.d.setStroke(i, bVar.n);
        }
        invalidate();
    }

    @Dimension
    public int getStrokeWidth() {
        return this.cardViewHelper.h;
    }

    @Override // androidx.cardview.widget.CardView
    public void setRadius(float f) {
        super.setRadius(f);
        b bVar = this.cardViewHelper;
        bVar.g(bVar.m.withCornerSize(f));
        bVar.i.invalidateSelf();
        if (bVar.h() || (bVar.f2854a.getPreventCornerOverlap() && !bVar.c.isRoundRect())) {
            bVar.i();
        }
        if (bVar.h()) {
            bVar.j();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public float getRadius() {
        return this.cardViewHelper.c.getTopLeftCornerResolvedSize();
    }

    public float getCardViewRadius() {
        return super.getRadius();
    }

    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        b bVar = this.cardViewHelper;
        bVar.c.setInterpolation(f);
        MaterialShapeDrawable materialShapeDrawable = bVar.d;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setInterpolation(f);
        }
        MaterialShapeDrawable materialShapeDrawable2 = bVar.r;
        if (materialShapeDrawable2 != null) {
            materialShapeDrawable2.setInterpolation(f);
        }
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getProgress() {
        return this.cardViewHelper.c.getInterpolation();
    }

    @Override // androidx.cardview.widget.CardView
    public void setContentPadding(int i, int i2, int i3, int i4) {
        b bVar = this.cardViewHelper;
        bVar.f2855b.set(i, i2, i3, i4);
        bVar.i();
    }

    public void setAncestorContentPadding(int i, int i2, int i3, int i4) {
        super.setContentPadding(i, i2, i3, i4);
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingLeft() {
        return this.cardViewHelper.f2855b.left;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingTop() {
        return this.cardViewHelper.f2855b.top;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingRight() {
        return this.cardViewHelper.f2855b.right;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingBottom() {
        return this.cardViewHelper.f2855b.bottom;
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(@ColorInt int i) {
        b bVar = this.cardViewHelper;
        bVar.c.setFillColor(ColorStateList.valueOf(i));
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(@Nullable ColorStateList colorStateList) {
        this.cardViewHelper.c.setFillColor(colorStateList);
    }

    @Override // androidx.cardview.widget.CardView
    @NonNull
    public ColorStateList getCardBackgroundColor() {
        return this.cardViewHelper.c.getFillColor();
    }

    public void setCardForegroundColor(@Nullable ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = this.cardViewHelper.d;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        materialShapeDrawable.setFillColor(colorStateList);
    }

    @NonNull
    public ColorStateList getCardForegroundColor() {
        return this.cardViewHelper.d.getFillColor();
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        b bVar = this.cardViewHelper;
        if (bVar != null) {
            Drawable drawable = bVar.i;
            MaterialCardView materialCardView = bVar.f2854a;
            Drawable drawableC = materialCardView.isClickable() ? bVar.c() : bVar.d;
            bVar.i = drawableC;
            if (drawable != drawableC) {
                if (Build.VERSION.SDK_INT >= 23 && (materialCardView.getForeground() instanceof InsetDrawable)) {
                    ((InsetDrawable) materialCardView.getForeground()).setDrawable(drawableC);
                } else {
                    materialCardView.setForeground(bVar.d(drawableC));
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this, this.cardViewHelper.c);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardElevation(float f) {
        super.setCardElevation(f);
        b bVar = this.cardViewHelper;
        bVar.c.setElevation(bVar.f2854a.getCardElevation());
    }

    @Override // androidx.cardview.widget.CardView
    public void setMaxCardElevation(float f) {
        super.setMaxCardElevation(f);
        this.cardViewHelper.j();
    }

    @Override // androidx.cardview.widget.CardView
    public void setUseCompatPadding(boolean z) {
        super.setUseCompatPadding(z);
        this.cardViewHelper.j();
        this.cardViewHelper.i();
    }

    @Override // androidx.cardview.widget.CardView
    public void setPreventCornerOverlap(boolean z) {
        super.setPreventCornerOverlap(z);
        this.cardViewHelper.j();
        this.cardViewHelper.i();
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.isParentCardViewDoneInitializing) {
            if (!this.cardViewHelper.s) {
                Log.i(LOG_TAG, "Setting a custom background is not supported.");
                this.cardViewHelper.s = true;
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    public void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.checked;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.checked != z) {
            toggle();
        }
    }

    public void setDragged(boolean z) {
        if (this.dragged != z) {
            this.dragged = z;
            refreshDrawableState();
            a();
            invalidate();
        }
    }

    public boolean isDragged() {
        return this.dragged;
    }

    public boolean isCheckable() {
        b bVar = this.cardViewHelper;
        return bVar != null && bVar.t;
    }

    public void setCheckable(boolean z) {
        this.cardViewHelper.t = z;
    }

    @Override // android.widget.Checkable
    public void toggle() {
        if (isCheckable() && isEnabled()) {
            this.checked = !this.checked;
            refreshDrawableState();
            a();
            this.cardViewHelper.setChecked(this.checked);
            OnCheckedChangeListener onCheckedChangeListener = this.onCheckedChangeListener;
            if (onCheckedChangeListener != null) {
                onCheckedChangeListener.onCheckedChanged(this, this.checked);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 3);
        if (isCheckable()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, CHECKABLE_STATE_SET);
        }
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, CHECKED_STATE_SET);
        }
        if (isDragged()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, DRAGGED_STATE_SET);
        }
        return iArrOnCreateDrawableState;
    }

    public void setOnCheckedChangeListener(@Nullable OnCheckedChangeListener onCheckedChangeListener) {
        this.onCheckedChangeListener = onCheckedChangeListener;
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        Drawable drawable;
        b bVar = this.cardViewHelper;
        bVar.k = colorStateList;
        if (RippleUtils.USE_FRAMEWORK_RIPPLE && (drawable = bVar.o) != null) {
            ((RippleDrawable) drawable).setColor(colorStateList);
            return;
        }
        MaterialShapeDrawable materialShapeDrawable = bVar.q;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setFillColor(colorStateList);
        }
    }

    public void setRippleColorResource(@ColorRes int i) {
        Drawable drawable;
        b bVar = this.cardViewHelper;
        ColorStateList colorStateList = AppCompatResources.getColorStateList(getContext(), i);
        bVar.k = colorStateList;
        if (RippleUtils.USE_FRAMEWORK_RIPPLE && (drawable = bVar.o) != null) {
            ((RippleDrawable) drawable).setColor(colorStateList);
            return;
        }
        MaterialShapeDrawable materialShapeDrawable = bVar.q;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setFillColor(colorStateList);
        }
    }

    public ColorStateList getRippleColor() {
        return this.cardViewHelper.k;
    }

    @Nullable
    public Drawable getCheckedIcon() {
        return this.cardViewHelper.j;
    }

    public void setCheckedIconResource(@DrawableRes int i) {
        this.cardViewHelper.f(AppCompatResources.getDrawable(getContext(), i));
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        this.cardViewHelper.f(drawable);
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        return this.cardViewHelper.l;
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        b bVar = this.cardViewHelper;
        bVar.l = colorStateList;
        Drawable drawable = bVar.j;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, colorStateList);
        }
    }

    @Dimension
    public int getCheckedIconSize() {
        return this.cardViewHelper.f;
    }

    public void setCheckedIconSize(@Dimension int i) {
        this.cardViewHelper.f = i;
    }

    public void setCheckedIconSizeResource(@DimenRes int i) {
        if (i != 0) {
            this.cardViewHelper.f = getResources().getDimensionPixelSize(i);
        }
    }

    @Dimension
    public int getCheckedIconMargin() {
        return this.cardViewHelper.e;
    }

    public void setCheckedIconMargin(@Dimension int i) {
        this.cardViewHelper.e = i;
    }

    public void setCheckedIconMarginResource(@DimenRes int i) {
        if (i != -1) {
            this.cardViewHelper.e = getResources().getDimensionPixelSize(i);
        }
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        RectF rectF = new RectF();
        rectF.set(this.cardViewHelper.c.getBounds());
        setClipToOutline(shapeAppearanceModel.isRoundRect(rectF));
        this.cardViewHelper.g(shapeAppearanceModel);
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.cardViewHelper.m;
    }

    public final void a() {
        b bVar;
        Drawable drawable;
        if (Build.VERSION.SDK_INT <= 26 || (drawable = (bVar = this.cardViewHelper).o) == null) {
            return;
        }
        Rect bounds = drawable.getBounds();
        int i = bounds.bottom;
        bVar.o.setBounds(bounds.left, bounds.top, bounds.right, i - 1);
        bVar.o.setBounds(bounds.left, bounds.top, bounds.right, i);
    }

    public int getCheckedIconGravity() {
        return this.cardViewHelper.f2856g;
    }

    public void setCheckedIconGravity(int i) {
        b bVar = this.cardViewHelper;
        if (bVar.f2856g != i) {
            bVar.f2856g = i;
            MaterialCardView materialCardView = bVar.f2854a;
            bVar.e(materialCardView.getMeasuredWidth(), materialCardView.getMeasuredHeight());
        }
    }
}
