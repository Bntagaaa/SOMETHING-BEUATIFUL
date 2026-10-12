package com.google.android.material.shape;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import androidx.annotation.AttrRes;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import com.google.android.material.R;

/* loaded from: classes.dex */
public class ShapeAppearanceModel {
    public static final CornerSize PILL = new RelativeCornerSize(0.5f);

    /* renamed from: a, reason: collision with root package name */
    public CornerTreatment f3190a = new RoundedCornerTreatment();

    /* renamed from: b, reason: collision with root package name */
    public CornerTreatment f3191b = new RoundedCornerTreatment();
    public CornerTreatment c = new RoundedCornerTreatment();
    public CornerTreatment d = new RoundedCornerTreatment();
    public CornerSize e = new AbsoluteCornerSize(0.0f);
    public CornerSize f = new AbsoluteCornerSize(0.0f);

    /* renamed from: g, reason: collision with root package name */
    public CornerSize f3192g = new AbsoluteCornerSize(0.0f);
    public CornerSize h = new AbsoluteCornerSize(0.0f);
    public EdgeTreatment i = new EdgeTreatment();
    public EdgeTreatment j = new EdgeTreatment();
    public EdgeTreatment k = new EdgeTreatment();
    public EdgeTreatment l = new EdgeTreatment();

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public interface CornerSizeUnaryOperator {
        @NonNull
        CornerSize apply(@NonNull CornerSize cornerSize);
    }

    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public CornerTreatment f3193a;

        /* renamed from: b, reason: collision with root package name */
        public CornerTreatment f3194b;
        public CornerTreatment c;
        public CornerTreatment d;
        public CornerSize e;
        public CornerSize f;

        /* renamed from: g, reason: collision with root package name */
        public CornerSize f3195g;
        public CornerSize h;
        public EdgeTreatment i;
        public EdgeTreatment j;
        public EdgeTreatment k;
        public EdgeTreatment l;

        public Builder() {
            this.f3193a = new RoundedCornerTreatment();
            this.f3194b = new RoundedCornerTreatment();
            this.c = new RoundedCornerTreatment();
            this.d = new RoundedCornerTreatment();
            this.e = new AbsoluteCornerSize(0.0f);
            this.f = new AbsoluteCornerSize(0.0f);
            this.f3195g = new AbsoluteCornerSize(0.0f);
            this.h = new AbsoluteCornerSize(0.0f);
            this.i = new EdgeTreatment();
            this.j = new EdgeTreatment();
            this.k = new EdgeTreatment();
            this.l = new EdgeTreatment();
        }

        public Builder(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
            this.f3193a = new RoundedCornerTreatment();
            this.f3194b = new RoundedCornerTreatment();
            this.c = new RoundedCornerTreatment();
            this.d = new RoundedCornerTreatment();
            this.e = new AbsoluteCornerSize(0.0f);
            this.f = new AbsoluteCornerSize(0.0f);
            this.f3195g = new AbsoluteCornerSize(0.0f);
            this.h = new AbsoluteCornerSize(0.0f);
            this.i = new EdgeTreatment();
            this.j = new EdgeTreatment();
            this.k = new EdgeTreatment();
            this.l = new EdgeTreatment();
            this.f3193a = shapeAppearanceModel.f3190a;
            this.f3194b = shapeAppearanceModel.f3191b;
            this.c = shapeAppearanceModel.c;
            this.d = shapeAppearanceModel.d;
            this.e = shapeAppearanceModel.e;
            this.f = shapeAppearanceModel.f;
            this.f3195g = shapeAppearanceModel.f3192g;
            this.h = shapeAppearanceModel.h;
            this.i = shapeAppearanceModel.i;
            this.j = shapeAppearanceModel.j;
            this.k = shapeAppearanceModel.k;
            this.l = shapeAppearanceModel.l;
        }

        @NonNull
        public Builder setAllCorners(int i, @Dimension float f) {
            return setAllCorners(MaterialShapeUtils.a(i)).setAllCornerSizes(f);
        }

        @NonNull
        public Builder setAllCorners(@NonNull CornerTreatment cornerTreatment) {
            return setTopLeftCorner(cornerTreatment).setTopRightCorner(cornerTreatment).setBottomRightCorner(cornerTreatment).setBottomLeftCorner(cornerTreatment);
        }

