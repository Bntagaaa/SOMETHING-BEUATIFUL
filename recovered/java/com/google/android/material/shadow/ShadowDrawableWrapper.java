package com.google.android.material.shadow;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.appcompat.graphics.drawable.DrawableWrapper;
import androidx.core.content.ContextCompat;
import com.google.android.material.R;

@Deprecated
/* loaded from: classes.dex */
public class ShadowDrawableWrapper extends DrawableWrapper {
    public static final double p = Math.cos(Math.toRadians(45.0d));

    /* renamed from: a, reason: collision with root package name */
    public final Paint f3166a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f3167b;
    public final RectF c;
    public float d;
    public Path e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f3168g;
    public float h;
    public boolean i;
    public final int j;
    public final int k;
    public final int l;
    public boolean m;
    public float n;
    public boolean o;

    public int getOpacity() {
        return -3;
    }

    public ShadowDrawableWrapper(Context context, Drawable drawable, float f, float f2, float f3) {
        super(drawable);
        this.i = true;
        this.m = true;
        this.o = false;
        this.j = ContextCompat.getColor(context, R.color.design_fab_shadow_start_color);
        this.k = ContextCompat.getColor(context, R.color.design_fab_shadow_mid_color);
        this.l = ContextCompat.getColor(context, R.color.design_fab_shadow_end_color);
        Paint paint = new Paint(5);
        this.f3166a = paint;
        paint.setStyle(Paint.Style.FILL);
        this.d = Math.round(f);
        this.c = new RectF();
        Paint paint2 = new Paint(paint);
        this.f3167b = paint2;
        paint2.setAntiAlias(false);
        setShadowSize(f2, f3);
    }

    public void setShadowSize(float f, float f2) {
        if (f >= 0.0f && f2 >= 0.0f) {
            int iRound = Math.round(f);
            if (iRound % 2 == 1) {
                iRound--;
            }
            float f3 = iRound;
            int iRound2 = Math.round(f2);
            if (iRound2 % 2 == 1) {
                iRound2--;
            }
            float f4 = iRound2;
            if (f3 > f4) {
                if (!this.o) {
                    this.o = true;
                }
                f3 = f4;
            }
            if (this.h == f3 && this.f == f4) {
                return;
            }
            this.h = f3;
            this.f = f4;
            this.f3168g = Math.round(f3 * 1.5f);
            this.i = true;
            invalidateSelf();
            return;
        }
        throw new IllegalArgumentException("invalid shadow size");
    }

    public void setAddPaddingForCorners(boolean z) {
        this.m = z;
        invalidateSelf();
    }

    public void setAlpha(int i) {
        super.setAlpha(i);
        this.f3166a.setAlpha(i);
        this.f3167b.setAlpha(i);
    }

    public void onBoundsChange(Rect rect) {
        this.i = true;
    }

    public void setShadowSize(float f) {
        setShadowSize(f, this.f);
    }

    public float getShadowSize() {
        return this.h;
    }

    public boolean getPadding(@NonNull Rect rect) {
        int iCeil = (int) Math.ceil(calculateVerticalPadding(this.f, this.d, this.m));
        int iCeil2 = (int) Math.ceil(calculateHorizontalPadding(this.f, this.d, this.m));
        rect.set(iCeil2, iCeil, iCeil2, iCeil);
        return true;
    }

    public static float calculateVerticalPadding(float f, float f2, boolean z) {
        if (!z) {
            return f * 1.5f;
        }
        return (float) (((1.0d - p) * f2) + (f * 1.5f));
    }

    public static float calculateHorizontalPadding(float f, float f2, boolean z) {
        if (!z) {
            return f;
        }
        return (float) (((1.0d - p) * f2) + f);
    }

    public void setCornerRadius(float f) {
        float fRound = Math.round(f);
        if (this.d == fRound) {
            return;
        }
        this.d = fRound;
        this.i = true;
        invalidateSelf();
    }

