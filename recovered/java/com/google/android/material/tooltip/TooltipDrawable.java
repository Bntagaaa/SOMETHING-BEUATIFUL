package com.google.android.material.tooltip;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.shape.MarkerEdgeTreatment;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.OffsetEdgeTreatment;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class TooltipDrawable extends MaterialShapeDrawable implements TextDrawableHelper.TextDrawableDelegate {
    public static final int O = R.style.Widget_MaterialComponents_Tooltip;
    public static final int P = R.attr.tooltipStyle;
    public final Paint.FontMetrics A;
    public final TextDrawableHelper B;
    public final View.OnLayoutChangeListener C;
    public final Rect D;
    public int E;
    public int F;
    public int G;
    public int H;
    public int I;
    public int J;
    public float K;
    public float L;
    public float M;
    public float N;
    public CharSequence y;
    public final Context z;

    public class a implements View.OnLayoutChangeListener {
        public a() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            int i9 = TooltipDrawable.O;
            TooltipDrawable tooltipDrawable = TooltipDrawable.this;
            tooltipDrawable.getClass();
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            tooltipDrawable.J = iArr[0];
            view.getWindowVisibleDisplayFrame(tooltipDrawable.D);
        }
    }

    @NonNull
    public static TooltipDrawable createFromAttributes(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        TooltipDrawable tooltipDrawable = new TooltipDrawable(context, attributeSet, i, i2);
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(tooltipDrawable.z, attributeSet, R.styleable.Tooltip, i, i2, new int[0]);
        Context context2 = tooltipDrawable.z;
        tooltipDrawable.I = context2.getResources().getDimensionPixelSize(R.dimen.mtrl_tooltip_arrowSize);
        tooltipDrawable.setShapeAppearanceModel(tooltipDrawable.getShapeAppearanceModel().toBuilder().setBottomEdge(tooltipDrawable.j()).build());
        tooltipDrawable.setText(typedArrayObtainStyledAttributes.getText(R.styleable.Tooltip_android_text));
        TextAppearance textAppearance = MaterialResources.getTextAppearance(context2, typedArrayObtainStyledAttributes, R.styleable.Tooltip_android_textAppearance);
        if (textAppearance != null) {
            int i3 = R.styleable.Tooltip_android_textColor;
            if (typedArrayObtainStyledAttributes.hasValue(i3)) {
                textAppearance.setTextColor(MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, i3));
            }
        }
        tooltipDrawable.setTextAppearance(textAppearance);
        tooltipDrawable.setFillColor(ColorStateList.valueOf(typedArrayObtainStyledAttributes.getColor(R.styleable.Tooltip_backgroundTint, MaterialColors.layer(ColorUtils.setAlphaComponent(MaterialColors.getColor(context2, android.R.attr.colorBackground, TooltipDrawable.class.getCanonicalName()), 229), ColorUtils.setAlphaComponent(MaterialColors.getColor(context2, R.attr.colorOnBackground, TooltipDrawable.class.getCanonicalName()), 153)))));
        tooltipDrawable.setStrokeColor(ColorStateList.valueOf(MaterialColors.getColor(context2, R.attr.colorSurface, TooltipDrawable.class.getCanonicalName())));
        tooltipDrawable.E = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Tooltip_android_padding, 0);
        tooltipDrawable.F = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Tooltip_android_minWidth, 0);
        tooltipDrawable.G = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Tooltip_android_minHeight, 0);
        tooltipDrawable.H = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Tooltip_android_layout_margin, 0);
        typedArrayObtainStyledAttributes.recycle();
        return tooltipDrawable;
    }

    @NonNull
    public static TooltipDrawable createFromAttributes(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        return createFromAttributes(context, attributeSet, P, O);
    }

    @NonNull
    public static TooltipDrawable create(@NonNull Context context) {
        return createFromAttributes(context, null, P, O);
    }

    public TooltipDrawable(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.A = new Paint.FontMetrics();
        TextDrawableHelper textDrawableHelper = new TextDrawableHelper(this);
        this.B = textDrawableHelper;
        this.C = new a();
        this.D = new Rect();
        this.K = 1.0f;
        this.L = 1.0f;
        this.M = 0.5f;
        this.N = 1.0f;
        this.z = context;
        textDrawableHelper.getTextPaint().density = context.getResources().getDisplayMetrics().density;
        textDrawableHelper.getTextPaint().setTextAlign(Paint.Align.CENTER);
    }

    @Nullable
    public CharSequence getText() {
        return this.y;
    }

    public void setTextResource(@StringRes int i) {
        setText(this.z.getResources().getString(i));
    }

    public void setText(@Nullable CharSequence charSequence) {
        if (TextUtils.equals(this.y, charSequence)) {
            return;
        }
        this.y = charSequence;
        this.B.setTextWidthDirty(true);
        invalidateSelf();
    }

    @Nullable
    public TextAppearance getTextAppearance() {
        return this.B.getTextAppearance();
    }

    public void setTextAppearanceResource(@StyleRes int i) {
        setTextAppearance(new TextAppearance(this.z, i));
    }

    public void setTextAppearance(@Nullable TextAppearance textAppearance) {
        this.B.setTextAppearance(textAppearance, this.z);
    }

    public int getMinWidth() {
        return this.F;
    }

    public void setMinWidth(@Px int i) {
        this.F = i;
        invalidateSelf();
    }

    public int getMinHeight() {
        return this.G;
    }

    public void setMinHeight(@Px int i) {
        this.G = i;
        invalidateSelf();
    }

    public int getTextPadding() {
        return this.E;
    }

    public void setTextPadding(@Px int i) {
        this.E = i;
        invalidateSelf();
    }

    public int getLayoutMargin() {
        return this.H;
    }

    public void setLayoutMargin(@Px int i) {
        this.H = i;
        invalidateSelf();
    }

    public void setRevealFraction(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.M = 1.2f;
        this.K = f;
        this.L = f;
        this.N = AnimationUtils.lerp(0.0f, 1.0f, 0.19f, 1.0f, f);
        invalidateSelf();
    }

    public void detachView(@Nullable View view) {
        if (view == null) {
            return;
        }
        view.removeOnLayoutChangeListener(this.C);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        float f = this.E * 2;
        CharSequence charSequence = this.y;
        return (int) Math.max(f + (charSequence == null ? 0.0f : this.B.getTextWidth(charSequence.toString())), this.F);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) Math.max(this.B.getTextPaint().getTextSize(), this.G);
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Canvas canvas2;
        canvas.save();
        float fI = i();
        float f = (float) (-((Math.sqrt(2.0d) * this.I) - this.I));
        canvas.scale(this.K, this.L, (getBounds().width() * 0.5f) + getBounds().left, (getBounds().height() * this.M) + getBounds().top);
        canvas.translate(fI, f);
        super.draw(canvas);
        if (this.y == null) {
            canvas2 = canvas;
        } else {
            float fCenterY = getBounds().centerY();
            TextDrawableHelper textDrawableHelper = this.B;
            TextPaint textPaint = textDrawableHelper.getTextPaint();
            Paint.FontMetrics fontMetrics = this.A;
            textPaint.getFontMetrics(fontMetrics);
            int i = (int) (fCenterY - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f));
            if (textDrawableHelper.getTextAppearance() != null) {
                textDrawableHelper.getTextPaint().drawableState = getState();
                textDrawableHelper.updateTextPaintDrawState(this.z);
                textDrawableHelper.getTextPaint().setAlpha((int) (this.N * 255.0f));
            }
            CharSequence charSequence = this.y;
            canvas2 = canvas;
            canvas2.drawText(charSequence, 0, charSequence.length(), r0.centerX(), i, textDrawableHelper.getTextPaint());
        }
        canvas2.restore();
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        setShapeAppearanceModel(getShapeAppearanceModel().toBuilder().setBottomEdge(j()).build());
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public void onTextSizeChange() {
        invalidateSelf();
    }

    public void setRelativeToView(@Nullable View view) {
        if (view == null) {
            return;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        this.J = iArr[0];
        view.getWindowVisibleDisplayFrame(this.D);
        view.addOnLayoutChangeListener(this.C);
    }

    public final float i() {
        int i;
        Rect rect = this.D;
        if (((rect.right - getBounds().right) - this.J) - this.H < 0) {
            i = ((rect.right - getBounds().right) - this.J) - this.H;
        } else {
            if (((rect.left - getBounds().left) - this.J) + this.H <= 0) {
                return 0.0f;
            }
            i = ((rect.left - getBounds().left) - this.J) + this.H;
        }
        return i;
    }

    public final OffsetEdgeTreatment j() {
        float f = -i();
        float fWidth = ((float) (getBounds().width() - (Math.sqrt(2.0d) * this.I))) / 2.0f;
        return new OffsetEdgeTreatment(new MarkerEdgeTreatment(this.I), Math.min(Math.max(f, -fWidth), fWidth));
    }
}
