package com.google.android.material.shadow;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class ShadowRenderer {
    public static final int[] i = new int[3];
    public static final float[] j = {0.0f, 0.5f, 1.0f};
    public static final int[] k = new int[4];
    public static final float[] l = {0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: a, reason: collision with root package name */
    public final Paint f3169a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f3170b;
    public final Paint c;
    public int d;
    public int e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public final Path f3171g;
    public final Paint h;

    public ShadowRenderer() {
        this(-16777216);
    }

    public ShadowRenderer(int i2) {
        this.f3171g = new Path();
        Paint paint = new Paint();
        this.h = paint;
        this.f3169a = new Paint();
        setShadowColor(i2);
        paint.setColor(0);
        Paint paint2 = new Paint(4);
        this.f3170b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.c = new Paint(paint2);
    }

    public void setShadowColor(int i2) {
        this.d = ColorUtils.setAlphaComponent(i2, 68);
        this.e = ColorUtils.setAlphaComponent(i2, 20);
        this.f = ColorUtils.setAlphaComponent(i2, 0);
        this.f3169a.setColor(this.d);
    }

    public void drawEdgeShadow(@NonNull Canvas canvas, @Nullable Matrix matrix, @NonNull RectF rectF, int i2) {
        rectF.bottom += i2;
        rectF.offset(0.0f, -i2);
        int[] iArr = i;
        iArr[0] = this.f;
        iArr[1] = this.e;
        iArr[2] = this.d;
        Paint paint = this.c;
        float f = rectF.left;
        paint.setShader(new LinearGradient(f, rectF.top, f, rectF.bottom, iArr, j, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.drawRect(rectF, paint);
        canvas.restore();
    }

    public void drawCornerShadow(@NonNull Canvas canvas, @Nullable Matrix matrix, @NonNull RectF rectF, int i2, float f, float f2) {
        boolean z = f2 < 0.0f;
        Path path = this.f3171g;
        int[] iArr = k;
        if (z) {
            iArr[0] = 0;
            iArr[1] = this.f;
            iArr[2] = this.e;
            iArr[3] = this.d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f, f2);
            path.close();
            float f3 = -i2;
            rectF.inset(f3, f3);
            iArr[0] = 0;
            iArr[1] = this.d;
            iArr[2] = this.e;
            iArr[3] = this.f;
        }
        float fWidth = rectF.width() / 2.0f;
        if (fWidth <= 0.0f) {
            return;
        }
        float f4 = 1.0f - (i2 / fWidth);
        float[] fArr = l;
        fArr[1] = f4;
        fArr[2] = ((1.0f - f4) / 2.0f) + f4;
        RadialGradient radialGradient = new RadialGradient(rectF.centerX(), rectF.centerY(), fWidth, iArr, fArr, Shader.TileMode.CLAMP);
        Paint paint = this.f3170b;
        paint.setShader(radialGradient);
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, this.h);
        }
        canvas.drawArc(rectF, f, f2, true, paint);
        canvas.restore();
    }

    @NonNull
    public Paint getShadowPaint() {
        return this.f3169a;
    }
}
