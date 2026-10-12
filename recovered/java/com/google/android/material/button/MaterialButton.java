package com.google.android.material.button;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleDrawableCompat;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public class MaterialButton extends AppCompatButton implements Checkable, Shapeable {
    public static final int ICON_GRAVITY_END = 3;
    public static final int ICON_GRAVITY_START = 1;
    public static final int ICON_GRAVITY_TEXT_END = 4;
    public static final int ICON_GRAVITY_TEXT_START = 2;
    public static final int ICON_GRAVITY_TEXT_TOP = 32;
    public static final int ICON_GRAVITY_TOP = 16;
    public static final int[] q = {R.attr.state_checkable};
    public static final int[] r = {R.attr.state_checked};
    public static final int s = com.google.android.material.R.style.Widget_MaterialComponents_Button;
    public final com.google.android.material.button.a d;
    public final LinkedHashSet e;
    public a f;

    /* renamed from: g, reason: collision with root package name */
    public PorterDuff.Mode f2842g;
    public ColorStateList h;
    public Drawable i;
    public int j;
    public int k;
    public int l;
    public int m;
    public boolean n;
    public boolean o;
    public int p;

    @Retention(RetentionPolicy.SOURCE)
    public @interface IconGravity {
    }

    public interface OnCheckedChangeListener {
        void onCheckedChanged(MaterialButton materialButton, boolean z);
    }

    public interface a {
        void onPressedChanged(MaterialButton materialButton, boolean z);
    }

    public MaterialButton(@NonNull Context context) {
        this(context, null);
    }

    public MaterialButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, com.google.android.material.R.attr.materialButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        int i2 = s;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        this.e = new LinkedHashSet();
        this.n = false;
        this.o = false;
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, com.google.android.material.R.styleable.MaterialButton, i, i2, new int[0]);
        this.m = typedArrayObtainStyledAttributes.getDimensionPixelSize(com.google.android.material.R.styleable.MaterialButton_iconPadding, 0);
        int i3 = typedArrayObtainStyledAttributes.getInt(com.google.android.material.R.styleable.MaterialButton_iconTintMode, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.f2842g = ViewUtils.parseTintMode(i3, mode);
        this.h = MaterialResources.getColorStateList(getContext(), typedArrayObtainStyledAttributes, com.google.android.material.R.styleable.MaterialButton_iconTint);
        this.i = MaterialResources.getDrawable(getContext(), typedArrayObtainStyledAttributes, com.google.android.material.R.styleable.MaterialButton_icon);
        this.p = typedArrayObtainStyledAttributes.getInteger(com.google.android.material.R.styleable.MaterialButton_iconGravity, 1);
        this.j = typedArrayObtainStyledAttributes.getDimensionPixelSize(com.google.android.material.R.styleable.MaterialButton_iconSize, 0);
        com.google.android.material.button.a aVar = new com.google.android.material.button.a(this, ShapeAppearanceModel.builder(context2, attributeSet, i, i2).build());
        this.d = aVar;
        aVar.c = typedArrayObtainStyledAttributes.getDimensionPixelOffset(com.google.android.material.R.styleable.MaterialButton_android_insetLeft, 0);
        aVar.d = typedArrayObtainStyledAttributes.getDimensionPixelOffset(com.google.android.material.R.styleable.MaterialButton_android_insetRight, 0);
        aVar.e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(com.google.android.material.R.styleable.MaterialButton_android_insetTop, 0);
        aVar.f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(com.google.android.material.R.styleable.MaterialButton_android_insetBottom, 0);
        int i4 = com.google.android.material.R.styleable.MaterialButton_cornerRadius;
        if (typedArrayObtainStyledAttributes.hasValue(i4)) {
            int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(i4, -1);
            aVar.f2853g = dimensionPixelSize;
            aVar.b(aVar.f2852b.withCornerSize(dimensionPixelSize));
            aVar.p = true;
        }
        aVar.h = typedArrayObtainStyledAttributes.getDimensionPixelSize(com.google.android.material.R.styleable.MaterialButton_strokeWidth, 0);
        aVar.i = ViewUtils.parseTintMode(typedArrayObtainStyledAttributes.getInt(com.google.android.material.R.styleable.MaterialButton_backgroundTintMode, -1), mode);
        aVar.j = MaterialResources.getColorStateList(getContext(), typedArrayObtainStyledAttributes, com.google.android.material.R.styleable.MaterialButton_backgroundTint);
        aVar.k = MaterialResources.getColorStateList(getContext(), typedArrayObtainStyledAttributes, com.google.android.material.R.styleable.MaterialButton_strokeColor);
        aVar.l = MaterialResources.getColorStateList(getContext(), typedArrayObtainStyledAttributes, com.google.android.material.R.styleable.MaterialButton_rippleColor);
        aVar.q = typedArrayObtainStyledAttributes.getBoolean(com.google.android.material.R.styleable.MaterialButton_android_checkable, false);
        aVar.s = typedArrayObtainStyledAttributes.getDimensionPixelSize(com.google.android.material.R.styleable.MaterialButton_elevation, 0);
        int paddingStart = ViewCompat.getPaddingStart(this);
        int paddingTop = getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(this);
        int paddingBottom = getPaddingBottom();
        if (!typedArrayObtainStyledAttributes.hasValue(com.google.android.material.R.styleable.MaterialButton_android_background)) {
            aVar.d();
        } else {
            aVar.o = true;
            setSupportBackgroundTintList(aVar.j);
            setSupportBackgroundTintMode(aVar.i);
        }
        ViewCompat.setPaddingRelative(this, paddingStart + aVar.c, paddingTop + aVar.e, paddingEnd + aVar.d, paddingBottom + aVar.f);
        typedArrayObtainStyledAttributes.recycle();
        setCompoundDrawablePadding(this.m);
        e(this.i != null);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName((isCheckable() ? CompoundButton.class : Button.class).getName());
        accessibilityNodeInfo.setCheckable(isCheckable());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName((isCheckable() ? CompoundButton.class : Button.class).getName());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // android.widget.TextView, android.view.View
    @NonNull
    public Parcelable onSaveInstanceState() {
        b bVar = new b(super.onSaveInstanceState());
        bVar.f2843b = this.n;
        return bVar;
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof b)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        b bVar = (b) parcelable;
        super.onRestoreInstanceState(bVar.getSuperState());
        setChecked(bVar.f2843b);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (b()) {
            com.google.android.material.button.a aVar = this.d;
            if (aVar.j != colorStateList) {
                aVar.j = colorStateList;
                if (aVar.a(false) != null) {
                    DrawableCompat.setTintList(aVar.a(false), aVar.j);
                    return;
                }
                return;
            }
            return;
        }
        super.setSupportBackgroundTintList(colorStateList);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ColorStateList getSupportBackgroundTintList() {
        if (b()) {
            return this.d.j;
        }
        return super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (b()) {
            com.google.android.material.button.a aVar = this.d;
            if (aVar.i != mode) {
                aVar.i = mode;
                if (aVar.a(false) == null || aVar.i == null) {
                    return;
                }
                DrawableCompat.setTintMode(aVar.a(false), aVar.i);
                return;
            }
            return;
        }
        super.setSupportBackgroundTintMode(mode);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (b()) {
            return this.d.i;
        }
        return super.getSupportBackgroundTintMode();
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i) {
        if (b()) {
            com.google.android.material.button.a aVar = this.d;
            if (aVar.a(false) != null) {
                aVar.a(false).setTint(i);
                return;
            }
            return;
        }
        super.setBackgroundColor(i);
    }

    @Override // android.view.View
    public void setBackground(@NonNull Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        setBackgroundDrawable(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(@NonNull Drawable drawable) {
        if (b()) {
            if (drawable != getBackground()) {
                Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
                com.google.android.material.button.a aVar = this.d;
                aVar.o = true;
                ColorStateList colorStateList = aVar.j;
                MaterialButton materialButton = aVar.f2851a;
                materialButton.setSupportBackgroundTintList(colorStateList);
                materialButton.setSupportBackgroundTintMode(aVar.i);
                super.setBackgroundDrawable(drawable);
                return;
            }
            getBackground().setState(drawable.getState());
            return;
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        com.google.android.material.button.a aVar;
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT == 21 && (aVar = this.d) != null) {
            int i5 = i4 - i2;
            int i6 = i3 - i;
            Drawable drawable = aVar.m;
            if (drawable != null) {
                drawable.setBounds(aVar.c, aVar.e, i6 - aVar.d, i5 - aVar.f);
            }
        }
        f(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        f(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (b()) {
            MaterialShapeUtils.setParentAbsoluteElevation(this, this.d.a(false));
        }
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f) {
        super.setElevation(f);
        if (b()) {
            this.d.a(false).setElevation(f);
        }
    }

    @Override // android.view.View
    public void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.i != null) {
            if (this.i.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    @Override // android.view.View
    @RequiresApi(17)
    public void setTextAlignment(int i) {
        super.setTextAlignment(i);
        f(getMeasuredWidth(), getMeasuredHeight());
    }

    public final void f(int i, int i2) {
        Layout.Alignment alignment;
        if (this.i == null || getLayout() == null) {
            return;
        }
        int i3 = this.p;
        if (!(i3 == 1 || i3 == 2) && i3 != 3 && i3 != 4) {
            if (i3 == 16 || i3 == 32) {
                this.k = 0;
                if (i3 == 16) {
                    this.l = 0;
                    e(false);
                    return;
                }
                int intrinsicHeight = this.j;
                if (intrinsicHeight == 0) {
                    intrinsicHeight = this.i.getIntrinsicHeight();
                }
                TextPaint paint = getPaint();
                String string = getText().toString();
                if (getTransformationMethod() != null) {
                    string = getTransformationMethod().getTransformation(string, this).toString();
                }
                Rect rect = new Rect();
                paint.getTextBounds(string, 0, string.length(), rect);
                int iMin = (((((i2 - Math.min(rect.height(), getLayout().getHeight())) - getPaddingTop()) - intrinsicHeight) - this.m) - getPaddingBottom()) / 2;
                if (this.l != iMin) {
                    this.l = iMin;
                    e(false);
                    return;
                }
                return;
            }
            return;
        }
        this.l = 0;
        int textAlignment = getTextAlignment();
        if (textAlignment == 1) {
            int gravity = getGravity() & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
            if (gravity == 1) {
                alignment = Layout.Alignment.ALIGN_CENTER;
            } else if (gravity == 5 || gravity == 8388613) {
                alignment = Layout.Alignment.ALIGN_OPPOSITE;
            } else {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            }
        } else if (textAlignment == 6 || textAlignment == 3) {
            alignment = Layout.Alignment.ALIGN_OPPOSITE;
        } else if (textAlignment == 4) {
            alignment = Layout.Alignment.ALIGN_CENTER;
        } else {
            alignment = Layout.Alignment.ALIGN_NORMAL;
        }
        int i4 = this.p;
        if (i4 == 1 || i4 == 3 || ((i4 == 2 && alignment == Layout.Alignment.ALIGN_NORMAL) || (i4 == 4 && alignment == Layout.Alignment.ALIGN_OPPOSITE))) {
            this.k = 0;
            e(false);
            return;
        }
        int intrinsicWidth = this.j;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.i.getIntrinsicWidth();
        }
        TextPaint paint2 = getPaint();
        String string2 = getText().toString();
        if (getTransformationMethod() != null) {
            string2 = getTransformationMethod().getTransformation(string2, this).toString();
        }
        int iMin2 = ((((i - Math.min((int) paint2.measureText(string2), getLayout().getEllipsizedWidth())) - ViewCompat.getPaddingEnd(this)) - intrinsicWidth) - this.m) - ViewCompat.getPaddingStart(this);
        if (alignment == Layout.Alignment.ALIGN_CENTER) {
            iMin2 /= 2;
        }
        if ((ViewCompat.getLayoutDirection(this) == 1) != (this.p == 4)) {
            iMin2 = -iMin2;
        }
        if (this.k != iMin2) {
            this.k = iMin2;
            e(false);
        }
    }

    public final void d(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setIconPadding(@Px int i) {
        if (this.m != i) {
            this.m = i;
            setCompoundDrawablePadding(i);
        }
    }

    @Px
    public int getIconPadding() {
        return this.m;
    }

    public void setIconSize(@Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.j != i) {
            this.j = i;
            e(true);
        }
    }

    @Px
    public int getIconSize() {
        return this.j;
    }

    public void setIcon(@Nullable Drawable drawable) {
        if (this.i != drawable) {
            this.i = drawable;
            e(true);
            f(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconResource(@DrawableRes int i) {
        setIcon(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    public Drawable getIcon() {
        return this.i;
    }

    public void setIconTint(@Nullable ColorStateList colorStateList) {
        if (this.h != colorStateList) {
            this.h = colorStateList;
            e(false);
        }
    }

    public void setIconTintResource(@ColorRes int i) {
        setIconTint(AppCompatResources.getColorStateList(getContext(), i));
    }

    public ColorStateList getIconTint() {
        return this.h;
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f2842g != mode) {
            this.f2842g = mode;
            e(false);
        }
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f2842g;
    }

    public final void e(boolean z) {
        Drawable drawable = this.i;
        if (drawable != null) {
            Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
            this.i = drawableMutate;
            DrawableCompat.setTintList(drawableMutate, this.h);
            PorterDuff.Mode mode = this.f2842g;
            if (mode != null) {
                DrawableCompat.setTintMode(this.i, mode);
            }
            int intrinsicWidth = this.j;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.i.getIntrinsicWidth();
            }
            int intrinsicHeight = this.j;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.i.getIntrinsicHeight();
            }
            Drawable drawable2 = this.i;
            int i = this.k;
            int i2 = this.l;
            drawable2.setBounds(i, i2, intrinsicWidth + i, intrinsicHeight + i2);
            this.i.setVisible(true, z);
        }
        if (z) {
            c();
            return;
        }
        Drawable[] compoundDrawablesRelative = TextViewCompat.getCompoundDrawablesRelative(this);
        Drawable drawable3 = compoundDrawablesRelative[0];
        Drawable drawable4 = compoundDrawablesRelative[1];
        Drawable drawable5 = compoundDrawablesRelative[2];
        int i3 = this.p;
        if (((i3 == 1 || i3 == 2) && drawable3 != this.i) || (((i3 == 3 || i3 == 4) && drawable5 != this.i) || ((i3 == 16 || i3 == 32) && drawable4 != this.i))) {
            c();
        }
    }

    public final void c() {
        int i = this.p;
        boolean z = true;
        if (i != 1 && i != 2) {
            z = false;
        }
        if (z) {
            TextViewCompat.setCompoundDrawablesRelative(this, this.i, null, null, null);
            return;
        }
        if (i == 3 || i == 4) {
            TextViewCompat.setCompoundDrawablesRelative(this, null, null, this.i, null);
        } else if (i == 16 || i == 32) {
            TextViewCompat.setCompoundDrawablesRelative(this, null, this.i, null, null);
        }
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (b()) {
            com.google.android.material.button.a aVar = this.d;
            if (aVar.l != colorStateList) {
                aVar.l = colorStateList;
                boolean z = com.google.android.material.button.a.t;
                MaterialButton materialButton = aVar.f2851a;
                if (z && (materialButton.getBackground() instanceof RippleDrawable)) {
                    ((RippleDrawable) materialButton.getBackground()).setColor(RippleUtils.sanitizeRippleDrawableColor(colorStateList));
                } else {
                    if (z || !(materialButton.getBackground() instanceof RippleDrawableCompat)) {
                        return;
                    }
                    ((RippleDrawableCompat) materialButton.getBackground()).setTintList(RippleUtils.sanitizeRippleDrawableColor(colorStateList));
                }
            }
        }
    }

    public void setRippleColorResource(@ColorRes int i) {
        if (b()) {
            setRippleColor(AppCompatResources.getColorStateList(getContext(), i));
        }
    }

    @Nullable
    public ColorStateList getRippleColor() {
        if (b()) {
            return this.d.l;
        }
        return null;
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        if (b()) {
            com.google.android.material.button.a aVar = this.d;
            if (aVar.k != colorStateList) {
                aVar.k = colorStateList;
                aVar.e();
            }
        }
    }

    public void setStrokeColorResource(@ColorRes int i) {
        if (b()) {
            setStrokeColor(AppCompatResources.getColorStateList(getContext(), i));
        }
    }

    public ColorStateList getStrokeColor() {
        if (b()) {
            return this.d.k;
        }
        return null;
    }

    public void setStrokeWidth(@Px int i) {
        if (b()) {
            com.google.android.material.button.a aVar = this.d;
            if (aVar.h != i) {
                aVar.h = i;
                aVar.e();
            }
        }
    }

    public void setStrokeWidthResource(@DimenRes int i) {
        if (b()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Px
    public int getStrokeWidth() {
        if (b()) {
            return this.d.h;
        }
        return 0;
    }

    public void setCornerRadius(@Px int i) {
        if (b()) {
            com.google.android.material.button.a aVar = this.d;
            if (aVar.p && aVar.f2853g == i) {
                return;
            }
            aVar.f2853g = i;
            aVar.p = true;
            aVar.b(aVar.f2852b.withCornerSize(i));
        }
    }

    public void setCornerRadiusResource(@DimenRes int i) {
        if (b()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    @Px
    public int getCornerRadius() {
        if (b()) {
            return this.d.f2853g;
        }
        return 0;
    }

    public int getIconGravity() {
        return this.p;
    }

    public void setIconGravity(int i) {
        if (this.p != i) {
            this.p = i;
            f(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setInsetBottom(@Dimension int i) {
        this.d.setInsetBottom(i);
    }

    @Dimension
    public int getInsetBottom() {
        return this.d.getInsetBottom();
    }

    public void setInsetTop(@Dimension int i) {
        this.d.setInsetTop(i);
    }

    @Dimension
    public int getInsetTop() {
        return this.d.getInsetTop();
    }

    @Override // android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isCheckable()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, q);
        }
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, r);
        }
        return iArrOnCreateDrawableState;
    }

    public void addOnCheckedChangeListener(@NonNull OnCheckedChangeListener onCheckedChangeListener) {
        this.e.add(onCheckedChangeListener);
    }

    public void removeOnCheckedChangeListener(@NonNull OnCheckedChangeListener onCheckedChangeListener) {
        this.e.remove(onCheckedChangeListener);
    }

    public void clearOnCheckedChangeListeners() {
        this.e.clear();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (isCheckable() && isEnabled() && this.n != z) {
            this.n = z;
            refreshDrawableState();
            if (getParent() instanceof MaterialButtonToggleGroup) {
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) getParent();
                boolean z2 = this.n;
                if (!materialButtonToggleGroup.f) {
                    materialButtonToggleGroup.b(getId(), z2);
                }
            }
            if (this.o) {
                return;
            }
            this.o = true;
            Iterator it = this.e.iterator();
            while (it.hasNext()) {
                ((OnCheckedChangeListener) it.next()).onCheckedChanged(this, this.n);
            }
            this.o = false;
        }
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.n;
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.n);
    }

    @Override // android.view.View
    public boolean performClick() {
        toggle();
        return super.performClick();
    }

    public boolean isCheckable() {
        com.google.android.material.button.a aVar = this.d;
        return aVar != null && aVar.q;
    }

    public void setCheckable(boolean z) {
        if (b()) {
            this.d.q = z;
        }
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        if (b()) {
            this.d.b(shapeAppearanceModel);
            return;
        }
        throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        if (b()) {
            return this.d.f2852b;
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        a aVar = this.f;
        if (aVar != null) {
            aVar.onPressedChanged(this, z);
        }
        super.setPressed(z);
    }

    public final boolean b() {
        com.google.android.material.button.a aVar = this.d;
        return (aVar == null || aVar.o) ? false : true;
    }

    public static class b extends AbsSavedState {
        public static final Parcelable.Creator<b> CREATOR = new a();

        /* renamed from: b, reason: collision with root package name */
        public boolean f2843b;

        public b(Parcelable parcelable) {
            super(parcelable);
        }

        public b(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                getClass().getClassLoader();
            }
            this.f2843b = parcel.readInt() == 1;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f2843b ? 1 : 0);
        }

        public class a implements Parcelable.ClassLoaderCreator<b> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            public b createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new b(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            public b createFromParcel(@NonNull Parcel parcel) {
                return new b(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            public b[] newArray(int i) {
                return new b[i];
            }
        }
    }
}
