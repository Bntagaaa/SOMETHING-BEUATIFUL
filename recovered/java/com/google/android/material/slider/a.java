package com.google.android.material.slider;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.SeekBar;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewOverlayImpl;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.slider.BaseOnChangeListener;
import com.google.android.material.slider.BaseOnSliderTouchListener;
import com.google.android.material.slider.a;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.google.android.material.tooltip.TooltipDrawable;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
abstract class a<S extends a<S, L, T>, L extends BaseOnChangeListener<S>, T extends BaseOnSliderTouchListener<S>> extends View {
    public static final int d0 = R.style.Widget_MaterialComponents_Slider;
    public final int A;
    public float B;
    public MotionEvent C;
    public LabelFormatter D;
    public boolean E;
    public float F;
    public float G;
    public ArrayList H;
    public int I;
    public int J;
    public float K;
    public float[] L;
    public boolean M;
    public int N;
    public boolean O;
    public boolean P;
    public ColorStateList Q;
    public ColorStateList R;
    public ColorStateList S;
    public ColorStateList T;
    public ColorStateList U;
    public final MaterialShapeDrawable V;
    public Drawable W;

    /* renamed from: a, reason: collision with root package name */
    public final Paint f3219a;
    public List a0;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f3220b;
    public float b0;
    public final Paint c;
    public int c0;
    public final Paint d;
    public final Paint e;
    public final Paint f;

    /* renamed from: g, reason: collision with root package name */
    public final c f3221g;
    public final AccessibilityManager h;
    public b i;
    public final C0040a j;
    public final ArrayList k;
    public final ArrayList l;
    public final ArrayList m;
    public boolean n;
    public ValueAnimator o;
    public ValueAnimator p;
    public final int q;
    public final int r;
    public final int s;
    public final int t;
    public int u;
    public int v;
    public int w;
    public final int x;
    public int y;
    public int z;

    public interface e {
        TooltipDrawable createTooltipDrawable();
    }

