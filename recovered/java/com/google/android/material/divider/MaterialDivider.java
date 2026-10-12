package com.google.android.material.divider;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;

/* loaded from: classes.dex */
public class MaterialDivider extends View {
    public static final int f = R.style.Widget_MaterialComponents_MaterialDivider;

    /* renamed from: a, reason: collision with root package name */
    public final MaterialShapeDrawable f2997a;

    /* renamed from: b, reason: collision with root package name */
    public int f2998b;
    public int c;
    public int d;
    public int e;

    public MaterialDivider(@NonNull Context context) {
        this(context, null);
    }

    public MaterialDivider(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialDividerStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialDivider(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        int i2 = f;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        Context context2 = getContext();
        this.f2997a = new MaterialShapeDrawable();
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R.styleable.MaterialDivider, i, i2, new int[0]);
        this.f2998b = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MaterialDivider_dividerThickness, getResources().getDimensionPixelSize(R.dimen.material_divider_thickness));
        this.d = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialDivider_dividerInsetStart, 0);
        this.e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialDivider_dividerInsetEnd, 0);
        setDividerColor(MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, R.styleable.MaterialDivider_dividerColor).getDefaultColor());
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        int measuredHeight = getMeasuredHeight();
        if (mode == Integer.MIN_VALUE || mode == 0) {
            int i3 = this.f2998b;
            if (i3 > 0 && measuredHeight != i3) {
                measuredHeight = i3;
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
    }

    @Override // android.view.View
    public void onDraw(@NonNull Canvas canvas) {
        int width;
        int i;
        super.onDraw(canvas);
        boolean z = ViewCompat.getLayoutDirection(this) == 1;
        int i2 = z ? this.e : this.d;
        if (z) {
            width = getWidth();
            i = this.d;
        } else {
            width = getWidth();
            i = this.e;
        }
        int i3 = width - i;
        MaterialShapeDrawable materialShapeDrawable = this.f2997a;
        materialShapeDrawable.setBounds(i2, 0, i3, getBottom() - getTop());
        materialShapeDrawable.draw(canvas);
    }

    public void setDividerThickness(@Px int i) {
        if (this.f2998b != i) {
            this.f2998b = i;
            requestLayout();
        }
    }

    public void setDividerThicknessResource(@DimenRes int i) {
        setDividerThickness(getContext().getResources().getDimensionPixelSize(i));
    }

    public int getDividerThickness() {
        return this.f2998b;
    }

    public void setDividerInsetStart(@Px int i) {
        this.d = i;
    }

    public void setDividerInsetStartResource(@DimenRes int i) {
        setDividerInsetStart(getContext().getResources().getDimensionPixelOffset(i));
    }

    @Px
    public int getDividerInsetStart() {
        return this.d;
    }

    public void setDividerInsetEnd(@Px int i) {
        this.e = i;
    }

    public void setDividerInsetEndResource(@DimenRes int i) {
        setDividerInsetEnd(getContext().getResources().getDimensionPixelOffset(i));
    }

    @Px
    public int getDividerInsetEnd() {
        return this.e;
    }

    public void setDividerColor(@ColorInt int i) {
        if (this.c != i) {
            this.c = i;
            this.f2997a.setFillColor(ColorStateList.valueOf(i));
            invalidate();
        }
    }

    public void setDividerColorResource(@ColorRes int i) {
        setDividerColor(ContextCompat.getColor(getContext(), i));
    }

    public int getDividerColor() {
        return this.c;
    }
}
