package com.google.android.material.card;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.CornerTreatment;
import com.google.android.material.shape.CutCornerTreatment;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.RoundedCornerTreatment;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.appinventor.components.runtime.Component;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
class b {
    public static final double u = Math.cos(Math.toRadians(45.0d));
    public static final ColorDrawable v;

    /* renamed from: a, reason: collision with root package name */
    public final MaterialCardView f2854a;
    public final MaterialShapeDrawable c;
    public final MaterialShapeDrawable d;
    public int e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f2856g;
    public int h;
    public Drawable i;
    public Drawable j;
    public ColorStateList k;
    public ColorStateList l;
    public ShapeAppearanceModel m;
    public ColorStateList n;
    public Drawable o;
    public LayerDrawable p;
    public MaterialShapeDrawable q;
    public MaterialShapeDrawable r;
    public boolean t;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f2855b = new Rect();
    public boolean s = false;

    static {
        v = Build.VERSION.SDK_INT <= 28 ? new ColorDrawable() : null;
    }

    public b(@NonNull MaterialCardView materialCardView, AttributeSet attributeSet, int i, @StyleRes int i2) {
        this.f2854a = materialCardView;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(materialCardView.getContext(), attributeSet, i, i2);
        this.c = materialShapeDrawable;
        materialShapeDrawable.initializeElevationOverlay(materialCardView.getContext());
        materialShapeDrawable.setShadowColor(Component.COLOR_DKGRAY);
        ShapeAppearanceModel.Builder builder = materialShapeDrawable.getShapeAppearanceModel().toBuilder();
        TypedArray typedArrayObtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, R.styleable.CardView, i, R.style.CardView);
        int i3 = R.styleable.CardView_cardCornerRadius;
        if (typedArrayObtainStyledAttributes.hasValue(i3)) {
            builder.setAllCornerSizes(typedArrayObtainStyledAttributes.getDimension(i3, 0.0f));
        }
        this.d = new MaterialShapeDrawable();
        g(builder.build());
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void j() {
        boolean z = this.s;
        MaterialCardView materialCardView = this.f2854a;
        if (!z) {
            materialCardView.setBackgroundInternal(d(this.c));
        }
        materialCardView.setForeground(d(this.i));
    }

    public final void f(Drawable drawable) {
        if (drawable != null) {
            Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
            this.j = drawableMutate;
            DrawableCompat.setTintList(drawableMutate, this.l);
            setChecked(this.f2854a.isChecked());
        } else {
            this.j = v;
        }
        LayerDrawable layerDrawable = this.p;
        if (layerDrawable != null) {
            layerDrawable.setDrawableByLayerId(R.id.mtrl_card_checked_layer_id, this.j);
        }
    }

    public final void e(int i, int i2) {
        int iCeil;
        int iCeil2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if (this.p != null) {
            MaterialCardView materialCardView = this.f2854a;
            if (materialCardView.getUseCompatPadding()) {
                iCeil = (int) Math.ceil(((materialCardView.getMaxCardElevation() * 1.5f) + (h() ? a() : 0.0f)) * 2.0f);
                iCeil2 = (int) Math.ceil((materialCardView.getMaxCardElevation() + (h() ? a() : 0.0f)) * 2.0f);
            } else {
                iCeil = 0;
                iCeil2 = 0;
            }
            int i9 = this.f2856g;
            if ((i9 & GravityCompat.END) == 8388613) {
                i3 = ((i - this.e) - this.f) - iCeil2;
            } else {
                i3 = this.e;
            }
            if ((i9 & 80) == 80) {
                i4 = this.e;
            } else {
                i4 = ((i2 - this.e) - this.f) - iCeil;
            }
            int i10 = i4;
            if ((i9 & GravityCompat.END) == 8388613) {
                i5 = this.e;
            } else {
                i5 = ((i - this.e) - this.f) - iCeil2;
            }
            if ((i9 & 80) == 80) {
                i6 = ((i2 - this.e) - this.f) - iCeil;
            } else {
                i6 = this.e;
            }
            int i11 = i6;
            if (ViewCompat.getLayoutDirection(materialCardView) == 1) {
                i8 = i5;
                i7 = i3;
            } else {
                i7 = i5;
                i8 = i3;
            }
            this.p.setLayerInset(2, i8, i11, i7, i10);
        }
    }