    public float getMinSeparation() {
        return 0.0f;
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public int f3224a = -1;

        @Override // java.lang.Runnable
        public void run() {
            a.this.f3221g.sendEventForVirtualView(this.f3224a, 4);
        }

        public b() {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public a(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException, InvocationTargetException {
        int i2 = d0;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        this.k = new ArrayList();
        this.l = new ArrayList();
        this.m = new ArrayList();
        this.n = false;
        this.E = false;
        this.H = new ArrayList();
        this.I = -1;
        this.J = -1;
        this.K = 0.0f;
        this.M = true;
        this.O = false;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        this.V = materialShapeDrawable;
        this.a0 = Collections.EMPTY_LIST;
        this.c0 = 0;
        Context context2 = getContext();
        Paint paint = new Paint();
        this.f3219a = paint;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        Paint.Cap cap = Paint.Cap.ROUND;
        paint.setStrokeCap(cap);
        Paint paint2 = new Paint();
        this.f3220b = paint2;
        paint2.setStyle(style);
        paint2.setStrokeCap(cap);
        Paint paint3 = new Paint(1);
        this.c = paint3;
        Paint.Style style2 = Paint.Style.FILL;
        paint3.setStyle(style2);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint4 = new Paint(1);
        this.d = paint4;
        paint4.setStyle(style2);
        Paint paint5 = new Paint();
        this.e = paint5;
        paint5.setStyle(style);
        paint5.setStrokeCap(cap);
        Paint paint6 = new Paint();
        this.f = paint6;
        paint6.setStyle(style);
        paint6.setStrokeCap(cap);
        Resources resources = context2.getResources();
        this.t = resources.getDimensionPixelSize(R.dimen.mtrl_slider_widget_height);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_slider_track_side_padding);
        this.r = dimensionPixelOffset;
        this.w = dimensionPixelOffset;
        this.s = resources.getDimensionPixelSize(R.dimen.mtrl_slider_thumb_radius);
        this.x = resources.getDimensionPixelOffset(R.dimen.mtrl_slider_track_top);
        this.A = resources.getDimensionPixelSize(R.dimen.mtrl_slider_label_padding);
        this.j = new C0040a(attributeSet, i);
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R.styleable.Slider, i, i2, new int[0]);
        this.F = typedArrayObtainStyledAttributes.getFloat(R.styleable.Slider_android_valueFrom, 0.0f);
        this.G = typedArrayObtainStyledAttributes.getFloat(R.styleable.Slider_android_valueTo, 1.0f);
        setValues(Float.valueOf(this.F));
        this.K = typedArrayObtainStyledAttributes.getFloat(R.styleable.Slider_android_stepSize, 0.0f);
        int i3 = R.styleable.Slider_trackColor;
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i3);
        int i4 = zHasValue ? i3 : R.styleable.Slider_trackColorInactive;
        i3 = zHasValue ? i3 : R.styleable.Slider_trackColorActive;
        ColorStateList colorStateList = MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, i4);
        setTrackInactiveTintList(colorStateList == null ? AppCompatResources.getColorStateList(context2, R.color.material_slider_inactive_track_color) : colorStateList);
        ColorStateList colorStateList2 = MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, i3);
        setTrackActiveTintList(colorStateList2 == null ? AppCompatResources.getColorStateList(context2, R.color.material_slider_active_track_color) : colorStateList2);
        materialShapeDrawable.setFillColor(MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, R.styleable.Slider_thumbColor));
        int i5 = R.styleable.Slider_thumbStrokeColor;
        if (typedArrayObtainStyledAttributes.hasValue(i5)) {
            setThumbStrokeColor(MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, i5));
        }
        setThumbStrokeWidth(typedArrayObtainStyledAttributes.getDimension(R.styleable.Slider_thumbStrokeWidth, 0.0f));
        ColorStateList colorStateList3 = MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, R.styleable.Slider_haloColor);
        setHaloTintList(colorStateList3 == null ? AppCompatResources.getColorStateList(context2, R.color.material_slider_halo_color) : colorStateList3);
        this.M = typedArrayObtainStyledAttributes.getBoolean(R.styleable.Slider_tickVisible, true);
        int i6 = R.styleable.Slider_tickColor;
        boolean zHasValue2 = typedArrayObtainStyledAttributes.hasValue(i6);
        int i7 = zHasValue2 ? i6 : R.styleable.Slider_tickColorInactive;
        i6 = zHasValue2 ? i6 : R.styleable.Slider_tickColorActive;
        ColorStateList colorStateList4 = MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, i7);
        setTickInactiveTintList(colorStateList4 == null ? AppCompatResources.getColorStateList(context2, R.color.material_slider_inactive_tick_marks_color) : colorStateList4);
        ColorStateList colorStateList5 = MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, i6);
        setTickActiveTintList(colorStateList5 == null ? AppCompatResources.getColorStateList(context2, R.color.material_slider_active_tick_marks_color) : colorStateList5);
        setThumbRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Slider_thumbRadius, 0));
        setHaloRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Slider_haloRadius, 0));
        setThumbElevation(typedArrayObtainStyledAttributes.getDimension(R.styleable.Slider_thumbElevation, 0.0f));
        setTrackHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Slider_trackHeight, 0));
        setLabelBehavior(typedArrayObtainStyledAttributes.getInt(R.styleable.Slider_labelBehavior, 0));
        if (!typedArrayObtainStyledAttributes.getBoolean(R.styleable.Slider_android_enabled, true)) {
            setEnabled(false);
        }
        typedArrayObtainStyledAttributes.recycle();
        setFocusable(true);
        setClickable(true);
        materialShapeDrawable.setShadowCompatibilityMode(2);
        this.q = ViewConfiguration.get(context2).getScaledTouchSlop();
        c cVar = new c(this);
        this.f3221g = cVar;
        ViewCompat.setAccessibilityDelegate(this, cVar);
        this.h = (AccessibilityManager) getContext().getSystemService("accessibility");
    }

    /* renamed from: com.google.android.material.slider.a$a, reason: collision with other inner class name */
    public class C0040a implements e {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ AttributeSet f3222a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f3223b;

        public C0040a(AttributeSet attributeSet, int i) {
            this.f3222a = attributeSet;
            this.f3223b = i;
        }

        @Override // com.google.android.material.slider.a.e
        public TooltipDrawable createTooltipDrawable() {
            a aVar = a.this;
            TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(aVar.getContext(), this.f3222a, R.styleable.Slider, this.f3223b, a.d0, new int[0]);
            TooltipDrawable tooltipDrawableCreateFromAttributes = TooltipDrawable.createFromAttributes(aVar.getContext(), null, 0, typedArrayObtainStyledAttributes.getResourceId(R.styleable.Slider_labelStyle, R.style.Widget_MaterialComponents_Tooltip));
            typedArrayObtainStyledAttributes.recycle();
            return tooltipDrawableCreateFromAttributes;
        }
    }

    public final boolean j(float f) {
        double dDoubleValue = new BigDecimal(Float.toString(f)).divide(new BigDecimal(Float.toString(this.K)), MathContext.DECIMAL64).doubleValue();
        return Math.abs(((double) Math.round(dDoubleValue)) - dDoubleValue) < 1.0E-4d;
    }

    public final void w() {
        if (this.P) {
            float f = this.F;
            float f2 = this.G;
            if (f >= f2) {
                throw new IllegalStateException("valueFrom(" + this.F + ") must be smaller than valueTo(" + this.G + ")");
            }
            if (f2 <= f) {
                throw new IllegalStateException("valueTo(" + this.G + ") must be greater than valueFrom(" + this.F + ")");
            }
            if (this.K > 0.0f && !j(f2 - f)) {
                throw new IllegalStateException("The stepSize(" + this.K + ") must be 0, or a factor of the valueFrom(" + this.F + ")-valueTo(" + this.G + ") range");
            }
            Iterator it = this.H.iterator();
            while (it.hasNext()) {
                Float f3 = (Float) it.next();
                if (f3.floatValue() < this.F || f3.floatValue() > this.G) {
                    throw new IllegalStateException("Slider value(" + f3 + ") must be greater or equal to valueFrom(" + this.F + "), and lower or equal to valueTo(" + this.G + ")");
                }
                if (this.K > 0.0f && !j(f3.floatValue() - this.F)) {
                    float f4 = this.F;
                    float f5 = this.K;
                    throw new IllegalStateException("Value(" + f3 + ") must be equal to valueFrom(" + f4 + ") plus a multiple of stepSize(" + f5 + ") when using stepSize(" + f5 + ")");
                }
            }
            float minSeparation = getMinSeparation();
            if (minSeparation < 0.0f) {
                throw new IllegalStateException("minSeparation(" + minSeparation + ") must be greater or equal to 0");
            }
            float f6 = this.K;
            if (f6 > 0.0f && minSeparation > 0.0f) {
                if (this.c0 != 1) {
                    throw new IllegalStateException("minSeparation(" + minSeparation + ") cannot be set as a dimension when using stepSize(" + this.K + ")");
                }
                if (minSeparation < f6 || !j(minSeparation)) {
                    float f7 = this.K;
                    throw new IllegalStateException("minSeparation(" + minSeparation + ") must be greater or equal and a multiple of stepSize(" + f7 + ") when using stepSize(" + f7 + ")");
                }
            }
            float f8 = this.K;
            if (f8 != 0.0f) {
                if (((int) f8) != f8) {
                    Log.w("a", "Floating point value used for stepSize(" + f8 + "). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.");
                }
                float f9 = this.F;
                if (((int) f9) != f9) {
                    Log.w("a", "Floating point value used for valueFrom(" + f9 + "). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.");
                }
                float f10 = this.G;
                if (((int) f10) != f10) {
                    Log.w("a", "Floating point value used for valueTo(" + f10 + "). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.");
                }
            }
            this.P = false;
        }
    }

    public float getValueFrom() {
        return this.F;
    }

    public void setValueFrom(float f) {
        this.F = f;
        this.P = true;
        postInvalidate();
    }

    public float getValueTo() {
        return this.G;
    }

    public void setValueTo(float f) {
        this.G = f;
        this.P = true;
        postInvalidate();
    }

    public List getValues() {
        return new ArrayList(this.H);
    }

    public void setValues(Float... fArr) {
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, fArr);
        r(arrayList);
    }

    public final void r(ArrayList arrayList) {
        ViewOverlayImpl contentViewOverlay;
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("At least one value must be set");
        }
        Collections.sort(arrayList);
        if (this.H.size() == arrayList.size() && this.H.equals(arrayList)) {
            return;
        }
        this.H = arrayList;
        this.P = true;
        this.J = 0;
        v();
        ArrayList arrayList2 = this.k;
        if (arrayList2.size() > this.H.size()) {
            List<TooltipDrawable> listSubList = arrayList2.subList(this.H.size(), arrayList2.size());
            for (TooltipDrawable tooltipDrawable : listSubList) {
                if (ViewCompat.isAttachedToWindow(this) && (contentViewOverlay = ViewUtils.getContentViewOverlay(this)) != null) {
                    contentViewOverlay.remove(tooltipDrawable);
                    tooltipDrawable.detachView(ViewUtils.getContentView(this));
                }
            }
            listSubList.clear();
        }
        while (arrayList2.size() < this.H.size()) {
            TooltipDrawable tooltipDrawableCreateTooltipDrawable = this.j.createTooltipDrawable();
            arrayList2.add(tooltipDrawableCreateTooltipDrawable);
            if (ViewCompat.isAttachedToWindow(this)) {
                tooltipDrawableCreateTooltipDrawable.setRelativeToView(ViewUtils.getContentView(this));
            }
        }
        int i = arrayList2.size() == 1 ? 0 : 1;
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            ((TooltipDrawable) it.next()).setStrokeWidth(i);
        }
        Iterator it2 = this.l.iterator();
        while (it2.hasNext()) {
            BaseOnChangeListener baseOnChangeListener = (BaseOnChangeListener) it2.next();
            Iterator it3 = this.H.iterator();
            while (it3.hasNext()) {
                baseOnChangeListener.onValueChange(this, ((Float) it3.next()).floatValue(), false);
            }
        }
        postInvalidate();
    }

    public float getStepSize() {
        return this.K;
    }

    public void setStepSize(float f) {
        if (f >= 0.0f) {
            if (this.K != f) {
                this.K = f;
                this.P = true;
                postInvalidate();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("The stepSize(" + f + ") must be 0, or a factor of the valueFrom(" + this.F + ")-valueTo(" + this.G + ") range");
    }

    public void setCustomThumbDrawable(Drawable drawable) {
        Drawable drawableNewDrawable = drawable.mutate().getConstantState().newDrawable();
        a(drawableNewDrawable);
        this.W = drawableNewDrawable;
        this.a0.clear();
        postInvalidate();
    }

    public final void a(Drawable drawable) {
        int i = this.y * 2;
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth == -1 && intrinsicHeight == -1) {
            drawable.setBounds(0, 0, i, i);
        } else {
            float fMax = i / Math.max(intrinsicWidth, intrinsicHeight);
            drawable.setBounds(0, 0, (int) (intrinsicWidth * fMax), (int) (intrinsicHeight * fMax));
        }
    }

    public int getFocusedThumbIndex() {
        return this.J;
    }

    public void setFocusedThumbIndex(int i) {
        if (i < 0 || i >= this.H.size()) {
            throw new IllegalArgumentException("index out of range");
        }
        this.J = i;
        this.f3221g.requestKeyboardFocusForVirtualView(i);
        postInvalidate();
    }

    public void setActiveThumbIndex(int i) {
        this.I = i;
    }

    public int getActiveThumbIndex() {
        return this.I;
    }

    public void addOnChangeListener(@NonNull L l) {
        this.l.add(l);
    }

    public void removeOnChangeListener(@NonNull L l) {
        this.l.remove(l);
    }

    public void clearOnChangeListeners() {
        this.l.clear();
    }

    public void addOnSliderTouchListener(@NonNull T t) {
        this.m.add(t);
    }

    public void removeOnSliderTouchListener(@NonNull T t) {
        this.m.remove(t);
    }

    public void clearOnSliderTouchListeners() {
        this.m.clear();
    }

    public boolean hasLabelFormatter() {
        return this.D != null;
    }

    public void setLabelFormatter(@Nullable LabelFormatter labelFormatter) {
        this.D = labelFormatter;
    }

    public float getThumbElevation() {
        return this.V.getElevation();
    }

    public void setThumbElevation(float f) {
        this.V.setElevation(f);
    }

    public void setThumbElevationResource(@DimenRes int i) {
        setThumbElevation(getResources().getDimension(i));
    }

    @Dimension
    public int getThumbRadius() {
        return this.y;
    }

    public void setThumbRadius(@IntRange(from = 0) @Dimension int i) {
        if (i == this.y) {
            return;
        }
        this.y = i;
        this.w = this.r + Math.max(i - this.s, 0);
        if (ViewCompat.isLaidOut(this)) {
            this.N = Math.max(getWidth() - (this.w * 2), 0);
            l();
        }
        MaterialShapeDrawable materialShapeDrawable = this.V;
        materialShapeDrawable.setShapeAppearanceModel(ShapeAppearanceModel.builder().setAllCorners(0, this.y).build());
        int i2 = this.y * 2;
        materialShapeDrawable.setBounds(0, 0, i2, i2);
        Drawable drawable = this.W;
        if (drawable != null) {
            a(drawable);
        }
        Iterator it = this.a0.iterator();
        while (it.hasNext()) {
            a((Drawable) it.next());
        }
        postInvalidate();
    }

    public void setThumbRadiusResource(@DimenRes int i) {
        setThumbRadius(getResources().getDimensionPixelSize(i));
    }

    public void setThumbStrokeColor(@Nullable ColorStateList colorStateList) {
        this.V.setStrokeColor(colorStateList);
        postInvalidate();
    }

    public void setThumbStrokeColorResource(@ColorRes int i) {
        if (i != 0) {
            setThumbStrokeColor(AppCompatResources.getColorStateList(getContext(), i));
        }
    }

    public ColorStateList getThumbStrokeColor() {
        return this.V.getStrokeColor();
    }

    public void setThumbStrokeWidth(float f) {
        this.V.setStrokeWidth(f);
        postInvalidate();
    }

    public void setThumbStrokeWidthResource(@DimenRes int i) {
        if (i != 0) {
            setThumbStrokeWidth(getResources().getDimension(i));
        }
    }

    public float getThumbStrokeWidth() {
        return this.V.getStrokeWidth();
    }

    @Dimension
    public int getHaloRadius() {
        return this.z;
    }

    public void setHaloRadius(@IntRange(from = 0) @Dimension int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (i == this.z) {
            return;
        }
        this.z = i;
        Drawable background = getBackground();
        if ((getBackground() instanceof RippleDrawable) && (background instanceof RippleDrawable)) {
            DrawableUtils.setRippleDrawableRadius((RippleDrawable) background, this.z);
        } else {
            postInvalidate();
        }
    }

    public void setHaloRadiusResource(@DimenRes int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        setHaloRadius(getResources().getDimensionPixelSize(i));
    }

    public int getLabelBehavior() {
        return this.u;
    }

    public void setLabelBehavior(int i) {
        if (this.u != i) {
            this.u = i;
            requestLayout();
        }
    }

    @Dimension
    public int getTrackSidePadding() {
        return this.w;
    }

    @Dimension
    public int getTrackWidth() {
        return this.N;
    }

    @Dimension
    public int getTrackHeight() {
        return this.v;
    }

    public void setTrackHeight(@IntRange(from = 0) @Dimension int i) {
        if (this.v != i) {
            this.v = i;
            this.f3219a.setStrokeWidth(i);
            this.f3220b.setStrokeWidth(this.v);
            this.e.setStrokeWidth(this.v / 2.0f);
            this.f.setStrokeWidth(this.v / 2.0f);
            postInvalidate();
        }
    }

    @NonNull
    public ColorStateList getHaloTintList() {
        return this.Q;
    }

    public void setHaloTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.Q)) {
            return;
        }
        this.Q = colorStateList;
        Drawable background = getBackground();
        if ((getBackground() instanceof RippleDrawable) && (background instanceof RippleDrawable)) {
            ((RippleDrawable) background).setColor(colorStateList);
            return;
        }
        Paint paint = this.d;
        paint.setColor(h(colorStateList));
        paint.setAlpha(63);
        invalidate();
    }

    @NonNull
    public ColorStateList getThumbTintList() {
        return this.V.getFillColor();
    }

    public void setThumbTintList(@NonNull ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = this.V;
        if (colorStateList.equals(materialShapeDrawable.getFillColor())) {
            return;
        }
        materialShapeDrawable.setFillColor(colorStateList);
        invalidate();
    }

    @NonNull
    public ColorStateList getTickTintList() {
        if (!this.S.equals(this.R)) {
            throw new IllegalStateException("The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead.");
        }
        return this.R;
    }

    public void setTickTintList(@NonNull ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    @NonNull
    public ColorStateList getTickActiveTintList() {
        return this.R;
    }

    public void setTickActiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.R)) {
            return;
        }
        this.R = colorStateList;
        this.f.setColor(h(colorStateList));
        invalidate();
    }

    @NonNull
    public ColorStateList getTickInactiveTintList() {
        return this.S;
    }

    public void setTickInactiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.S)) {
            return;
        }
        this.S = colorStateList;
        this.e.setColor(h(colorStateList));
        invalidate();
    }

    public boolean isTickVisible() {
        return this.M;
    }

    public void setTickVisible(boolean z) {
        if (this.M != z) {
            this.M = z;
            postInvalidate();
        }
    }

    @NonNull
    public ColorStateList getTrackTintList() {
        if (!this.U.equals(this.T)) {
            throw new IllegalStateException("The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead.");
        }
        return this.T;
    }

    public void setTrackTintList(@NonNull ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    @NonNull
    public ColorStateList getTrackActiveTintList() {
        return this.T;
    }

    public void setTrackActiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.T)) {
            return;
        }
        this.T = colorStateList;
        this.f3220b.setColor(h(colorStateList));
        invalidate();
    }

    @NonNull
    public ColorStateList getTrackInactiveTintList() {
        return this.U;
    }

    public void setTrackInactiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.U)) {
            return;
        }
        this.U = colorStateList;
        this.f3219a.setColor(h(colorStateList));
        invalidate();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setLayerType(z ? 0 : 2, null);
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            ((TooltipDrawable) it.next()).setRelativeToView(ViewUtils.getContentView(this));
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        b bVar = this.i;
        if (bVar != null) {
            removeCallbacks(bVar);
        }
        this.n = false;
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            TooltipDrawable tooltipDrawable = (TooltipDrawable) it.next();
            ViewOverlayImpl contentViewOverlay = ViewUtils.getContentViewOverlay(this);
            if (contentViewOverlay != null) {
                contentViewOverlay.remove(tooltipDrawable);
                tooltipDrawable.detachView(ViewUtils.getContentView(this));
            }
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = this.t;
        int i4 = this.u;
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(i3 + ((i4 == 1 || i4 == 3) ? ((TooltipDrawable) this.k.get(0)).getIntrinsicHeight() : 0), 1073741824));
    }

    public final void l() {
        if (this.K <= 0.0f) {
            return;
        }
        w();
        int iMin = Math.min((int) (((this.G - this.F) / this.K) + 1.0f), (this.N / (this.v * 2)) + 1);
        float[] fArr = this.L;
        if (fArr == null || fArr.length != iMin * 2) {
            this.L = new float[iMin * 2];
        }
        float f = this.N / (iMin - 1);
        for (int i = 0; i < iMin * 2; i += 2) {
            float[] fArr2 = this.L;
            fArr2[i] = ((i / 2) * f) + this.w;
            fArr2[i + 1] = b();
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        this.N = Math.max(i - (this.w * 2), 0);
        l();
        v();
    }

    public final int b() {
        int i = this.x;
        int i2 = this.u;
        return i + ((i2 == 1 || i2 == 3) ? ((TooltipDrawable) this.k.get(0)).getIntrinsicHeight() : 0);
    }

    @Override // android.view.View
    public void onDraw(@NonNull Canvas canvas) {
        int i;
        int i2 = 0;
        if (this.P) {
            w();
            l();
        }
        super.onDraw(canvas);
        int iB = b();
        int i3 = this.N;
        float[] fArrG = g();
        int i4 = this.w;
        float f = i3;
        float f2 = (fArrG[1] * f) + i4;
        float f3 = i4 + i3;
        Paint paint = this.f3219a;
        if (f2 < f3) {
            float f4 = iB;
            canvas.drawLine(f2, f4, f3, f4, paint);
        }
        float f5 = this.w;
        float f6 = (fArrG[0] * f) + f5;
        if (f6 > f5) {
            float f7 = iB;
            canvas.drawLine(f5, f7, f6, f7, paint);
        }
        if (((Float) Collections.max(getValues())).floatValue() > this.F) {
            int i5 = this.N;
            float[] fArrG2 = g();
            float f8 = this.w;
            float f9 = i5;
            float f10 = (fArrG2[1] * f9) + f8;
            float f11 = (fArrG2[0] * f9) + f8;
            float f12 = iB;
            canvas.drawLine(f11, f12, f10, f12, this.f3220b);
        }
        if (this.M && this.K > 0.0f) {
            float[] fArrG3 = g();
            int iRound = Math.round(fArrG3[0] * ((this.L.length / 2) - 1));
            int iRound2 = Math.round(fArrG3[1] * ((this.L.length / 2) - 1));
            float[] fArr = this.L;
            int i6 = iRound * 2;
            Paint paint2 = this.e;
            canvas.drawPoints(fArr, 0, i6, paint2);
            int i7 = iRound2 * 2;
            canvas.drawPoints(this.L, i6, i7 - i6, this.f);
            float[] fArr2 = this.L;
            canvas.drawPoints(fArr2, i7, fArr2.length - i7, paint2);
        }
        if ((this.E || isFocused() || this.u == 3) && isEnabled()) {
            int i8 = this.N;
            if (!(getBackground() instanceof RippleDrawable)) {
                int iO = (int) ((o(((Float) this.H.get(this.J)).floatValue()) * i8) + this.w);
                if (Build.VERSION.SDK_INT < 28) {
                    int i9 = this.z;
                    canvas.clipRect(iO - i9, iB - i9, iO + i9, i9 + iB, Region.Op.UNION);
                }
                canvas.drawCircle(iO, iB, this.z, this.d);
            }
            if (this.I == -1 && this.u != 3) {
                e();
            } else if (this.u != 2) {
                if (!this.n) {
                    this.n = true;
                    ValueAnimator valueAnimatorC = c(true);
                    this.o = valueAnimatorC;
                    this.p = null;
                    valueAnimatorC.start();
                }
                ArrayList arrayList = this.k;
                Iterator it = arrayList.iterator();
                for (int i10 = 0; i10 < this.H.size() && it.hasNext(); i10++) {
                    if (i10 != this.J) {
                        q((TooltipDrawable) it.next(), ((Float) this.H.get(i10)).floatValue());
                    }
                }
                if (!it.hasNext()) {
                    throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", Integer.valueOf(arrayList.size()), Integer.valueOf(this.H.size())));
                }
                q((TooltipDrawable) it.next(), ((Float) this.H.get(this.J)).floatValue());
            }
        } else {
            e();
        }
        int i11 = this.N;
        while (i2 < this.H.size()) {
            float fFloatValue = ((Float) this.H.get(i2)).floatValue();
            Drawable drawable = this.W;
            if (drawable != null) {
                i = iB;
                d(canvas, i11, i, fFloatValue, drawable);
            } else {
                i = iB;
                if (i2 < this.a0.size()) {
                    d(canvas, i11, i, fFloatValue, (Drawable) this.a0.get(i2));
                } else {
                    if (!isEnabled()) {
                        canvas.drawCircle((o(fFloatValue) * i11) + this.w, i, this.y, this.c);
                    }
                    d(canvas, i11, i, fFloatValue, this.V);
                }
            }
            i2++;
            iB = i;
        }
    }

    public final float[] g() {
        float fFloatValue = ((Float) Collections.max(getValues())).floatValue();
        float fFloatValue2 = ((Float) Collections.min(getValues())).floatValue();
        if (this.H.size() == 1) {
            fFloatValue2 = this.F;
        }
        float fO = o(fFloatValue2);
        float fO2 = o(fFloatValue);
        return k() ? new float[]{fO2, fO} : new float[]{fO, fO2};
    }

    public final float o(float f) {
        float f2 = this.F;
        float f3 = (f - f2) / (this.G - f2);
        return k() ? 1.0f - f3 : f3;
    }

    public final void d(Canvas canvas, int i, int i2, float f, Drawable drawable) {
        canvas.save();
        canvas.translate((this.w + ((int) (o(f) * i))) - (drawable.getBounds().width() / 2.0f), i2 - (drawable.getBounds().height() / 2.0f));
        drawable.draw(canvas);
        canvas.restore();
    }

    public final void v() {
        if (!(getBackground() instanceof RippleDrawable) || getMeasuredWidth() <= 0) {
            return;
        }
        Drawable background = getBackground();
        if (background instanceof RippleDrawable) {
            int iO = (int) ((o(((Float) this.H.get(this.J)).floatValue()) * this.N) + this.w);
            int iB = b();
            int i = this.z;
            DrawableCompat.setHotspotBounds(background, iO - i, iB - i, iO + i, iB + i);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (isEnabled()) {
            float x = motionEvent.getX();
            float f = (x - this.w) / this.N;
            this.b0 = f;
            float fMax = Math.max(0.0f, f);
            this.b0 = fMax;
            this.b0 = Math.min(1.0f, fMax);
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                int i = this.q;
                if (actionMasked == 1) {
                    this.E = false;
                    MotionEvent motionEvent2 = this.C;
                    if (motionEvent2 != null && motionEvent2.getActionMasked() == 0) {
                        float f2 = i;
                        if (Math.abs(this.C.getX() - motionEvent.getX()) <= f2 && Math.abs(this.C.getY() - motionEvent.getY()) <= f2 && pickActiveThumb()) {
                            p();
                        }
                    }
                    if (this.I != -1) {
                        t();
                        this.I = -1;
                        Iterator it = this.m.iterator();
                        while (it.hasNext()) {
                            ((BaseOnSliderTouchListener) it.next()).onStopTrackingTouch(this);
                        }
                    }
                    invalidate();
                } else if (actionMasked == 2) {
                    if (!this.E) {
                        if (!i() || Math.abs(x - this.B) >= i) {
                            getParent().requestDisallowInterceptTouchEvent(true);
                            p();
                        }
                    }
                    if (pickActiveThumb()) {
                        this.E = true;
                        t();
                        v();
                        invalidate();
                    }
                }
            } else {
                this.B = x;
                if (!i()) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    if (pickActiveThumb()) {
                        requestFocus();
                        this.E = true;
                        t();
                        v();
                        invalidate();
                        p();
                    }
                }
            }
            setPressed(this.E);
            this.C = MotionEvent.obtain(motionEvent);
            return true;
        }
        return false;
    }

    public boolean pickActiveThumb() {
        if (this.I == -1) {
            float f = this.b0;
            if (k()) {
                f = 1.0f - f;
            }
            float f2 = this.G;
            float f3 = this.F;
            float fA = _COROUTINE.a.a(f2, f3, f, f3);
            float fO = (o(fA) * this.N) + this.w;
            this.I = 0;
            float fAbs = Math.abs(((Float) this.H.get(0)).floatValue() - fA);
            for (int i = 1; i < this.H.size(); i++) {
                float fAbs2 = Math.abs(((Float) this.H.get(i)).floatValue() - fA);
                float fO2 = (o(((Float) this.H.get(i)).floatValue()) * this.N) + this.w;
                if (Float.compare(fAbs2, fAbs) > 1) {
                    break;
                }
                boolean z = !k() ? fO2 - fO >= 0.0f : fO2 - fO <= 0.0f;
                if (Float.compare(fAbs2, fAbs) < 0) {
                    this.I = i;
                } else {
                    if (Float.compare(fAbs2, fAbs) != 0) {
                        continue;
                    } else {
                        if (Math.abs(fO2 - fO) < this.q) {
                            this.I = -1;
                            return false;
                        }
                        if (z) {
                            this.I = i;
                        }
                    }
                }
                fAbs = fAbs2;
            }
            if (this.I == -1) {
                return false;
            }
        }
        return true;
    }

    public final boolean s(int i, float f) {
        this.J = i;
        if (Math.abs(f - ((Float) this.H.get(i)).floatValue()) < 1.0E-4d) {
            return false;
        }
        float minSeparation = getMinSeparation();
        if (this.c0 == 0) {
            if (minSeparation == 0.0f) {
                minSeparation = 0.0f;
            } else {
                float f2 = this.F;
                minSeparation = _COROUTINE.a.a(f2, this.G, (minSeparation - this.w) / this.N, f2);
            }
        }
        if (k()) {
            minSeparation = -minSeparation;
        }
        int i2 = i + 1;
        int i3 = i - 1;
        this.H.set(i, Float.valueOf(MathUtils.clamp(f, i3 < 0 ? this.F : minSeparation + ((Float) this.H.get(i3)).floatValue(), i2 >= this.H.size() ? this.G : ((Float) this.H.get(i2)).floatValue() - minSeparation)));
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            ((BaseOnChangeListener) it.next()).onValueChange(this, ((Float) this.H.get(i)).floatValue(), true);
        }
        AccessibilityManager accessibilityManager = this.h;
        if (accessibilityManager != null && accessibilityManager.isEnabled()) {
            b bVar = this.i;
            if (bVar == null) {
                this.i = new b();
            } else {
                removeCallbacks(bVar);
            }
            b bVar2 = this.i;
            bVar2.f3224a = i;
            postDelayed(bVar2, 200L);
        }
        return true;
    }

    public void setSeparationUnit(int i) {
        this.c0 = i;
        this.P = true;
        postInvalidate();
    }

    public final void t() {
        double dRound;
        float f = this.b0;
        float f2 = this.K;
        if (f2 > 0.0f) {
            dRound = Math.round(f * r1) / ((int) ((this.G - this.F) / f2));
        } else {
            dRound = f;
        }
        if (k()) {
            dRound = 1.0d - dRound;
        }
        float f3 = this.G;
        s(this.I, (float) ((dRound * (f3 - r1)) + this.F));
    }

    public final ValueAnimator c(boolean z) {
        TimeInterpolator timeInterpolator;
        float fFloatValue = z ? 0.0f : 1.0f;
        ValueAnimator valueAnimator = z ? this.p : this.o;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fFloatValue, z ? 1.0f : 0.0f);
        valueAnimatorOfFloat.setDuration(z ? 83L : 117L);
        if (z) {
            timeInterpolator = AnimationUtils.DECELERATE_INTERPOLATOR;
        } else {
            timeInterpolator = AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR;
        }
        valueAnimatorOfFloat.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat.addUpdateListener(new com.google.android.material.slider.b(this));
        return valueAnimatorOfFloat;
    }

    public final void e() {
        if (this.n) {
            this.n = false;
            ValueAnimator valueAnimatorC = c(false);
            this.p = valueAnimatorC;
            this.o = null;
            valueAnimatorC.addListener(new com.google.android.material.slider.c(this));
            this.p.start();
        }
    }

    public final String f(float f) {
        if (hasLabelFormatter()) {
            return this.D.getFormattedValue(f);
        }
        return String.format(((float) ((int) f)) == f ? "%.0f" : "%.2f", Float.valueOf(f));
    }

    public final void q(TooltipDrawable tooltipDrawable, float f) {
        tooltipDrawable.setText(f(f));
        int iO = (this.w + ((int) (o(f) * this.N))) - (tooltipDrawable.getIntrinsicWidth() / 2);
        int iB = b() - (this.A + this.y);
        tooltipDrawable.setBounds(iO, iB - tooltipDrawable.getIntrinsicHeight(), tooltipDrawable.getIntrinsicWidth() + iO, iB);
        Rect rect = new Rect(tooltipDrawable.getBounds());
        DescendantOffsetUtils.offsetDescendantRect(ViewUtils.getContentView(this), this, rect);
        tooltipDrawable.setBounds(rect);
        ViewUtils.getContentViewOverlay(this).add(tooltipDrawable);
    }

    public final boolean i() {
        for (ViewParent parent = getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if ((viewGroup.canScrollVertically(1) || viewGroup.canScrollVertically(-1)) && viewGroup.shouldDelayChildPressedState()) {
                return true;
            }
        }
        return false;
    }

    public final void p() {
        Iterator it = this.m.iterator();
        while (it.hasNext()) {
            ((BaseOnSliderTouchListener) it.next()).onStartTrackingTouch(this);
        }
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        this.f3219a.setColor(h(this.U));
        this.f3220b.setColor(h(this.T));
        this.e.setColor(h(this.S));
        this.f.setColor(h(this.R));
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            TooltipDrawable tooltipDrawable = (TooltipDrawable) it.next();
            if (tooltipDrawable.isStateful()) {
                tooltipDrawable.setState(getDrawableState());
            }
        }
        MaterialShapeDrawable materialShapeDrawable = this.V;
        if (materialShapeDrawable.isStateful()) {
            materialShapeDrawable.setState(getDrawableState());
        }
        Paint paint = this.d;
        paint.setColor(h(this.Q));
        paint.setAlpha(63);
    }

    public final int h(ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004d  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onKeyDown(int r14, @androidx.annotation.NonNull android.view.KeyEvent r15) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.slider.a.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, @NonNull KeyEvent keyEvent) {
        this.O = false;
        return super.onKeyUp(i, keyEvent);
    }

    public final boolean k() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    public final boolean m(int i) {
        int i2 = this.J;
        int iClamp = (int) MathUtils.clamp(i2 + i, 0L, this.H.size() - 1);
        this.J = iClamp;
        if (iClamp == i2) {
            return false;
        }
        if (this.I != -1) {
            this.I = iClamp;
        }
        v();
        postInvalidate();
        return true;
    }

    public final void n(int i) {
        if (k()) {
            i = i == Integer.MIN_VALUE ? Integer.MAX_VALUE : -i;
        }
        m(i);
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z, int i, @Nullable Rect rect) {
        super.onFocusChanged(z, i, rect);
        c cVar = this.f3221g;
        if (!z) {
            this.I = -1;
            cVar.clearKeyboardFocusForVirtualView(this.J);
            return;
        }
        if (i == 1) {
            m(Integer.MAX_VALUE);
        } else if (i == 2) {
            m(Integer.MIN_VALUE);
        } else if (i == 17) {
            n(Integer.MAX_VALUE);
        } else if (i == 66) {
            n(Integer.MIN_VALUE);
        }
        cVar.requestKeyboardFocusForVirtualView(this.J);
    }

    @Override // android.view.View
    @NonNull
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        return this.f3221g.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(@NonNull KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        d dVar = new d(super.onSaveInstanceState());
        dVar.f3226a = this.F;
        dVar.f3227b = this.G;
        dVar.c = new ArrayList(this.H);
        dVar.d = this.K;
        dVar.e = hasFocus();
        return dVar;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        d dVar = (d) parcelable;
        super.onRestoreInstanceState(dVar.getSuperState());
        this.F = dVar.f3226a;
        this.G = dVar.f3227b;
        r(dVar.c);
        this.K = dVar.d;
        if (dVar.e) {
            requestFocus();
        }
    }

    public static class d extends View.BaseSavedState {
        public static final Parcelable.Creator<d> CREATOR = new C0041a();

        /* renamed from: a, reason: collision with root package name */
        public float f3226a;

        /* renamed from: b, reason: collision with root package name */
        public float f3227b;
        public ArrayList c;
        public float d;
        public boolean e;

        /* renamed from: com.google.android.material.slider.a$d$a, reason: collision with other inner class name */
        public class C0041a implements Parcelable.Creator<d> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NonNull
            public d createFromParcel(@NonNull Parcel parcel) {
                d dVar = new d(parcel);
                dVar.f3226a = parcel.readFloat();
                dVar.f3227b = parcel.readFloat();
                ArrayList arrayList = new ArrayList();
                dVar.c = arrayList;
                parcel.readList(arrayList, Float.class.getClassLoader());
                dVar.d = parcel.readFloat();
                dVar.e = parcel.createBooleanArray()[0];
                return dVar;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NonNull
            public d[] newArray(int i) {
                return new d[i];
            }
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.f3226a);
            parcel.writeFloat(this.f3227b);
            parcel.writeList(this.c);
            parcel.writeFloat(this.d);
            parcel.writeBooleanArray(new boolean[]{this.e});
        }
    }

    public final void u(int i, Rect rect) {
        int iO = this.w + ((int) (o(((Float) getValues().get(i)).floatValue()) * this.N));
        int iB = b();
        int i2 = this.y;
        rect.set(iO - i2, iB - i2, iO + i2, iB + i2);
    }

    public static class c extends ExploreByTouchHelper {
        public final a q;
        public final Rect r;

        public c(a aVar) {
            super(aVar);
            this.r = new Rect();
            this.q = aVar;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public int getVirtualViewAt(float f, float f2) {
            int i = 0;
            while (true) {
                a aVar = this.q;
                if (i >= aVar.getValues().size()) {
                    return -1;
                }
                Rect rect = this.r;
                aVar.u(i, rect);
                if (rect.contains((int) f, (int) f2)) {
                    return i;
                }
                i++;
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void getVisibleVirtualViews(List<Integer> list) {
            for (int i = 0; i < this.q.getValues().size(); i++) {
                list.add(Integer.valueOf(i));
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            String string;
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SET_PROGRESS);
            a aVar = this.q;
            List values = aVar.getValues();
            float fFloatValue = ((Float) values.get(i)).floatValue();
            float valueFrom = aVar.getValueFrom();
            float valueTo = aVar.getValueTo();
            if (aVar.isEnabled()) {
                if (fFloatValue > valueFrom) {
                    accessibilityNodeInfoCompat.addAction(8192);
                }
                if (fFloatValue < valueTo) {
                    accessibilityNodeInfoCompat.addAction(4096);
                }
            }
            accessibilityNodeInfoCompat.setRangeInfo(AccessibilityNodeInfoCompat.RangeInfoCompat.obtain(1, valueFrom, valueTo, fFloatValue));
            accessibilityNodeInfoCompat.setClassName(SeekBar.class.getName());
            StringBuilder sb = new StringBuilder();
            if (aVar.getContentDescription() != null) {
                sb.append(aVar.getContentDescription());
                sb.append(",");
            }
            if (values.size() > 1) {
                if (i == aVar.getValues().size() - 1) {
                    string = aVar.getContext().getString(R.string.material_slider_range_end);
                } else if (i == 0) {
                    string = aVar.getContext().getString(R.string.material_slider_range_start);
                } else {
                    string = "";
                }
                sb.append(string);
                sb.append(aVar.f(fFloatValue));
            }
            accessibilityNodeInfoCompat.setContentDescription(sb.toString());
            Rect rect = this.r;
            aVar.u(i, rect);
            accessibilityNodeInfoCompat.setBoundsInParent(rect);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            a aVar = this.q;
            if (!aVar.isEnabled()) {
                return false;
            }
            if (i2 != 4096 && i2 != 8192) {
                if (i2 != 16908349 || bundle == null || !bundle.containsKey(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE)) {
                    return false;
                }
                float f = bundle.getFloat(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE);
                int i3 = a.d0;
                if (!aVar.s(i, f)) {
                    return false;
                }
                aVar.v();
                aVar.postInvalidate();
                invalidateVirtualView(i);
                return true;
            }
            int i4 = a.d0;
            float fRound = aVar.K;
            if (fRound == 0.0f) {
                fRound = 1.0f;
            }
            if ((aVar.G - aVar.F) / fRound > 20) {
                fRound *= Math.round(r1 / r4);
            }
            if (i2 == 8192) {
                fRound = -fRound;
            }
            if (aVar.k()) {
                fRound = -fRound;
            }
            if (!aVar.s(i, MathUtils.clamp(((Float) aVar.getValues().get(i)).floatValue() + fRound, aVar.getValueFrom(), aVar.getValueTo()))) {
                return false;
            }
            aVar.v();
            aVar.postInvalidate();
            invalidateVirtualView(i);
            return true;
        }
    }
}
