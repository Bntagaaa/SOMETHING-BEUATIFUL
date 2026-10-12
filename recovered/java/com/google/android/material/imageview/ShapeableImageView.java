package com.google.android.material.imageview;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.material.R;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;

/* loaded from: classes.dex */
public class ShapeableImageView extends AppCompatImageView implements Shapeable {
    public static final int v = R.style.Widget_MaterialComponents_ShapeableImageView;
    public final ShapeAppearancePathProvider d;
    public final RectF e;
    public final RectF f;

    /* renamed from: g, reason: collision with root package name */
    public final Paint f3047g;
    public final Paint h;
    public final Path i;
    public ColorStateList j;
    public MaterialShapeDrawable k;
    public ShapeAppearanceModel l;
    public float m;
    public final Path n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public boolean u;

    @TargetApi(21)
    public class a extends ViewOutlineProvider {

        /* renamed from: a, reason: collision with root package name */
        public final Rect f3048a = new Rect();

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            ShapeableImageView shapeableImageView = ShapeableImageView.this;
            if (shapeableImageView.l == null) {
                return;
            }
            if (shapeableImageView.k == null) {
                shapeableImageView.k = new MaterialShapeDrawable(shapeableImageView.l);
            }
            RectF rectF = shapeableImageView.e;
            Rect rect = this.f3048a;
            rectF.round(rect);
            shapeableImageView.k.setBounds(rect);
            shapeableImageView.k.getOutline(outline);
        }

