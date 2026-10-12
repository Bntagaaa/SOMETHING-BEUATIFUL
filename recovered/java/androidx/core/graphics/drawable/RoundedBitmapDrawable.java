package androidx.core.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.appinventor.components.common.ComponentConstants;

/* loaded from: classes.dex */
public abstract class RoundedBitmapDrawable extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public final Bitmap f1048a;

    /* renamed from: b, reason: collision with root package name */
    public int f1049b;
    public final BitmapShader e;

    /* renamed from: g, reason: collision with root package name */
    public float f1050g;
    public boolean k;
    public int l;
    public int m;
    public int c = 119;
    public final Paint d = new Paint(3);
    public final Matrix f = new Matrix();
    public final Rect h = new Rect();
    public final RectF i = new RectF();
    public boolean j = true;

    @NonNull
    public final Paint getPaint() {
        return this.d;
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.f1048a;
    }

    public void setTargetDensity(@NonNull Canvas canvas) {
        setTargetDensity(canvas.getDensity());
    }

    public void setTargetDensity(@NonNull DisplayMetrics displayMetrics) {
        setTargetDensity(displayMetrics.densityDpi);
    }

    public void setTargetDensity(int i) {
        if (this.f1049b != i) {
            if (i == 0) {
                i = ComponentConstants.TEXTBOX_PREFERRED_WIDTH;
            }
            this.f1049b = i;
            Bitmap bitmap = this.f1048a;
            if (bitmap != null) {
                this.l = bitmap.getScaledWidth(i);
                this.m = bitmap.getScaledHeight(this.f1049b);
            }
            invalidateSelf();
        }
    }

    public int getGravity() {
        return this.c;
    }

    public void setGravity(int i) {
        if (this.c != i) {
            this.c = i;
            this.j = true;
            invalidateSelf();
        }
    }

    public void setMipMap(boolean z) {
        throw new UnsupportedOperationException();
    }

    public boolean hasMipMap() {
        throw new UnsupportedOperationException();
    }

    public void setAntiAlias(boolean z) {
        this.d.setAntiAlias(z);
        invalidateSelf();
    }

    public boolean hasAntiAlias() {
        return this.d.isAntiAlias();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.d.setFilterBitmap(z);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.d.setDither(z);
        invalidateSelf();
    }

    public void a(int i, int i2, int i3, Rect rect, Rect rect2) {
        throw new UnsupportedOperationException();
    }

    public final void b() {
        if (this.j) {
            boolean z = this.k;
            Rect rect = this.h;
            if (z) {
                int iMin = Math.min(this.l, this.m);
                a(this.c, iMin, iMin, getBounds(), this.h);
                int iMin2 = Math.min(rect.width(), rect.height());
                rect.inset(Math.max(0, (rect.width() - iMin2) / 2), Math.max(0, (rect.height() - iMin2) / 2));
                this.f1050g = iMin2 * 0.5f;
            } else {
                a(this.c, this.l, this.m, getBounds(), this.h);
            }
            RectF rectF = this.i;
            rectF.set(rect);
            BitmapShader bitmapShader = this.e;
            if (bitmapShader != null) {
                Matrix matrix = this.f;
                matrix.setTranslate(rectF.left, rectF.top);
                float fWidth = rectF.width();
                Bitmap bitmap = this.f1048a;
                matrix.preScale(fWidth / bitmap.getWidth(), rectF.height() / bitmap.getHeight());
                bitmapShader.setLocalMatrix(matrix);
                this.d.setShader(bitmapShader);
            }
            this.j = false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Bitmap bitmap = this.f1048a;
        if (bitmap == null) {
            return;
        }
        b();
        Paint paint = this.d;
        if (paint.getShader() == null) {
            canvas.drawBitmap(bitmap, (Rect) null, this.h, paint);
            return;
        }
        RectF rectF = this.i;
        float f = this.f1050g;
        canvas.drawRoundRect(rectF, f, f, paint);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Paint paint = this.d;
        if (i != paint.getAlpha()) {
            paint.setAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.d.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.d.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.d.getColorFilter();
    }

    public void setCircular(boolean z) {
        this.k = z;
        this.j = true;
        if (!z) {
            setCornerRadius(0.0f);
            return;
        }
        this.f1050g = Math.min(this.m, this.l) / 2;
        this.d.setShader(this.e);
        invalidateSelf();
    }

    public boolean isCircular() {
        return this.k;
    }

    public void setCornerRadius(float f) {
        if (this.f1050g == f) {
            return;
        }
        this.k = false;
        boolean z = f > 0.05f;
        Paint paint = this.d;
        if (z) {
            paint.setShader(this.e);
        } else {
            paint.setShader(null);
        }
        this.f1050g = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(@NonNull Rect rect) {
        super.onBoundsChange(rect);
        if (this.k) {
            this.f1050g = Math.min(this.m, this.l) / 2;
        }
        this.j = true;
    }

    public float getCornerRadius() {
        return this.f1050g;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.l;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.m;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Bitmap bitmap;
        return (this.c != 119 || this.k || (bitmap = this.f1048a) == null || bitmap.hasAlpha() || this.d.getAlpha() < 255 || this.f1050g > 0.05f) ? -3 : -1;
    }

    public RoundedBitmapDrawable(Resources resources, Bitmap bitmap) {
        this.f1049b = ComponentConstants.TEXTBOX_PREFERRED_WIDTH;
        if (resources != null) {
            this.f1049b = resources.getDisplayMetrics().densityDpi;
        }
        this.f1048a = bitmap;
        if (bitmap != null) {
            this.l = bitmap.getScaledWidth(this.f1049b);
            this.m = bitmap.getScaledHeight(this.f1049b);
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.e = new BitmapShader(bitmap, tileMode, tileMode);
            return;
        }
        this.m = -1;
        this.l = -1;
        this.e = null;
    }
}
