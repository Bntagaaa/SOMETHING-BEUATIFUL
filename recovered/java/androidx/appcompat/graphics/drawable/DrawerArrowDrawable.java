package androidx.appcompat.graphics.drawable;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.core.graphics.drawable.DrawableCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class DrawerArrowDrawable extends Drawable {
    public static final int ARROW_DIRECTION_END = 3;
    public static final int ARROW_DIRECTION_LEFT = 0;
    public static final int ARROW_DIRECTION_RIGHT = 1;
    public static final int ARROW_DIRECTION_START = 2;
    public static final float m = (float) Math.toRadians(45.0d);

    /* renamed from: a, reason: collision with root package name */
    public final Paint f198a;

    /* renamed from: b, reason: collision with root package name */
    public float f199b;
    public float c;
    public float d;
    public float e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final Path f200g;
    public final int h;
    public boolean i;
    public float j;
    public float k;
    public int l;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface ArrowDirection {
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public DrawerArrowDrawable(Context context) {
        Paint paint = new Paint();
        this.f198a = paint;
        this.f200g = new Path();
        this.i = false;
        this.l = 2;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.MITER);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, R.styleable.DrawerArrowToggle, R.attr.drawerArrowStyle, R.style.Base_Widget_AppCompat_DrawerArrowToggle);
        setColor(typedArrayObtainStyledAttributes.getColor(R.styleable.DrawerArrowToggle_color, 0));
        setBarThickness(typedArrayObtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_thickness, 0.0f));
        setSpinEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.DrawerArrowToggle_spinBars, true));
        setGapSize(Math.round(typedArrayObtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_gapBetweenBars, 0.0f)));
        this.h = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DrawerArrowToggle_drawableSize, 0);
        this.c = Math.round(typedArrayObtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_barLength, 0.0f));
        this.f199b = Math.round(typedArrayObtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_arrowHeadLength, 0.0f));
        this.d = typedArrayObtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_arrowShaftLength, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setArrowHeadLength(float f) {
        if (this.f199b != f) {
            this.f199b = f;
            invalidateSelf();
        }
    }

    public float getArrowHeadLength() {
        return this.f199b;
    }

    public void setArrowShaftLength(float f) {
        if (this.d != f) {
            this.d = f;
            invalidateSelf();
        }
    }

    public float getArrowShaftLength() {
        return this.d;
    }

    public float getBarLength() {
        return this.c;
    }

    public void setBarLength(float f) {
        if (this.c != f) {
            this.c = f;
            invalidateSelf();
        }
    }

    public void setColor(@ColorInt int i) {
        Paint paint = this.f198a;
        if (i != paint.getColor()) {
            paint.setColor(i);
            invalidateSelf();
        }
    }

    @ColorInt
    public int getColor() {
        return this.f198a.getColor();
    }

    public void setBarThickness(float f) {
        Paint paint = this.f198a;
        if (paint.getStrokeWidth() != f) {
            paint.setStrokeWidth(f);
            this.k = (float) (Math.cos(m) * (f / 2.0f));
            invalidateSelf();
        }
    }

    public float getBarThickness() {
        return this.f198a.getStrokeWidth();
    }

    public float getGapSize() {
        return this.e;
    }

    public void setGapSize(float f) {
        if (f != this.e) {
            this.e = f;
            invalidateSelf();
        }
    }

    public void setDirection(int i) {
        if (i != this.l) {
            this.l = i;
            invalidateSelf();
        }
    }

    public boolean isSpinEnabled() {
        return this.f;
    }

    public void setSpinEnabled(boolean z) {
        if (this.f != z) {
            this.f = z;
            invalidateSelf();
        }
    }

    public int getDirection() {
        return this.l;
    }

    public void setVerticalMirror(boolean z) {
        if (this.i != z) {
            this.i = z;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int i = this.l;
        boolean z = false;
        if (i != 0 && (i == 1 || (i == 3 ? DrawableCompat.getLayoutDirection(this) == 0 : DrawableCompat.getLayoutDirection(this) == 1))) {
            z = true;
        }
        float f = this.f199b;
        float fA = a(this.c, (float) Math.sqrt(f * f * 2.0f), this.j);
        float fA2 = a(this.c, this.d, this.j);
        float fRound = Math.round(a(0.0f, this.k, this.j));
        float fA3 = a(0.0f, m, this.j);
        float fA4 = a(z ? 0.0f : -180.0f, z ? 180.0f : 0.0f, this.j);
        double d = fA;
        double d2 = fA3;
        boolean z2 = z;
        float fRound2 = Math.round(Math.cos(d2) * d);
        float fRound3 = Math.round(Math.sin(d2) * d);
        Path path = this.f200g;
        path.rewind();
        float f2 = this.e;
        Paint paint = this.f198a;
        float fA5 = a(paint.getStrokeWidth() + f2, -this.k, this.j);
        float f3 = (-fA2) / 2.0f;
        path.moveTo(f3 + fRound, 0.0f);
        path.rLineTo(fA2 - (fRound * 2.0f), 0.0f);
        path.moveTo(f3, fA5);
        path.rLineTo(fRound2, fRound3);
        path.moveTo(f3, -fA5);
        path.rLineTo(fRound2, -fRound3);
        path.close();
        canvas.save();
        float strokeWidth = paint.getStrokeWidth();
        float fHeight = bounds.height() - (3.0f * strokeWidth);
        canvas.translate(bounds.centerX(), (strokeWidth * 1.5f) + this.e + ((((int) (fHeight - (r6 * 2.0f))) / 4) * 2));
        if (this.f) {
            canvas.rotate(fA4 * (this.i ^ z2 ? -1 : 1));
        } else if (z2) {
            canvas.rotate(180.0f);
        }
        canvas.drawPath(path, paint);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Paint paint = this.f198a;
        if (i != paint.getAlpha()) {
            paint.setAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f198a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.h;
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getProgress() {
        return this.j;
    }

    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        if (this.j != f) {
            this.j = f;
            invalidateSelf();
        }
    }

    public final Paint getPaint() {
        return this.f198a;
    }

    public static float a(float f, float f2, float f3) {
        return _COROUTINE.a.a(f2, f, f3, f);
    }
}
