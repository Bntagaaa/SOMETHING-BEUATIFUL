package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R;

/* loaded from: classes.dex */
public class Layer extends ConstraintHelper {
    public float c;
    public float d;
    public float e;
    public ConstraintLayout f;

    /* renamed from: g, reason: collision with root package name */
    public float f590g;
    public float h;
    public final boolean i;
    public View[] j;
    public float k;
    public float l;
    public boolean m;
    protected float mComputedCenterX;
    protected float mComputedCenterY;
    protected float mComputedMaxX;
    protected float mComputedMaxY;
    protected float mComputedMinX;
    protected float mComputedMinY;
    public boolean n;

    public Layer(Context context) {
        super(context);
        this.c = Float.NaN;
        this.d = Float.NaN;
        this.e = Float.NaN;
        this.f590g = 1.0f;
        this.h = 1.0f;
        this.mComputedCenterX = Float.NaN;
        this.mComputedCenterY = Float.NaN;
        this.mComputedMaxX = Float.NaN;
        this.mComputedMaxY = Float.NaN;
        this.mComputedMinX = Float.NaN;
        this.mComputedMinY = Float.NaN;
        this.i = true;
        this.j = null;
        this.k = 0.0f;
        this.l = 0.0f;
    }

    public Layer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = Float.NaN;
        this.d = Float.NaN;
        this.e = Float.NaN;
        this.f590g = 1.0f;
        this.h = 1.0f;
        this.mComputedCenterX = Float.NaN;
        this.mComputedCenterY = Float.NaN;
        this.mComputedMaxX = Float.NaN;
        this.mComputedMaxY = Float.NaN;
        this.mComputedMinX = Float.NaN;
        this.mComputedMinY = Float.NaN;
        this.i = true;
        this.j = null;
        this.k = 0.0f;
        this.l = 0.0f;
    }

    public Layer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = Float.NaN;
        this.d = Float.NaN;
        this.e = Float.NaN;
        this.f590g = 1.0f;
        this.h = 1.0f;
        this.mComputedCenterX = Float.NaN;
        this.mComputedCenterY = Float.NaN;
        this.mComputedMaxX = Float.NaN;
        this.mComputedMaxY = Float.NaN;
        this.mComputedMinX = Float.NaN;
        this.mComputedMinY = Float.NaN;
        this.i = true;
        this.j = null;
        this.k = 0.0f;
        this.l = 0.0f;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void init(AttributeSet attributeSet) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        super.init(attributeSet);
        this.mUseViewMeasure = false;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.ConstraintLayout_Layout_android_visibility) {
                    this.m = true;
                } else if (index == R.styleable.ConstraintLayout_Layout_android_elevation) {
                    this.n = true;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        super.onAttachedToWindow();
        this.f = (ConstraintLayout) getParent();
        if (this.m || this.n) {
            int visibility = getVisibility();
            float elevation = getElevation();
            for (int i = 0; i < this.mCount; i++) {
                View viewById = this.f.getViewById(this.mIds[i]);
                if (viewById != null) {
                    if (this.m) {
                        viewById.setVisibility(visibility);
                    }
                    if (this.n && elevation > 0.0f) {
                        viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void updatePreDraw(ConstraintLayout constraintLayout) {
        this.f = constraintLayout;
        float rotation = getRotation();
        if (rotation == 0.0f) {
            if (Float.isNaN(this.e)) {
                return;
            }
            this.e = rotation;
            return;
        }
        this.e = rotation;
    }

    @Override // android.view.View
    public void setRotation(float f) {
        this.e = f;
        f();
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        this.f590g = f;
        f();
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        this.h = f;
        f();
    }

    @Override // android.view.View
    public void setPivotX(float f) {
        this.c = f;
        f();
    }

    @Override // android.view.View
    public void setPivotY(float f) {
        this.d = f;
        f();
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        this.k = f;
        f();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        this.l = f;
        f();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        applyLayoutFeatures();
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        applyLayoutFeatures();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void updatePostLayout(ConstraintLayout constraintLayout) {
        e();
        this.mComputedCenterX = Float.NaN;
        this.mComputedCenterY = Float.NaN;
        ConstraintWidget constraintWidget = ((ConstraintLayout.LayoutParams) getLayoutParams()).getConstraintWidget();
        constraintWidget.setWidth(0);
        constraintWidget.setHeight(0);
        calcCenters();
        layout(((int) this.mComputedMinX) - getPaddingLeft(), ((int) this.mComputedMinY) - getPaddingTop(), getPaddingRight() + ((int) this.mComputedMaxX), getPaddingBottom() + ((int) this.mComputedMaxY));
        if (Float.isNaN(this.e)) {
            return;
        }
        f();
    }

    public final void e() {
        int i;
        if (this.f == null || (i = this.mCount) == 0) {
            return;
        }
        View[] viewArr = this.j;
        if (viewArr == null || viewArr.length != i) {
            this.j = new View[i];
        }
        for (int i2 = 0; i2 < this.mCount; i2++) {
            this.j[i2] = this.f.getViewById(this.mIds[i2]);
        }
    }

    public void calcCenters() {
        if (this.f == null) {
            return;
        }
        if (this.i || Float.isNaN(this.mComputedCenterX) || Float.isNaN(this.mComputedCenterY)) {
            if (Float.isNaN(this.c) || Float.isNaN(this.d)) {
                View[] views = getViews(this.f);
                int left = views[0].getLeft();
                int top = views[0].getTop();
                int right = views[0].getRight();
                int bottom = views[0].getBottom();
                for (int i = 0; i < this.mCount; i++) {
                    View view = views[i];
                    left = Math.min(left, view.getLeft());
                    top = Math.min(top, view.getTop());
                    right = Math.max(right, view.getRight());
                    bottom = Math.max(bottom, view.getBottom());
                }
                this.mComputedMaxX = right;
                this.mComputedMaxY = bottom;
                this.mComputedMinX = left;
                this.mComputedMinY = top;
                if (Float.isNaN(this.c)) {
                    this.mComputedCenterX = (left + right) / 2;
                } else {
                    this.mComputedCenterX = this.c;
                }
                if (Float.isNaN(this.d)) {
                    this.mComputedCenterY = (top + bottom) / 2;
                    return;
                } else {
                    this.mComputedCenterY = this.d;
                    return;
                }
            }
            this.mComputedCenterY = this.d;
            this.mComputedCenterX = this.c;
        }
    }

    public final void f() {
        if (this.f == null) {
            return;
        }
        if (this.j == null) {
            e();
        }
        calcCenters();
        double radians = Math.toRadians(this.e);
        float fSin = (float) Math.sin(radians);
        float fCos = (float) Math.cos(radians);
        float f = this.f590g;
        float f2 = f * fCos;
        float f3 = this.h;
        float f4 = (-f3) * fSin;
        float f5 = f * fSin;
        float f6 = f3 * fCos;
        for (int i = 0; i < this.mCount; i++) {
            View view = this.j[i];
            int right = (view.getRight() + view.getLeft()) / 2;
            int bottom = (view.getBottom() + view.getTop()) / 2;
            float f7 = right - this.mComputedCenterX;
            float f8 = bottom - this.mComputedCenterY;
            float f9 = (((f4 * f8) + (f2 * f7)) - f7) + this.k;
            float f10 = (((f6 * f8) + (f7 * f5)) - f8) + this.l;
            view.setTranslationX(f9);
            view.setTranslationY(f10);
            view.setScaleY(this.h);
            view.setScaleX(this.f590g);
            view.setRotation(this.e);
        }
    }
}
