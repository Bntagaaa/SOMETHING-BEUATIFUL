package com.google.android.material.floatingactionbutton;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.Dimension;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
class d extends Drawable {

    /* renamed from: b, reason: collision with root package name */
    public final Paint f3027b;
    public float h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public ShapeAppearanceModel o;
    public ColorStateList p;

    /* renamed from: a, reason: collision with root package name */
    public final ShapeAppearancePathProvider f3026a = ShapeAppearancePathProvider.getInstance();
    public final Path c = new Path();
    public final Rect d = new Rect();
    public final RectF e = new RectF();
    public final RectF f = new RectF();

    /* renamed from: g, reason: collision with root package name */
    public final b f3028g = new b();
    public boolean n = true;

    public d(ShapeAppearanceModel shapeAppearanceModel) {
        this.o = shapeAppearanceModel;
        Paint paint = new Paint(1);
        this.f3027b = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    public void setBorderWidth(@Dimension float f) {
        if (this.h != f) {
            this.h = f;
            this.f3027b.setStrokeWidth(f * 1.3333f);
            this.n = true;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f3027b.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        boolean z = this.n;
        Paint paint = this.f3027b;
        Rect rect = this.d;
        if (z) {
            copyBounds(rect);
            float fHeight = this.h / rect.height();
            paint.setShader(new LinearGradient(0.0f, rect.top, 0.0f, rect.bottom, new int[]{ColorUtils.compositeColors(this.i, this.m), ColorUtils.compositeColors(this.j, this.m), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.j, 0), this.m), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.l, 0), this.m), ColorUtils.compositeColors(this.l, this.m), ColorUtils.compositeColors(this.k, this.m)}, new float[]{0.0f, fHeight, 0.5f, 0.5f, 1.0f - fHeight, 1.0f}, Shader.TileMode.CLAMP));
            this.n = false;
        }
        float strokeWidth = paint.getStrokeWidth() / 2.0f;
        copyBounds(rect);
        RectF rectF = this.e;
        rectF.set(rect);
        float fMin = Math.min(this.o.getTopLeftCornerSize().getCornerSize(getBoundsAsRectF()), rectF.width() / 2.0f);
        if (this.o.isRoundRect(getBoundsAsRectF())) {
            rectF.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(rectF, fMin, fMin, paint);
        }
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.o.isRoundRect(getBoundsAsRectF())) {
            outline.setRoundRect(getBounds(), this.o.getTopLeftCornerSize().getCornerSize(getBoundsAsRectF()));
            return;
        }
        Rect rect = this.d;
        copyBounds(rect);
        RectF rectF = this.e;
        rectF.set(rect);
        ShapeAppearanceModel shapeAppearanceModel = this.o;
        Path path = this.c;
        this.f3026a.calculatePath(shapeAppearanceModel, 1.0f, rectF, path);
        if (path.isConvex()) {
            outline.setConvexPath(path);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        if (!this.o.isRoundRect(getBoundsAsRectF())) {
            return true;
        }
        int iRound = Math.round(this.h);
        rect.set(iRound, iRound, iRound, iRound);
        return true;
    }

    @NonNull
    public RectF getBoundsAsRectF() {
        RectF rectF = this.f;
        rectF.set(getBounds());
        return rectF;
    }

    public void setShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        this.o = shapeAppearanceModel;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i) {
        this.f3027b.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.h > 0.0f ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.n = true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.p;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.p;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.m)) != this.m) {
            this.n = true;
            this.m = colorForState;
        }
        if (this.n) {
            invalidateSelf();
        }
        return this.n;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.f3028g;
    }

    public class b extends Drawable.ConstantState {
        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        public b() {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return d.this;
        }
    }
}
