package com.google.android.material.shape;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.util.ObjectsCompat;
import com.google.android.material.R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.shadow.ShadowRenderer;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import com.google.android.material.shape.ShapePath;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.BitSet;

/* loaded from: classes.dex */
public class MaterialShapeDrawable extends Drawable implements TintAwareDrawable, Shapeable {
    public static final int SHADOW_COMPAT_MODE_ALWAYS = 2;
    public static final int SHADOW_COMPAT_MODE_DEFAULT = 0;
    public static final int SHADOW_COMPAT_MODE_NEVER = 1;
    public static final Paint x;

    /* renamed from: a, reason: collision with root package name */
    public a f3180a;

    /* renamed from: b, reason: collision with root package name */
    public final ShapePath.c[] f3181b;
    public final ShapePath.c[] c;
    public final BitSet d;
    public boolean e;
    public final Matrix f;

    /* renamed from: g, reason: collision with root package name */
    public final Path f3182g;
    public final Path h;
    public final RectF i;
    public final RectF j;
    public final Region k;
    public final Region l;
    public ShapeAppearanceModel m;
    public final Paint n;
    public final Paint o;
    public final ShadowRenderer p;
    public final ShapeAppearancePathProvider.PathListener q;
    public final ShapeAppearancePathProvider r;
    public PorterDuffColorFilter s;
    public PorterDuffColorFilter t;
    public int u;
    public final RectF v;
    public boolean w;

    @Retention(RetentionPolicy.SOURCE)
    public @interface CompatibilityShadowMode {
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    static {
        Paint paint = new Paint(1);
        x = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    @NonNull
    public static MaterialShapeDrawable createWithElevationOverlay(Context context) {
        return createWithElevationOverlay(context, 0.0f);
    }

    @NonNull
    public static MaterialShapeDrawable createWithElevationOverlay(Context context, float f) {
        int color = MaterialColors.getColor(context, R.attr.colorSurface, "MaterialShapeDrawable");
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        materialShapeDrawable.initializeElevationOverlay(context);
        materialShapeDrawable.setFillColor(ColorStateList.valueOf(color));
        materialShapeDrawable.setElevation(f);
        return materialShapeDrawable;
    }

    public MaterialShapeDrawable() {
        this(new ShapeAppearanceModel());
    }

    public MaterialShapeDrawable(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        this(ShapeAppearanceModel.builder(context, attributeSet, i, i2).build());
    }

    @Deprecated
    public MaterialShapeDrawable(@NonNull ShapePathModel shapePathModel) {
        this((ShapeAppearanceModel) shapePathModel);
    }

    public MaterialShapeDrawable(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this(new a(shapeAppearanceModel, null));
    }

    public MaterialShapeDrawable(a aVar) {
        ShapeAppearancePathProvider shapeAppearancePathProvider;
        this.f3181b = new ShapePath.c[4];
        this.c = new ShapePath.c[4];
        this.d = new BitSet(8);
        this.f = new Matrix();
        this.f3182g = new Path();
        this.h = new Path();
        this.i = new RectF();
        this.j = new RectF();
        this.k = new Region();
        this.l = new Region();
        Paint paint = new Paint(1);
        this.n = paint;
        Paint paint2 = new Paint(1);
        this.o = paint2;
        this.p = new ShadowRenderer();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            shapeAppearancePathProvider = ShapeAppearancePathProvider.getInstance();
        } else {
            shapeAppearancePathProvider = new ShapeAppearancePathProvider();
        }
        this.r = shapeAppearancePathProvider;
        this.v = new RectF();
        this.w = true;
        this.f3180a = aVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        g();
        f(getState());
        this.q = new com.google.android.material.shape.a(this);
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.f3180a;
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        this.f3180a = new a(this.f3180a);
        return this;
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f3180a.f3183a = shapeAppearanceModel;
        invalidateSelf();
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.f3180a.f3183a;
    }

    @Deprecated
    public void setShapedViewModel(@NonNull ShapePathModel shapePathModel) {
        setShapeAppearanceModel(shapePathModel);
    }

    @Nullable
    @Deprecated
    public ShapePathModel getShapedViewModel() {
        ShapeAppearanceModel shapeAppearanceModel = getShapeAppearanceModel();
        if (shapeAppearanceModel instanceof ShapePathModel) {
            return (ShapePathModel) shapeAppearanceModel;
        }
        return null;
    }

