package com.google.android.material.ripple;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.TintAwareDrawable;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class RippleDrawableCompat extends Drawable implements Shapeable, TintAwareDrawable {

    /* renamed from: a, reason: collision with root package name */
    public b f3160a;

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    public RippleDrawableCompat(ShapeAppearanceModel shapeAppearanceModel) {
        this(new b(new MaterialShapeDrawable(shapeAppearanceModel)));
    }

    public RippleDrawableCompat(b bVar) {
        this.f3160a = bVar;
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(@ColorInt int i) {
        this.f3160a.f3161a.setTint(i);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@Nullable PorterDuff.Mode mode) {
        this.f3160a.f3161a.setTintMode(mode);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        this.f3160a.f3161a.setTintList(colorStateList);
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f3160a.f3161a.setShapeAppearanceModel(shapeAppearanceModel);
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.f3160a.f3161a.getShapeAppearanceModel();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(@NonNull int[] iArr) {
        boolean zOnStateChange = super.onStateChange(iArr);
        if (this.f3160a.f3161a.setState(iArr)) {
            zOnStateChange = true;
        }
        boolean zShouldDrawRippleCompat = RippleUtils.shouldDrawRippleCompat(iArr);
        b bVar = this.f3160a;
        if (bVar.f3162b == zShouldDrawRippleCompat) {
            return zOnStateChange;
        }
        bVar.f3162b = zShouldDrawRippleCompat;
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        b bVar = this.f3160a;
        if (bVar.f3162b) {
            bVar.f3161a.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(@NonNull Rect rect) {
        super.onBoundsChange(rect);
        this.f3160a.f3161a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.f3160a;
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public RippleDrawableCompat mutate() {
        this.f3160a = new b(this.f3160a);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f3160a.f3161a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f3160a.f3161a.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f3160a.f3161a.getOpacity();
    }

    public static final class b extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        public final MaterialShapeDrawable f3161a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f3162b;

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        public b(MaterialShapeDrawable materialShapeDrawable) {
            this.f3161a = materialShapeDrawable;
            this.f3162b = false;
        }

        public b(@NonNull b bVar) {
            this.f3161a = (MaterialShapeDrawable) bVar.f3161a.getConstantState().newDrawable();
            this.f3162b = bVar.f3162b;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public RippleDrawableCompat newDrawable() {
            return new RippleDrawableCompat(new b(this));
        }
    }
}