        @NonNull
        public Builder setAllCornerSizes(@NonNull CornerSize cornerSize) {
            return setTopLeftCornerSize(cornerSize).setTopRightCornerSize(cornerSize).setBottomRightCornerSize(cornerSize).setBottomLeftCornerSize(cornerSize);
        }

        @NonNull
        public Builder setAllCornerSizes(@Dimension float f) {
            return setTopLeftCornerSize(f).setTopRightCornerSize(f).setBottomRightCornerSize(f).setBottomLeftCornerSize(f);
        }

        @NonNull
        public Builder setTopLeftCornerSize(@Dimension float f) {
            this.e = new AbsoluteCornerSize(f);
            return this;
        }

        @NonNull
        public Builder setTopLeftCornerSize(@NonNull CornerSize cornerSize) {
            this.e = cornerSize;
            return this;
        }

        @NonNull
        public Builder setTopRightCornerSize(@Dimension float f) {
            this.f = new AbsoluteCornerSize(f);
            return this;
        }

        @NonNull
        public Builder setTopRightCornerSize(@NonNull CornerSize cornerSize) {
            this.f = cornerSize;
            return this;
        }

        @NonNull
        public Builder setBottomRightCornerSize(@Dimension float f) {
            this.f3195g = new AbsoluteCornerSize(f);
            return this;
        }

        @NonNull
        public Builder setBottomRightCornerSize(@NonNull CornerSize cornerSize) {
            this.f3195g = cornerSize;
            return this;
        }

        @NonNull
        public Builder setBottomLeftCornerSize(@Dimension float f) {
            this.h = new AbsoluteCornerSize(f);
            return this;
        }

        @NonNull
        public Builder setBottomLeftCornerSize(@NonNull CornerSize cornerSize) {
            this.h = cornerSize;
            return this;
        }

        @NonNull
        public Builder setTopLeftCorner(int i, @Dimension float f) {
            return setTopLeftCorner(MaterialShapeUtils.a(i)).setTopLeftCornerSize(f);
        }

        @NonNull
        public Builder setTopLeftCorner(int i, @NonNull CornerSize cornerSize) {
            return setTopLeftCorner(MaterialShapeUtils.a(i)).setTopLeftCornerSize(cornerSize);
        }

        @NonNull
        public Builder setTopLeftCorner(@NonNull CornerTreatment cornerTreatment) {
            this.f3193a = cornerTreatment;
            float fA = a(cornerTreatment);
            if (fA != -1.0f) {
                setTopLeftCornerSize(fA);
            }
            return this;
        }

        @NonNull
        public Builder setTopRightCorner(int i, @Dimension float f) {
            return setTopRightCorner(MaterialShapeUtils.a(i)).setTopRightCornerSize(f);
        }

        @NonNull
        public Builder setTopRightCorner(int i, @NonNull CornerSize cornerSize) {
            return setTopRightCorner(MaterialShapeUtils.a(i)).setTopRightCornerSize(cornerSize);
        }

        @NonNull
        public Builder setTopRightCorner(@NonNull CornerTreatment cornerTreatment) {
            this.f3194b = cornerTreatment;
            float fA = a(cornerTreatment);
            if (fA != -1.0f) {
                setTopRightCornerSize(fA);
            }
            return this;
        }

        @NonNull
        public Builder setBottomRightCorner(int i, @Dimension float f) {
            return setBottomRightCorner(MaterialShapeUtils.a(i)).setBottomRightCornerSize(f);
        }

        @NonNull
        public Builder setBottomRightCorner(int i, @NonNull CornerSize cornerSize) {
            return setBottomRightCorner(MaterialShapeUtils.a(i)).setBottomRightCornerSize(cornerSize);
        }

        @NonNull
        public Builder setBottomRightCorner(@NonNull CornerTreatment cornerTreatment) {
            this.c = cornerTreatment;
            float fA = a(cornerTreatment);
            if (fA != -1.0f) {
                setBottomRightCornerSize(fA);
            }
            return this;
        }

        @NonNull
        public Builder setBottomLeftCorner(int i, @Dimension float f) {
            return setBottomLeftCorner(MaterialShapeUtils.a(i)).setBottomLeftCornerSize(f);
        }

