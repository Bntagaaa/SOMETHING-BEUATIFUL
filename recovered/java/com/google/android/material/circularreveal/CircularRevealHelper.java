package com.google.android.material.circularreveal;

import _COROUTINE.a;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.circularreveal.CircularRevealWidget;
import com.google.android.material.math.MathUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class CircularRevealHelper {
    public static final int BITMAP_SHADER = 0;
    public static final int CLIP_PATH = 1;
    public static final int REVEAL_ANIMATOR = 2;
    public static final int STRATEGY = 2;

    /* renamed from: a, reason: collision with root package name */
    public final Delegate f2871a;

    /* renamed from: b, reason: collision with root package name */
    public final View f2872b;
    public final Path c;
    public final Paint d;
    public final Paint e;
    public CircularRevealWidget.RevealInfo f;

    /* renamed from: g, reason: collision with root package name */
    public Drawable f2873g;
    public boolean h;
    public boolean i;

    public interface Delegate {
        void actualDraw(Canvas canvas);

        boolean actualIsOpaque();
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Strategy {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CircularRevealHelper(Delegate delegate) {
        this.f2871a = delegate;
        View view = (View) delegate;
        this.f2872b = view;
        view.setWillNotDraw(false);
        this.c = new Path();
        this.d = new Paint(7);
        Paint paint = new Paint(1);
        this.e = paint;
        paint.setColor(0);
    }

    public void buildCircularRevealCache() {
        if (STRATEGY == 0) {
            this.h = true;
            this.i = false;
            View view = this.f2872b;
            view.buildDrawingCache();
            Bitmap drawingCache = view.getDrawingCache();
            if (drawingCache == null && view.getWidth() != 0 && view.getHeight() != 0) {
                drawingCache = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
                view.draw(new Canvas(drawingCache));
            }
            if (drawingCache != null) {
                Paint paint = this.d;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                paint.setShader(new BitmapShader(drawingCache, tileMode, tileMode));
            }
            this.h = false;
            this.i = true;
        }
    }

    public void destroyCircularRevealCache() {
        if (STRATEGY == 0) {
            this.i = false;
            View view = this.f2872b;
            view.destroyDrawingCache();
            this.d.setShader(null);
            view.invalidate();
        }
    }

    public void setRevealInfo(@Nullable CircularRevealWidget.RevealInfo revealInfo) {
        View view = this.f2872b;
        if (revealInfo == null) {
            this.f = null;
        } else {
            CircularRevealWidget.RevealInfo revealInfo2 = this.f;
            if (revealInfo2 == null) {
                this.f = new CircularRevealWidget.RevealInfo(revealInfo);
            } else {
                revealInfo2.set(revealInfo);
            }
            if (MathUtils.geq(revealInfo.radius, MathUtils.distanceToFurthestCorner(revealInfo.centerX, revealInfo.centerY, 0.0f, 0.0f, view.getWidth(), view.getHeight()), 1.0E-4f)) {
                this.f.radius = Float.MAX_VALUE;
            }
        }
        if (STRATEGY == 1) {
            Path path = this.c;
            path.rewind();
            CircularRevealWidget.RevealInfo revealInfo3 = this.f;
            if (revealInfo3 != null) {
                path.addCircle(revealInfo3.centerX, revealInfo3.centerY, revealInfo3.radius, Path.Direction.CW);
            }
        }
        view.invalidate();
    }

    @Nullable
    public CircularRevealWidget.RevealInfo getRevealInfo() {
        CircularRevealWidget.RevealInfo revealInfo = this.f;
        if (revealInfo == null) {
            return null;
        }
        CircularRevealWidget.RevealInfo revealInfo2 = new CircularRevealWidget.RevealInfo(revealInfo);
        if (revealInfo2.isInvalid()) {
            float f = revealInfo2.centerX;
            float f2 = revealInfo2.centerY;
            View view = this.f2872b;
            revealInfo2.radius = MathUtils.distanceToFurthestCorner(f, f2, 0.0f, 0.0f, view.getWidth(), view.getHeight());
        }
        return revealInfo2;
    }

    public void setCircularRevealScrimColor(@ColorInt int i) {
        this.e.setColor(i);
        this.f2872b.invalidate();
    }

    @ColorInt
    public int getCircularRevealScrimColor() {
        return this.e.getColor();
    }

    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.f2873g;
    }

    public void setCircularRevealOverlayDrawable(@Nullable Drawable drawable) {
        this.f2873g = drawable;
        this.f2872b.invalidate();
    }

    public void draw(@NonNull Canvas canvas) {
        Canvas canvas2;
        Drawable drawable;
        boolean zA = a();
        Paint paint = this.e;
        Delegate delegate = this.f2871a;
        View view = this.f2872b;
        if (zA) {
            int i = STRATEGY;
            if (i == 0) {
                CircularRevealWidget.RevealInfo revealInfo = this.f;
                canvas.drawCircle(revealInfo.centerX, revealInfo.centerY, revealInfo.radius, this.d);
                if (b()) {
                    CircularRevealWidget.RevealInfo revealInfo2 = this.f;
                    canvas.drawCircle(revealInfo2.centerX, revealInfo2.centerY, revealInfo2.radius, paint);
                }
            } else if (i == 1) {
                int iSave = canvas.save();
                canvas.clipPath(this.c);
                delegate.actualDraw(canvas);
                if (b()) {
                    canvas.drawRect(0.0f, 0.0f, view.getWidth(), view.getHeight(), paint);
                }
                canvas.restoreToCount(iSave);
            } else {
                if (i != 2) {
                    throw new IllegalStateException(a.d(i, "Unsupported strategy "));
                }
                delegate.actualDraw(canvas);
                if (b()) {
                    canvas2 = canvas;
                    canvas2.drawRect(0.0f, 0.0f, view.getWidth(), view.getHeight(), paint);
                }
            }
            canvas2 = canvas;
        } else {
            delegate.actualDraw(canvas);
            if (b()) {
                canvas2 = canvas;
                canvas2.drawRect(0.0f, 0.0f, view.getWidth(), view.getHeight(), paint);
            } else {
                canvas2 = canvas;
            }
        }
        if (this.h || (drawable = this.f2873g) == null || this.f == null) {
            return;
        }
        Rect bounds = drawable.getBounds();
        float fWidth = this.f.centerX - (bounds.width() / 2.0f);
        float fHeight = this.f.centerY - (bounds.height() / 2.0f);
        canvas2.translate(fWidth, fHeight);
        this.f2873g.draw(canvas2);
        canvas2.translate(-fWidth, -fHeight);
    }

    public boolean isOpaque() {
        return this.f2871a.actualIsOpaque() && !a();
    }

    public final boolean a() {
        CircularRevealWidget.RevealInfo revealInfo = this.f;
        boolean z = revealInfo == null || revealInfo.isInvalid();
        return STRATEGY == 0 ? !z && this.i : !z;
    }

    public final boolean b() {
        return (this.h || Color.alpha(this.e.getColor()) == 0) ? false : true;
    }
}
