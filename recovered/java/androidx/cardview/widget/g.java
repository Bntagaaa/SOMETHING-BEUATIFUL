package androidx.cardview.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.cardview.R;

/* loaded from: classes.dex */
class g extends Drawable {
    public static final double q = Math.cos(Math.toRadians(45.0d));
    public static a r;

    /* renamed from: a, reason: collision with root package name */
    public final int f539a;
    public final Paint c;
    public final Paint d;
    public final RectF e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public Path f541g;
    public float h;
    public float i;
    public float j;
    public ColorStateList k;
    public final int m;
    public final int n;
    public boolean l = true;
    public boolean o = true;
    public boolean p = false;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f540b = new Paint(5);

    public interface a {
        void drawRoundRect(Canvas canvas, RectF rectF, float f, Paint paint);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public g(Resources resources, ColorStateList colorStateList, float f, float f2, float f3) {
        this.m = resources.getColor(R.color.cardview_shadow_start_color);
        this.n = resources.getColor(R.color.cardview_shadow_end_color);
        this.f539a = resources.getDimensionPixelSize(R.dimen.cardview_compat_inset_shadow);
        colorStateList = colorStateList == null ? ColorStateList.valueOf(0) : colorStateList;
        this.k = colorStateList;
        this.f540b.setColor(colorStateList.getColorForState(getState(), this.k.getDefaultColor()));
        Paint paint = new Paint(5);
        this.c = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f = (int) (f + 0.5f);
        this.e = new RectF();
        Paint paint2 = new Paint(paint);
        this.d = paint2;
        paint2.setAntiAlias(false);
        c(f2, f3);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f540b.setAlpha(i);
        this.c.setAlpha(i);
        this.d.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.l = true;
    }

    public final void c(float f, float f2) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Invalid shadow size " + f + ". Must be >= 0");
        }
        if (f2 >= 0.0f) {
            int i = (int) (f + 0.5f);
            if (i % 2 == 1) {
                i--;
            }
            float f3 = i;
            int i2 = (int) (f2 + 0.5f);
            if (i2 % 2 == 1) {
                i2--;
            }
            float f4 = i2;
            if (f3 > f4) {
                if (!this.p) {
                    this.p = true;
                }
                f3 = f4;
            }
            if (this.j == f3 && this.h == f4) {
                return;
            }
            this.j = f3;
            this.h = f4;
            this.i = (int) ((f3 * 1.5f) + this.f539a + 0.5f);
            this.l = true;
            invalidateSelf();
            return;
        }
        throw new IllegalArgumentException("Invalid max shadow size " + f2 + ". Must be >= 0");
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int iCeil = (int) Math.ceil(b(this.h, this.f, this.o));
        int iCeil2 = (int) Math.ceil(a(this.h, this.f, this.o));
        rect.set(iCeil2, iCeil, iCeil2, iCeil);
        return true;
    }

    public static float b(float f, float f2, boolean z) {
        if (!z) {
            return f * 1.5f;
        }
        return (float) (((1.0d - q) * f2) + (f * 1.5f));
    }

    public static float a(float f, float f2, boolean z) {
        if (!z) {
            return f;
        }
        return (float) (((1.0d - q) * f2) + f);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.k;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        Paint paint = this.f540b;
        if (paint.getColor() == colorForState) {
            return false;
        }
        paint.setColor(colorForState);
        this.l = true;
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.k;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f540b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z;
        int i;
        float f;
        boolean z2 = this.l;
        Paint paint = this.d;
        Paint paint2 = this.c;
        RectF rectF = this.e;
        if (z2) {
            Rect bounds = getBounds();
            float f2 = this.h;
            float f3 = 1.5f * f2;
            z = true;
            rectF.set(bounds.left + f2, bounds.top + f3, bounds.right - f2, bounds.bottom - f3);
            float f4 = this.f;
            float f5 = -f4;
            RectF rectF2 = new RectF(f5, f5, f4, f4);
            RectF rectF3 = new RectF(rectF2);
            float f6 = -this.i;
            rectF3.inset(f6, f6);
            Path path = this.f541g;
            if (path == null) {
                this.f541g = new Path();
            } else {
                path.reset();
            }
            this.f541g.setFillType(Path.FillType.EVEN_ODD);
            this.f541g.moveTo(-this.f, 0.0f);
            this.f541g.rLineTo(-this.i, 0.0f);
            this.f541g.arcTo(rectF3, 180.0f, 90.0f, false);
            this.f541g.arcTo(rectF2, 270.0f, -90.0f, false);
            this.f541g.close();
            float f7 = this.f;
            float f8 = f7 / (this.i + f7);
            float f9 = this.f + this.i;
            int i2 = this.m;
            int i3 = this.n;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            paint2.setShader(new RadialGradient(0.0f, 0.0f, f9, new int[]{i2, i2, i3}, new float[]{0.0f, f8, 1.0f}, tileMode));
            float f10 = -this.f;
            float f11 = this.i;
            paint.setShader(new LinearGradient(0.0f, f10 + f11, 0.0f, f10 - f11, new int[]{i2, i2, i3}, new float[]{0.0f, 0.5f, 1.0f}, tileMode));
            paint.setAntiAlias(false);
            this.l = false;
        } else {
            z = true;
        }
        canvas.translate(0.0f, this.j / 2.0f);
        float f12 = this.f;
        float f13 = (-f12) - this.i;
        float f14 = (this.j / 2.0f) + f12 + this.f539a;
        float f15 = f14 * 2.0f;
        boolean z3 = rectF.width() - f15 > 0.0f;
        if (rectF.height() - f15 <= 0.0f) {
            z = false;
        }
        int iSave = canvas.save();
        canvas.translate(rectF.left + f14, rectF.top + f14);
        canvas.drawPath(this.f541g, paint2);
        if (z3) {
            i = iSave;
            f = 2.0f;
            canvas.drawRect(0.0f, f13, rectF.width() - f15, -this.f, paint);
        } else {
            i = iSave;
            f = 2.0f;
        }
        canvas.restoreToCount(i);
        int iSave2 = canvas.save();
        canvas.translate(rectF.right - f14, rectF.bottom - f14);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f541g, paint2);
        if (z3) {
            canvas.drawRect(0.0f, f13, rectF.width() - f15, this.i + (-this.f), paint);
        }
        canvas.restoreToCount(iSave2);
        int iSave3 = canvas.save();
        canvas.translate(rectF.left + f14, rectF.bottom - f14);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f541g, paint2);
        if (z) {
            canvas.drawRect(0.0f, f13, rectF.height() - f15, -this.f, paint);
        }
        canvas.restoreToCount(iSave3);
        int iSave4 = canvas.save();
        canvas.translate(rectF.right - f14, rectF.top + f14);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f541g, paint2);
        if (z) {
            canvas.drawRect(0.0f, f13, rectF.height() - f15, -this.f, paint);
        }
        canvas.restoreToCount(iSave4);
        canvas.translate(0.0f, (-this.j) / f);
        r.drawRoundRect(canvas, rectF, this.f, this.f540b);
    }
}