    public final void g(ShapeAppearanceModel shapeAppearanceModel) {
        this.m = shapeAppearanceModel;
        MaterialShapeDrawable materialShapeDrawable = this.c;
        materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModel);
        materialShapeDrawable.setShadowBitmapDrawingEnable(!materialShapeDrawable.isRoundRect());
        MaterialShapeDrawable materialShapeDrawable2 = this.d;
        if (materialShapeDrawable2 != null) {
            materialShapeDrawable2.setShapeAppearanceModel(shapeAppearanceModel);
        }
        MaterialShapeDrawable materialShapeDrawable3 = this.r;
        if (materialShapeDrawable3 != null) {
            materialShapeDrawable3.setShapeAppearanceModel(shapeAppearanceModel);
        }
        MaterialShapeDrawable materialShapeDrawable4 = this.q;
        if (materialShapeDrawable4 != null) {
            materialShapeDrawable4.setShapeAppearanceModel(shapeAppearanceModel);
        }
    }

    public final Drawable d(Drawable drawable) {
        int iCeil;
        int i;
        if (this.f2854a.getUseCompatPadding()) {
            int iCeil2 = (int) Math.ceil((r0.getMaxCardElevation() * 1.5f) + (h() ? a() : 0.0f));
            iCeil = (int) Math.ceil(r0.getMaxCardElevation() + (h() ? a() : 0.0f));
            i = iCeil2;
        } else {
            iCeil = 0;
            i = 0;
        }
        return new a(drawable, iCeil, i, iCeil, i);
    }

    public final void i() {
        MaterialCardView materialCardView = this.f2854a;
        float cardViewRadius = 0.0f;
        float fA = ((materialCardView.getPreventCornerOverlap() && !this.c.isRoundRect()) || h()) ? a() : 0.0f;
        if (materialCardView.getPreventCornerOverlap() && materialCardView.getUseCompatPadding()) {
            cardViewRadius = (float) ((1.0d - u) * materialCardView.getCardViewRadius());
        }
        int i = (int) (fA - cardViewRadius);
        Rect rect = this.f2855b;
        materialCardView.setAncestorContentPadding(rect.left + i, rect.top + i, rect.right + i, rect.bottom + i);
    }

    public final boolean h() {
        MaterialCardView materialCardView = this.f2854a;
        return materialCardView.getPreventCornerOverlap() && this.c.isRoundRect() && materialCardView.getUseCompatPadding();
    }

    public final float a() {
        CornerTreatment topLeftCorner = this.m.getTopLeftCorner();
        MaterialShapeDrawable materialShapeDrawable = this.c;
        return Math.max(Math.max(b(topLeftCorner, materialShapeDrawable.getTopLeftCornerResolvedSize()), b(this.m.getTopRightCorner(), materialShapeDrawable.getTopRightCornerResolvedSize())), Math.max(b(this.m.getBottomRightCorner(), materialShapeDrawable.getBottomRightCornerResolvedSize()), b(this.m.getBottomLeftCorner(), materialShapeDrawable.getBottomLeftCornerResolvedSize())));
    }

    public static float b(CornerTreatment cornerTreatment, float f) {
        if (cornerTreatment instanceof RoundedCornerTreatment) {
            return (float) ((1.0d - u) * f);
        }
        if (cornerTreatment instanceof CutCornerTreatment) {
            return f / 2.0f;
        }
        return 0.0f;
    }

    public final LayerDrawable c() {
        Drawable rippleDrawable;
        if (this.o == null) {
            if (RippleUtils.USE_FRAMEWORK_RIPPLE) {
                this.r = new MaterialShapeDrawable(this.m);
                rippleDrawable = new RippleDrawable(this.k, null, this.r);
            } else {
                StateListDrawable stateListDrawable = new StateListDrawable();
                MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.m);
                this.q = materialShapeDrawable;
                materialShapeDrawable.setFillColor(this.k);
                stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, this.q);
                rippleDrawable = stateListDrawable;
            }
            this.o = rippleDrawable;
        }
        if (this.p == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.o, this.d, this.j});
            this.p = layerDrawable;
            layerDrawable.setId(2, R.id.mtrl_card_checked_layer_id);
        }
        return this.p;
    }

    public void setChecked(boolean z) {
        Drawable drawable = this.j;
        if (drawable != null) {
            drawable.setAlpha(z ? 255 : 0);
        }
    }
}