        @NonNull
        public Builder setBottomLeftCorner(int i, @NonNull CornerSize cornerSize) {
            return setBottomLeftCorner(MaterialShapeUtils.a(i)).setBottomLeftCornerSize(cornerSize);
        }

        @NonNull
        public Builder setBottomLeftCorner(@NonNull CornerTreatment cornerTreatment) {
            this.d = cornerTreatment;
            float fA = a(cornerTreatment);
            if (fA != -1.0f) {
                setBottomLeftCornerSize(fA);
            }
            return this;
        }

        @NonNull
        public Builder setAllEdges(@NonNull EdgeTreatment edgeTreatment) {
            return setLeftEdge(edgeTreatment).setTopEdge(edgeTreatment).setRightEdge(edgeTreatment).setBottomEdge(edgeTreatment);
        }

        @NonNull
        public Builder setLeftEdge(@NonNull EdgeTreatment edgeTreatment) {
            this.l = edgeTreatment;
            return this;
        }

        @NonNull
        public Builder setTopEdge(@NonNull EdgeTreatment edgeTreatment) {
            this.i = edgeTreatment;
            return this;
        }

        @NonNull
        public Builder setRightEdge(@NonNull EdgeTreatment edgeTreatment) {
            this.j = edgeTreatment;
            return this;
        }

        @NonNull
        public Builder setBottomEdge(@NonNull EdgeTreatment edgeTreatment) {
            this.k = edgeTreatment;
            return this;
        }

        public static float a(CornerTreatment cornerTreatment) {
            if (cornerTreatment instanceof RoundedCornerTreatment) {
                return ((RoundedCornerTreatment) cornerTreatment).f3189a;
            }
            if (cornerTreatment instanceof CutCornerTreatment) {
                return ((CutCornerTreatment) cornerTreatment).f3175a;
            }
            return -1.0f;
        }