    public void setFillColor(@Nullable ColorStateList colorStateList) {
        a aVar = this.f3180a;
        if (aVar.c != colorStateList) {
            aVar.c = colorStateList;
            onStateChange(getState());
        }
    }

    @Nullable
    public ColorStateList getFillColor() {
        return this.f3180a.c;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setEdgeIntersectionCheckEnable(boolean z) {
        this.r.l = z;
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        a aVar = this.f3180a;
        if (aVar.d != colorStateList) {
            aVar.d = colorStateList;
            onStateChange(getState());
        }
    }

    @Nullable
    public ColorStateList getStrokeColor() {
        return this.f3180a.d;
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@Nullable PorterDuff.Mode mode) {
        a aVar = this.f3180a;
        if (aVar.f3185g != mode) {
            aVar.f3185g = mode;
            g();
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        this.f3180a.f = colorStateList;
        g();
        super.invalidateSelf();
    }

    @Nullable
    public ColorStateList getTintList() {
        return this.f3180a.f;
    }

    @Nullable
    public ColorStateList getStrokeTintList() {
        return this.f3180a.e;
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(@ColorInt int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    public void setStrokeTint(ColorStateList colorStateList) {
        this.f3180a.e = colorStateList;
        g();
        super.invalidateSelf();
    }

    public void setStrokeTint(@ColorInt int i) {
        setStrokeTint(ColorStateList.valueOf(i));
    }

    public void setStroke(float f, @ColorInt int i) {
        setStrokeWidth(f);
        setStrokeColor(ColorStateList.valueOf(i));
    }

    public void setStroke(float f, @Nullable ColorStateList colorStateList) {
        setStrokeWidth(f);
        setStrokeColor(colorStateList);
    }

    public float getStrokeWidth() {
        return this.f3180a.k;
    }

    public void setStrokeWidth(float f) {
        this.f3180a.k = f;
        invalidateSelf();
    }

    @ColorInt
    public int getResolvedTintColor() {
        return this.u;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f3180a.l;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i) {
        a aVar = this.f3180a;
        if (aVar.l != i) {
            aVar.l = i;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f3180a.getClass();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        Rect bounds = getBounds();
        Region region = this.k;
        region.set(bounds);
        RectF boundsAsRectF = getBoundsAsRectF();
        Path path = this.f3182g;
        a(boundsAsRectF, path);
        Region region2 = this.l;
        region2.setPath(path, region);
        region.op(region2, Region.Op.DIFFERENCE);
        return region;
    }

    @NonNull
    public RectF getBoundsAsRectF() {
        RectF rectF = this.i;
        rectF.set(getBounds());
        return rectF;
    }

    public void setCornerSize(float f) {
        setShapeAppearanceModel(this.f3180a.f3183a.withCornerSize(f));
    }

    public void setCornerSize(@NonNull CornerSize cornerSize) {
        setShapeAppearanceModel(this.f3180a.f3183a.withCornerSize(cornerSize));
    }

    public boolean isPointInTransparentRegion(int i, int i2) {
        return getTransparentRegion().contains(i, i2);
    }

    public int getShadowCompatibilityMode() {
        return this.f3180a.p;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        Rect rect2 = this.f3180a.h;
        if (rect2 != null) {
            rect.set(rect2);
            return true;
        }
        return super.getPadding(rect);
    }

    public void setPadding(int i, int i2, int i3, int i4) {
        a aVar = this.f3180a;
        if (aVar.h == null) {
            aVar.h = new Rect();
        }
        this.f3180a.h.set(i, i2, i3, i4);
        invalidateSelf();
    }

    public void setShadowCompatibilityMode(int i) {
        a aVar = this.f3180a;
        if (aVar.p != i) {
            aVar.p = i;
            super.invalidateSelf();
        }
    }

    @Deprecated
    public boolean isShadowEnabled() {
        int i = this.f3180a.p;
        return i == 0 || i == 2;
    }

    @Deprecated
    public void setShadowEnabled(boolean z) {
        setShadowCompatibilityMode(!z ? 1 : 0);
    }

    public boolean isElevationOverlayEnabled() {
        ElevationOverlayProvider elevationOverlayProvider = this.f3180a.f3184b;
        return elevationOverlayProvider != null && elevationOverlayProvider.isThemeElevationOverlayEnabled();
    }

    public boolean isElevationOverlayInitialized() {
        return this.f3180a.f3184b != null;
    }

    public void initializeElevationOverlay(Context context) {
        this.f3180a.f3184b = new ElevationOverlayProvider(context);
        h();
    }

    @ColorInt
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int compositeElevationOverlayIfNeeded(@ColorInt int i) {
        float parentAbsoluteElevation = getParentAbsoluteElevation() + getZ();
        ElevationOverlayProvider elevationOverlayProvider = this.f3180a.f3184b;
        return elevationOverlayProvider != null ? elevationOverlayProvider.compositeOverlayIfNeeded(i, parentAbsoluteElevation) : i;
    }

    public float getInterpolation() {
        return this.f3180a.j;
    }

    public void setInterpolation(float f) {
        a aVar = this.f3180a;
        if (aVar.j != f) {
            aVar.j = f;
            this.e = true;
            invalidateSelf();
        }
    }

    public float getParentAbsoluteElevation() {
        return this.f3180a.m;
    }

    public void setParentAbsoluteElevation(float f) {
        a aVar = this.f3180a;
        if (aVar.m != f) {
            aVar.m = f;
            h();
        }
    }

    public float getElevation() {
        return this.f3180a.n;
    }

    public void setElevation(float f) {
        a aVar = this.f3180a;
        if (aVar.n != f) {
            aVar.n = f;
            h();
        }
    }

    public float getTranslationZ() {
        return this.f3180a.o;
    }

    public void setTranslationZ(float f) {
        a aVar = this.f3180a;
        if (aVar.o != f) {
            aVar.o = f;
            h();
        }
    }

    public float getZ() {
        return getTranslationZ() + getElevation();
    }

    public void setZ(float f) {
        setTranslationZ(f - getElevation());
    }

    public final void h() {
        float z = getZ();
        this.f3180a.q = (int) Math.ceil(0.75f * z);
        this.f3180a.r = (int) Math.ceil(z * 0.25f);
        g();
        super.invalidateSelf();
    }

    @Deprecated
    public int getShadowElevation() {
        return (int) getElevation();
    }

    @Deprecated
    public void setShadowElevation(int i) {
        setElevation(i);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getShadowVerticalOffset() {
        return this.f3180a.r;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setShadowBitmapDrawingEnable(boolean z) {
        this.w = z;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setShadowVerticalOffset(int i) {
        a aVar = this.f3180a;
        if (aVar.r != i) {
            aVar.r = i;
            super.invalidateSelf();
        }
    }

    public int getShadowCompatRotation() {
        return this.f3180a.s;
    }

    public void setShadowCompatRotation(int i) {
        a aVar = this.f3180a;
        if (aVar.s != i) {
            aVar.s = i;
            super.invalidateSelf();
        }
    }

    public int getShadowRadius() {
        return this.f3180a.q;
    }

    @Deprecated
    public void setShadowRadius(int i) {
        this.f3180a.q = i;
    }

    public boolean requiresCompatShadow() {
        return (isRoundRect() || this.f3182g.isConvex() || Build.VERSION.SDK_INT >= 29) ? false : true;
    }

    public float getScale() {
        return this.f3180a.i;
    }

    public void setScale(float f) {
        a aVar = this.f3180a;
        if (aVar.i != f) {
            aVar.i = f;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.e = true;
        super.invalidateSelf();
    }

    public void setUseTintColorForShadow(boolean z) {
        a aVar = this.f3180a;
        if (aVar.t != z) {
            aVar.t = z;
            invalidateSelf();
        }
    }

    public void setShadowColor(int i) {
        this.p.setShadowColor(i);
        this.f3180a.t = false;
        super.invalidateSelf();
    }

    public Paint.Style getPaintStyle() {
        return this.f3180a.u;
    }

    public void setPaintStyle(Paint.Style style) {
        this.f3180a.u = style;
        super.invalidateSelf();
    }

    public final boolean e() {
        Paint.Style style = this.f3180a.u;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.o.getStrokeWidth() > 0.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.e = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Canvas canvas2;
        Paint paint = this.n;
        paint.setColorFilter(this.s);
        int alpha = paint.getAlpha();
        int i = this.f3180a.l;
        paint.setAlpha(((i + (i >>> 7)) * alpha) >>> 8);
        Paint paint2 = this.o;
        paint2.setColorFilter(this.t);
        paint2.setStrokeWidth(this.f3180a.k);
        int alpha2 = paint2.getAlpha();
        int i2 = this.f3180a.l;
        paint2.setAlpha(((i2 + (i2 >>> 7)) * alpha2) >>> 8);
        boolean z = this.e;
        Path path = this.f3182g;
        if (z) {
            ShapeAppearanceModel shapeAppearanceModelWithTransformedCornerSizes = getShapeAppearanceModel().withTransformedCornerSizes(new b(-(e() ? paint2.getStrokeWidth() / 2.0f : 0.0f)));
            this.m = shapeAppearanceModelWithTransformedCornerSizes;
            float f = this.f3180a.j;
            RectF rectF = this.j;
            rectF.set(getBoundsAsRectF());
            float strokeWidth = e() ? paint2.getStrokeWidth() / 2.0f : 0.0f;
            rectF.inset(strokeWidth, strokeWidth);
            this.r.calculatePath(shapeAppearanceModelWithTransformedCornerSizes, f, rectF, this.h);
            a(getBoundsAsRectF(), path);
            this.e = false;
        }
        a aVar = this.f3180a;
        int i3 = aVar.p;
        if (i3 != 1 && aVar.q > 0 && (i3 == 2 || requiresCompatShadow())) {
            canvas.save();
            canvas.translate(getShadowOffsetX(), getShadowOffsetY());
            if (!this.w) {
                c(canvas);
                canvas.restore();
            } else {
                RectF rectF2 = this.v;
                int iWidth = (int) (rectF2.width() - getBounds().width());
                int iHeight = (int) (rectF2.height() - getBounds().height());
                if (iWidth < 0 || iHeight < 0) {
                    throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
                }
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap((this.f3180a.q * 2) + ((int) rectF2.width()) + iWidth, (this.f3180a.q * 2) + ((int) rectF2.height()) + iHeight, Bitmap.Config.ARGB_8888);
                Canvas canvas3 = new Canvas(bitmapCreateBitmap);
                float f2 = (getBounds().left - this.f3180a.q) - iWidth;
                float f3 = (getBounds().top - this.f3180a.q) - iHeight;
                canvas3.translate(-f2, -f3);
                c(canvas3);
                canvas.drawBitmap(bitmapCreateBitmap, f2, f3, (Paint) null);
                bitmapCreateBitmap.recycle();
                canvas.restore();
            }
        }
        a aVar2 = this.f3180a;
        Paint.Style style = aVar2.u;
        if (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL) {
            canvas2 = canvas;
            d(canvas2, paint, path, aVar2.f3183a, getBoundsAsRectF());
        } else {
            canvas2 = canvas;
        }
        if (e()) {
            drawStrokeShape(canvas2);
        }
        paint.setAlpha(alpha);
        paint2.setAlpha(alpha2);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void drawShape(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull Path path, @NonNull RectF rectF) {
        d(canvas, paint, path, this.f3180a.f3183a, rectF);
    }

    public final void d(Canvas canvas, Paint paint, Path path, ShapeAppearanceModel shapeAppearanceModel, RectF rectF) {
        if (shapeAppearanceModel.isRoundRect(rectF)) {
            float cornerSize = shapeAppearanceModel.getTopRightCornerSize().getCornerSize(rectF) * this.f3180a.j;
            canvas.drawRoundRect(rectF, cornerSize, cornerSize, paint);
        } else {
            canvas.drawPath(path, paint);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void drawStrokeShape(@NonNull Canvas canvas) {
        Paint paint = this.o;
        Path path = this.h;
        ShapeAppearanceModel shapeAppearanceModel = this.m;
        RectF rectF = this.j;
        rectF.set(getBoundsAsRectF());
        float strokeWidth = e() ? paint.getStrokeWidth() / 2.0f : 0.0f;
        rectF.inset(strokeWidth, strokeWidth);
        d(canvas, paint, path, shapeAppearanceModel, rectF);
    }

    public final void c(Canvas canvas) {
        if (this.d.cardinality() > 0) {
            Log.w("MaterialShapeDrawable", "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        int i = this.f3180a.r;
        Path path = this.f3182g;
        ShadowRenderer shadowRenderer = this.p;
        if (i != 0) {
            canvas.drawPath(path, shadowRenderer.getShadowPaint());
        }
        for (int i2 = 0; i2 < 4; i2++) {
            this.f3181b[i2].draw(shadowRenderer, this.f3180a.q, canvas);
            this.c[i2].draw(shadowRenderer, this.f3180a.q, canvas);
        }
        if (this.w) {
            int shadowOffsetX = getShadowOffsetX();
            int shadowOffsetY = getShadowOffsetY();
            canvas.translate(-shadowOffsetX, -shadowOffsetY);
            canvas.drawPath(path, x);
            canvas.translate(shadowOffsetX, shadowOffsetY);
        }
    }

    public int getShadowOffsetX() {
        a aVar = this.f3180a;
        return (int) (Math.sin(Math.toRadians(aVar.s)) * aVar.r);
    }

    public int getShadowOffsetY() {
        a aVar = this.f3180a;
        return (int) (Math.cos(Math.toRadians(aVar.s)) * aVar.r);
    }

    @Deprecated
    public void getPathForSize(int i, int i2, @NonNull Path path) {
        calculatePathForSize(new RectF(0.0f, 0.0f, i, i2), path);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final void calculatePathForSize(@NonNull RectF rectF, @NonNull Path path) {
        a aVar = this.f3180a;
        this.r.calculatePath(aVar.f3183a, aVar.j, rectF, this.q, path);
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.f3180a.p == 2) {
            return;
        }
        if (isRoundRect()) {
            outline.setRoundRect(getBounds(), getTopLeftCornerResolvedSize() * this.f3180a.j);
            return;
        }
        RectF boundsAsRectF = getBoundsAsRectF();
        Path path = this.f3182g;
        a(boundsAsRectF, path);
        if (path.isConvex() || Build.VERSION.SDK_INT >= 29) {
            try {
                outline.setConvexPath(path);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    public final void a(RectF rectF, Path path) {
        calculatePathForSize(rectF, path);
        if (this.f3180a.i != 1.0f) {
            Matrix matrix = this.f;
            matrix.reset();
            float f = this.f3180a.i;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(matrix);
        }
        path.computeBounds(this.v, true);
    }

    public final boolean g() {
        PorterDuffColorFilter porterDuffColorFilter = this.s;
        PorterDuffColorFilter porterDuffColorFilter2 = this.t;
        a aVar = this.f3180a;
        this.s = b(aVar.f, aVar.f3185g, this.n, true);
        a aVar2 = this.f3180a;
        this.t = b(aVar2.e, aVar2.f3185g, this.o, false);
        a aVar3 = this.f3180a;
        if (aVar3.t) {
            this.p.setShadowColor(aVar3.f.getColorForState(getState(), 0));
        }
        return (ObjectsCompat.equals(porterDuffColorFilter, this.s) && ObjectsCompat.equals(porterDuffColorFilter2, this.t)) ? false : true;
    }

    public final PorterDuffColorFilter b(ColorStateList colorStateList, PorterDuff.Mode mode, Paint paint, boolean z) {
        if (colorStateList != null && mode != null) {
            int colorForState = colorStateList.getColorForState(getState(), 0);
            if (z) {
                colorForState = compositeElevationOverlayIfNeeded(colorForState);
            }
            this.u = colorForState;
            return new PorterDuffColorFilter(colorForState, mode);
        }
        if (!z) {
            return null;
        }
        int color = paint.getColor();
        int iCompositeElevationOverlayIfNeeded = compositeElevationOverlayIfNeeded(color);
        this.u = iCompositeElevationOverlayIfNeeded;
        if (iCompositeElevationOverlayIfNeeded != color) {
            return new PorterDuffColorFilter(iCompositeElevationOverlayIfNeeded, PorterDuff.Mode.SRC_IN);
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (super.isStateful()) {
            return true;
        }
        ColorStateList colorStateList = this.f3180a.f;
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        ColorStateList colorStateList2 = this.f3180a.e;
        if (colorStateList2 != null && colorStateList2.isStateful()) {
            return true;
        }
        ColorStateList colorStateList3 = this.f3180a.d;
        if (colorStateList3 != null && colorStateList3.isStateful()) {
            return true;
        }
        ColorStateList colorStateList4 = this.f3180a.c;
        return colorStateList4 != null && colorStateList4.isStateful();
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(int[] iArr) {
        boolean z = f(iArr) || g();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    public final boolean f(int[] iArr) {
        boolean z;
        Paint paint;
        int color;
        int colorForState;
        Paint paint2;
        int color2;
        int colorForState2;
        if (this.f3180a.c == null || color2 == (colorForState2 = this.f3180a.c.getColorForState(iArr, (color2 = (paint2 = this.n).getColor())))) {
            z = false;
        } else {
            paint2.setColor(colorForState2);
            z = true;
        }
        if (this.f3180a.d == null || color == (colorForState = this.f3180a.d.getColorForState(iArr, (color = (paint = this.o).getColor())))) {
            return z;
        }
        paint.setColor(colorForState);
        return true;
    }

    public float getTopLeftCornerResolvedSize() {
        return this.f3180a.f3183a.getTopLeftCornerSize().getCornerSize(getBoundsAsRectF());
    }

    public float getTopRightCornerResolvedSize() {
        return this.f3180a.f3183a.getTopRightCornerSize().getCornerSize(getBoundsAsRectF());
    }

    public float getBottomLeftCornerResolvedSize() {
        return this.f3180a.f3183a.getBottomLeftCornerSize().getCornerSize(getBoundsAsRectF());
    }

    public float getBottomRightCornerResolvedSize() {
        return this.f3180a.f3183a.getBottomRightCornerSize().getCornerSize(getBoundsAsRectF());
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isRoundRect() {
        return this.f3180a.f3183a.isRoundRect(getBoundsAsRectF());
    }

    public static final class a extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        public ShapeAppearanceModel f3183a;

        /* renamed from: b, reason: collision with root package name */
        public ElevationOverlayProvider f3184b;
        public ColorStateList c;
        public ColorStateList d;
        public ColorStateList e;
        public ColorStateList f;

        /* renamed from: g, reason: collision with root package name */
        public PorterDuff.Mode f3185g;
        public Rect h;
        public float i;
        public float j;
        public float k;
        public int l;
        public float m;
        public float n;
        public float o;
        public int p;
        public int q;
        public int r;
        public int s;
        public boolean t;
        public Paint.Style u;

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        public a(ShapeAppearanceModel shapeAppearanceModel, ElevationOverlayProvider elevationOverlayProvider) {
            this.c = null;
            this.d = null;
            this.e = null;
            this.f = null;
            this.f3185g = PorterDuff.Mode.SRC_IN;
            this.h = null;
            this.i = 1.0f;
            this.j = 1.0f;
            this.l = 255;
            this.m = 0.0f;
            this.n = 0.0f;
            this.o = 0.0f;
            this.p = 0;
            this.q = 0;
            this.r = 0;
            this.s = 0;
            this.t = false;
            this.u = Paint.Style.FILL_AND_STROKE;
            this.f3183a = shapeAppearanceModel;
            this.f3184b = elevationOverlayProvider;
        }

        public a(@NonNull a aVar) {
            this.c = null;
            this.d = null;
            this.e = null;
            this.f = null;
            this.f3185g = PorterDuff.Mode.SRC_IN;
            this.h = null;
            this.i = 1.0f;
            this.j = 1.0f;
            this.l = 255;
            this.m = 0.0f;
            this.n = 0.0f;
            this.o = 0.0f;
            this.p = 0;
            this.q = 0;
            this.r = 0;
            this.s = 0;
            this.t = false;
            this.u = Paint.Style.FILL_AND_STROKE;
            this.f3183a = aVar.f3183a;
            this.f3184b = aVar.f3184b;
            this.k = aVar.k;
            this.c = aVar.c;
            this.d = aVar.d;
            this.f3185g = aVar.f3185g;
            this.f = aVar.f;
            this.l = aVar.l;
            this.i = aVar.i;
            this.r = aVar.r;
            this.p = aVar.p;
            this.t = aVar.t;
            this.j = aVar.j;
            this.m = aVar.m;
            this.n = aVar.n;
            this.o = aVar.o;
            this.q = aVar.q;
            this.s = aVar.s;
            this.e = aVar.e;
            this.u = aVar.u;
            if (aVar.h != null) {
                this.h = new Rect(aVar.h);
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this);
            materialShapeDrawable.e = true;
            return materialShapeDrawable;
        }
    }
}
