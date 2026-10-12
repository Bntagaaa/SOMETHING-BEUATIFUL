package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.annotation.Dimension;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.ripple.RippleDrawableCompat;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
class a {
    public static final boolean t;
    public static final boolean u;

    /* renamed from: a, reason: collision with root package name */
    public final MaterialButton f2851a;

    /* renamed from: b, reason: collision with root package name */
    public ShapeAppearanceModel f2852b;
    public int c;
    public int d;
    public int e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f2853g;
    public int h;
    public PorterDuff.Mode i;
    public ColorStateList j;
    public ColorStateList k;
    public ColorStateList l;
    public Drawable m;
    public boolean n = false;
    public boolean o = false;
    public boolean p = false;
    public boolean q;
    public LayerDrawable r;
    public int s;

    static {
        int i = Build.VERSION.SDK_INT;
        t = true;
        u = i <= 22;
    }

    public a(MaterialButton materialButton, ShapeAppearanceModel shapeAppearanceModel) {
        this.f2851a = materialButton;
        this.f2852b = shapeAppearanceModel;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v10, types: [android.graphics.drawable.LayerDrawable, android.graphics.drawable.RippleDrawable] */
    public final void d() {
        InsetDrawable insetDrawable;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.f2852b);
        MaterialButton materialButton = this.f2851a;
        materialShapeDrawable.initializeElevationOverlay(materialButton.getContext());
        DrawableCompat.setTintList(materialShapeDrawable, this.j);
        PorterDuff.Mode mode = this.i;
        if (mode != null) {
            DrawableCompat.setTintMode(materialShapeDrawable, mode);
        }
        materialShapeDrawable.setStroke(this.h, this.k);
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(this.f2852b);
        materialShapeDrawable2.setTint(0);
        materialShapeDrawable2.setStroke(this.h, this.n ? MaterialColors.getColor(materialButton, R.attr.colorSurface) : 0);
        if (t) {
            MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(this.f2852b);
            this.m = materialShapeDrawable3;
            DrawableCompat.setTint(materialShapeDrawable3, -1);
            ?? rippleDrawable = new RippleDrawable(RippleUtils.sanitizeRippleDrawableColor(this.l), new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable}), this.c, this.e, this.d, this.f), this.m);
            this.r = rippleDrawable;
            insetDrawable = rippleDrawable;
        } else {
            RippleDrawableCompat rippleDrawableCompat = new RippleDrawableCompat(this.f2852b);
            this.m = rippleDrawableCompat;
            DrawableCompat.setTintList(rippleDrawableCompat, RippleUtils.sanitizeRippleDrawableColor(this.l));
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable, this.m});
            this.r = layerDrawable;
            insetDrawable = new InsetDrawable((Drawable) layerDrawable, this.c, this.e, this.d, this.f);
        }
        materialButton.d(insetDrawable);
        MaterialShapeDrawable materialShapeDrawableA = a(false);
        if (materialShapeDrawableA != null) {
            materialShapeDrawableA.setElevation(this.s);
        }
    }

    public final MaterialShapeDrawable a(boolean z) {
        LayerDrawable layerDrawable = this.r;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        if (t) {
            return (MaterialShapeDrawable) ((LayerDrawable) ((InsetDrawable) this.r.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0);
        }
        return (MaterialShapeDrawable) this.r.getDrawable(!z ? 1 : 0);
    }

    public final void e() {
        MaterialShapeDrawable materialShapeDrawableA = a(false);
        MaterialShapeDrawable materialShapeDrawableA2 = a(true);
        if (materialShapeDrawableA != null) {
            materialShapeDrawableA.setStroke(this.h, this.k);
            if (materialShapeDrawableA2 != null) {
                materialShapeDrawableA2.setStroke(this.h, this.n ? MaterialColors.getColor(this.f2851a, R.attr.colorSurface) : 0);
            }
        }
    }

    @Nullable
    public Shapeable getMaskDrawable() {
        LayerDrawable layerDrawable = this.r;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        if (this.r.getNumberOfLayers() > 2) {
            return (Shapeable) this.r.getDrawable(2);
        }
        return (Shapeable) this.r.getDrawable(1);
    }

    public final void b(ShapeAppearanceModel shapeAppearanceModel) {
        this.f2852b = shapeAppearanceModel;
        if (!u || this.o) {
            if (a(false) != null) {
                a(false).setShapeAppearanceModel(shapeAppearanceModel);
            }
            if (a(true) != null) {
                a(true).setShapeAppearanceModel(shapeAppearanceModel);
            }
            if (getMaskDrawable() != null) {
                getMaskDrawable().setShapeAppearanceModel(shapeAppearanceModel);
                return;
            }
            return;
        }
        MaterialButton materialButton = this.f2851a;
        int paddingStart = ViewCompat.getPaddingStart(materialButton);
        int paddingTop = materialButton.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(materialButton);
        int paddingBottom = materialButton.getPaddingBottom();
        d();
        ViewCompat.setPaddingRelative(materialButton, paddingStart, paddingTop, paddingEnd, paddingBottom);
    }

    public void setInsetBottom(@Dimension int i) {
        c(this.e, i);
    }

    public int getInsetBottom() {
        return this.f;
    }

    public void setInsetTop(@Dimension int i) {
        c(i, this.f);
    }

    public final void c(int i, int i2) {
        MaterialButton materialButton = this.f2851a;
        int paddingStart = ViewCompat.getPaddingStart(materialButton);
        int paddingTop = materialButton.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(materialButton);
        int paddingBottom = materialButton.getPaddingBottom();
        int i3 = this.e;
        int i4 = this.f;
        this.f = i2;
        this.e = i;
        if (!this.o) {
            d();
        }
        ViewCompat.setPaddingRelative(materialButton, paddingStart, (paddingTop + i) - i3, paddingEnd, (paddingBottom + i2) - i4);
    }

    public int getInsetTop() {
        return this.e;
    }
}
