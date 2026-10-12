package com.google.android.material.chip;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.AnimatorRes;
import androidx.annotation.AttrRes;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.XmlRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.text.BidiFormatter;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.canvas.CanvasCompat;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ChipDrawable extends MaterialShapeDrawable implements TintAwareDrawable, Drawable.Callback, TextDrawableHelper.TextDrawableDelegate {
    public static final int[] H0 = {R.attr.state_enabled};
    public static final ShapeDrawable I0 = new ShapeDrawable(new OvalShape());
    public float A;
    public boolean A0;
    public float B;
    public ColorStateList B0;
    public ColorStateList C;
    public WeakReference C0;
    public float D;
    public TextUtils.TruncateAt D0;
    public ColorStateList E;
    public boolean E0;
    public CharSequence F;
    public int F0;
    public boolean G;
    public boolean G0;
    public Drawable H;
    public ColorStateList I;
    public float J;
    public boolean K;
    public boolean L;
    public Drawable M;
    public RippleDrawable N;
    public ColorStateList O;
    public float P;
    public CharSequence Q;
    public boolean R;
    public boolean S;
    public Drawable T;
    public ColorStateList U;
    public MotionSpec V;
    public MotionSpec W;
    public float X;
    public float Y;
    public float Z;
    public float a0;
    public float b0;
    public float c0;
    public float d0;
    public float e0;
    public final Context f0;
    public final Paint g0;
    public final Paint.FontMetrics h0;
    public final RectF i0;
    public final PointF j0;
    public final Path k0;
    public final TextDrawableHelper l0;
    public int m0;
    public int n0;
    public int o0;
    public int p0;
    public int q0;
    public int r0;
    public boolean s0;
    public int t0;
    public int u0;
    public ColorFilter v0;
    public PorterDuffColorFilter w0;
    public ColorStateList x0;
    public ColorStateList y;
    public PorterDuff.Mode y0;
    public ColorStateList z;
    public int[] z0;

    public interface Delegate {
        void onChipDrawableSizeChange();
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @NonNull
    public static ChipDrawable createFromAttributes(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        ChipDrawable chipDrawable = new ChipDrawable(context, attributeSet, i, i2);
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(chipDrawable.f0, attributeSet, com.google.android.material.R.styleable.Chip, i, i2, new int[0]);
        chipDrawable.G0 = typedArrayObtainStyledAttributes.hasValue(com.google.android.material.R.styleable.Chip_shapeAppearance);
        int i3 = com.google.android.material.R.styleable.Chip_chipSurfaceColor;
        Context context2 = chipDrawable.f0;
        ColorStateList colorStateList = MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, i3);
        if (chipDrawable.y != colorStateList) {
            chipDrawable.y = colorStateList;
            chipDrawable.onStateChange(chipDrawable.getState());
        }
        chipDrawable.setChipBackgroundColor(MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, com.google.android.material.R.styleable.Chip_chipBackgroundColor));
        chipDrawable.setChipMinHeight(typedArrayObtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_chipMinHeight, 0.0f));
        int i4 = com.google.android.material.R.styleable.Chip_chipCornerRadius;
        if (typedArrayObtainStyledAttributes.hasValue(i4)) {
            chipDrawable.setChipCornerRadius(typedArrayObtainStyledAttributes.getDimension(i4, 0.0f));
        }
        chipDrawable.setChipStrokeColor(MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, com.google.android.material.R.styleable.Chip_chipStrokeColor));
        chipDrawable.setChipStrokeWidth(typedArrayObtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_chipStrokeWidth, 0.0f));
        chipDrawable.setRippleColor(MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, com.google.android.material.R.styleable.Chip_rippleColor));
        chipDrawable.setText(typedArrayObtainStyledAttributes.getText(com.google.android.material.R.styleable.Chip_android_text));
        TextAppearance textAppearance = MaterialResources.getTextAppearance(context2, typedArrayObtainStyledAttributes, com.google.android.material.R.styleable.Chip_android_textAppearance);
        textAppearance.setTextSize(typedArrayObtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_android_textSize, textAppearance.getTextSize()));
        if (Build.VERSION.SDK_INT < 23) {
            textAppearance.setTextColor(MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, com.google.android.material.R.styleable.Chip_android_textColor));
        }
        chipDrawable.setTextAppearance(textAppearance);
        int i5 = typedArrayObtainStyledAttributes.getInt(com.google.android.material.R.styleable.Chip_android_ellipsize, 0);
        if (i5 == 1) {
            chipDrawable.setEllipsize(TextUtils.TruncateAt.START);
        } else if (i5 == 2) {
            chipDrawable.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        } else if (i5 == 3) {
            chipDrawable.setEllipsize(TextUtils.TruncateAt.END);
        }
        chipDrawable.setChipIconVisible(typedArrayObtainStyledAttributes.getBoolean(com.google.android.material.R.styleable.Chip_chipIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            chipDrawable.setChipIconVisible(typedArrayObtainStyledAttributes.getBoolean(com.google.android.material.R.styleable.Chip_chipIconEnabled, false));
        }
        chipDrawable.setChipIcon(MaterialResources.getDrawable(context2, typedArrayObtainStyledAttributes, com.google.android.material.R.styleable.Chip_chipIcon));
        int i6 = com.google.android.material.R.styleable.Chip_chipIconTint;
        if (typedArrayObtainStyledAttributes.hasValue(i6)) {
            chipDrawable.setChipIconTint(MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, i6));
        }
        chipDrawable.setChipIconSize(typedArrayObtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_chipIconSize, -1.0f));
        chipDrawable.setCloseIconVisible(typedArrayObtainStyledAttributes.getBoolean(com.google.android.material.R.styleable.Chip_closeIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            chipDrawable.setCloseIconVisible(typedArrayObtainStyledAttributes.getBoolean(com.google.android.material.R.styleable.Chip_closeIconEnabled, false));
        }
        chipDrawable.setCloseIcon(MaterialResources.getDrawable(context2, typedArrayObtainStyledAttributes, com.google.android.material.R.styleable.Chip_closeIcon));
        chipDrawable.setCloseIconTint(MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, com.google.android.material.R.styleable.Chip_closeIconTint));
        chipDrawable.setCloseIconSize(typedArrayObtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_closeIconSize, 0.0f));
        chipDrawable.setCheckable(typedArrayObtainStyledAttributes.getBoolean(com.google.android.material.R.styleable.Chip_android_checkable, false));
        chipDrawable.setCheckedIconVisible(typedArrayObtainStyledAttributes.getBoolean(com.google.android.material.R.styleable.Chip_checkedIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            chipDrawable.setCheckedIconVisible(typedArrayObtainStyledAttributes.getBoolean(com.google.android.material.R.styleable.Chip_checkedIconEnabled, false));
        }
        chipDrawable.setCheckedIcon(MaterialResources.getDrawable(context2, typedArrayObtainStyledAttributes, com.google.android.material.R.styleable.Chip_checkedIcon));
        int i7 = com.google.android.material.R.styleable.Chip_checkedIconTint;
        if (typedArrayObtainStyledAttributes.hasValue(i7)) {
            chipDrawable.setCheckedIconTint(MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, i7));
        }
        chipDrawable.setShowMotionSpec(MotionSpec.createFromAttribute(context2, typedArrayObtainStyledAttributes, com.google.android.material.R.styleable.Chip_showMotionSpec));
        chipDrawable.setHideMotionSpec(MotionSpec.createFromAttribute(context2, typedArrayObtainStyledAttributes, com.google.android.material.R.styleable.Chip_hideMotionSpec));
        chipDrawable.setChipStartPadding(typedArrayObtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_chipStartPadding, 0.0f));
        chipDrawable.setIconStartPadding(typedArrayObtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_iconStartPadding, 0.0f));
        chipDrawable.setIconEndPadding(typedArrayObtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_iconEndPadding, 0.0f));
        chipDrawable.setTextStartPadding(typedArrayObtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_textStartPadding, 0.0f));
        chipDrawable.setTextEndPadding(typedArrayObtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_textEndPadding, 0.0f));
        chipDrawable.setCloseIconStartPadding(typedArrayObtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_closeIconStartPadding, 0.0f));
        chipDrawable.setCloseIconEndPadding(typedArrayObtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_closeIconEndPadding, 0.0f));
        chipDrawable.setChipEndPadding(typedArrayObtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_chipEndPadding, 0.0f));
        chipDrawable.setMaxWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(com.google.android.material.R.styleable.Chip_android_maxWidth, Integer.MAX_VALUE));
        typedArrayObtainStyledAttributes.recycle();
        return chipDrawable;
    }

    @NonNull
    public static ChipDrawable createFromResource(@NonNull Context context, @XmlRes int i) {
        AttributeSet drawableXml = DrawableUtils.parseDrawableXml(context, i, "chip");
        int styleAttribute = drawableXml.getStyleAttribute();
        if (styleAttribute == 0) {
            styleAttribute = com.google.android.material.R.style.Widget_MaterialComponents_Chip_Entry;
        }
        return createFromAttributes(context, drawableXml, com.google.android.material.R.attr.chipStandaloneStyle, styleAttribute);
    }

    public ChipDrawable(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.B = -1.0f;
        this.g0 = new Paint(1);
        this.h0 = new Paint.FontMetrics();
        this.i0 = new RectF();
        this.j0 = new PointF();
        this.k0 = new Path();
        this.u0 = 255;
        this.y0 = PorterDuff.Mode.SRC_IN;
        this.C0 = new WeakReference(null);
        initializeElevationOverlay(context);
        this.f0 = context;
        TextDrawableHelper textDrawableHelper = new TextDrawableHelper(this);
        this.l0 = textDrawableHelper;
        this.F = "";
        textDrawableHelper.getTextPaint().density = context.getResources().getDisplayMetrics().density;
        int[] iArr = H0;
        setState(iArr);
        setCloseIconState(iArr);
        this.E0 = true;
        if (RippleUtils.USE_FRAMEWORK_RIPPLE) {
            I0.setTint(-1);
        }
    }

    public void setUseCompatRipple(boolean z) {
        if (this.A0 != z) {
            this.A0 = z;
            this.B0 = z ? RippleUtils.sanitizeRippleDrawableColor(this.E) : null;
            onStateChange(getState());
        }
    }

    public boolean getUseCompatRipple() {
        return this.A0;
    }

    public void setDelegate(@Nullable Delegate delegate) {
        this.C0 = new WeakReference(delegate);
    }

    public void onSizeChange() {
        Delegate delegate = (Delegate) this.C0.get();
        if (delegate != null) {
            delegate.onChipDrawableSizeChange();
        }
    }

    public void getChipTouchBounds(@NonNull RectF rectF) {
        rectF.set(getBounds());
        if (r()) {
            float f = this.e0 + this.d0 + this.P + this.c0 + this.b0;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.right = r0.right - f;
            } else {
                rectF.left = r0.left + f;
            }
        }
    }

    public void getCloseIconTouchBounds(@NonNull RectF rectF) {
        Rect bounds = getBounds();
        rectF.setEmpty();
        if (r()) {
            float f = this.e0 + this.d0 + this.P + this.c0 + this.b0;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f2 = bounds.right;
                rectF.right = f2;
                rectF.left = f2 - f;
            } else {
                float f3 = bounds.left;
                rectF.left = f3;
                rectF.right = f3 + f;
            }
            rectF.top = bounds.top;
            rectF.bottom = bounds.bottom;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.min(Math.round(l() + this.l0.getTextWidth(getText().toString()) + k() + this.X + this.a0 + this.b0 + this.e0), this.F0);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.A;
    }

    public final boolean q() {
        return this.G && this.H != null;
    }

    public final boolean p() {
        return this.S && this.T != null && this.s0;
    }

    public final boolean r() {
        return this.L && this.M != null;
    }

    public final float k() {
        if (!q() && !p()) {
            return 0.0f;
        }
        float f = this.Y;
        Drawable drawable = this.s0 ? this.T : this.H;
        float intrinsicWidth = this.J;
        if (intrinsicWidth <= 0.0f && drawable != null) {
            intrinsicWidth = drawable.getIntrinsicWidth();
        }
        return intrinsicWidth + f + this.Z;
    }

    public final float l() {
        if (r()) {
            return this.c0 + this.P + this.d0;
        }
        return 0.0f;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Canvas canvas2;
        int iSaveLayerAlpha;
        int i;
        Rect bounds = getBounds();
        if (bounds.isEmpty() || getAlpha() == 0) {
            return;
        }
        int i2 = this.u0;
        if (i2 < 255) {
            canvas2 = canvas;
            iSaveLayerAlpha = CanvasCompat.saveLayerAlpha(canvas2, bounds.left, bounds.top, bounds.right, bounds.bottom, i2);
        } else {
            canvas2 = canvas;
            iSaveLayerAlpha = 0;
        }
        boolean z = this.G0;
        Paint paint = this.g0;
        RectF rectF = this.i0;
        if (!z) {
            paint.setColor(this.m0);
            paint.setStyle(Paint.Style.FILL);
            rectF.set(bounds);
            canvas2.drawRoundRect(rectF, getChipCornerRadius(), getChipCornerRadius(), paint);
        }
        if (!this.G0) {
            paint.setColor(this.n0);
            paint.setStyle(Paint.Style.FILL);
            ColorFilter colorFilter = this.v0;
            if (colorFilter == null) {
                colorFilter = this.w0;
            }
            paint.setColorFilter(colorFilter);
            rectF.set(bounds);
            canvas2.drawRoundRect(rectF, getChipCornerRadius(), getChipCornerRadius(), paint);
        }
        if (this.G0) {
            super.draw(canvas);
        }
        if (this.D > 0.0f && !this.G0) {
            paint.setColor(this.p0);
            paint.setStyle(Paint.Style.STROKE);
            if (!this.G0) {
                ColorFilter colorFilter2 = this.v0;
                if (colorFilter2 == null) {
                    colorFilter2 = this.w0;
                }
                paint.setColorFilter(colorFilter2);
            }
            float f = bounds.left;
            float f2 = this.D / 2.0f;
            rectF.set(f + f2, bounds.top + f2, bounds.right - f2, bounds.bottom - f2);
            float f3 = this.B - (this.D / 2.0f);
            canvas2.drawRoundRect(rectF, f3, f3, paint);
        }
        paint.setColor(this.q0);
        paint.setStyle(Paint.Style.FILL);
        rectF.set(bounds);
        if (!this.G0) {
            canvas2.drawRoundRect(rectF, getChipCornerRadius(), getChipCornerRadius(), paint);
        } else {
            RectF rectF2 = new RectF(bounds);
            Path path = this.k0;
            calculatePathForSize(rectF2, path);
            super.drawShape(canvas2, paint, path, getBoundsAsRectF());
        }
        if (q()) {
            j(bounds, rectF);
            float f4 = rectF.left;
            float f5 = rectF.top;
            canvas2.translate(f4, f5);
            this.H.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
            this.H.draw(canvas2);
            canvas2.translate(-f4, -f5);
        }
        if (p()) {
            j(bounds, rectF);
            float f6 = rectF.left;
            float f7 = rectF.top;
            canvas2.translate(f6, f7);
            this.T.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
            this.T.draw(canvas2);
            canvas2.translate(-f6, -f7);
        }
        if (this.E0 && this.F != null) {
            PointF pointF = this.j0;
            pointF.set(0.0f, 0.0f);
            Paint.Align align = Paint.Align.LEFT;
            CharSequence charSequence = this.F;
            TextDrawableHelper textDrawableHelper = this.l0;
            if (charSequence != null) {
                float fK = k() + this.X + this.a0;
                if (DrawableCompat.getLayoutDirection(this) == 0) {
                    pointF.x = bounds.left + fK;
                } else {
                    pointF.x = bounds.right - fK;
                    align = Paint.Align.RIGHT;
                }
                float fCenterY = bounds.centerY();
                TextPaint textPaint = textDrawableHelper.getTextPaint();
                Paint.FontMetrics fontMetrics = this.h0;
                textPaint.getFontMetrics(fontMetrics);
                pointF.y = fCenterY - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f);
            }
            rectF.setEmpty();
            if (this.F != null) {
                float fK2 = k() + this.X + this.a0;
                float fL = l() + this.e0 + this.b0;
                if (DrawableCompat.getLayoutDirection(this) == 0) {
                    rectF.left = bounds.left + fK2;
                    rectF.right = bounds.right - fL;
                } else {
                    rectF.left = bounds.left + fL;
                    rectF.right = bounds.right - fK2;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
            if (textDrawableHelper.getTextAppearance() != null) {
                textDrawableHelper.getTextPaint().drawableState = getState();
                textDrawableHelper.updateTextPaintDrawState(this.f0);
            }
            textDrawableHelper.getTextPaint().setTextAlign(align);
            boolean z2 = Math.round(textDrawableHelper.getTextWidth(getText().toString())) > Math.round(rectF.width());
            if (z2) {
                int iSave = canvas2.save();
                canvas2.clipRect(rectF);
                i = iSave;
            } else {
                i = 0;
            }
            CharSequence charSequenceEllipsize = this.F;
            if (z2 && this.D0 != null) {
                charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, textDrawableHelper.getTextPaint(), rectF.width(), this.D0);
            }
            canvas2.drawText(charSequenceEllipsize, 0, charSequenceEllipsize.length(), pointF.x, pointF.y, textDrawableHelper.getTextPaint());
            if (z2) {
                canvas2.restoreToCount(i);
            }
        }
        if (r()) {
            rectF.setEmpty();
            if (r()) {
                float f8 = this.e0 + this.d0;
                if (DrawableCompat.getLayoutDirection(this) == 0) {
                    float f9 = bounds.right - f8;
                    rectF.right = f9;
                    rectF.left = f9 - this.P;
                } else {
                    float f10 = bounds.left + f8;
                    rectF.left = f10;
                    rectF.right = f10 + this.P;
                }
                float fExactCenterY = bounds.exactCenterY();
                float f11 = this.P;
                float f12 = fExactCenterY - (f11 / 2.0f);
                rectF.top = f12;
                rectF.bottom = f12 + f11;
            }
            float f13 = rectF.left;
            float f14 = rectF.top;
            canvas2.translate(f13, f14);
            this.M.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
            if (RippleUtils.USE_FRAMEWORK_RIPPLE) {
                this.N.setBounds(this.M.getBounds());
                this.N.jumpToCurrentState();
                this.N.draw(canvas2);
            } else {
                this.M.draw(canvas2);
            }
            canvas2.translate(-f13, -f14);
        }
        if (this.u0 < 255) {
            canvas2.restoreToCount(iSaveLayerAlpha);
        }
    }

    public final void j(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (q() || p()) {
            float f = this.X + this.Y;
            Drawable drawable = this.s0 ? this.T : this.H;
            float intrinsicWidth = this.J;
            if (intrinsicWidth <= 0.0f && drawable != null) {
                intrinsicWidth = drawable.getIntrinsicWidth();
            }
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f2 = rect.left + f;
                rectF.left = f2;
                rectF.right = f2 + intrinsicWidth;
            } else {
                float f3 = rect.right - f;
                rectF.right = f3;
                rectF.left = f3 - intrinsicWidth;
            }
            Drawable drawable2 = this.s0 ? this.T : this.H;
            float fCeil = this.J;
            if (fCeil <= 0.0f && drawable2 != null) {
                fCeil = (float) Math.ceil(ViewUtils.dpToPx(this.f0, 24));
                if (drawable2.getIntrinsicHeight() <= fCeil) {
                    fCeil = drawable2.getIntrinsicHeight();
                }
            }
            float fExactCenterY = rect.exactCenterY() - (fCeil / 2.0f);
            rectF.top = fExactCenterY;
            rectF.bottom = fExactCenterY + fCeil;
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (m(this.y) || m(this.z) || m(this.C)) {
            return true;
        }
        if (this.A0 && m(this.B0)) {
            return true;
        }
        TextAppearance textAppearance = this.l0.getTextAppearance();
        if (textAppearance == null || textAppearance.getTextColor() == null || !textAppearance.getTextColor().isStateful()) {
            return (this.S && this.T != null && this.R) || n(this.H) || n(this.T) || m(this.x0);
        }
        return true;
    }

    public boolean isCloseIconStateful() {
        return n(this.M);
    }

    public boolean setCloseIconState(@NonNull int[] iArr) {
        if (Arrays.equals(this.z0, iArr)) {
            return false;
        }
        this.z0 = iArr;
        if (r()) {
            return o(getState(), iArr);
        }
        return false;
    }

    @NonNull
    public int[] getCloseIconState() {
        return this.z0;
    }

    @Override // com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public void onTextSizeChange() {
        onSizeChange();
        invalidateSelf();
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(@NonNull int[] iArr) {
        if (this.G0) {
            super.onStateChange(iArr);
        }
        return o(iArr, getCloseIconState());
    }

    public final boolean o(int[] iArr, int[] iArr2) {
        boolean z;
        boolean z2;
        boolean zOnStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList = this.y;
        int iCompositeElevationOverlayIfNeeded = compositeElevationOverlayIfNeeded(colorStateList != null ? colorStateList.getColorForState(iArr, this.m0) : 0);
        boolean state = true;
        if (this.m0 != iCompositeElevationOverlayIfNeeded) {
            this.m0 = iCompositeElevationOverlayIfNeeded;
            zOnStateChange = true;
        }
        ColorStateList colorStateList2 = this.z;
        int iCompositeElevationOverlayIfNeeded2 = compositeElevationOverlayIfNeeded(colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.n0) : 0);
        if (this.n0 != iCompositeElevationOverlayIfNeeded2) {
            this.n0 = iCompositeElevationOverlayIfNeeded2;
            zOnStateChange = true;
        }
        int iLayer = MaterialColors.layer(iCompositeElevationOverlayIfNeeded, iCompositeElevationOverlayIfNeeded2);
        if ((this.o0 != iLayer) | (getFillColor() == null)) {
            this.o0 = iLayer;
            setFillColor(ColorStateList.valueOf(iLayer));
            zOnStateChange = true;
        }
        ColorStateList colorStateList3 = this.C;
        int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.p0) : 0;
        if (this.p0 != colorForState) {
            this.p0 = colorForState;
            zOnStateChange = true;
        }
        int colorForState2 = (this.B0 == null || !RippleUtils.shouldDrawRippleCompat(iArr)) ? 0 : this.B0.getColorForState(iArr, this.q0);
        if (this.q0 != colorForState2) {
            this.q0 = colorForState2;
            if (this.A0) {
                zOnStateChange = true;
            }
        }
        TextDrawableHelper textDrawableHelper = this.l0;
        int colorForState3 = (textDrawableHelper.getTextAppearance() == null || textDrawableHelper.getTextAppearance().getTextColor() == null) ? 0 : textDrawableHelper.getTextAppearance().getTextColor().getColorForState(iArr, this.r0);
        if (this.r0 != colorForState3) {
            this.r0 = colorForState3;
            zOnStateChange = true;
        }
        int[] state2 = getState();
        if (state2 != null) {
            int length = state2.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (state2[i] == 16842912) {
                    z = this.R;
                } else {
                    i++;
                }
            }
        }
        if (this.s0 == z || this.T == null) {
            z2 = false;
        } else {
            float fK = k();
            this.s0 = z;
            if (fK != k()) {
                zOnStateChange = true;
                z2 = true;
            } else {
                zOnStateChange = true;
                z2 = false;
            }
        }
        ColorStateList colorStateList4 = this.x0;
        int colorForState4 = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.t0) : 0;
        if (this.t0 != colorForState4) {
            this.t0 = colorForState4;
            this.w0 = DrawableUtils.updateTintFilter(this, this.x0, this.y0);
        } else {
            state = zOnStateChange;
        }
        if (n(this.H)) {
            state |= this.H.setState(iArr);
        }
        if (n(this.T)) {
            state |= this.T.setState(iArr);
        }
        if (n(this.M)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            state |= this.M.setState(iArr3);
        }
        if (RippleUtils.USE_FRAMEWORK_RIPPLE && n(this.N)) {
            state |= this.N.setState(iArr2);
        }
        if (state) {
            invalidateSelf();
        }
        if (z2) {
            onSizeChange();
        }
        return state;
    }

    public static boolean m(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    public static boolean n(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        boolean zOnLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        if (q()) {
            zOnLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.H, i);
        }
        if (p()) {
            zOnLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.T, i);
        }
        if (r()) {
            zOnLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.M, i);
        }
        if (!zOnLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        boolean zOnLevelChange = super.onLevelChange(i);
        if (q()) {
            zOnLevelChange |= this.H.setLevel(i);
        }
        if (p()) {
            zOnLevelChange |= this.T.setLevel(i);
        }
        if (r()) {
            zOnLevelChange |= this.M.setLevel(i);
        }
        if (zOnLevelChange) {
            invalidateSelf();
        }
        return zOnLevelChange;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (q()) {
            visible |= this.H.setVisible(z, z2);
        }
        if (p()) {
            visible |= this.T.setVisible(z, z2);
        }
        if (r()) {
            visible |= this.M.setVisible(z, z2);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.u0 != i) {
            this.u0 = i;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.u0;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        if (this.v0 != colorFilter) {
            this.v0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public ColorFilter getColorFilter() {
        return this.v0;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        if (this.x0 != colorStateList) {
            this.x0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        if (this.y0 != mode) {
            this.y0 = mode;
            this.w0 = DrawableUtils.updateTintFilter(this, this.x0, mode);
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        Outline outline2;
        if (this.G0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            outline.setRoundRect(bounds, this.B);
            outline2 = outline;
        } else {
            outline2 = outline;
            outline2.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.B);
        }
        outline2.setAlpha(getAlpha() / 255.0f);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public static void s(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public final void i(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        DrawableCompat.setLayoutDirection(drawable, DrawableCompat.getLayoutDirection(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.M) {
            if (drawable.isStateful()) {
                drawable.setState(getCloseIconState());
            }
            DrawableCompat.setTintList(drawable, this.O);
            return;
        }
        Drawable drawable2 = this.H;
        if (drawable == drawable2 && this.K) {
            DrawableCompat.setTintList(drawable2, this.I);
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
    }

    public void setTextSize(@Dimension float f) {
        TextAppearance textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.setTextSize(f);
            this.l0.getTextPaint().setTextSize(f);
            onTextSizeChange();
        }
    }

    public void setTextColor(@ColorInt int i) {
        setTextColor(ColorStateList.valueOf(i));
    }

    public void setTextColor(@Nullable ColorStateList colorStateList) {
        TextAppearance textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.setTextColor(colorStateList);
            invalidateSelf();
        }
    }

    @Nullable
    public ColorStateList getChipBackgroundColor() {
        return this.z;
    }

    public void setChipBackgroundColorResource(@ColorRes int i) {
        setChipBackgroundColor(AppCompatResources.getColorStateList(this.f0, i));
    }

    public void setChipBackgroundColor(@Nullable ColorStateList colorStateList) {
        if (this.z != colorStateList) {
            this.z = colorStateList;
            onStateChange(getState());
        }
    }

    public float getChipMinHeight() {
        return this.A;
    }

    public void setChipMinHeightResource(@DimenRes int i) {
        setChipMinHeight(this.f0.getResources().getDimension(i));
    }

    public void setChipMinHeight(float f) {
        if (this.A != f) {
            this.A = f;
            invalidateSelf();
            onSizeChange();
        }
    }

    public float getChipCornerRadius() {
        return this.G0 ? getTopLeftCornerResolvedSize() : this.B;
    }

    @Deprecated
    public void setChipCornerRadiusResource(@DimenRes int i) {
        setChipCornerRadius(this.f0.getResources().getDimension(i));
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        if (this.B != f) {
            this.B = f;
            setShapeAppearanceModel(getShapeAppearanceModel().withCornerSize(f));
        }
    }

    @Nullable
    public ColorStateList getChipStrokeColor() {
        return this.C;
    }

    public void setChipStrokeColorResource(@ColorRes int i) {
        setChipStrokeColor(AppCompatResources.getColorStateList(this.f0, i));
    }

    public void setChipStrokeColor(@Nullable ColorStateList colorStateList) {
        if (this.C != colorStateList) {
            this.C = colorStateList;
            if (this.G0) {
                setStrokeColor(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public float getChipStrokeWidth() {
        return this.D;
    }

    public void setChipStrokeWidthResource(@DimenRes int i) {
        setChipStrokeWidth(this.f0.getResources().getDimension(i));
    }

    public void setChipStrokeWidth(float f) {
        if (this.D != f) {
            this.D = f;
            this.g0.setStrokeWidth(f);
            if (this.G0) {
                super.setStrokeWidth(f);
            }
            invalidateSelf();
        }
    }

    @Nullable
    public ColorStateList getRippleColor() {
        return this.E;
    }

    public void setRippleColorResource(@ColorRes int i) {
        setRippleColor(AppCompatResources.getColorStateList(this.f0, i));
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.E != colorStateList) {
            this.E = colorStateList;
            this.B0 = this.A0 ? RippleUtils.sanitizeRippleDrawableColor(colorStateList) : null;
            onStateChange(getState());
        }
    }

    @Nullable
    public CharSequence getText() {
        return this.F;
    }

    public void setTextResource(@StringRes int i) {
        setText(this.f0.getResources().getString(i));
    }

    public void setText(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        if (TextUtils.equals(this.F, charSequence)) {
            return;
        }
        this.F = charSequence;
        this.l0.setTextWidthDirty(true);
        invalidateSelf();
        onSizeChange();
    }

    @Nullable
    public TextAppearance getTextAppearance() {
        return this.l0.getTextAppearance();
    }

    public void setTextAppearanceResource(@StyleRes int i) {
        setTextAppearance(new TextAppearance(this.f0, i));
    }

    public void setTextAppearance(@Nullable TextAppearance textAppearance) {
        this.l0.setTextAppearance(textAppearance, this.f0);
    }

    public TextUtils.TruncateAt getEllipsize() {
        return this.D0;
    }

    public void setEllipsize(@Nullable TextUtils.TruncateAt truncateAt) {
        this.D0 = truncateAt;
    }

    public boolean isChipIconVisible() {
        return this.G;
    }

    @Deprecated
    public boolean isChipIconEnabled() {
        return isChipIconVisible();
    }

    public void setChipIconVisible(@BoolRes int i) {
        setChipIconVisible(this.f0.getResources().getBoolean(i));
    }

    public void setChipIconVisible(boolean z) {
        if (this.G != z) {
            boolean zQ = q();
            this.G = z;
            boolean zQ2 = q();
            if (zQ != zQ2) {
                if (zQ2) {
                    i(this.H);
                } else {
                    s(this.H);
                }
                invalidateSelf();
                onSizeChange();
            }
        }
    }

    @Deprecated
    public void setChipIconEnabledResource(@BoolRes int i) {
        setChipIconVisible(i);
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    @Nullable
    public Drawable getChipIcon() {
        Drawable drawable = this.H;
        if (drawable != null) {
            return DrawableCompat.unwrap(drawable);
        }
        return null;
    }

    public void setChipIconResource(@DrawableRes int i) {
        setChipIcon(AppCompatResources.getDrawable(this.f0, i));
    }

    public void setChipIcon(@Nullable Drawable drawable) {
        Drawable chipIcon = getChipIcon();
        if (chipIcon != drawable) {
            float fK = k();
            this.H = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            float fK2 = k();
            s(chipIcon);
            if (q()) {
                i(this.H);
            }
            invalidateSelf();
            if (fK != fK2) {
                onSizeChange();
            }
        }
    }

    @Nullable
    public ColorStateList getChipIconTint() {
        return this.I;
    }

    public void setChipIconTintResource(@ColorRes int i) {
        setChipIconTint(AppCompatResources.getColorStateList(this.f0, i));
    }

    public void setChipIconTint(@Nullable ColorStateList colorStateList) {
        this.K = true;
        if (this.I != colorStateList) {
            this.I = colorStateList;
            if (q()) {
                DrawableCompat.setTintList(this.H, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public float getChipIconSize() {
        return this.J;
    }

    public void setChipIconSizeResource(@DimenRes int i) {
        setChipIconSize(this.f0.getResources().getDimension(i));
    }

    public void setChipIconSize(float f) {
        if (this.J != f) {
            float fK = k();
            this.J = f;
            float fK2 = k();
            invalidateSelf();
            if (fK != fK2) {
                onSizeChange();
            }
        }
    }

    public boolean isCloseIconVisible() {
        return this.L;
    }

    @Deprecated
    public boolean isCloseIconEnabled() {
        return isCloseIconVisible();
    }

    public void setCloseIconVisible(@BoolRes int i) {
        setCloseIconVisible(this.f0.getResources().getBoolean(i));
    }

    public void setCloseIconVisible(boolean z) {
        if (this.L != z) {
            boolean zR = r();
            this.L = z;
            boolean zR2 = r();
            if (zR != zR2) {
                if (zR2) {
                    i(this.M);
                } else {
                    s(this.M);
                }
                invalidateSelf();
                onSizeChange();
            }
        }
    }

    @Deprecated
    public void setCloseIconEnabledResource(@BoolRes int i) {
        setCloseIconVisible(i);
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Nullable
    public Drawable getCloseIcon() {
        Drawable drawable = this.M;
        if (drawable != null) {
            return DrawableCompat.unwrap(drawable);
        }
        return null;
    }

    public void setCloseIconResource(@DrawableRes int i) {
        setCloseIcon(AppCompatResources.getDrawable(this.f0, i));
    }

    public void setCloseIcon(@Nullable Drawable drawable) {
        Drawable closeIcon = getCloseIcon();
        if (closeIcon != drawable) {
            float fL = l();
            this.M = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            if (RippleUtils.USE_FRAMEWORK_RIPPLE) {
                this.N = new RippleDrawable(RippleUtils.sanitizeRippleDrawableColor(getRippleColor()), this.M, I0);
            }
            float fL2 = l();
            s(closeIcon);
            if (r()) {
                i(this.M);
            }
            invalidateSelf();
            if (fL != fL2) {
                onSizeChange();
            }
        }
    }

    @Nullable
    public ColorStateList getCloseIconTint() {
        return this.O;
    }

    public void setCloseIconTintResource(@ColorRes int i) {
        setCloseIconTint(AppCompatResources.getColorStateList(this.f0, i));
    }

    public void setCloseIconTint(@Nullable ColorStateList colorStateList) {
        if (this.O != colorStateList) {
            this.O = colorStateList;
            if (r()) {
                DrawableCompat.setTintList(this.M, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public float getCloseIconSize() {
        return this.P;
    }

    public void setCloseIconSizeResource(@DimenRes int i) {
        setCloseIconSize(this.f0.getResources().getDimension(i));
    }

    public void setCloseIconSize(float f) {
        if (this.P != f) {
            this.P = f;
            invalidateSelf();
            if (r()) {
                onSizeChange();
            }
        }
    }

    public void setCloseIconContentDescription(@Nullable CharSequence charSequence) {
        if (this.Q != charSequence) {
            this.Q = BidiFormatter.getInstance().unicodeWrap(charSequence);
            invalidateSelf();
        }
    }

    @Nullable
    public CharSequence getCloseIconContentDescription() {
        return this.Q;
    }

    public boolean isCheckable() {
        return this.R;
    }

    public void setCheckableResource(@BoolRes int i) {
        setCheckable(this.f0.getResources().getBoolean(i));
    }

    public void setCheckable(boolean z) {
        if (this.R != z) {
            this.R = z;
            float fK = k();
            if (!z && this.s0) {
                this.s0 = false;
            }
            float fK2 = k();
            invalidateSelf();
            if (fK != fK2) {
                onSizeChange();
            }
        }
    }

    public boolean isCheckedIconVisible() {
        return this.S;
    }

    @Deprecated
    public boolean isCheckedIconEnabled() {
        return isCheckedIconVisible();
    }

    public void setCheckedIconVisible(@BoolRes int i) {
        setCheckedIconVisible(this.f0.getResources().getBoolean(i));
    }

    public void setCheckedIconVisible(boolean z) {
        if (this.S != z) {
            boolean zP = p();
            this.S = z;
            boolean zP2 = p();
            if (zP != zP2) {
                if (zP2) {
                    i(this.T);
                } else {
                    s(this.T);
                }
                invalidateSelf();
                onSizeChange();
            }
        }
    }

    @Deprecated
    public void setCheckedIconEnabledResource(@BoolRes int i) {
        setCheckedIconVisible(this.f0.getResources().getBoolean(i));
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    @Nullable
    public Drawable getCheckedIcon() {
        return this.T;
    }

    public void setCheckedIconResource(@DrawableRes int i) {
        setCheckedIcon(AppCompatResources.getDrawable(this.f0, i));
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        if (this.T != drawable) {
            float fK = k();
            this.T = drawable;
            float fK2 = k();
            s(this.T);
            i(this.T);
            invalidateSelf();
            if (fK != fK2) {
                onSizeChange();
            }
        }
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        return this.U;
    }

    public void setCheckedIconTintResource(@ColorRes int i) {
        setCheckedIconTint(AppCompatResources.getColorStateList(this.f0, i));
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        Drawable drawable;
        if (this.U != colorStateList) {
            this.U = colorStateList;
            if (this.S && (drawable = this.T) != null && this.R) {
                DrawableCompat.setTintList(drawable, colorStateList);
            }
            onStateChange(getState());
        }
    }

    @Nullable
    public MotionSpec getShowMotionSpec() {
        return this.V;
    }

    public void setShowMotionSpecResource(@AnimatorRes int i) {
        setShowMotionSpec(MotionSpec.createFromResource(this.f0, i));
    }

    public void setShowMotionSpec(@Nullable MotionSpec motionSpec) {
        this.V = motionSpec;
    }

    @Nullable
    public MotionSpec getHideMotionSpec() {
        return this.W;
    }

    public void setHideMotionSpecResource(@AnimatorRes int i) {
        setHideMotionSpec(MotionSpec.createFromResource(this.f0, i));
    }

    public void setHideMotionSpec(@Nullable MotionSpec motionSpec) {
        this.W = motionSpec;
    }

    public float getChipStartPadding() {
        return this.X;
    }

    public void setChipStartPaddingResource(@DimenRes int i) {
        setChipStartPadding(this.f0.getResources().getDimension(i));
    }

    public void setChipStartPadding(float f) {
        if (this.X != f) {
            this.X = f;
            invalidateSelf();
            onSizeChange();
        }
    }

    public float getIconStartPadding() {
        return this.Y;
    }

    public void setIconStartPaddingResource(@DimenRes int i) {
        setIconStartPadding(this.f0.getResources().getDimension(i));
    }

    public void setIconStartPadding(float f) {
        if (this.Y != f) {
            float fK = k();
            this.Y = f;
            float fK2 = k();
            invalidateSelf();
            if (fK != fK2) {
                onSizeChange();
            }
        }
    }

    public float getIconEndPadding() {
        return this.Z;
    }

    public void setIconEndPaddingResource(@DimenRes int i) {
        setIconEndPadding(this.f0.getResources().getDimension(i));
    }

    public void setIconEndPadding(float f) {
        if (this.Z != f) {
            float fK = k();
            this.Z = f;
            float fK2 = k();
            invalidateSelf();
            if (fK != fK2) {
                onSizeChange();
            }
        }
    }

    public float getTextStartPadding() {
        return this.a0;
    }

    public void setTextStartPaddingResource(@DimenRes int i) {
        setTextStartPadding(this.f0.getResources().getDimension(i));
    }

    public void setTextStartPadding(float f) {
        if (this.a0 != f) {
            this.a0 = f;
            invalidateSelf();
            onSizeChange();
        }
    }

    public float getTextEndPadding() {
        return this.b0;
    }

    public void setTextEndPaddingResource(@DimenRes int i) {
        setTextEndPadding(this.f0.getResources().getDimension(i));
    }

    public void setTextEndPadding(float f) {
        if (this.b0 != f) {
            this.b0 = f;
            invalidateSelf();
            onSizeChange();
        }
    }

    public float getCloseIconStartPadding() {
        return this.c0;
    }

    public void setCloseIconStartPaddingResource(@DimenRes int i) {
        setCloseIconStartPadding(this.f0.getResources().getDimension(i));
    }

    public void setCloseIconStartPadding(float f) {
        if (this.c0 != f) {
            this.c0 = f;
            invalidateSelf();
            if (r()) {
                onSizeChange();
            }
        }
    }

    public float getCloseIconEndPadding() {
        return this.d0;
    }

    public void setCloseIconEndPaddingResource(@DimenRes int i) {
        setCloseIconEndPadding(this.f0.getResources().getDimension(i));
    }

    public void setCloseIconEndPadding(float f) {
        if (this.d0 != f) {
            this.d0 = f;
            invalidateSelf();
            if (r()) {
                onSizeChange();
            }
        }
    }

    public float getChipEndPadding() {
        return this.e0;
    }

    public void setChipEndPaddingResource(@DimenRes int i) {
        setChipEndPadding(this.f0.getResources().getDimension(i));
    }

    public void setChipEndPadding(float f) {
        if (this.e0 != f) {
            this.e0 = f;
            invalidateSelf();
            onSizeChange();
        }
    }

    @Px
    public int getMaxWidth() {
        return this.F0;
    }

    public void setMaxWidth(@Px int i) {
        this.F0 = i;
    }
}