        @NonNull
        public ShapeAppearanceModel build() {
            ShapeAppearanceModel shapeAppearanceModel = new ShapeAppearanceModel();
            shapeAppearanceModel.f3190a = this.f3193a;
            shapeAppearanceModel.f3191b = this.f3194b;
            shapeAppearanceModel.c = this.c;
            shapeAppearanceModel.d = this.d;
            shapeAppearanceModel.e = this.e;
            shapeAppearanceModel.f = this.f;
            shapeAppearanceModel.f3192g = this.f3195g;
            shapeAppearanceModel.h = this.h;
            shapeAppearanceModel.i = this.i;
            shapeAppearanceModel.j = this.j;
            shapeAppearanceModel.k = this.k;
            shapeAppearanceModel.l = this.l;
            return shapeAppearanceModel;
        }
    }

    @NonNull
    public static Builder builder() {
        return new Builder();
    }

    @NonNull
    public static Builder builder(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        return builder(context, attributeSet, i, i2, 0);
    }

    @NonNull
    public static Builder builder(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2, int i3) {
        return builder(context, attributeSet, i, i2, new AbsoluteCornerSize(i3));
    }

    @NonNull
    public static Builder builder(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2, @NonNull CornerSize cornerSize) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MaterialShape, i, i2);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialShape_shapeAppearance, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialShape_shapeAppearanceOverlay, 0);
        typedArrayObtainStyledAttributes.recycle();
        return a(context, resourceId, resourceId2, cornerSize);
    }

    @NonNull
    public static Builder builder(Context context, @StyleRes int i, @StyleRes int i2) {
        return a(context, i, i2, new AbsoluteCornerSize(0));
    }

    public static Builder a(Context context, int i, int i2, CornerSize cornerSize) throws Resources.NotFoundException {
        if (i2 != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i);
            i = i2;
            context = contextThemeWrapper;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, R.styleable.ShapeAppearance);
        try {
            int i3 = typedArrayObtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamily, 0);
            int i4 = typedArrayObtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyTopLeft, i3);
            int i5 = typedArrayObtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyTopRight, i3);
            int i6 = typedArrayObtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyBottomRight, i3);
            int i7 = typedArrayObtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyBottomLeft, i3);
            CornerSize cornerSizeB = b(typedArrayObtainStyledAttributes, R.styleable.ShapeAppearance_cornerSize, cornerSize);
            CornerSize cornerSizeB2 = b(typedArrayObtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeTopLeft, cornerSizeB);
            CornerSize cornerSizeB3 = b(typedArrayObtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeTopRight, cornerSizeB);
            CornerSize cornerSizeB4 = b(typedArrayObtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeBottomRight, cornerSizeB);
            return new Builder().setTopLeftCorner(i4, cornerSizeB2).setTopRightCorner(i5, cornerSizeB3).setBottomRightCorner(i6, cornerSizeB4).setBottomLeftCorner(i7, b(typedArrayObtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeBottomLeft, cornerSizeB));
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static CornerSize b(TypedArray typedArray, int i, CornerSize cornerSize) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i);
        if (typedValuePeekValue != null) {
            int i2 = typedValuePeekValue.type;
            if (i2 == 5) {
                return new AbsoluteCornerSize(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics()));
            }
            if (i2 == 6) {
                return new RelativeCornerSize(typedValuePeekValue.getFraction(1.0f, 1.0f));
            }
        }
        return cornerSize;
    }

    @NonNull
    public CornerTreatment getTopLeftCorner() {
        return this.f3190a;
    }

    @NonNull
    public CornerTreatment getTopRightCorner() {
        return this.f3191b;
    }

    @NonNull
    public CornerTreatment getBottomRightCorner() {
        return this.c;
    }

    @NonNull
    public CornerTreatment getBottomLeftCorner() {
        return this.d;
    }

    @NonNull
    public CornerSize getTopLeftCornerSize() {
        return this.e;
    }

    @NonNull
    public CornerSize getTopRightCornerSize() {
        return this.f;
    }

    @NonNull
    public CornerSize getBottomRightCornerSize() {
        return this.f3192g;
    }

    @NonNull
    public CornerSize getBottomLeftCornerSize() {
        return this.h;
    }

    @NonNull
    public EdgeTreatment getLeftEdge() {
        return this.l;
    }

    @NonNull
    public EdgeTreatment getTopEdge() {
        return this.i;
    }

    @NonNull
    public EdgeTreatment getRightEdge() {
        return this.j;
    }

    @NonNull
    public EdgeTreatment getBottomEdge() {
        return this.k;
    }

    @NonNull
    public Builder toBuilder() {
        return new Builder(this);
    }

    @NonNull
    public ShapeAppearanceModel withCornerSize(float f) {
        return toBuilder().setAllCornerSizes(f).build();
    }

    @NonNull
    public ShapeAppearanceModel withCornerSize(@NonNull CornerSize cornerSize) {
        return toBuilder().setAllCornerSizes(cornerSize).build();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ShapeAppearanceModel withTransformedCornerSizes(@NonNull CornerSizeUnaryOperator cornerSizeUnaryOperator) {
        return toBuilder().setTopLeftCornerSize(cornerSizeUnaryOperator.apply(getTopLeftCornerSize())).setTopRightCornerSize(cornerSizeUnaryOperator.apply(getTopRightCornerSize())).setBottomLeftCornerSize(cornerSizeUnaryOperator.apply(getBottomLeftCornerSize())).setBottomRightCornerSize(cornerSizeUnaryOperator.apply(getBottomRightCornerSize())).build();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isRoundRect(@NonNull RectF rectF) {
        boolean z = this.l.getClass().equals(EdgeTreatment.class) && this.j.getClass().equals(EdgeTreatment.class) && this.i.getClass().equals(EdgeTreatment.class) && this.k.getClass().equals(EdgeTreatment.class);
        float cornerSize = this.e.getCornerSize(rectF);
        return z && ((this.f.getCornerSize(rectF) > cornerSize ? 1 : (this.f.getCornerSize(rectF) == cornerSize ? 0 : -1)) == 0 && (this.h.getCornerSize(rectF) > cornerSize ? 1 : (this.h.getCornerSize(rectF) == cornerSize ? 0 : -1)) == 0 && (this.f3192g.getCornerSize(rectF) > cornerSize ? 1 : (this.f3192g.getCornerSize(rectF) == cornerSize ? 0 : -1)) == 0) && ((this.f3191b instanceof RoundedCornerTreatment) && (this.f3190a instanceof RoundedCornerTreatment) && (this.c instanceof RoundedCornerTreatment) && (this.d instanceof RoundedCornerTreatment));
    }
}
