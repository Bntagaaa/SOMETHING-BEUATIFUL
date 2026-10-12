package com.google.android.material.textfield;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.text.BidiFormatter;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import androidx.transition.Fade;
import androidx.transition.TransitionManager;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.CollapsingTextHelper;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public class TextInputLayout extends LinearLayout {
    public static final int BOX_BACKGROUND_FILLED = 1;
    public static final int BOX_BACKGROUND_NONE = 0;
    public static final int BOX_BACKGROUND_OUTLINE = 2;
    public static final int END_ICON_CLEAR_TEXT = 2;
    public static final int END_ICON_CUSTOM = -1;
    public static final int END_ICON_DROPDOWN_MENU = 3;
    public static final int END_ICON_NONE = 0;
    public static final int END_ICON_PASSWORD_TOGGLE = 1;
    public static final int I0 = R.style.Widget_Design_TextInputLayout;
    public CharSequence A;
    public int A0;
    public final AppCompatTextView B;
    public boolean B0;
    public boolean C;
    public final CollapsingTextHelper C0;
    public CharSequence D;
    public boolean D0;
    public boolean E;
    public boolean E0;
    public MaterialShapeDrawable F;
    public ValueAnimator F0;
    public MaterialShapeDrawable G;
    public boolean G0;
    public MaterialShapeDrawable H;
    public boolean H0;
    public ShapeAppearanceModel I;
    public boolean J;
    public final int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public final Rect S;
    public final Rect T;
    public final RectF U;
    public Typeface V;
    public ColorDrawable W;

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f3299a;
    public int a0;

    /* renamed from: b, reason: collision with root package name */
    public final w f3300b;
    public final LinkedHashSet b0;
    public final LinearLayout c;
    public int c0;
    public final FrameLayout d;
    public final SparseArray d0;
    public EditText e;
    public final CheckableImageButton e0;
    public CharSequence f;
    public final LinkedHashSet f0;

    /* renamed from: g, reason: collision with root package name */
    public int f3301g;
    public ColorStateList g0;
    public int h;
    public PorterDuff.Mode h0;
    public int i;
    public ColorDrawable i0;
    public int j;
    public int j0;
    public final s k;
    public Drawable k0;
    public boolean l;
    public View.OnLongClickListener l0;
    public int m;
    public View.OnLongClickListener m0;
    public boolean n;
    public final CheckableImageButton n0;
    public AppCompatTextView o;
    public ColorStateList o0;
    public int p;
    public PorterDuff.Mode p0;
    public int q;
    public ColorStateList q0;
    public CharSequence r;
    public ColorStateList r0;
    public boolean s;
    public int s0;
    public AppCompatTextView t;
    public int t0;
    public ColorStateList u;
    public int u0;
    public int v;
    public ColorStateList v0;
    public Fade w;
    public int w0;
    public Fade x;
    public int x0;
    public ColorStateList y;
    public int y0;
    public ColorStateList z;
    public int z0;

    @Retention(RetentionPolicy.SOURCE)
    public @interface BoxBackgroundMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface EndIconMode {
    }

    public interface OnEditTextAttachedListener {
        void onEditTextAttached(@NonNull TextInputLayout textInputLayout);
    }

    public interface OnEndIconChangedListener {
        void onEndIconChanged(@NonNull TextInputLayout textInputLayout, int i);
    }

    @NonNull
    public TextView getPrefixTextView() {
        return this.f3300b.f3350b;
    }

    @Nullable
    public CharSequence getPrefixText() {
        return this.f3300b.c;
    }

    public void setPrefixTextColor(@NonNull ColorStateList colorStateList) {
        this.f3300b.f3350b.setTextColor(colorStateList);
    }

    @Nullable
    public ColorStateList getPrefixTextColor() {
        return this.f3300b.f3350b.getTextColors();
    }

    public void setPrefixTextAppearance(@StyleRes int i) {
        TextViewCompat.setTextAppearance(this.f3300b.f3350b, i);
    }

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout textInputLayout = TextInputLayout.this;
            textInputLayout.e0.performClick();
            textInputLayout.e0.jumpDrawablesToCurrentState();
        }

        public a() {
        }
    }

    @Nullable
    public Drawable getStartIconDrawable() {
        return this.f3300b.d.getDrawable();
    }

    public void setStartIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        w wVar = this.f3300b;
        View.OnLongClickListener onLongClickListener = wVar.f3351g;
        CheckableImageButton checkableImageButton = wVar.d;
        checkableImageButton.setOnClickListener(onClickListener);
        p.c(checkableImageButton, onLongClickListener);
    }

    public void setStartIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        w wVar = this.f3300b;
        wVar.f3351g = onLongClickListener;
        CheckableImageButton checkableImageButton = wVar.d;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        p.c(checkableImageButton, onLongClickListener);
    }

    public boolean isStartIconVisible() {
        return this.f3300b.d.getVisibility() == 0;
    }

    public void refreshStartIconDrawableState() {
        w wVar = this.f3300b;
        p.b(wVar.f3349a, wVar.d, wVar.e);
    }

    public void setStartIconCheckable(boolean z) {
        this.f3300b.d.setCheckable(z);
    }

    public boolean isStartIconCheckable() {
        return this.f3300b.d.isCheckable();
    }

    @Nullable
    public CharSequence getStartIconContentDescription() {
        return this.f3300b.d.getContentDescription();
    }

    public void setStartIconContentDescription(@Nullable CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.f3300b.d;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setStartIconTintList(@Nullable ColorStateList colorStateList) {
        w wVar = this.f3300b;
        if (wVar.e != colorStateList) {
            wVar.e = colorStateList;
            p.a(wVar.f3349a, wVar.d, colorStateList, wVar.f);
        }
    }

    public void setStartIconTintMode(@Nullable PorterDuff.Mode mode) {
        w wVar = this.f3300b;
        if (wVar.f != mode) {
            wVar.f = mode;
            p.a(wVar.f3349a, wVar.d, wVar.e, mode);
        }
    }

    public TextInputLayout(@NonNull Context context) {
        this(context, null);
    }

    public TextInputLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textInputStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TextInputLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        int i2;
        int i3 = I0;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i3), attributeSet, i);
        this.f3301g = -1;
        this.h = -1;
        this.i = -1;
        this.j = -1;
        this.k = new s(this);
        this.S = new Rect();
        this.T = new Rect();
        this.U = new RectF();
        this.b0 = new LinkedHashSet();
        this.c0 = 0;
        SparseArray sparseArray = new SparseArray();
        this.d0 = sparseArray;
        this.f0 = new LinkedHashSet();
        CollapsingTextHelper collapsingTextHelper = new CollapsingTextHelper(this);
        this.C0 = collapsingTextHelper;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f3299a = frameLayout;
        FrameLayout frameLayout2 = new FrameLayout(context2);
        this.d = frameLayout2;
        LinearLayout linearLayout = new LinearLayout(context2);
        this.c = linearLayout;
        AppCompatTextView appCompatTextView = new AppCompatTextView(context2);
        this.B = appCompatTextView;
        linearLayout.setVisibility(8);
        frameLayout2.setVisibility(8);
        appCompatTextView.setVisibility(8);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context2);
        int i4 = R.layout.design_text_input_end_icon;
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflaterFrom.inflate(i4, (ViewGroup) linearLayout, false);
        this.n0 = checkableImageButton;
        CheckableImageButton checkableImageButton2 = (CheckableImageButton) layoutInflaterFrom.inflate(i4, (ViewGroup) frameLayout2, false);
        this.e0 = checkableImageButton2;
        frameLayout.setAddStatesFromChildren(true);
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, GravityCompat.END));
        frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
        TimeInterpolator timeInterpolator = AnimationUtils.LINEAR_INTERPOLATOR;
        collapsingTextHelper.setTextSizeInterpolator(timeInterpolator);
        collapsingTextHelper.setPositionInterpolator(timeInterpolator);
        collapsingTextHelper.setCollapsedTextGravity(8388659);
        int[] iArr = R.styleable.TextInputLayout;
        int i5 = R.styleable.TextInputLayout_counterTextAppearance;
        int i6 = R.styleable.TextInputLayout_counterOverflowTextAppearance;
        int i7 = R.styleable.TextInputLayout_errorTextAppearance;
        int i8 = R.styleable.TextInputLayout_helperTextTextAppearance;
        int i9 = R.styleable.TextInputLayout_hintTextAppearance;
        TintTypedArray tintTypedArrayObtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, iArr, i, i3, i5, i6, i7, i8, i9);
        w wVar = new w(this, tintTypedArrayObtainTintedStyledAttributes);
        this.f3300b = wVar;
        this.C = tintTypedArrayObtainTintedStyledAttributes.getBoolean(R.styleable.TextInputLayout_hintEnabled, true);
        setHint(tintTypedArrayObtainTintedStyledAttributes.getText(R.styleable.TextInputLayout_android_hint));
        this.E0 = tintTypedArrayObtainTintedStyledAttributes.getBoolean(R.styleable.TextInputLayout_hintAnimationEnabled, true);
        this.D0 = tintTypedArrayObtainTintedStyledAttributes.getBoolean(R.styleable.TextInputLayout_expandedHintEnabled, true);
        int i10 = R.styleable.TextInputLayout_android_minEms;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i10)) {
            i2 = -1;
            setMinEms(tintTypedArrayObtainTintedStyledAttributes.getInt(i10, -1));
        } else {
            i2 = -1;
            int i11 = R.styleable.TextInputLayout_android_minWidth;
            if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i11)) {
                setMinWidth(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(i11, -1));
            }
        }
        int i12 = R.styleable.TextInputLayout_android_maxEms;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i12)) {
            setMaxEms(tintTypedArrayObtainTintedStyledAttributes.getInt(i12, i2));
        } else {
            int i13 = R.styleable.TextInputLayout_android_maxWidth;
            if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i13)) {
                setMaxWidth(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(i13, i2));
            }
        }
        this.I = ShapeAppearanceModel.builder(context2, attributeSet, i, i3).build();
        this.K = context2.getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.M = tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelOffset(R.styleable.TextInputLayout_boxCollapsedPaddingTop, 0);
        this.O = tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(R.styleable.TextInputLayout_boxStrokeWidth, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_default));
        this.P = tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(R.styleable.TextInputLayout_boxStrokeWidthFocused, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_focused));
        this.N = this.O;
        float dimension = tintTypedArrayObtainTintedStyledAttributes.getDimension(R.styleable.TextInputLayout_boxCornerRadiusTopStart, -1.0f);
        float dimension2 = tintTypedArrayObtainTintedStyledAttributes.getDimension(R.styleable.TextInputLayout_boxCornerRadiusTopEnd, -1.0f);
        float dimension3 = tintTypedArrayObtainTintedStyledAttributes.getDimension(R.styleable.TextInputLayout_boxCornerRadiusBottomEnd, -1.0f);
        float dimension4 = tintTypedArrayObtainTintedStyledAttributes.getDimension(R.styleable.TextInputLayout_boxCornerRadiusBottomStart, -1.0f);
        ShapeAppearanceModel.Builder builder = this.I.toBuilder();
        if (dimension >= 0.0f) {
            builder.setTopLeftCornerSize(dimension);
        }
        if (dimension2 >= 0.0f) {
            builder.setTopRightCornerSize(dimension2);
        }
        if (dimension3 >= 0.0f) {
            builder.setBottomRightCornerSize(dimension3);
        }
        if (dimension4 >= 0.0f) {
            builder.setBottomLeftCornerSize(dimension4);
        }
        this.I = builder.build();
        ColorStateList colorStateList = MaterialResources.getColorStateList(context2, tintTypedArrayObtainTintedStyledAttributes, R.styleable.TextInputLayout_boxBackgroundColor);
        if (colorStateList != null) {
            int defaultColor = colorStateList.getDefaultColor();
            this.w0 = defaultColor;
            this.R = defaultColor;
            if (colorStateList.isStateful()) {
                this.x0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
                this.y0 = colorStateList.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
                this.z0 = colorStateList.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
            } else {
                this.y0 = this.w0;
                ColorStateList colorStateList2 = AppCompatResources.getColorStateList(context2, R.color.mtrl_filled_background_color);
                this.x0 = colorStateList2.getColorForState(new int[]{-16842910}, -1);
                this.z0 = colorStateList2.getColorForState(new int[]{android.R.attr.state_hovered}, -1);
            }
        } else {
            this.R = 0;
            this.w0 = 0;
            this.x0 = 0;
            this.y0 = 0;
            this.z0 = 0;
        }
        int i14 = R.styleable.TextInputLayout_android_textColorHint;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i14)) {
            ColorStateList colorStateList3 = tintTypedArrayObtainTintedStyledAttributes.getColorStateList(i14);
            this.r0 = colorStateList3;
            this.q0 = colorStateList3;
        }
        int i15 = R.styleable.TextInputLayout_boxStrokeColor;
        ColorStateList colorStateList4 = MaterialResources.getColorStateList(context2, tintTypedArrayObtainTintedStyledAttributes, i15);
        this.u0 = tintTypedArrayObtainTintedStyledAttributes.getColor(i15, 0);
        this.s0 = ContextCompat.getColor(context2, R.color.mtrl_textinput_default_box_stroke_color);
        this.A0 = ContextCompat.getColor(context2, R.color.mtrl_textinput_disabled_color);
        this.t0 = ContextCompat.getColor(context2, R.color.mtrl_textinput_hovered_box_stroke_color);
        if (colorStateList4 != null) {
            setBoxStrokeColorStateList(colorStateList4);
        }
        int i16 = R.styleable.TextInputLayout_boxStrokeErrorColor;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i16)) {
            setBoxStrokeErrorColor(MaterialResources.getColorStateList(context2, tintTypedArrayObtainTintedStyledAttributes, i16));
        }
        if (tintTypedArrayObtainTintedStyledAttributes.getResourceId(i9, -1) != -1) {
            setHintTextAppearance(tintTypedArrayObtainTintedStyledAttributes.getResourceId(i9, 0));
        }
        int resourceId = tintTypedArrayObtainTintedStyledAttributes.getResourceId(i7, 0);
        CharSequence text = tintTypedArrayObtainTintedStyledAttributes.getText(R.styleable.TextInputLayout_errorContentDescription);
        boolean z = tintTypedArrayObtainTintedStyledAttributes.getBoolean(R.styleable.TextInputLayout_errorEnabled, false);
        checkableImageButton.setId(R.id.text_input_error_icon);
        if (MaterialResources.isFontScaleAtLeast1_3(context2)) {
            MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams(), 0);
        }
        int i17 = R.styleable.TextInputLayout_errorIconTint;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i17)) {
            this.o0 = MaterialResources.getColorStateList(context2, tintTypedArrayObtainTintedStyledAttributes, i17);
        }
        int i18 = R.styleable.TextInputLayout_errorIconTintMode;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i18)) {
            this.p0 = ViewUtils.parseTintMode(tintTypedArrayObtainTintedStyledAttributes.getInt(i18, -1), null);
        }
        int i19 = R.styleable.TextInputLayout_errorIconDrawable;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i19)) {
            setErrorIconDrawable(tintTypedArrayObtainTintedStyledAttributes.getDrawable(i19));
        }
        checkableImageButton.setContentDescription(getResources().getText(R.string.error_icon_content_description));
        ViewCompat.setImportantForAccessibility(checkableImageButton, 2);
        checkableImageButton.setClickable(false);
        checkableImageButton.setPressable(false);
        checkableImageButton.setFocusable(false);
        int resourceId2 = tintTypedArrayObtainTintedStyledAttributes.getResourceId(i8, 0);
        boolean z2 = tintTypedArrayObtainTintedStyledAttributes.getBoolean(R.styleable.TextInputLayout_helperTextEnabled, false);
        CharSequence text2 = tintTypedArrayObtainTintedStyledAttributes.getText(R.styleable.TextInputLayout_helperText);
        int resourceId3 = tintTypedArrayObtainTintedStyledAttributes.getResourceId(R.styleable.TextInputLayout_placeholderTextAppearance, 0);
        CharSequence text3 = tintTypedArrayObtainTintedStyledAttributes.getText(R.styleable.TextInputLayout_placeholderText);
        int resourceId4 = tintTypedArrayObtainTintedStyledAttributes.getResourceId(R.styleable.TextInputLayout_suffixTextAppearance, 0);
        CharSequence text4 = tintTypedArrayObtainTintedStyledAttributes.getText(R.styleable.TextInputLayout_suffixText);
        boolean z3 = tintTypedArrayObtainTintedStyledAttributes.getBoolean(R.styleable.TextInputLayout_counterEnabled, false);
        setCounterMaxLength(tintTypedArrayObtainTintedStyledAttributes.getInt(R.styleable.TextInputLayout_counterMaxLength, -1));
        this.q = tintTypedArrayObtainTintedStyledAttributes.getResourceId(i5, 0);
        this.p = tintTypedArrayObtainTintedStyledAttributes.getResourceId(i6, 0);
        setBoxBackgroundMode(tintTypedArrayObtainTintedStyledAttributes.getInt(R.styleable.TextInputLayout_boxBackgroundMode, 0));
        if (MaterialResources.isFontScaleAtLeast1_3(context2)) {
            MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) checkableImageButton2.getLayoutParams(), 0);
        }
        int resourceId5 = tintTypedArrayObtainTintedStyledAttributes.getResourceId(R.styleable.TextInputLayout_endIconDrawable, 0);
        sparseArray.append(-1, new g(this, resourceId5));
        sparseArray.append(0, new t(this, 0));
        sparseArray.append(1, new u(this, resourceId5 == 0 ? tintTypedArrayObtainTintedStyledAttributes.getResourceId(R.styleable.TextInputLayout_passwordToggleDrawable, 0) : resourceId5));
        sparseArray.append(2, new com.google.android.material.textfield.a(this, resourceId5));
        sparseArray.append(3, new i(this, resourceId5));
        int i20 = R.styleable.TextInputLayout_passwordToggleEnabled;
        if (!tintTypedArrayObtainTintedStyledAttributes.hasValue(i20)) {
            int i21 = R.styleable.TextInputLayout_endIconTint;
            if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i21)) {
                this.g0 = MaterialResources.getColorStateList(context2, tintTypedArrayObtainTintedStyledAttributes, i21);
            }
            int i22 = R.styleable.TextInputLayout_endIconTintMode;
            if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i22)) {
                this.h0 = ViewUtils.parseTintMode(tintTypedArrayObtainTintedStyledAttributes.getInt(i22, -1), null);
            }
        }
        int i23 = R.styleable.TextInputLayout_endIconMode;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i23)) {
            setEndIconMode(tintTypedArrayObtainTintedStyledAttributes.getInt(i23, 0));
            int i24 = R.styleable.TextInputLayout_endIconContentDescription;
            if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i24)) {
                setEndIconContentDescription(tintTypedArrayObtainTintedStyledAttributes.getText(i24));
            }
            setEndIconCheckable(tintTypedArrayObtainTintedStyledAttributes.getBoolean(R.styleable.TextInputLayout_endIconCheckable, true));
        } else if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i20)) {
            int i25 = R.styleable.TextInputLayout_passwordToggleTint;
            if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i25)) {
                this.g0 = MaterialResources.getColorStateList(context2, tintTypedArrayObtainTintedStyledAttributes, i25);
            }
            int i26 = R.styleable.TextInputLayout_passwordToggleTintMode;
            if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i26)) {
                this.h0 = ViewUtils.parseTintMode(tintTypedArrayObtainTintedStyledAttributes.getInt(i26, -1), null);
            }
            setEndIconMode(tintTypedArrayObtainTintedStyledAttributes.getBoolean(i20, false) ? 1 : 0);
            setEndIconContentDescription(tintTypedArrayObtainTintedStyledAttributes.getText(R.styleable.TextInputLayout_passwordToggleContentDescription));
        }
        appCompatTextView.setId(R.id.textinput_suffix_text);
        appCompatTextView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 80));
        ViewCompat.setAccessibilityLiveRegion(appCompatTextView, 1);
        setErrorContentDescription(text);
        setCounterOverflowTextAppearance(this.p);
        setHelperTextTextAppearance(resourceId2);
        setErrorTextAppearance(resourceId);
        setCounterTextAppearance(this.q);
        setPlaceholderText(text3);
        setPlaceholderTextAppearance(resourceId3);
        setSuffixTextAppearance(resourceId4);
        int i27 = R.styleable.TextInputLayout_errorTextColor;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i27)) {
            setErrorTextColor(tintTypedArrayObtainTintedStyledAttributes.getColorStateList(i27));
        }
        int i28 = R.styleable.TextInputLayout_helperTextTextColor;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i28)) {
            setHelperTextColor(tintTypedArrayObtainTintedStyledAttributes.getColorStateList(i28));
        }
        int i29 = R.styleable.TextInputLayout_hintTextColor;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i29)) {
            setHintTextColor(tintTypedArrayObtainTintedStyledAttributes.getColorStateList(i29));
        }
        int i30 = R.styleable.TextInputLayout_counterTextColor;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i30)) {
            setCounterTextColor(tintTypedArrayObtainTintedStyledAttributes.getColorStateList(i30));
        }
        int i31 = R.styleable.TextInputLayout_counterOverflowTextColor;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i31)) {
            setCounterOverflowTextColor(tintTypedArrayObtainTintedStyledAttributes.getColorStateList(i31));
        }
        int i32 = R.styleable.TextInputLayout_placeholderTextColor;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i32)) {
            setPlaceholderTextColor(tintTypedArrayObtainTintedStyledAttributes.getColorStateList(i32));
        }
        int i33 = R.styleable.TextInputLayout_suffixTextColor;
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(i33)) {
            setSuffixTextColor(tintTypedArrayObtainTintedStyledAttributes.getColorStateList(i33));
        }
        setEnabled(tintTypedArrayObtainTintedStyledAttributes.getBoolean(R.styleable.TextInputLayout_android_enabled, true));
        tintTypedArrayObtainTintedStyledAttributes.recycle();
        ViewCompat.setImportantForAccessibility(this, 2);
        if (Build.VERSION.SDK_INT >= 26) {
            ViewCompat.setImportantForAutofill(this, 1);
        }
        frameLayout2.addView(checkableImageButton2);
        linearLayout.addView(appCompatTextView);
        linearLayout.addView(checkableImageButton);
        linearLayout.addView(frameLayout2);
        frameLayout.addView(wVar);
        frameLayout.addView(linearLayout);
        addView(frameLayout);
        setHelperTextEnabled(z2);
        setErrorEnabled(z);
        setCounterEnabled(z3);
        setHelperText(text2);
        setSuffixText(text4);
    }

    public void setErrorEnabled(boolean z) {
        s sVar = this.k;
        if (sVar.k == z) {
            return;
        }
        sVar.c();
        TextInputLayout textInputLayout = sVar.f3340b;
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(sVar.f3339a);
            sVar.l = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_error);
            sVar.l.setTextAlignment(5);
            Typeface typeface = sVar.u;
            if (typeface != null) {
                sVar.l.setTypeface(typeface);
            }
            int i = sVar.n;
            sVar.n = i;
            AppCompatTextView appCompatTextView2 = sVar.l;
            if (appCompatTextView2 != null) {
                textInputLayout.m(appCompatTextView2, i);
            }
            ColorStateList colorStateList = sVar.o;
            sVar.o = colorStateList;
            AppCompatTextView appCompatTextView3 = sVar.l;
            if (appCompatTextView3 != null && colorStateList != null) {
                appCompatTextView3.setTextColor(colorStateList);
            }
            CharSequence charSequence = sVar.m;
            sVar.m = charSequence;
            AppCompatTextView appCompatTextView4 = sVar.l;
            if (appCompatTextView4 != null) {
                appCompatTextView4.setContentDescription(charSequence);
            }
            sVar.l.setVisibility(4);
            ViewCompat.setAccessibilityLiveRegion(sVar.l, 1);
            sVar.a(sVar.l, 0);
        } else {
            sVar.g();
            sVar.h(sVar.l, 0);
            sVar.l = null;
            textInputLayout.q();
            textInputLayout.z();
        }
        sVar.k = z;
    }

    @Nullable
    public CharSequence getError() {
        s sVar = this.k;
        if (sVar.k) {
            return sVar.j;
        }
        return null;
    }

    public boolean isErrorEnabled() {
        return this.k.k;
    }

    public void setError(@Nullable CharSequence charSequence) {
        s sVar = this.k;
        if (!sVar.k) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (!TextUtils.isEmpty(charSequence)) {
            sVar.c();
            sVar.j = charSequence;
            sVar.l.setText(charSequence);
            int i = sVar.h;
            if (i != 1) {
                sVar.i = 1;
            }
            sVar.j(i, sVar.i, sVar.i(sVar.l, charSequence));
            return;
        }
        sVar.g();
    }

    @Nullable
    public CharSequence getHelperText() {
        s sVar = this.k;
        if (sVar.q) {
            return sVar.p;
        }
        return null;
    }

    public boolean isHelperTextEnabled() {
        return this.k.q;
    }

    public void setHelperTextEnabled(boolean z) {
        s sVar = this.k;
        if (sVar.q == z) {
            return;
        }
        sVar.c();
        if (!z) {
            sVar.c();
            int i = sVar.h;
            if (i == 2) {
                sVar.i = 0;
            }
            sVar.j(i, sVar.i, sVar.i(sVar.r, ""));
            sVar.h(sVar.r, 1);
            sVar.r = null;
            TextInputLayout textInputLayout = sVar.f3340b;
            textInputLayout.q();
            textInputLayout.z();
        } else {
            AppCompatTextView appCompatTextView = new AppCompatTextView(sVar.f3339a);
            sVar.r = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_helper_text);
            sVar.r.setTextAlignment(5);
            Typeface typeface = sVar.u;
            if (typeface != null) {
                sVar.r.setTypeface(typeface);
            }
            sVar.r.setVisibility(4);
            ViewCompat.setAccessibilityLiveRegion(sVar.r, 1);
            int i2 = sVar.s;
            sVar.s = i2;
            AppCompatTextView appCompatTextView2 = sVar.r;
            if (appCompatTextView2 != null) {
                TextViewCompat.setTextAppearance(appCompatTextView2, i2);
            }
            ColorStateList colorStateList = sVar.t;
            sVar.t = colorStateList;
            AppCompatTextView appCompatTextView3 = sVar.r;
            if (appCompatTextView3 != null && colorStateList != null) {
                appCompatTextView3.setTextColor(colorStateList);
            }
            sVar.a(sVar.r, 1);
            sVar.r.setAccessibilityDelegate(new r(sVar));
        }
        sVar.q = z;
    }

    @ColorInt
    public int getErrorCurrentTextColors() {
        AppCompatTextView appCompatTextView = this.k.l;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    public void setErrorTextColor(@Nullable ColorStateList colorStateList) {
        s sVar = this.k;
        sVar.o = colorStateList;
        AppCompatTextView appCompatTextView = sVar.l;
        if (appCompatTextView == null || colorStateList == null) {
            return;
        }
        appCompatTextView.setTextColor(colorStateList);
    }

    public void setErrorTextAppearance(@StyleRes int i) {
        s sVar = this.k;
        sVar.n = i;
        AppCompatTextView appCompatTextView = sVar.l;
        if (appCompatTextView != null) {
            sVar.f3340b.m(appCompatTextView, i);
        }
    }

    public void setErrorContentDescription(@Nullable CharSequence charSequence) {
        s sVar = this.k;
        sVar.m = charSequence;
        AppCompatTextView appCompatTextView = sVar.l;
        if (appCompatTextView != null) {
            appCompatTextView.setContentDescription(charSequence);
        }
    }

    @Nullable
    public CharSequence getErrorContentDescription() {
        return this.k.m;
    }

    @ColorInt
    public int getHelperTextCurrentTextColor() {
        AppCompatTextView appCompatTextView = this.k.r;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    public void setHelperTextColor(@Nullable ColorStateList colorStateList) {
        s sVar = this.k;
        sVar.t = colorStateList;
        AppCompatTextView appCompatTextView = sVar.r;
        if (appCompatTextView == null || colorStateList == null) {
            return;
        }
        appCompatTextView.setTextColor(colorStateList);
    }

    public void setHelperTextTextAppearance(@StyleRes int i) {
        s sVar = this.k;
        sVar.s = i;
        AppCompatTextView appCompatTextView = sVar.r;
        if (appCompatTextView != null) {
            TextViewCompat.setTextAppearance(appCompatTextView, i);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(@NonNull View view, int i, @NonNull ViewGroup.LayoutParams layoutParams) {
        if (view instanceof EditText) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
            layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
            FrameLayout frameLayout = this.f3299a;
            frameLayout.addView(view, layoutParams2);
            frameLayout.setLayoutParams(layoutParams);
            t();
            EditText editText = (EditText) view;
            if (this.e != null) {
                throw new IllegalArgumentException("We already have an EditText, can only have one");
            }
            if (this.c0 != 3 && !(editText instanceof TextInputEditText)) {
                Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
            }
            this.e = editText;
            int i2 = this.f3301g;
            if (i2 != -1) {
                setMinEms(i2);
            } else {
                setMinWidth(this.i);
            }
            int i3 = this.h;
            if (i3 != -1) {
                setMaxEms(i3);
            } else {
                setMaxWidth(this.j);
            }
            h();
            setTextInputAccessibilityDelegate(new AccessibilityDelegate(this));
            Typeface typeface = this.e.getTypeface();
            CollapsingTextHelper collapsingTextHelper = this.C0;
            collapsingTextHelper.setTypefaces(typeface);
            collapsingTextHelper.setExpandedTextSize(this.e.getTextSize());
            collapsingTextHelper.setExpandedLetterSpacing(this.e.getLetterSpacing());
            int gravity = this.e.getGravity();
            collapsingTextHelper.setCollapsedTextGravity((gravity & (-113)) | 48);
            collapsingTextHelper.setExpandedTextGravity(gravity);
            this.e.addTextChangedListener(new x(this));
            if (this.q0 == null) {
                this.q0 = this.e.getHintTextColors();
            }
            if (this.C) {
                if (TextUtils.isEmpty(this.D)) {
                    CharSequence hint = this.e.getHint();
                    this.f = hint;
                    setHint(hint);
                    this.e.setHint((CharSequence) null);
                }
                this.E = true;
            }
            if (this.o != null) {
                n(this.e.getText().length());
            }
            q();
            this.k.b();
            this.f3300b.bringToFront();
            this.c.bringToFront();
            this.d.bringToFront();
            this.n0.bringToFront();
            Iterator it = this.b0.iterator();
            while (it.hasNext()) {
                ((OnEditTextAttachedListener) it.next()).onEditTextAttached(this);
            }
            x();
            if (!isEnabled()) {
                editText.setEnabled(false);
            }
            u(false, true);
            return;
        }
        super.addView(view, i, layoutParams);
    }

    public void setBoxBackgroundMode(int i) {
        if (i == this.L) {
            return;
        }
        this.L = i;
        if (this.e != null) {
            h();
        }
    }

    public int getBoxBackgroundMode() {
        return this.L;
    }

    public final void h() {
        int i = this.L;
        if (i == 0) {
            this.F = null;
            this.G = null;
            this.H = null;
        } else if (i == 1) {
            this.F = new MaterialShapeDrawable(this.I);
            this.G = new MaterialShapeDrawable();
            this.H = new MaterialShapeDrawable();
        } else if (i == 2) {
            if (this.C && !(this.F instanceof h)) {
                this.F = new h(this.I);
            } else {
                this.F = new MaterialShapeDrawable(this.I);
            }
            this.G = null;
            this.H = null;
        } else {
            throw new IllegalArgumentException(this.L + " is illegal; only @BoxBackgroundMode constants are supported.");
        }
        EditText editText = this.e;
        if (editText != null && this.F != null && editText.getBackground() == null && this.L != 0) {
            ViewCompat.setBackground(this.e, this.F);
        }
        z();
        if (this.L == 1) {
            if (MaterialResources.isFontScaleAtLeast2_0(getContext())) {
                this.M = getResources().getDimensionPixelSize(R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (MaterialResources.isFontScaleAtLeast1_3(getContext())) {
                this.M = getResources().getDimensionPixelSize(R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
        if (this.e != null && this.L == 1) {
            if (MaterialResources.isFontScaleAtLeast2_0(getContext())) {
                EditText editText2 = this.e;
                ViewCompat.setPaddingRelative(editText2, ViewCompat.getPaddingStart(editText2), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_2_0_padding_top), ViewCompat.getPaddingEnd(this.e), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_2_0_padding_bottom));
            } else if (MaterialResources.isFontScaleAtLeast1_3(getContext())) {
                EditText editText3 = this.e;
                ViewCompat.setPaddingRelative(editText3, ViewCompat.getPaddingStart(editText3), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_1_3_padding_top), ViewCompat.getPaddingEnd(this.e), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_1_3_padding_bottom));
            }
        }
        if (this.L != 0) {
            t();
        }
    }

    public void setBoxCollapsedPaddingTop(int i) {
        this.M = i;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.M;
    }

    public void setBoxStrokeWidthResource(@DimenRes int i) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public void setBoxStrokeWidth(int i) {
        this.O = i;
        z();
    }

    public int getBoxStrokeWidth() {
        return this.O;
    }

    public void setBoxStrokeWidthFocusedResource(@DimenRes int i) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i));
    }

    public void setBoxStrokeWidthFocused(int i) {
        this.P = i;
        z();
    }

    public int getBoxStrokeWidthFocused() {
        return this.P;
    }

    public void setBoxStrokeColor(@ColorInt int i) {
        if (this.u0 != i) {
            this.u0 = i;
            z();
        }
    }

    public int getBoxStrokeColor() {
        return this.u0;
    }

    public void setBoxStrokeColorStateList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.s0 = colorStateList.getDefaultColor();
            this.A0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.t0 = colorStateList.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
            this.u0 = colorStateList.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
        } else if (this.u0 != colorStateList.getDefaultColor()) {
            this.u0 = colorStateList.getDefaultColor();
        }
        z();
    }

    public void setBoxStrokeErrorColor(@Nullable ColorStateList colorStateList) {
        if (this.v0 != colorStateList) {
            this.v0 = colorStateList;
            z();
        }
    }

    @Nullable
    public ColorStateList getBoxStrokeErrorColor() {
        return this.v0;
    }

    public void setBoxBackgroundColorResource(@ColorRes int i) {
        setBoxBackgroundColor(ContextCompat.getColor(getContext(), i));
    }

    public void setBoxBackgroundColor(@ColorInt int i) {
        if (this.R != i) {
            this.R = i;
            this.w0 = i;
            this.y0 = i;
            this.z0 = i;
            b();
        }
    }

    public void setBoxBackgroundColorStateList(@NonNull ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.w0 = defaultColor;
        this.R = defaultColor;
        this.x0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.y0 = colorStateList.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
        this.z0 = colorStateList.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
        b();
    }

    public int getBoxBackgroundColor() {
        return this.R;
    }

    public void setBoxCornerRadiiResources(@DimenRes int i, @DimenRes int i2, @DimenRes int i3, @DimenRes int i4) {
        setBoxCornerRadii(getContext().getResources().getDimension(i), getContext().getResources().getDimension(i2), getContext().getResources().getDimension(i4), getContext().getResources().getDimension(i3));
    }

    public void setBoxCornerRadii(float f, float f2, float f3, float f4) {
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        this.J = zIsLayoutRtl;
        float f5 = zIsLayoutRtl ? f2 : f;
        if (!zIsLayoutRtl) {
            f = f2;
        }
        float f6 = zIsLayoutRtl ? f4 : f3;
        if (!zIsLayoutRtl) {
            f3 = f4;
        }
        MaterialShapeDrawable materialShapeDrawable = this.F;
        if (materialShapeDrawable != null && materialShapeDrawable.getTopLeftCornerResolvedSize() == f5 && this.F.getTopRightCornerResolvedSize() == f && this.F.getBottomLeftCornerResolvedSize() == f6 && this.F.getBottomRightCornerResolvedSize() == f3) {
            return;
        }
        this.I = this.I.toBuilder().setTopLeftCornerSize(f5).setTopRightCornerSize(f).setBottomLeftCornerSize(f6).setBottomRightCornerSize(f3).build();
        b();
    }

    public float getBoxCornerRadiusTopStart() {
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        RectF rectF = this.U;
        if (zIsLayoutRtl) {
            return this.I.getTopRightCornerSize().getCornerSize(rectF);
        }
        return this.I.getTopLeftCornerSize().getCornerSize(rectF);
    }

    public float getBoxCornerRadiusTopEnd() {
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        RectF rectF = this.U;
        if (zIsLayoutRtl) {
            return this.I.getTopLeftCornerSize().getCornerSize(rectF);
        }
        return this.I.getTopRightCornerSize().getCornerSize(rectF);
    }

    public float getBoxCornerRadiusBottomEnd() {
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        RectF rectF = this.U;
        if (zIsLayoutRtl) {
            return this.I.getBottomLeftCornerSize().getCornerSize(rectF);
        }
        return this.I.getBottomRightCornerSize().getCornerSize(rectF);
    }

    public float getBoxCornerRadiusBottomStart() {
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        RectF rectF = this.U;
        if (zIsLayoutRtl) {
            return this.I.getBottomRightCornerSize().getCornerSize(rectF);
        }
        return this.I.getBottomLeftCornerSize().getCornerSize(rectF);
    }

    public void setTypeface(@Nullable Typeface typeface) {
        if (typeface != this.V) {
            this.V = typeface;
            this.C0.setTypefaces(typeface);
            s sVar = this.k;
            if (typeface != sVar.u) {
                sVar.u = typeface;
                AppCompatTextView appCompatTextView = sVar.l;
                if (appCompatTextView != null) {
                    appCompatTextView.setTypeface(typeface);
                }
                AppCompatTextView appCompatTextView2 = sVar.r;
                if (appCompatTextView2 != null) {
                    appCompatTextView2.setTypeface(typeface);
                }
            }
            AppCompatTextView appCompatTextView3 = this.o;
            if (appCompatTextView3 != null) {
                appCompatTextView3.setTypeface(typeface);
            }
        }
    }

    @Nullable
    public Typeface getTypeface() {
        return this.V;
    }

    @Override // android.view.ViewGroup, android.view.View
    @TargetApi(26)
    public void dispatchProvideAutofillStructure(@NonNull ViewStructure viewStructure, int i) {
        EditText editText = this.e;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        if (this.f != null) {
            boolean z = this.E;
            this.E = false;
            CharSequence hint = editText.getHint();
            this.e.setHint(this.f);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i);
                return;
            } finally {
                this.e.setHint(hint);
                this.E = z;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i);
        onProvideAutofillVirtualStructure(viewStructure, i);
        FrameLayout frameLayout = this.f3299a;
        viewStructure.setChildCount(frameLayout.getChildCount());
        for (int i2 = 0; i2 < frameLayout.getChildCount(); i2++) {
            View childAt = frameLayout.getChildAt(i2);
            ViewStructure viewStructureNewChild = viewStructure.newChild(i2);
            childAt.dispatchProvideAutofillStructure(viewStructureNewChild, i);
            if (childAt == this.e) {
                viewStructureNewChild.setHint(getHint());
            }
        }
    }

    public final void t() {
        if (this.L != 1) {
            FrameLayout frameLayout = this.f3299a;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
            int iC = c();
            if (iC != layoutParams.topMargin) {
                layoutParams.topMargin = iC;
                frameLayout.requestLayout();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.e;
        if (editText != null) {
            return c() + getPaddingTop() + editText.getBaseline();
        }
        return super.getBaseline();
    }

    public final void u(boolean z, boolean z2) {
        ColorStateList colorStateList;
        AppCompatTextView appCompatTextView;
        int colorForState;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.e;
        boolean z3 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.e;
        boolean z4 = editText2 != null && editText2.hasFocus();
        s sVar = this.k;
        boolean zE = sVar.e();
        ColorStateList colorStateList2 = this.q0;
        CollapsingTextHelper collapsingTextHelper = this.C0;
        if (colorStateList2 != null) {
            collapsingTextHelper.setCollapsedTextColor(colorStateList2);
            collapsingTextHelper.setExpandedTextColor(this.q0);
        }
        if (!zIsEnabled) {
            ColorStateList colorStateList3 = this.q0;
            if (colorStateList3 != null) {
                colorForState = colorStateList3.getColorForState(new int[]{-16842910}, this.A0);
            } else {
                colorForState = this.A0;
            }
            collapsingTextHelper.setCollapsedTextColor(ColorStateList.valueOf(colorForState));
            collapsingTextHelper.setExpandedTextColor(ColorStateList.valueOf(colorForState));
        } else if (zE) {
            AppCompatTextView appCompatTextView2 = sVar.l;
            collapsingTextHelper.setCollapsedTextColor(appCompatTextView2 != null ? appCompatTextView2.getTextColors() : null);
        } else if (this.n && (appCompatTextView = this.o) != null) {
            collapsingTextHelper.setCollapsedTextColor(appCompatTextView.getTextColors());
        } else if (z4 && (colorStateList = this.r0) != null) {
            collapsingTextHelper.setCollapsedTextColor(colorStateList);
        }
        w wVar = this.f3300b;
        if (z3 || !this.D0 || (isEnabled() && z4)) {
            if (z2 || this.B0) {
                ValueAnimator valueAnimator = this.F0;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.F0.cancel();
                }
                if (z && this.E0) {
                    a(1.0f);
                } else {
                    collapsingTextHelper.setExpansionFraction(1.0f);
                }
                this.B0 = false;
                if (d()) {
                    i();
                }
                EditText editText3 = this.e;
                v(editText3 == null ? 0 : editText3.getText().length());
                wVar.h = false;
                wVar.d();
                y();
                return;
            }
            return;
        }
        if (z2 || !this.B0) {
            ValueAnimator valueAnimator2 = this.F0;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.F0.cancel();
            }
            if (z && this.E0) {
                a(0.0f);
            } else {
                collapsingTextHelper.setExpansionFraction(0.0f);
            }
            if (d() && !((h) this.F).y.isEmpty() && d()) {
                ((h) this.F).i(0.0f, 0.0f, 0.0f, 0.0f);
            }
            this.B0 = true;
            AppCompatTextView appCompatTextView3 = this.t;
            if (appCompatTextView3 != null && this.s) {
                appCompatTextView3.setText((CharSequence) null);
                TransitionManager.beginDelayedTransition(this.f3299a, this.x);
                this.t.setVisibility(4);
            }
            wVar.h = true;
            wVar.d();
            y();
        }
    }

    @Nullable
    public EditText getEditText() {
        return this.e;
    }

    public void setMinEms(int i) {
        this.f3301g = i;
        EditText editText = this.e;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMinEms(i);
    }

    public int getMinEms() {
        return this.f3301g;
    }

    public void setMaxEms(int i) {
        this.h = i;
        EditText editText = this.e;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMaxEms(i);
    }

    public int getMaxEms() {
        return this.h;
    }

    public void setMinWidth(@Px int i) {
        this.i = i;
        EditText editText = this.e;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMinWidth(i);
    }

    public void setMinWidthResource(@DimenRes int i) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    @Px
    public int getMinWidth() {
        return this.i;
    }

    public void setMaxWidth(@Px int i) {
        this.j = i;
        EditText editText = this.e;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMaxWidth(i);
    }

    public void setMaxWidthResource(@DimenRes int i) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    @Px
    public int getMaxWidth() {
        return this.j;
    }

    public void setHint(@Nullable CharSequence charSequence) {
        if (this.C) {
            if (!TextUtils.equals(charSequence, this.D)) {
                this.D = charSequence;
                this.C0.setText(charSequence);
                if (!this.B0) {
                    i();
                }
            }
            sendAccessibilityEvent(2048);
        }
    }

    public void setHint(@StringRes int i) {
        setHint(i != 0 ? getResources().getText(i) : null);
    }

    @Nullable
    public CharSequence getHint() {
        if (this.C) {
            return this.D;
        }
        return null;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.C) {
            this.C = z;
            if (!z) {
                this.E = false;
                if (!TextUtils.isEmpty(this.D) && TextUtils.isEmpty(this.e.getHint())) {
                    this.e.setHint(this.D);
                }
                if (!TextUtils.equals(null, this.D)) {
                    this.D = null;
                    this.C0.setText(null);
                    if (!this.B0) {
                        i();
                    }
                }
            } else {
                CharSequence hint = this.e.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.D)) {
                        setHint(hint);
                    }
                    this.e.setHint((CharSequence) null);
                }
                this.E = true;
            }
            if (this.e != null) {
                t();
            }
        }
    }

    public boolean isHintEnabled() {
        return this.C;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isProvidingHint() {
        return this.E;
    }

    public void setHintTextAppearance(@StyleRes int i) {
        CollapsingTextHelper collapsingTextHelper = this.C0;
        collapsingTextHelper.setCollapsedTextAppearance(i);
        this.r0 = collapsingTextHelper.getCollapsedTextColor();
        if (this.e != null) {
            u(false, false);
            t();
        }
    }

    public void setHintTextColor(@Nullable ColorStateList colorStateList) {
        if (this.r0 != colorStateList) {
            if (this.q0 == null) {
                this.C0.setCollapsedTextColor(colorStateList);
            }
            this.r0 = colorStateList;
            if (this.e != null) {
                u(false, false);
            }
        }
    }

    @Nullable
    public ColorStateList getHintTextColor() {
        return this.r0;
    }

    public void setDefaultHintTextColor(@Nullable ColorStateList colorStateList) {
        this.q0 = colorStateList;
        this.r0 = colorStateList;
        if (this.e != null) {
            u(false, false);
        }
    }

    @Nullable
    public ColorStateList getDefaultHintTextColor() {
        return this.q0;
    }

    public void setHelperText(@Nullable CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (isHelperTextEnabled()) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!isHelperTextEnabled()) {
            setHelperTextEnabled(true);
        }
        s sVar = this.k;
        sVar.c();
        sVar.p = charSequence;
        sVar.r.setText(charSequence);
        int i = sVar.h;
        if (i != 2) {
            sVar.i = 2;
        }
        sVar.j(i, sVar.i, sVar.i(sVar.r, charSequence));
    }

    public void setErrorIconDrawable(@DrawableRes int i) {
        setErrorIconDrawable(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
        refreshErrorIconDrawableState();
    }

    public void setErrorIconDrawable(@Nullable Drawable drawable) {
        CheckableImageButton checkableImageButton = this.n0;
        checkableImageButton.setImageDrawable(drawable);
        s();
        p.a(this, checkableImageButton, this.o0, this.p0);
    }

    @Nullable
    public Drawable getErrorIconDrawable() {
        return this.n0.getDrawable();
    }

    public void setErrorIconTintList(@Nullable ColorStateList colorStateList) {
        if (this.o0 != colorStateList) {
            this.o0 = colorStateList;
            p.a(this, this.n0, colorStateList, this.p0);
        }
    }

    public void setErrorIconTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.p0 != mode) {
            this.p0 = mode;
            p.a(this, this.n0, this.o0, mode);
        }
    }

    public void setCounterEnabled(boolean z) {
        if (this.l != z) {
            s sVar = this.k;
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.o = appCompatTextView;
                appCompatTextView.setId(R.id.textinput_counter);
                Typeface typeface = this.V;
                if (typeface != null) {
                    this.o.setTypeface(typeface);
                }
                this.o.setMaxLines(1);
                sVar.a(this.o, 2);
                MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) this.o.getLayoutParams(), getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_counter_margin_start));
                o();
                if (this.o != null) {
                    EditText editText = this.e;
                    n(editText == null ? 0 : editText.getText().length());
                }
            } else {
                sVar.h(this.o, 2);
                this.o = null;
            }
            this.l = z;
        }
    }

    public void setCounterTextAppearance(int i) {
        if (this.q != i) {
            this.q = i;
            o();
        }
    }

    public void setCounterTextColor(@Nullable ColorStateList colorStateList) {
        if (this.y != colorStateList) {
            this.y = colorStateList;
            o();
        }
    }

    @Nullable
    public ColorStateList getCounterTextColor() {
        return this.y;
    }

    public void setCounterOverflowTextAppearance(int i) {
        if (this.p != i) {
            this.p = i;
            o();
        }
    }

    public void setCounterOverflowTextColor(@Nullable ColorStateList colorStateList) {
        if (this.z != colorStateList) {
            this.z = colorStateList;
            o();
        }
    }

    @Nullable
    public ColorStateList getCounterOverflowTextColor() {
        return this.y;
    }

    public boolean isCounterEnabled() {
        return this.l;
    }

    public void setCounterMaxLength(int i) {
        if (this.m != i) {
            if (i > 0) {
                this.m = i;
            } else {
                this.m = -1;
            }
            if (!this.l || this.o == null) {
                return;
            }
            EditText editText = this.e;
            n(editText == null ? 0 : editText.getText().length());
        }
    }

    public final void n(int i) {
        int i2;
        boolean z = this.n;
        int i3 = this.m;
        if (i3 == -1) {
            this.o.setText(String.valueOf(i));
            this.o.setContentDescription(null);
            this.n = false;
        } else {
            this.n = i > i3;
            Context context = getContext();
            AppCompatTextView appCompatTextView = this.o;
            int i4 = this.m;
            if (this.n) {
                i2 = R.string.character_counter_overflowed_content_description;
            } else {
                i2 = R.string.character_counter_content_description;
            }
            appCompatTextView.setContentDescription(context.getString(i2, Integer.valueOf(i), Integer.valueOf(i4)));
            if (z != this.n) {
                o();
            }
            this.o.setText(BidiFormatter.getInstance().unicodeWrap(getContext().getString(R.string.character_counter_pattern, Integer.valueOf(i), Integer.valueOf(this.m))));
        }
        if (this.e == null || z == this.n) {
            return;
        }
        u(false, false);
        z();
        q();
    }

    public void setPlaceholderText(@Nullable CharSequence charSequence) {
        if (this.t == null) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
            this.t = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_placeholder);
            ViewCompat.setImportantForAccessibility(this.t, 2);
            Fade fade = new Fade();
            fade.setDuration(87L);
            TimeInterpolator timeInterpolator = AnimationUtils.LINEAR_INTERPOLATOR;
            fade.setInterpolator(timeInterpolator);
            this.w = fade;
            fade.setStartDelay(67L);
            Fade fade2 = new Fade();
            fade2.setDuration(87L);
            fade2.setInterpolator(timeInterpolator);
            this.x = fade2;
            setPlaceholderTextAppearance(this.v);
            setPlaceholderTextColor(this.u);
        }
        if (TextUtils.isEmpty(charSequence)) {
            l(false);
        } else {
            if (!this.s) {
                l(true);
            }
            this.r = charSequence;
        }
        EditText editText = this.e;
        v(editText != null ? editText.getText().length() : 0);
    }

    @Nullable
    public CharSequence getPlaceholderText() {
        if (this.s) {
            return this.r;
        }
        return null;
    }

    public final void l(boolean z) {
        if (this.s == z) {
            return;
        }
        if (z) {
            AppCompatTextView appCompatTextView = this.t;
            if (appCompatTextView != null) {
                this.f3299a.addView(appCompatTextView);
                this.t.setVisibility(0);
            }
        } else {
            AppCompatTextView appCompatTextView2 = this.t;
            if (appCompatTextView2 != null) {
                appCompatTextView2.setVisibility(8);
            }
            this.t = null;
        }
        this.s = z;
    }

    public final void v(int i) {
        FrameLayout frameLayout = this.f3299a;
        if (i == 0 && !this.B0) {
            if (this.t == null || !this.s || TextUtils.isEmpty(this.r)) {
                return;
            }
            this.t.setText(this.r);
            TransitionManager.beginDelayedTransition(frameLayout, this.w);
            this.t.setVisibility(0);
            this.t.bringToFront();
            announceForAccessibility(this.r);
            return;
        }
        AppCompatTextView appCompatTextView = this.t;
        if (appCompatTextView == null || !this.s) {
            return;
        }
        appCompatTextView.setText((CharSequence) null);
        TransitionManager.beginDelayedTransition(frameLayout, this.x);
        this.t.setVisibility(4);
    }

    public void setPlaceholderTextColor(@Nullable ColorStateList colorStateList) {
        if (this.u != colorStateList) {
            this.u = colorStateList;
            AppCompatTextView appCompatTextView = this.t;
            if (appCompatTextView == null || colorStateList == null) {
                return;
            }
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    @Nullable
    public ColorStateList getPlaceholderTextColor() {
        return this.u;
    }

    public void setPlaceholderTextAppearance(@StyleRes int i) {
        this.v = i;
        AppCompatTextView appCompatTextView = this.t;
        if (appCompatTextView != null) {
            TextViewCompat.setTextAppearance(appCompatTextView, i);
        }
    }

    @StyleRes
    public int getPlaceholderTextAppearance() {
        return this.v;
    }

    public void setPrefixText(@Nullable CharSequence charSequence) {
        w wVar = this.f3300b;
        wVar.getClass();
        wVar.c = TextUtils.isEmpty(charSequence) ? null : charSequence;
        wVar.f3350b.setText(charSequence);
        wVar.d();
    }

    public void setSuffixText(@Nullable CharSequence charSequence) {
        this.A = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.B.setText(charSequence);
        y();
    }

    @Nullable
    public CharSequence getSuffixText() {
        return this.A;
    }

    @NonNull
    public TextView getSuffixTextView() {
        return this.B;
    }

    public final void y() {
        AppCompatTextView appCompatTextView = this.B;
        int visibility = appCompatTextView.getVisibility();
        int i = (this.A == null || this.B0) ? 8 : 0;
        if (visibility != i) {
            e().c(i == 0);
        }
        r();
        appCompatTextView.setVisibility(i);
        p();
    }

    public void setSuffixTextColor(@NonNull ColorStateList colorStateList) {
        this.B.setTextColor(colorStateList);
    }

    @Nullable
    public ColorStateList getSuffixTextColor() {
        return this.B.getTextColors();
    }

    public void setSuffixTextAppearance(@StyleRes int i) {
        TextViewCompat.setTextAppearance(this.B, i);
    }

    public final void x() {
        if (this.e == null) {
            return;
        }
        ViewCompat.setPaddingRelative(this.B, getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), this.e.getPaddingTop(), (isEndIconVisible() || this.n0.getVisibility() == 0) ? 0 : ViewCompat.getPaddingEnd(this.e), this.e.getPaddingBottom());
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        j(this, z);
        super.setEnabled(z);
    }

    public static void j(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                j((ViewGroup) childAt, z);
            }
        }
    }

    public int getCounterMaxLength() {
        return this.m;
    }

    public final void o() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        AppCompatTextView appCompatTextView = this.o;
        if (appCompatTextView != null) {
            m(appCompatTextView, this.n ? this.p : this.q);
            if (!this.n && (colorStateList2 = this.y) != null) {
                this.o.setTextColor(colorStateList2);
            }
            if (!this.n || (colorStateList = this.z) == null) {
                return;
            }
            this.o.setTextColor(colorStateList);
        }
    }

    public final void m(AppCompatTextView appCompatTextView, int i) {
        try {
            TextViewCompat.setTextAppearance(appCompatTextView, i);
        } catch (Exception unused) {
        }
        if (Build.VERSION.SDK_INT >= 23) {
            if (appCompatTextView.getTextColors().getDefaultColor() != -65281) {
                return;
            }
            TextViewCompat.setTextAppearance(appCompatTextView, R.style.TextAppearance_AppCompat_Caption);
            appCompatTextView.setTextColor(ContextCompat.getColor(getContext(), R.color.design_error));
        }
    }

    public final int c() {
        float collapsedTextHeight;
        if (!this.C) {
            return 0;
        }
        int i = this.L;
        CollapsingTextHelper collapsingTextHelper = this.C0;
        if (i == 0) {
            collapsedTextHeight = collapsingTextHelper.getCollapsedTextHeight();
        } else {
            if (i != 2) {
                return 0;
            }
            collapsedTextHeight = collapsingTextHelper.getCollapsedTextHeight() / 2.0f;
        }
        return (int) collapsedTextHeight;
    }

    public final int f(int i, boolean z) {
        int compoundPaddingLeft = this.e.getCompoundPaddingLeft() + i;
        if (getPrefixText() == null || z) {
            return compoundPaddingLeft;
        }
        return getPrefixTextView().getPaddingLeft() + (compoundPaddingLeft - getPrefixTextView().getMeasuredWidth());
    }

    public final int g(int i, boolean z) {
        int compoundPaddingRight = i - this.e.getCompoundPaddingRight();
        return (getPrefixText() == null || !z) ? compoundPaddingRight : (getPrefixTextView().getMeasuredWidth() - getPrefixTextView().getPaddingRight()) + compoundPaddingRight;
    }

    public final void b() {
        ColorStateList colorStateListValueOf;
        int i;
        int i2;
        MaterialShapeDrawable materialShapeDrawable = this.F;
        if (materialShapeDrawable == null) {
            return;
        }
        ShapeAppearanceModel shapeAppearanceModel = materialShapeDrawable.getShapeAppearanceModel();
        ShapeAppearanceModel shapeAppearanceModel2 = this.I;
        if (shapeAppearanceModel != shapeAppearanceModel2) {
            this.F.setShapeAppearanceModel(shapeAppearanceModel2);
            if (this.c0 == 3 && this.L == 2) {
                i iVar = (i) this.d0.get(3);
                AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) this.e;
                iVar.getClass();
                if (!i.g(autoCompleteTextView) && iVar.f3334a.getBoxBackgroundMode() == 2 && (autoCompleteTextView.getBackground() instanceof LayerDrawable)) {
                    iVar.e(autoCompleteTextView);
                }
            }
        }
        if (this.L == 2 && (i = this.N) > -1 && (i2 = this.Q) != 0) {
            this.F.setStroke(i, i2);
        }
        int iLayer = this.R;
        if (this.L == 1) {
            iLayer = MaterialColors.layer(MaterialColors.getColor(this, R.attr.colorSurface, 0), this.R);
        }
        this.R = iLayer;
        this.F.setFillColor(ColorStateList.valueOf(iLayer));
        if (this.c0 == 3) {
            this.e.getBackground().invalidateSelf();
        }
        MaterialShapeDrawable materialShapeDrawable2 = this.G;
        if (materialShapeDrawable2 != null && this.H != null) {
            if (this.N > -1 && this.Q != 0) {
                if (this.e.isFocused()) {
                    colorStateListValueOf = ColorStateList.valueOf(this.s0);
                } else {
                    colorStateListValueOf = ColorStateList.valueOf(this.Q);
                }
                materialShapeDrawable2.setFillColor(colorStateListValueOf);
                this.H.setFillColor(ColorStateList.valueOf(this.Q));
            }
            invalidate();
        }
        invalidate();
    }

    public final void q() {
        Drawable background;
        AppCompatTextView appCompatTextView;
        EditText editText = this.e;
        if (editText == null || this.L != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        if (DrawableUtils.canSafelyMutateDrawable(background)) {
            background = background.mutate();
        }
        s sVar = this.k;
        if (sVar.e()) {
            AppCompatTextView appCompatTextView2 = sVar.l;
            background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(appCompatTextView2 != null ? appCompatTextView2.getCurrentTextColor() : -1, PorterDuff.Mode.SRC_IN));
        } else if (this.n && (appCompatTextView = this.o) != null) {
            background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(appCompatTextView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            DrawableCompat.clearColorFilter(background);
            this.e.refreshDrawableState();
        }
    }

    public static class c extends AbsSavedState {
        public static final Parcelable.Creator<c> CREATOR = new a();

        /* renamed from: b, reason: collision with root package name */
        public CharSequence f3304b;
        public boolean c;
        public CharSequence d;
        public CharSequence e;
        public CharSequence f;

        public c(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
            this.f3304b = (CharSequence) creator.createFromParcel(parcel);
            this.c = parcel.readInt() == 1;
            this.d = (CharSequence) creator.createFromParcel(parcel);
            this.e = (CharSequence) creator.createFromParcel(parcel);
            this.f = (CharSequence) creator.createFromParcel(parcel);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.f3304b, parcel, i);
            parcel.writeInt(this.c ? 1 : 0);
            TextUtils.writeToParcel(this.d, parcel, i);
            TextUtils.writeToParcel(this.e, parcel, i);
            TextUtils.writeToParcel(this.f, parcel, i);
        }

        @NonNull
        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f3304b) + " hint=" + ((Object) this.d) + " helperText=" + ((Object) this.e) + " placeholderText=" + ((Object) this.f) + "}";
        }

        public class a implements Parcelable.ClassLoaderCreator<c> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            public c createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new c(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @Nullable
            public c createFromParcel(@NonNull Parcel parcel) {
                return new c(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            public c[] newArray(int i) {
                return new c[i];
            }
        }
    }

    @Override // android.view.View
    @Nullable
    public Parcelable onSaveInstanceState() {
        c cVar = new c(super.onSaveInstanceState());
        if (this.k.e()) {
            cVar.f3304b = getError();
        }
        cVar.c = this.c0 != 0 && this.e0.isChecked();
        cVar.d = getHint();
        cVar.e = getHelperText();
        cVar.f = getPlaceholderText();
        return cVar;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        c cVar = (c) parcelable;
        super.onRestoreInstanceState(cVar.getSuperState());
        setError(cVar.f3304b);
        if (cVar.c) {
            this.e0.post(new a());
        }
        setHint(cVar.d);
        setHelperText(cVar.e);
        setPlaceholderText(cVar.f);
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(@NonNull SparseArray<Parcelable> sparseArray) {
        this.H0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.H0 = false;
    }

    public boolean isHintAnimationEnabled() {
        return this.E0;
    }

    public void setHintAnimationEnabled(boolean z) {
        this.E0 = z;
    }

    public boolean isExpandedHintEnabled() {
        return this.D0;
    }

    public void setExpandedHintEnabled(boolean z) {
        if (this.D0 != z) {
            this.D0 = z;
            u(false, false);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        boolean z = false;
        boolean z2 = i == 1;
        boolean z3 = this.J;
        if (z2 != z3) {
            if (z2 && !z3) {
                z = true;
            }
            CornerSize topLeftCornerSize = this.I.getTopLeftCornerSize();
            RectF rectF = this.U;
            float cornerSize = topLeftCornerSize.getCornerSize(rectF);
            float cornerSize2 = this.I.getTopRightCornerSize().getCornerSize(rectF);
            float cornerSize3 = this.I.getBottomLeftCornerSize().getCornerSize(rectF);
            float cornerSize4 = this.I.getBottomRightCornerSize().getCornerSize(rectF);
            float f = z ? cornerSize : cornerSize2;
            if (z) {
                cornerSize = cornerSize2;
            }
            float f2 = z ? cornerSize3 : cornerSize4;
            if (z) {
                cornerSize3 = cornerSize4;
            }
            setBoxCornerRadii(f, cornerSize, f2, cornerSize3);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        EditText editText;
        int iMax;
        super.onMeasure(i, i2);
        boolean z = false;
        if (this.e != null && this.e.getMeasuredHeight() < (iMax = Math.max(this.c.getMeasuredHeight(), this.f3300b.getMeasuredHeight()))) {
            this.e.setMinimumHeight(iMax);
            z = true;
        }
        boolean zP = p();
        if (z || zP) {
            this.e.post(new b());
        }
        if (this.t != null && (editText = this.e) != null) {
            this.t.setGravity(editText.getGravity());
            this.t.setPadding(this.e.getCompoundPaddingLeft(), this.e.getCompoundPaddingTop(), this.e.getCompoundPaddingRight(), this.e.getCompoundPaddingBottom());
        }
        x();
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.e.requestLayout();
        }
    }

    public void setStartIconDrawable(@DrawableRes int i) {
        setStartIconDrawable(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    public void setStartIconDrawable(@Nullable Drawable drawable) {
        this.f3300b.a(drawable);
    }

    public void setStartIconVisible(boolean z) {
        this.f3300b.b(z);
    }

    public void setStartIconContentDescription(@StringRes int i) {
        setStartIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setEndIconMode(int i) {
        int i2 = this.c0;
        if (i2 == i) {
            return;
        }
        this.c0 = i;
        Iterator it = this.f0.iterator();
        while (it.hasNext()) {
            ((OnEndIconChangedListener) it.next()).onEndIconChanged(this, i2);
        }
        setEndIconVisible(i != 0);
        if (e().b(this.L)) {
            e().a();
            p.a(this, this.e0, this.g0, this.h0);
        } else {
            throw new IllegalStateException("The current box background mode " + this.L + " is not supported by the end icon mode " + i);
        }
    }

    public int getEndIconMode() {
        return this.c0;
    }

    public void setEndIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        View.OnLongClickListener onLongClickListener = this.l0;
        CheckableImageButton checkableImageButton = this.e0;
        checkableImageButton.setOnClickListener(onClickListener);
        k(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        View.OnLongClickListener onLongClickListener = this.m0;
        CheckableImageButton checkableImageButton = this.n0;
        checkableImageButton.setOnClickListener(onClickListener);
        k(checkableImageButton, onLongClickListener);
    }

    public void setEndIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.l0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.e0;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        k(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.m0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.n0;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        k(checkableImageButton, onLongClickListener);
    }

    public void refreshErrorIconDrawableState() {
        p.b(this, this.n0, this.o0);
    }

    public void setEndIconVisible(boolean z) {
        if (isEndIconVisible() != z) {
            this.e0.setVisibility(z ? 0 : 8);
            r();
            x();
            p();
        }
    }

    public boolean isEndIconVisible() {
        return this.d.getVisibility() == 0 && this.e0.getVisibility() == 0;
    }

    public void setEndIconActivated(boolean z) {
        this.e0.setActivated(z);
    }

    public void refreshEndIconDrawableState() {
        p.b(this, this.e0, this.g0);
    }

    public void setEndIconCheckable(boolean z) {
        this.e0.setCheckable(z);
    }

    public boolean isEndIconCheckable() {
        return this.e0.isCheckable();
    }

    public void setEndIconDrawable(@DrawableRes int i) {
        setEndIconDrawable(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    public void setEndIconDrawable(@Nullable Drawable drawable) {
        CheckableImageButton checkableImageButton = this.e0;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            p.a(this, checkableImageButton, this.g0, this.h0);
            refreshEndIconDrawableState();
        }
    }

    @Nullable
    public Drawable getEndIconDrawable() {
        return this.e0.getDrawable();
    }

    public void setEndIconContentDescription(@StringRes int i) {
        setEndIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setEndIconContentDescription(@Nullable CharSequence charSequence) {
        if (getEndIconContentDescription() != charSequence) {
            this.e0.setContentDescription(charSequence);
        }
    }

    @Nullable
    public CharSequence getEndIconContentDescription() {
        return this.e0.getContentDescription();
    }

    public void setEndIconTintList(@Nullable ColorStateList colorStateList) {
        if (this.g0 != colorStateList) {
            this.g0 = colorStateList;
            p.a(this, this.e0, colorStateList, this.h0);
        }
    }

    public void setEndIconTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.h0 != mode) {
            this.h0 = mode;
            p.a(this, this.e0, this.g0, mode);
        }
    }

    public void addOnEndIconChangedListener(@NonNull OnEndIconChangedListener onEndIconChangedListener) {
        this.f0.add(onEndIconChangedListener);
    }

    public void removeOnEndIconChangedListener(@NonNull OnEndIconChangedListener onEndIconChangedListener) {
        this.f0.remove(onEndIconChangedListener);
    }

    public void clearOnEndIconChangedListeners() {
        this.f0.clear();
    }

    public void addOnEditTextAttachedListener(@NonNull OnEditTextAttachedListener onEditTextAttachedListener) {
        this.b0.add(onEditTextAttachedListener);
        if (this.e != null) {
            onEditTextAttachedListener.onEditTextAttached(this);
        }
    }

    public void removeOnEditTextAttachedListener(@NonNull OnEditTextAttachedListener onEditTextAttachedListener) {
        this.b0.remove(onEditTextAttachedListener);
    }

    public void clearOnEditTextAttachedListeners() {
        this.b0.clear();
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@DrawableRes int i) {
        setPasswordVisibilityToggleDrawable(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@Nullable Drawable drawable) {
        this.e0.setImageDrawable(drawable);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@StringRes int i) {
        setPasswordVisibilityToggleContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@Nullable CharSequence charSequence) {
        this.e0.setContentDescription(charSequence);
    }

    @Nullable
    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.e0.getDrawable();
    }

    @Nullable
    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.e0.getContentDescription();
    }

    @Deprecated
    public boolean isPasswordVisibilityToggleEnabled() {
        return this.c0 == 1;
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        if (z && this.c0 != 1) {
            setEndIconMode(1);
        } else {
            if (z) {
                return;
            }
            setEndIconMode(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(@Nullable ColorStateList colorStateList) {
        this.g0 = colorStateList;
        p.a(this, this.e0, colorStateList, this.h0);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(@Nullable PorterDuff.Mode mode) {
        this.h0 = mode;
        p.a(this, this.e0, this.g0, mode);
    }

    @Deprecated
    public void passwordVisibilityToggleRequested(boolean z) {
        if (this.c0 == 1) {
            CheckableImageButton checkableImageButton = this.e0;
            checkableImageButton.performClick();
            if (z) {
                checkableImageButton.jumpDrawablesToCurrentState();
            }
        }
    }

    public void setTextInputAccessibilityDelegate(@Nullable AccessibilityDelegate accessibilityDelegate) {
        EditText editText = this.e;
        if (editText != null) {
            ViewCompat.setAccessibilityDelegate(editText, accessibilityDelegate);
        }
    }

    public final void r() {
        int visibility = this.e0.getVisibility();
        CheckableImageButton checkableImageButton = this.n0;
        this.d.setVisibility((visibility != 0 || checkableImageButton.getVisibility() == 0) ? 8 : 0);
        this.c.setVisibility((isEndIconVisible() || checkableImageButton.getVisibility() == 0 || ((this.A == null || this.B0) ? '\b' : (char) 0) == 0) ? 0 : 8);
    }

    public final o e() {
        int i = this.c0;
        SparseArray sparseArray = this.d0;
        o oVar = (o) sparseArray.get(i);
        return oVar != null ? oVar : (o) sparseArray.get(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean p() {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.p():boolean");
    }

    public static void k(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        boolean zHasOnClickListeners = ViewCompat.hasOnClickListeners(checkableImageButton);
        boolean z = onLongClickListener != null;
        boolean z2 = zHasOnClickListeners || z;
        checkableImageButton.setFocusable(z2);
        checkableImageButton.setClickable(zHasOnClickListeners);
        checkableImageButton.setPressable(zHasOnClickListeners);
        checkableImageButton.setLongClickable(z);
        ViewCompat.setImportantForAccessibility(checkableImageButton, z2 ? 1 : 2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int compoundPaddingTop;
        int compoundPaddingBottom;
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.e;
        if (editText != null) {
            Rect rect = this.S;
            DescendantOffsetUtils.getDescendantRect(this, editText, rect);
            MaterialShapeDrawable materialShapeDrawable = this.G;
            if (materialShapeDrawable != null) {
                int i5 = rect.bottom;
                materialShapeDrawable.setBounds(rect.left, i5 - this.O, rect.right, i5);
            }
            MaterialShapeDrawable materialShapeDrawable2 = this.H;
            if (materialShapeDrawable2 != null) {
                int i6 = rect.bottom;
                materialShapeDrawable2.setBounds(rect.left, i6 - this.P, rect.right, i6);
            }
            if (this.C) {
                float textSize = this.e.getTextSize();
                CollapsingTextHelper collapsingTextHelper = this.C0;
                collapsingTextHelper.setExpandedTextSize(textSize);
                int gravity = this.e.getGravity();
                collapsingTextHelper.setCollapsedTextGravity((gravity & (-113)) | 48);
                collapsingTextHelper.setExpandedTextGravity(gravity);
                if (this.e == null) {
                    throw new IllegalStateException();
                }
                boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
                int i7 = rect.bottom;
                Rect rect2 = this.T;
                rect2.bottom = i7;
                int i8 = this.L;
                if (i8 == 1) {
                    rect2.left = f(rect.left, zIsLayoutRtl);
                    rect2.top = rect.top + this.M;
                    rect2.right = g(rect.right, zIsLayoutRtl);
                } else if (i8 == 2) {
                    rect2.left = this.e.getPaddingLeft() + rect.left;
                    rect2.top = rect.top - c();
                    rect2.right = rect.right - this.e.getPaddingRight();
                } else {
                    rect2.left = f(rect.left, zIsLayoutRtl);
                    rect2.top = getPaddingTop();
                    rect2.right = g(rect.right, zIsLayoutRtl);
                }
                collapsingTextHelper.setCollapsedBounds(rect2);
                if (this.e == null) {
                    throw new IllegalStateException();
                }
                float expandedTextHeight = collapsingTextHelper.getExpandedTextHeight();
                rect2.left = this.e.getCompoundPaddingLeft() + rect.left;
                if (this.L == 1 && this.e.getMinLines() <= 1) {
                    compoundPaddingTop = (int) (rect.centerY() - (expandedTextHeight / 2.0f));
                } else {
                    compoundPaddingTop = rect.top + this.e.getCompoundPaddingTop();
                }
                rect2.top = compoundPaddingTop;
                rect2.right = rect.right - this.e.getCompoundPaddingRight();
                if (this.L == 1 && this.e.getMinLines() <= 1) {
                    compoundPaddingBottom = (int) (rect2.top + expandedTextHeight);
                } else {
                    compoundPaddingBottom = rect.bottom - this.e.getCompoundPaddingBottom();
                }
                rect2.bottom = compoundPaddingBottom;
                collapsingTextHelper.setExpandedBounds(rect2);
                collapsingTextHelper.recalculate();
                if (!d() || this.B0) {
                    return;
                }
                i();
            }
        }
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        MaterialShapeDrawable materialShapeDrawable;
        super.draw(canvas);
        boolean z = this.C;
        CollapsingTextHelper collapsingTextHelper = this.C0;
        if (z) {
            collapsingTextHelper.draw(canvas);
        }
        if (this.H == null || (materialShapeDrawable = this.G) == null) {
            return;
        }
        materialShapeDrawable.draw(canvas);
        if (this.e.isFocused()) {
            Rect bounds = this.H.getBounds();
            Rect bounds2 = this.G.getBounds();
            float expansionFraction = collapsingTextHelper.getExpansionFraction();
            int iCenterX = bounds2.centerX();
            bounds.left = AnimationUtils.lerp(iCenterX, bounds2.left, expansionFraction);
            bounds.right = AnimationUtils.lerp(iCenterX, bounds2.right, expansionFraction);
            this.H.draw(canvas);
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.C0.maybeUpdateFontWeightAdjustment(configuration);
    }

    public final boolean d() {
        return this.C && !TextUtils.isEmpty(this.D) && (this.F instanceof h);
    }

    public final void i() {
        if (d()) {
            int width = this.e.getWidth();
            int gravity = this.e.getGravity();
            CollapsingTextHelper collapsingTextHelper = this.C0;
            RectF rectF = this.U;
            collapsingTextHelper.getCollapsedTextActualBounds(rectF, width, gravity);
            float f = rectF.left;
            float f2 = this.K;
            rectF.left = f - f2;
            rectF.right += f2;
            rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.N);
            h hVar = (h) this.F;
            hVar.getClass();
            hVar.i(rectF.left, rectF.top, rectF.right, rectF.bottom);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        if (this.G0) {
            return;
        }
        this.G0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        CollapsingTextHelper collapsingTextHelper = this.C0;
        boolean state = collapsingTextHelper != null ? collapsingTextHelper.setState(drawableState) : false;
        if (this.e != null) {
            u(ViewCompat.isLaidOut(this) && isEnabled(), false);
        }
        q();
        z();
        if (state) {
            invalidate();
        }
        this.G0 = false;
    }

    public final void z() {
        AppCompatTextView appCompatTextView;
        EditText editText;
        EditText editText2;
        if (this.F == null || this.L == 0) {
            return;
        }
        boolean z = false;
        boolean z2 = isFocused() || ((editText2 = this.e) != null && editText2.hasFocus());
        if (isHovered() || ((editText = this.e) != null && editText.isHovered())) {
            z = true;
        }
        boolean zIsEnabled = isEnabled();
        s sVar = this.k;
        if (!zIsEnabled) {
            this.Q = this.A0;
        } else if (sVar.e()) {
            if (this.v0 != null) {
                w(z2, z);
            } else {
                AppCompatTextView appCompatTextView2 = sVar.l;
                this.Q = appCompatTextView2 != null ? appCompatTextView2.getCurrentTextColor() : -1;
            }
        } else if (!this.n || (appCompatTextView = this.o) == null) {
            if (z2) {
                this.Q = this.u0;
            } else if (z) {
                this.Q = this.t0;
            } else {
                this.Q = this.s0;
            }
        } else if (this.v0 != null) {
            w(z2, z);
        } else {
            this.Q = appCompatTextView.getCurrentTextColor();
        }
        s();
        refreshErrorIconDrawableState();
        refreshStartIconDrawableState();
        refreshEndIconDrawableState();
        o oVarE = e();
        oVarE.getClass();
        if (oVarE instanceof i) {
            boolean zE = sVar.e();
            CheckableImageButton checkableImageButton = this.e0;
            if (!zE || getEndIconDrawable() == null) {
                p.a(this, checkableImageButton, this.g0, this.h0);
            } else {
                Drawable drawableMutate = DrawableCompat.wrap(getEndIconDrawable()).mutate();
                AppCompatTextView appCompatTextView3 = sVar.l;
                DrawableCompat.setTint(drawableMutate, appCompatTextView3 != null ? appCompatTextView3.getCurrentTextColor() : -1);
                checkableImageButton.setImageDrawable(drawableMutate);
            }
        }
        if (this.L == 2) {
            int i = this.N;
            if (z2 && isEnabled()) {
                this.N = this.P;
            } else {
                this.N = this.O;
            }
            if (this.N != i && d() && !this.B0) {
                if (d()) {
                    ((h) this.F).i(0.0f, 0.0f, 0.0f, 0.0f);
                }
                i();
            }
        }
        if (this.L == 1) {
            if (!isEnabled()) {
                this.R = this.x0;
            } else if (z && !z2) {
                this.R = this.z0;
            } else if (z2) {
                this.R = this.y0;
            } else {
                this.R = this.w0;
            }
        }
        b();
    }

    public final void w(boolean z, boolean z2) {
        int defaultColor = this.v0.getDefaultColor();
        int colorForState = this.v0.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.v0.getColorForState(new int[]{android.R.attr.state_activated, android.R.attr.state_enabled}, defaultColor);
        if (z) {
            this.Q = colorForState2;
        } else if (z2) {
            this.Q = colorForState;
        } else {
            this.Q = defaultColor;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void s() {
        /*
            r2 = this;
            android.graphics.drawable.Drawable r0 = r2.getErrorIconDrawable()
            if (r0 == 0) goto L14
            com.google.android.material.textfield.s r0 = r2.k
            boolean r1 = r0.k
            if (r1 == 0) goto L14
            boolean r0 = r0.e()
            if (r0 == 0) goto L14
            r0 = 0
            goto L16
        L14:
            r0 = 8
        L16:
            com.google.android.material.internal.CheckableImageButton r1 = r2.n0
            r1.setVisibility(r0)
            r2.r()
            r2.x()
            int r0 = r2.c0
            if (r0 == 0) goto L26
            return
        L26:
            r2.p()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.s():void");
    }

    public final void a(float f) {
        CollapsingTextHelper collapsingTextHelper = this.C0;
        if (collapsingTextHelper.getExpansionFraction() == f) {
            return;
        }
        if (this.F0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.F0 = valueAnimator;
            valueAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
            this.F0.setDuration(167L);
            this.F0.addUpdateListener(new y(this));
        }
        this.F0.setFloatValues(collapsingTextHelper.getExpansionFraction(), f);
        this.F0.start();
    }

    public static class AccessibilityDelegate extends AccessibilityDelegateCompat {
        public final TextInputLayout d;

        public AccessibilityDelegate(@NonNull TextInputLayout textInputLayout) {
            this.d = textInputLayout;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(@NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AppCompatTextView appCompatTextView;
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            TextInputLayout textInputLayout = this.d;
            EditText editText = textInputLayout.getEditText();
            CharSequence contentDescription = null;
            CharSequence text = editText != null ? editText.getText() : null;
            CharSequence hint = textInputLayout.getHint();
            CharSequence error = textInputLayout.getError();
            CharSequence placeholderText = textInputLayout.getPlaceholderText();
            int counterMaxLength = textInputLayout.getCounterMaxLength();
            if (textInputLayout.l && textInputLayout.n && (appCompatTextView = textInputLayout.o) != null) {
                contentDescription = appCompatTextView.getContentDescription();
            }
            boolean zIsEmpty = TextUtils.isEmpty(text);
            boolean zIsEmpty2 = TextUtils.isEmpty(hint);
            boolean z = textInputLayout.B0;
            boolean zIsEmpty3 = TextUtils.isEmpty(error);
            boolean z2 = (zIsEmpty3 && TextUtils.isEmpty(contentDescription)) ? false : true;
            String string = !zIsEmpty2 ? hint.toString() : "";
            w wVar = textInputLayout.f3300b;
            View view2 = wVar.f3350b;
            if (view2.getVisibility() == 0) {
                accessibilityNodeInfoCompat.setLabelFor(view2);
                accessibilityNodeInfoCompat.setTraversalAfter(view2);
            } else {
                accessibilityNodeInfoCompat.setTraversalAfter(wVar.d);
            }
            if (!zIsEmpty) {
                accessibilityNodeInfoCompat.setText(text);
            } else if (!TextUtils.isEmpty(string)) {
                accessibilityNodeInfoCompat.setText(string);
                if (!z && placeholderText != null) {
                    accessibilityNodeInfoCompat.setText(string + ", " + ((Object) placeholderText));
                }
            } else if (placeholderText != null) {
                accessibilityNodeInfoCompat.setText(placeholderText);
            }
            if (!TextUtils.isEmpty(string)) {
                if (Build.VERSION.SDK_INT >= 26) {
                    accessibilityNodeInfoCompat.setHintText(string);
                } else {
                    if (!zIsEmpty) {
                        string = ((Object) text) + ", " + string;
                    }
                    accessibilityNodeInfoCompat.setText(string);
                }
                accessibilityNodeInfoCompat.setShowingHintText(zIsEmpty);
            }
            if (text == null || text.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            accessibilityNodeInfoCompat.setMaxTextLength(counterMaxLength);
            if (z2) {
                if (zIsEmpty3) {
                    error = contentDescription;
                }
                accessibilityNodeInfoCompat.setError(error);
            }
            View view3 = textInputLayout.k.r;
            if (view3 != null) {
                accessibilityNodeInfoCompat.setLabelFor(view3);
            }
        }
    }
}
