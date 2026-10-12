package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import com.google.android.material.color.MaterialColors;

/* loaded from: classes.dex */
final class a extends h<CircularProgressIndicatorSpec> {
    public int c;
    public float d;
    public float e;
    public float f;

    public a(@NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(circularProgressIndicatorSpec);
        this.c = 1;
    }

    @Override // com.google.android.material.progressindicator.h
    public void adjustCanvas(@NonNull Canvas canvas, @FloatRange(from = 0.0d, to = 1.0d) float f) {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f3141a;
        float f2 = (((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).indicatorSize / 2.0f) + ((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).indicatorInset;
        canvas.translate(f2, f2);
        canvas.rotate(-90.0f);
        float f3 = -f2;
        canvas.clipRect(f3, f3, f2, f2);
        this.c = ((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).indicatorDirection == 0 ? 1 : -1;
        this.d = ((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).trackThickness * f;
        this.e = ((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).trackCornerRadius * f;
        this.f = (((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).indicatorSize - ((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).trackThickness) / 2.0f;
        if ((this.f3142b.isShowing() && ((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).showAnimationBehavior == 2) || (this.f3142b.isHiding() && ((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).hideAnimationBehavior == 1)) {
            this.f = (((1.0f - f) * ((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).trackThickness) / 2.0f) + this.f;
        } else if ((this.f3142b.isShowing() && ((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).showAnimationBehavior == 1) || (this.f3142b.isHiding() && ((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).hideAnimationBehavior == 2)) {
            this.f -= ((1.0f - f) * ((CircularProgressIndicatorSpec) baseProgressIndicatorSpec).trackThickness) / 2.0f;
        }
    }

    @Override // com.google.android.material.progressindicator.h
    public final void fillIndicator(Canvas canvas, Paint paint, float f, float f2, int i) {
        if (f == f2) {
            return;
        }
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        paint.setColor(i);
        paint.setStrokeWidth(this.d);
        float f3 = this.c;
        float f4 = f * 360.0f * f3;
        float f5 = (f2 >= f ? f2 - f : (1.0f + f2) - f) * 360.0f * f3;
        float f6 = this.f;
        float f7 = -f6;
        canvas.drawArc(new RectF(f7, f7, f6, f6), f4, f5, false, paint);
        if (this.e <= 0.0f || Math.abs(f5) >= 360.0f) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        b(canvas, paint, this.d, this.e, f4);
        b(canvas, paint, this.d, this.e, f4 + f5);
    }

    @Override // com.google.android.material.progressindicator.h
    public final void a(Canvas canvas, Paint paint) {
        int iCompositeARGBWithAlpha = MaterialColors.compositeARGBWithAlpha(((CircularProgressIndicatorSpec) this.f3141a).trackColor, this.f3142b.getAlpha());
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        paint.setColor(iCompositeARGBWithAlpha);
        paint.setStrokeWidth(this.d);
        float f = this.f;
        float f2 = -f;
        canvas.drawArc(new RectF(f2, f2, f, f), 0.0f, 360.0f, false, paint);
    }

    @Override // com.google.android.material.progressindicator.h
    public int getPreferredHeight() {
        CircularProgressIndicatorSpec circularProgressIndicatorSpec = (CircularProgressIndicatorSpec) this.f3141a;
        return (circularProgressIndicatorSpec.indicatorInset * 2) + circularProgressIndicatorSpec.indicatorSize;
    }

    @Override // com.google.android.material.progressindicator.h
    public int getPreferredWidth() {
        CircularProgressIndicatorSpec circularProgressIndicatorSpec = (CircularProgressIndicatorSpec) this.f3141a;
        return (circularProgressIndicatorSpec.indicatorInset * 2) + circularProgressIndicatorSpec.indicatorSize;
    }

    public final void b(Canvas canvas, Paint paint, float f, float f2, float f3) {
        canvas.save();
        canvas.rotate(f3);
        float f4 = this.f;
        float f5 = f / 2.0f;
        canvas.drawRoundRect(new RectF(f4 - f5, f2, f4 + f5, -f2), f2, f2, paint);
        canvas.restore();
    }
}
