package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import com.google.android.material.color.MaterialColors;

/* loaded from: classes.dex */
final class j extends h<LinearProgressIndicatorSpec> {
    public float c;
    public float d;
    public float e;

    @Override // com.google.android.material.progressindicator.h
    public int getPreferredWidth() {
        return -1;
    }

    public j(@NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(linearProgressIndicatorSpec);
        this.c = 300.0f;
    }

    @Override // com.google.android.material.progressindicator.h
    public int getPreferredHeight() {
        return ((LinearProgressIndicatorSpec) this.f3141a).trackThickness;
    }

    @Override // com.google.android.material.progressindicator.h
    public void adjustCanvas(@NonNull Canvas canvas, @FloatRange(from = 0.0d, to = 1.0d) float f) {
        Rect clipBounds = canvas.getClipBounds();
        this.c = clipBounds.width();
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f3141a;
        float f2 = ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).trackThickness;
        canvas.translate((clipBounds.width() / 2.0f) + clipBounds.left, Math.max(0.0f, (clipBounds.height() - ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).trackThickness) / 2.0f) + (clipBounds.height() / 2.0f) + clipBounds.top);
        if (((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).f3132a) {
            canvas.scale(-1.0f, 1.0f);
        }
        if ((this.f3142b.isShowing() && ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).showAnimationBehavior == 1) || (this.f3142b.isHiding() && ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).hideAnimationBehavior == 2)) {
            canvas.scale(1.0f, -1.0f);
        }
        if (this.f3142b.isShowing() || this.f3142b.isHiding()) {
            canvas.translate(0.0f, ((f - 1.0f) * ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).trackThickness) / 2.0f);
        }
        float f3 = this.c;
        canvas.clipRect((-f3) / 2.0f, (-f2) / 2.0f, f3 / 2.0f, f2 / 2.0f);
        this.d = ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).trackThickness * f;
        this.e = ((LinearProgressIndicatorSpec) baseProgressIndicatorSpec).trackCornerRadius * f;
    }

    @Override // com.google.android.material.progressindicator.h
    public void fillIndicator(@NonNull Canvas canvas, @NonNull Paint paint, @FloatRange(from = 0.0d, to = 1.0d) float f, @FloatRange(from = 0.0d, to = 1.0d) float f2, @ColorInt int i) {
        if (f == f2) {
            return;
        }
        float f3 = this.c;
        float f4 = this.e;
        float f5 = ((f3 - (f4 * 2.0f)) * f) + ((-f3) / 2.0f);
        float f6 = ((f3 - (f4 * 2.0f)) * f2) + ((-f3) / 2.0f);
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(i);
        float f7 = this.d;
        RectF rectF = new RectF(f5, (-f7) / 2.0f, (f4 * 2.0f) + f6, f7 / 2.0f);
        float f8 = this.e;
        canvas.drawRoundRect(rectF, f8, f8, paint);
    }

    @Override // com.google.android.material.progressindicator.h
    public final void a(Canvas canvas, Paint paint) {
        int iCompositeARGBWithAlpha = MaterialColors.compositeARGBWithAlpha(((LinearProgressIndicatorSpec) this.f3141a).trackColor, this.f3142b.getAlpha());
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(iCompositeARGBWithAlpha);
        float f = this.c;
        float f2 = this.d;
        RectF rectF = new RectF((-f) / 2.0f, (-f2) / 2.0f, f / 2.0f, f2 / 2.0f);
        float f3 = this.e;
        canvas.drawRoundRect(rectF, f3, f3, paint);
    }
}