    public void draw(@NonNull Canvas canvas) {
        int i;
        float f;
        float f2;
        if (this.i) {
            a(getBounds());
            this.i = false;
        }
        int iSave = canvas.save();
        canvas.rotate(this.n, this.c.centerX(), this.c.centerY());
        float f3 = this.d;
        float f4 = (-f3) - this.f3168g;
        float f5 = f3 * 2.0f;
        boolean z = this.c.width() - f5 > 0.0f;
        boolean z2 = this.c.height() - f5 > 0.0f;
        float f6 = this.h;
        float f7 = f3 / ((f6 - (0.5f * f6)) + f3);
        float f8 = f3 / ((f6 - (0.25f * f6)) + f3);
        float f9 = f3 / ((f6 - (f6 * 1.0f)) + f3);
        int iSave2 = canvas.save();
        RectF rectF = this.c;
        canvas.translate(rectF.left + f3, rectF.top + f3);
        canvas.scale(f7, f8);
        canvas.drawPath(this.e, this.f3166a);
        if (z) {
            canvas.scale(1.0f / f7, 1.0f);
            f2 = f4;
            i = iSave2;
            f = 1.0f;
            canvas.drawRect(0.0f, f2, this.c.width() - f5, -this.d, this.f3167b);
        } else {
            i = iSave2;
            f = 1.0f;
            f2 = f4;
        }
        canvas.restoreToCount(i);
        int iSave3 = canvas.save();
        RectF rectF2 = this.c;
        canvas.translate(rectF2.right - f3, rectF2.bottom - f3);
        canvas.scale(f7, f9);
        canvas.rotate(180.0f);
        canvas.drawPath(this.e, this.f3166a);
        if (z) {
            canvas.scale(f / f7, 1.0f);
            canvas.drawRect(0.0f, f2, this.c.width() - f5, this.f3168g + (-this.d), this.f3167b);
        }
        canvas.restoreToCount(iSave3);
        int iSave4 = canvas.save();
        RectF rectF3 = this.c;
        canvas.translate(rectF3.left + f3, rectF3.bottom - f3);
        canvas.scale(f7, f9);
        canvas.rotate(270.0f);
        canvas.drawPath(this.e, this.f3166a);
        if (z2) {
            canvas.scale(1.0f / f9, 1.0f);
            canvas.drawRect(0.0f, f2, this.c.height() - f5, -this.d, this.f3167b);
        }
        canvas.restoreToCount(iSave4);
        int iSave5 = canvas.save();
        RectF rectF4 = this.c;
        canvas.translate(rectF4.right - f3, rectF4.top + f3);
        canvas.scale(f7, f8);
        canvas.rotate(90.0f);
        canvas.drawPath(this.e, this.f3166a);
        if (z2) {
            canvas.scale(1.0f / f8, 1.0f);
            canvas.drawRect(0.0f, f2, this.c.height() - f5, -this.d, this.f3167b);
        }
        canvas.restoreToCount(iSave5);
        canvas.restoreToCount(iSave);
        super.draw(canvas);
    }

    public final void setRotation(float f) {
        if (this.n != f) {
            this.n = f;
            invalidateSelf();
        }
    }

    public final void a(Rect rect) {
        float f = this.f;
        float f2 = 1.5f * f;
        this.c.set(rect.left + f, rect.top + f2, rect.right - f, rect.bottom - f2);
        Drawable wrappedDrawable = getWrappedDrawable();
        RectF rectF = this.c;
        wrappedDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        float f3 = this.d;
        float f4 = -f3;
        RectF rectF2 = new RectF(f4, f4, f3, f3);
        RectF rectF3 = new RectF(rectF2);
        float f5 = -this.f3168g;
        rectF3.inset(f5, f5);
        Path path = this.e;
        if (path == null) {
            this.e = new Path();
        } else {
            path.reset();
        }
        this.e.setFillType(Path.FillType.EVEN_ODD);
        this.e.moveTo(-this.d, 0.0f);
        this.e.rLineTo(-this.f3168g, 0.0f);
        this.e.arcTo(rectF3, 180.0f, 90.0f, false);
        this.e.arcTo(rectF2, 270.0f, -90.0f, false);
        this.e.close();
        float f6 = -rectF3.top;
        if (f6 > 0.0f) {
            float f7 = this.d / f6;
            this.f3166a.setShader(new RadialGradient(0.0f, 0.0f, f6, new int[]{0, this.j, this.k, this.l}, new float[]{0.0f, f7, ((1.0f - f7) / 2.0f) + f7, 1.0f}, Shader.TileMode.CLAMP));
        }
        this.f3167b.setShader(new LinearGradient(0.0f, rectF2.top, 0.0f, rectF3.top, new int[]{this.j, this.k, this.l}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f3167b.setAntiAlias(false);
    }

    public float getCornerRadius() {
        return this.d;
    }

    public void setMaxShadowSize(float f) {
        setShadowSize(this.h, f);
    }

    public float getMaxShadowSize() {
        return this.f;
    }

    public float getMinWidth() {
        float f = this.f;
        return (this.f * 2.0f) + (Math.max(f, (f / 2.0f) + this.d) * 2.0f);
    }

    public float getMinHeight() {
        float f = this.f;
        return (this.f * 1.5f * 2.0f) + (Math.max(f, ((f * 1.5f) / 2.0f) + this.d) * 2.0f);
    }
}
