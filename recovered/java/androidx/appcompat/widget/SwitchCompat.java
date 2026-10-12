package androidx.appcompat.widget;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ActionMode;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.annotation.DoNotInline;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.text.AllCapsTransformationMethod;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class SwitchCompat extends CompoundButton implements EmojiCompatConfigurationView {
    public static final Property R = new a(Float.class, "thumbPos");
    public static final int[] S = {R.attr.state_checked};
    public int A;
    public int B;
    public int C;
    public int D;
    public int E;
    public int F;
    public int G;
    public boolean H;
    public final TextPaint I;
    public ColorStateList J;
    public StaticLayout K;
    public StaticLayout L;
    public AllCapsTransformationMethod M;
    public ObjectAnimator N;
    public g O;
    public c P;
    public final Rect Q;

    /* renamed from: a, reason: collision with root package name */
    public Drawable f422a;

    /* renamed from: b, reason: collision with root package name */
    public ColorStateList f423b;
    public PorterDuff.Mode c;
    public boolean d;
    public boolean e;
    public Drawable f;

    /* renamed from: g, reason: collision with root package name */
    public ColorStateList f424g;
    public PorterDuff.Mode h;
    public boolean i;
    public boolean j;
    public int k;
    public int l;
    public int m;
    public boolean n;
    public CharSequence o;
    public CharSequence p;
    public CharSequence q;
    public CharSequence r;
    public boolean s;
    public int t;
    public final int u;
    public float v;
    public float w;
    public final VelocityTracker x;
    public final int y;
    public float z;

    public class a extends Property<SwitchCompat, Float> {
        @Override // android.util.Property
        public Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.z);
        }

        @Override // android.util.Property
        public void set(SwitchCompat switchCompat, Float f) {
            switchCompat.z = f.floatValue();
            switchCompat.invalidate();
        }
    }

    public SwitchCompat(@NonNull Context context) {
        this(context, null);
    }

    public SwitchCompat(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R.attr.switchStyle);
    }

    public SwitchCompat(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) throws Resources.NotFoundException {
        super(context, attributeSet, i);
        this.f423b = null;
        this.c = null;
        this.d = false;
        this.e = false;
        this.f424g = null;
        this.h = null;
        this.i = false;
        this.j = false;
        this.x = VelocityTracker.obtain();
        this.H = true;
        this.Q = new Rect();
        ThemeUtils.checkAppCompatTheme(this, getContext());
        TextPaint textPaint = new TextPaint(1);
        this.I = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        int[] iArr = androidx.appcompat.R.styleable.SwitchCompat;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, tintTypedArrayObtainStyledAttributes.getWrappedTypeArray(), i, 0);
        Drawable drawable = tintTypedArrayObtainStyledAttributes.getDrawable(androidx.appcompat.R.styleable.SwitchCompat_android_thumb);
        this.f422a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        Drawable drawable2 = tintTypedArrayObtainStyledAttributes.getDrawable(androidx.appcompat.R.styleable.SwitchCompat_track);
        this.f = drawable2;
        if (drawable2 != null) {
            drawable2.setCallback(this);
        }
        f(tintTypedArrayObtainStyledAttributes.getText(androidx.appcompat.R.styleable.SwitchCompat_android_textOn));
        e(tintTypedArrayObtainStyledAttributes.getText(androidx.appcompat.R.styleable.SwitchCompat_android_textOff));
        this.s = tintTypedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.SwitchCompat_showText, true);
        this.k = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.SwitchCompat_thumbTextPadding, 0);
        this.l = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.SwitchCompat_switchMinWidth, 0);
        this.m = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.SwitchCompat_switchPadding, 0);
        this.n = tintTypedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.SwitchCompat_splitTrack, false);
        ColorStateList colorStateList = tintTypedArrayObtainStyledAttributes.getColorStateList(androidx.appcompat.R.styleable.SwitchCompat_thumbTint);
        if (colorStateList != null) {
            this.f423b = colorStateList;
            this.d = true;
        }
        PorterDuff.Mode tintMode = DrawableUtils.parseTintMode(tintTypedArrayObtainStyledAttributes.getInt(androidx.appcompat.R.styleable.SwitchCompat_thumbTintMode, -1), null);
        if (this.c != tintMode) {
            this.c = tintMode;
            this.e = true;
        }
        if (this.d || this.e) {
            a();
        }
        ColorStateList colorStateList2 = tintTypedArrayObtainStyledAttributes.getColorStateList(androidx.appcompat.R.styleable.SwitchCompat_trackTint);
        if (colorStateList2 != null) {
            this.f424g = colorStateList2;
            this.i = true;
        }
        PorterDuff.Mode tintMode2 = DrawableUtils.parseTintMode(tintTypedArrayObtainStyledAttributes.getInt(androidx.appcompat.R.styleable.SwitchCompat_trackTintMode, -1), null);
        if (this.h != tintMode2) {
            this.h = tintMode2;
            this.j = true;
        }
        if (this.i || this.j) {
            b();
        }
        int resourceId = tintTypedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.SwitchCompat_switchTextAppearance, 0);
        if (resourceId != 0) {
            setSwitchTextAppearance(context, resourceId);
        }
        new q(this).f(attributeSet, i);
        tintTypedArrayObtainStyledAttributes.recycle();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.u = viewConfiguration.getScaledTouchSlop();
        this.y = viewConfiguration.getScaledMinimumFlingVelocity();
        c().a(attributeSet, i);
        refreshDrawableState();
        setChecked(isChecked());
    }

    public void setSwitchTextAppearance(Context context, int i) {
        Typeface typeface;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, i, androidx.appcompat.R.styleable.TextAppearance);
        ColorStateList colorStateList = tintTypedArrayObtainStyledAttributes.getColorStateList(androidx.appcompat.R.styleable.TextAppearance_android_textColor);
        if (colorStateList != null) {
            this.J = colorStateList;
        } else {
            this.J = getTextColors();
        }
        int dimensionPixelSize = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.TextAppearance_android_textSize, 0);
        if (dimensionPixelSize != 0) {
            float f = dimensionPixelSize;
            TextPaint textPaint = this.I;
            if (f != textPaint.getTextSize()) {
                textPaint.setTextSize(f);
                requestLayout();
            }
        }
        int i2 = tintTypedArrayObtainStyledAttributes.getInt(androidx.appcompat.R.styleable.TextAppearance_android_typeface, -1);
        int i3 = tintTypedArrayObtainStyledAttributes.getInt(androidx.appcompat.R.styleable.TextAppearance_android_textStyle, -1);
        if (i2 == 1) {
            typeface = Typeface.SANS_SERIF;
        } else if (i2 == 2) {
            typeface = Typeface.SERIF;
        } else {
            typeface = i2 != 3 ? null : Typeface.MONOSPACE;
        }
        setSwitchTypeface(typeface, i3);
        if (tintTypedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.TextAppearance_textAllCaps, false)) {
            this.M = new AllCapsTransformationMethod(getContext());
        } else {
            this.M = null;
        }
        f(this.o);
        e(this.q);
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    public void setSwitchTypeface(Typeface typeface, int i) {
        Typeface typefaceCreate;
        TextPaint textPaint = this.I;
        if (i > 0) {
            if (typeface == null) {
                typefaceCreate = Typeface.defaultFromStyle(i);
            } else {
                typefaceCreate = Typeface.create(typeface, i);
            }
            setSwitchTypeface(typefaceCreate);
            int i2 = (~(typefaceCreate != null ? typefaceCreate.getStyle() : 0)) & i;
            textPaint.setFakeBoldText((i2 & 1) != 0);
            textPaint.setTextSkewX((i2 & 2) != 0 ? -0.25f : 0.0f);
            return;
        }
        textPaint.setFakeBoldText(false);
        textPaint.setTextSkewX(0.0f);
        setSwitchTypeface(typeface);
    }

    public void setSwitchTypeface(Typeface typeface) {
        TextPaint textPaint = this.I;
        if ((textPaint.getTypeface() == null || textPaint.getTypeface().equals(typeface)) && (textPaint.getTypeface() != null || typeface == null)) {
            return;
        }
        textPaint.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    public void setSwitchPadding(int i) {
        this.m = i;
        requestLayout();
    }

    public int getSwitchPadding() {
        return this.m;
    }

    public void setSwitchMinWidth(int i) {
        this.l = i;
        requestLayout();
    }

    public int getSwitchMinWidth() {
        return this.l;
    }

    public void setThumbTextPadding(int i) {
        this.k = i;
        requestLayout();
    }

    public int getThumbTextPadding() {
        return this.k;
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i) {
        setTrackDrawable(AppCompatResources.getDrawable(getContext(), i));
    }

    public Drawable getTrackDrawable() {
        return this.f;
    }

    public void setTrackTintList(@Nullable ColorStateList colorStateList) {
        this.f424g = colorStateList;
        this.i = true;
        b();
    }

    @Nullable
    public ColorStateList getTrackTintList() {
        return this.f424g;
    }

    public void setTrackTintMode(@Nullable PorterDuff.Mode mode) {
        this.h = mode;
        this.j = true;
        b();
    }

    @Nullable
    public PorterDuff.Mode getTrackTintMode() {
        return this.h;
    }

    public final void b() {
        Drawable drawable = this.f;
        if (drawable != null) {
            if (this.i || this.j) {
                Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
                this.f = drawableMutate;
                if (this.i) {
                    DrawableCompat.setTintList(drawableMutate, this.f424g);
                }
                if (this.j) {
                    DrawableCompat.setTintMode(this.f, this.h);
                }
                if (this.f.isStateful()) {
                    this.f.setState(getDrawableState());
                }
            }
        }
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f422a;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f422a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setThumbResource(int i) {
        setThumbDrawable(AppCompatResources.getDrawable(getContext(), i));
    }

    public Drawable getThumbDrawable() {
        return this.f422a;
    }

    public void setThumbTintList(@Nullable ColorStateList colorStateList) {
        this.f423b = colorStateList;
        this.d = true;
        a();
    }

    @Nullable
    public ColorStateList getThumbTintList() {
        return this.f423b;
    }

    public void setThumbTintMode(@Nullable PorterDuff.Mode mode) {
        this.c = mode;
        this.e = true;
        a();
    }

    @Nullable
    public PorterDuff.Mode getThumbTintMode() {
        return this.c;
    }

    public final void a() {
        Drawable drawable = this.f422a;
        if (drawable != null) {
            if (this.d || this.e) {
                Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
                this.f422a = drawableMutate;
                if (this.d) {
                    DrawableCompat.setTintList(drawableMutate, this.f423b);
                }
                if (this.e) {
                    DrawableCompat.setTintMode(this.f422a, this.c);
                }
                if (this.f422a.isStateful()) {
                    this.f422a.setState(getDrawableState());
                }
            }
        }
    }

    public void setSplitTrack(boolean z) {
        this.n = z;
        invalidate();
    }

    public boolean getSplitTrack() {
        return this.n;
    }

    public CharSequence getTextOn() {
        return this.o;
    }

    public final void f(CharSequence charSequence) {
        this.o = charSequence;
        TransformationMethod transformationMethodWrapTransformationMethod = c().wrapTransformationMethod(this.M);
        if (transformationMethodWrapTransformationMethod != null) {
            charSequence = transformationMethodWrapTransformationMethod.getTransformation(charSequence, this);
        }
        this.p = charSequence;
        this.K = null;
        if (this.s) {
            g();
        }
    }

    public void setTextOn(CharSequence charSequence) throws Resources.NotFoundException {
        f(charSequence);
        requestLayout();
        if (!isChecked() || Build.VERSION.SDK_INT < 30) {
            return;
        }
        CharSequence string = this.o;
        if (string == null) {
            string = getResources().getString(androidx.appcompat.R.string.abc_capital_on);
        }
        ViewCompat.setStateDescription(this, string);
    }

    public CharSequence getTextOff() {
        return this.q;
    }

    public final void e(CharSequence charSequence) {
        this.q = charSequence;
        TransformationMethod transformationMethodWrapTransformationMethod = c().wrapTransformationMethod(this.M);
        if (transformationMethodWrapTransformationMethod != null) {
            charSequence = transformationMethodWrapTransformationMethod.getTransformation(charSequence, this);
        }
        this.r = charSequence;
        this.L = null;
        if (this.s) {
            g();
        }
    }

    public void setTextOff(CharSequence charSequence) throws Resources.NotFoundException {
        e(charSequence);
        requestLayout();
        if (isChecked() || Build.VERSION.SDK_INT < 30) {
            return;
        }
        CharSequence string = this.q;
        if (string == null) {
            string = getResources().getString(androidx.appcompat.R.string.abc_capital_off);
        }
        ViewCompat.setStateDescription(this, string);
    }

    public void setShowText(boolean z) {
        if (this.s != z) {
            this.s = z;
            requestLayout();
            if (z) {
                g();
            }
        }
    }

    public boolean getShowText() {
        return this.s;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int intrinsicWidth;
        int intrinsicHeight;
        int iMax;
        int intrinsicHeight2 = 0;
        if (this.s) {
            StaticLayout staticLayout = this.K;
            TextPaint textPaint = this.I;
            if (staticLayout == null) {
                CharSequence charSequence = this.p;
                this.K = new StaticLayout(charSequence, textPaint, charSequence != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
            if (this.L == null) {
                CharSequence charSequence2 = this.r;
                this.L = new StaticLayout(charSequence2, textPaint, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
        }
        Drawable drawable = this.f422a;
        Rect rect = this.Q;
        if (drawable != null) {
            drawable.getPadding(rect);
            intrinsicWidth = (this.f422a.getIntrinsicWidth() - rect.left) - rect.right;
            intrinsicHeight = this.f422a.getIntrinsicHeight();
        } else {
            intrinsicWidth = 0;
            intrinsicHeight = 0;
        }
        this.C = Math.max(this.s ? (this.k * 2) + Math.max(this.K.getWidth(), this.L.getWidth()) : 0, intrinsicWidth);
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            intrinsicHeight2 = this.f.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int iMax2 = rect.left;
        int iMax3 = rect.right;
        Drawable drawable3 = this.f422a;
        if (drawable3 != null) {
            Rect opticalBounds = DrawableUtils.getOpticalBounds(drawable3);
            iMax2 = Math.max(iMax2, opticalBounds.left);
            iMax3 = Math.max(iMax3, opticalBounds.right);
        }
        if (this.H) {
            iMax = Math.max(this.l, (this.C * 2) + iMax2 + iMax3);
        } else {
            iMax = this.l;
        }
        int iMax4 = Math.max(intrinsicHeight2, intrinsicHeight);
        this.A = iMax;
        this.B = iMax4;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < iMax4) {
            setMeasuredDimension(getMeasuredWidthAndState(), iMax4);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.o : this.q;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0092  */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r10) throws java.lang.IllegalAccessException, android.content.res.Resources.NotFoundException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public final float getThumbPosition() {
        return this.z;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() throws Resources.NotFoundException {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) throws Resources.NotFoundException {
        super.setChecked(z);
        boolean zIsChecked = isChecked();
        if (zIsChecked) {
            if (Build.VERSION.SDK_INT >= 30) {
                CharSequence string = this.o;
                if (string == null) {
                    string = getResources().getString(androidx.appcompat.R.string.abc_capital_on);
                }
                ViewCompat.setStateDescription(this, string);
            }
        } else if (Build.VERSION.SDK_INT >= 30) {
            CharSequence string2 = this.q;
            if (string2 == null) {
                string2 = getResources().getString(androidx.appcompat.R.string.abc_capital_off);
            }
            ViewCompat.setStateDescription(this, string2);
        }
        if (getWindowToken() != null && ViewCompat.isLaidOut(this)) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<SwitchCompat, Float>) R, zIsChecked ? 1.0f : 0.0f);
            this.N = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(250L);
            b.a(this.N, true);
            this.N.start();
            return;
        }
        ObjectAnimator objectAnimator = this.N;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        this.z = zIsChecked ? 1.0f : 0.0f;
        invalidate();
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int iMax;
        int width;
        int paddingLeft;
        int height;
        int paddingTop;
        super.onLayout(z, i, i2, i3, i4);
        int iMax2 = 0;
        if (this.f422a != null) {
            Drawable drawable = this.f;
            Rect rect = this.Q;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect opticalBounds = DrawableUtils.getOpticalBounds(this.f422a);
            iMax = Math.max(0, opticalBounds.left - rect.left);
            iMax2 = Math.max(0, opticalBounds.right - rect.right);
        } else {
            iMax = 0;
        }
        if (ViewUtils.isLayoutRtl(this)) {
            paddingLeft = getPaddingLeft() + iMax;
            width = ((this.A + paddingLeft) - iMax) - iMax2;
        } else {
            width = (getWidth() - getPaddingRight()) - iMax2;
            paddingLeft = (width - this.A) + iMax + iMax2;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int height2 = ((getHeight() + getPaddingTop()) - getPaddingBottom()) / 2;
            int i5 = this.B;
            int i6 = height2 - (i5 / 2);
            height = i5 + i6;
            paddingTop = i6;
        } else if (gravity != 80) {
            paddingTop = getPaddingTop();
            height = this.B + paddingTop;
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = height - this.B;
        }
        this.D = paddingLeft;
        this.E = paddingTop;
        this.G = height;
        this.F = width;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        float f;
        Rect opticalBounds;
        int i;
        int i2;
        int i3 = this.D;
        int i4 = this.E;
        int i5 = this.F;
        int i6 = this.G;
        if (ViewUtils.isLayoutRtl(this)) {
            f = 1.0f - this.z;
        } else {
            f = this.z;
        }
        int iD = ((int) ((f * d()) + 0.5f)) + i3;
        Drawable drawable = this.f422a;
        if (drawable != null) {
            opticalBounds = DrawableUtils.getOpticalBounds(drawable);
        } else {
            opticalBounds = DrawableUtils.INSETS_NONE;
        }
        Drawable drawable2 = this.f;
        Rect rect = this.Q;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i7 = rect.left;
            iD += i7;
            if (opticalBounds != null) {
                int i8 = opticalBounds.left;
                if (i8 > i7) {
                    i3 += i8 - i7;
                }
                int i9 = opticalBounds.top;
                int i10 = rect.top;
                i = i9 > i10 ? (i9 - i10) + i4 : i4;
                int i11 = opticalBounds.right;
                int i12 = rect.right;
                if (i11 > i12) {
                    i5 -= i11 - i12;
                }
                int i13 = opticalBounds.bottom;
                int i14 = rect.bottom;
                if (i13 > i14) {
                    i2 = i6 - (i13 - i14);
                }
                this.f.setBounds(i3, i, i5, i2);
            } else {
                i = i4;
            }
            i2 = i6;
            this.f.setBounds(i3, i, i5, i2);
        }
        Drawable drawable3 = this.f422a;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i15 = iD - rect.left;
            int i16 = iD + this.C + rect.right;
            this.f422a.setBounds(i15, i4, i16, i6);
            Drawable background = getBackground();
            if (background != null) {
                DrawableCompat.setHotspotBounds(background, i15, i4, i16, i6);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int width;
        super.onDraw(canvas);
        Drawable drawable = this.f;
        Rect rect = this.Q;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i = this.E;
        int i2 = this.G;
        int i3 = i + rect.top;
        int i4 = i2 - rect.bottom;
        Drawable drawable2 = this.f422a;
        if (drawable != null) {
            if (this.n && drawable2 != null) {
                Rect opticalBounds = DrawableUtils.getOpticalBounds(drawable2);
                drawable2.copyBounds(rect);
                rect.left += opticalBounds.left;
                rect.right -= opticalBounds.right;
                int iSave = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(iSave);
            } else {
                drawable.draw(canvas);
            }
        }
        int iSave2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        StaticLayout staticLayout = this.z > 0.5f ? this.K : this.L;
        if (staticLayout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.J;
            TextPaint textPaint = this.I;
            if (colorStateList != null) {
                textPaint.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            textPaint.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (staticLayout.getWidth() / 2), ((i3 + i4) / 2) - (staticLayout.getHeight() / 2));
            staticLayout.draw(canvas);
        }
        canvas.restoreToCount(iSave2);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!ViewUtils.isLayoutRtl(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.A;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.m : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (ViewUtils.isLayoutRtl(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.A;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.m : compoundPaddingRight;
    }

    public final int d() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Rect opticalBounds;
        Drawable drawable = this.f;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.Q;
        drawable.getPadding(rect);
        Drawable drawable2 = this.f422a;
        if (drawable2 != null) {
            opticalBounds = DrawableUtils.getOpticalBounds(drawable2);
        } else {
            opticalBounds = DrawableUtils.INSETS_NONE;
        }
        return ((((this.A - this.C) - rect.left) - rect.right) - opticalBounds.left) - opticalBounds.right;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, S);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f422a;
        boolean state = (drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState);
        Drawable drawable2 = this.f;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.f422a;
        if (drawable != null) {
            DrawableCompat.setHotspot(drawable, f, f2);
        }
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            DrawableCompat.setHotspot(drawable2, f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f422a || drawable == this.f;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f422a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.N;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.N.end();
        this.N = null;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        if (Build.VERSION.SDK_INT < 30) {
            CharSequence charSequence = isChecked() ? this.o : this.q;
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            CharSequence text = accessibilityNodeInfo.getText();
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(charSequence);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(text);
            sb.append(' ');
            sb.append(charSequence);
            accessibilityNodeInfo.setText(sb);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(@Nullable ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.wrapCustomSelectionActionModeCallback(this, callback));
    }

    @Override // android.widget.TextView
    @Nullable
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return TextViewCompat.unwrapCustomSelectionActionModeCallback(super.getCustomSelectionActionModeCallback());
    }

    public final void setEnforceSwitchWidth(boolean z) {
        this.H = z;
        invalidate();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        c().b(z);
    }

    @Override // android.widget.TextView
    public void setFilters(@NonNull InputFilter[] inputFilterArr) {
        super.setFilters(c().f484b.getFilters(inputFilterArr));
    }

    public final g c() {
        if (this.O == null) {
            this.O = new g(this);
        }
        return this.O;
    }

    @Override // androidx.appcompat.widget.EmojiCompatConfigurationView
    public void setEmojiCompatEnabled(boolean z) {
        c().c(z);
        f(this.o);
        e(this.q);
        requestLayout();
    }

    @Override // androidx.appcompat.widget.EmojiCompatConfigurationView
    public boolean isEmojiCompatEnabled() {
        return c().isEnabled();
    }

    public final void g() {
        if (this.P == null && this.O.isEnabled() && EmojiCompat.isConfigured()) {
            EmojiCompat emojiCompat = EmojiCompat.get();
            int loadState = emojiCompat.getLoadState();
            if (loadState == 3 || loadState == 0) {
                c cVar = new c(this);
                this.P = cVar;
                emojiCompat.registerInitCallback(cVar);
            }
        }
    }

    public static class c extends EmojiCompat.InitCallback {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f425a;

        public c(SwitchCompat switchCompat) {
            this.f425a = new WeakReference(switchCompat);
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public void onInitialized() {
            SwitchCompat switchCompat = (SwitchCompat) this.f425a.get();
            if (switchCompat != null) {
                switchCompat.f(switchCompat.o);
                switchCompat.e(switchCompat.q);
                switchCompat.requestLayout();
            }
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public void onFailed(@Nullable Throwable th) {
            SwitchCompat switchCompat = (SwitchCompat) this.f425a.get();
            if (switchCompat != null) {
                switchCompat.f(switchCompat.o);
                switchCompat.e(switchCompat.q);
                switchCompat.requestLayout();
            }
        }
    }

    @RequiresApi(18)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static void a(ObjectAnimator objectAnimator, boolean z) {
            objectAnimator.setAutoCancel(z);
        }
    }
}