        public a() {
        }
    }

    public ShapeableImageView(Context context) {
        this(context, null, 0);
    }

    public ShapeableImageView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ShapeableImageView(Context context, @Nullable AttributeSet attributeSet, int i) {
        int i2 = v;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        this.d = ShapeAppearancePathProvider.getInstance();
        this.i = new Path();
        this.u = false;
        Context context2 = getContext();
        Paint paint = new Paint();
        this.h = paint;
        paint.setAntiAlias(true);
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.e = new RectF();
        this.f = new RectF();
        this.n = new Path();
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R.styleable.ShapeableImageView, i, i2);
        this.j = MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, R.styleable.ShapeableImageView_strokeColor);
        this.m = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_strokeWidth, 0);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_contentPadding, 0);
        this.o = dimensionPixelSize;
        this.p = dimensionPixelSize;
        this.q = dimensionPixelSize;
        this.r = dimensionPixelSize;
        this.o = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_contentPaddingLeft, dimensionPixelSize);
        this.p = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_contentPaddingTop, dimensionPixelSize);
        this.q = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_contentPaddingRight, dimensionPixelSize);
        this.r = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_contentPaddingBottom, dimensionPixelSize);
        this.s = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_contentPaddingStart, Integer.MIN_VALUE);
        this.t = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_contentPaddingEnd, Integer.MIN_VALUE);
        typedArrayObtainStyledAttributes.recycle();
        Paint paint2 = new Paint();
        this.f3047g = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        this.l = ShapeAppearanceModel.builder(context2, attributeSet, i, i2).build();
        setOutlineProvider(new a());
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        setLayerType(0, null);
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        setLayerType(2, null);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!this.u && isLayoutDirectionResolved()) {
            this.u = true;
            if (isPaddingRelative() || this.s != Integer.MIN_VALUE || this.t != Integer.MIN_VALUE) {
                setPaddingRelative(super.getPaddingStart(), super.getPaddingTop(), super.getPaddingEnd(), super.getPaddingBottom());
            } else {
                setPadding(super.getPaddingLeft(), super.getPaddingTop(), super.getPaddingRight(), super.getPaddingBottom());
            }
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.n, this.h);
        if (this.j == null) {
            return;
        }
        Paint paint = this.f3047g;
        paint.setStrokeWidth(this.m);
        int colorForState = this.j.getColorForState(getDrawableState(), this.j.getDefaultColor());
        if (this.m <= 0.0f || colorForState == 0) {
            return;
        }
        paint.setColor(colorForState);
        canvas.drawPath(this.i, paint);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        b(i, i2);
    }

    public void setContentPadding(@Dimension int i, @Dimension int i2, @Dimension int i3, @Dimension int i4) {
        this.s = Integer.MIN_VALUE;
        this.t = Integer.MIN_VALUE;
        super.setPadding((super.getPaddingLeft() - this.o) + i, (super.getPaddingTop() - this.p) + i2, (super.getPaddingRight() - this.q) + i3, (super.getPaddingBottom() - this.r) + i4);
        this.o = i;
        this.p = i2;
        this.q = i3;
        this.r = i4;
    }

    @RequiresApi(17)
    public void setContentPaddingRelative(@Dimension int i, @Dimension int i2, @Dimension int i3, @Dimension int i4) {
        super.setPaddingRelative((super.getPaddingStart() - getContentPaddingStart()) + i, (super.getPaddingTop() - this.p) + i2, (super.getPaddingEnd() - getContentPaddingEnd()) + i3, (super.getPaddingBottom() - this.r) + i4);
        this.o = a() ? i3 : i;
        this.p = i2;
        if (!a()) {
            i = i3;
        }
        this.q = i;
        this.r = i4;
    }

    @Dimension
    public int getContentPaddingLeft() {
        int i;
        int i2;
        if (this.s != Integer.MIN_VALUE || this.t != Integer.MIN_VALUE) {
            if (a() && (i2 = this.t) != Integer.MIN_VALUE) {
                return i2;
            }
            if (!a() && (i = this.s) != Integer.MIN_VALUE) {
                return i;
            }
        }
        return this.o;
    }

    @Dimension
    public int getContentPaddingRight() {
        int i;
        int i2;
        if (this.s != Integer.MIN_VALUE || this.t != Integer.MIN_VALUE) {
            if (a() && (i2 = this.s) != Integer.MIN_VALUE) {
                return i2;
            }
            if (!a() && (i = this.t) != Integer.MIN_VALUE) {
                return i;
            }
        }
        return this.q;
    }

    @Dimension
    public int getContentPaddingBottom() {
        return this.r;
    }

    @Dimension
    public final int getContentPaddingEnd() {
        int i = this.t;
        return i != Integer.MIN_VALUE ? i : a() ? this.o : this.q;
    }

    @Dimension
    public final int getContentPaddingStart() {
        int i = this.s;
        return i != Integer.MIN_VALUE ? i : a() ? this.q : this.o;
    }

    @Dimension
    public int getContentPaddingTop() {
        return this.p;
    }

    public final boolean a() {
        return getLayoutDirection() == 1;
    }

    @Override // android.view.View
    public void setPadding(@Dimension int i, @Dimension int i2, @Dimension int i3, @Dimension int i4) {
        super.setPadding(getContentPaddingLeft() + i, getContentPaddingTop() + i2, getContentPaddingRight() + i3, getContentPaddingBottom() + i4);
    }

    @Override // android.view.View
    public void setPaddingRelative(@Dimension int i, @Dimension int i2, @Dimension int i3, @Dimension int i4) {
        super.setPaddingRelative(getContentPaddingStart() + i, getContentPaddingTop() + i2, getContentPaddingEnd() + i3, getContentPaddingBottom() + i4);
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingBottom() {
        return super.getPaddingBottom() - getContentPaddingBottom();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingEnd() {
        return super.getPaddingEnd() - getContentPaddingEnd();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingLeft() {
        return super.getPaddingLeft() - getContentPaddingLeft();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingRight() {
        return super.getPaddingRight() - getContentPaddingRight();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingStart() {
        return super.getPaddingStart() - getContentPaddingStart();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingTop() {
        return super.getPaddingTop() - getContentPaddingTop();
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.l = shapeAppearanceModel;
        MaterialShapeDrawable materialShapeDrawable = this.k;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModel);
        }
        b(getWidth(), getHeight());
        invalidate();
        invalidateOutline();
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.l;
    }

    public final void b(int i, int i2) {
        RectF rectF = this.e;
        rectF.set(getPaddingLeft(), getPaddingTop(), i - getPaddingRight(), i2 - getPaddingBottom());
        ShapeAppearanceModel shapeAppearanceModel = this.l;
        Path path = this.i;
        this.d.calculatePath(shapeAppearanceModel, 1.0f, rectF, path);
        Path path2 = this.n;
        path2.rewind();
        path2.addPath(path);
        RectF rectF2 = this.f;
        rectF2.set(0.0f, 0.0f, i, i2);
        path2.addRect(rectF2, Path.Direction.CCW);
    }

    public void setStrokeColorResource(@ColorRes int i) {
        setStrokeColor(AppCompatResources.getColorStateList(getContext(), i));
    }

    @Nullable
    public ColorStateList getStrokeColor() {
        return this.j;
    }

    public void setStrokeWidth(@Dimension float f) {
        if (this.m != f) {
            this.m = f;
            invalidate();
        }
    }

    public void setStrokeWidthResource(@DimenRes int i) {
        setStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    @Dimension
    public float getStrokeWidth() {
        return this.m;
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        this.j = colorStateList;
        invalidate();
    }
}
