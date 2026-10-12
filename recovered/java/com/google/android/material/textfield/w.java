package com.google.android.material.textfield;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes.dex */
class w extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public final TextInputLayout f3349a;

    /* renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f3350b;
    public CharSequence c;
    public final CheckableImageButton d;
    public ColorStateList e;
    public PorterDuff.Mode f;

    /* renamed from: g, reason: collision with root package name */
    public View.OnLongClickListener f3351g;
    public boolean h;

    public w(TextInputLayout textInputLayout, TintTypedArray tintTypedArray) {
        CharSequence text;
        super(textInputLayout.getContext());
        this.f3349a = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, GravityCompat.START));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_start_icon, (ViewGroup) this, false);
        this.d = checkableImageButton;
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.f3350b = appCompatTextView;
        if (MaterialResources.isFontScaleAtLeast1_3(getContext())) {
            MarginLayoutParamsCompat.setMarginEnd((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams(), 0);
        }
        View.OnLongClickListener onLongClickListener = this.f3351g;
        checkableImageButton.setOnClickListener(null);
        p.c(checkableImageButton, onLongClickListener);
        this.f3351g = null;
        checkableImageButton.setOnLongClickListener(null);
        p.c(checkableImageButton, null);
        int i = R.styleable.TextInputLayout_startIconTint;
        if (tintTypedArray.hasValue(i)) {
            this.e = MaterialResources.getColorStateList(getContext(), tintTypedArray, i);
        }
        int i2 = R.styleable.TextInputLayout_startIconTintMode;
        if (tintTypedArray.hasValue(i2)) {
            this.f = ViewUtils.parseTintMode(tintTypedArray.getInt(i2, -1), null);
        }
        int i3 = R.styleable.TextInputLayout_startIconDrawable;
        if (tintTypedArray.hasValue(i3)) {
            a(tintTypedArray.getDrawable(i3));
            int i4 = R.styleable.TextInputLayout_startIconContentDescription;
            if (tintTypedArray.hasValue(i4) && checkableImageButton.getContentDescription() != (text = tintTypedArray.getText(i4))) {
                checkableImageButton.setContentDescription(text);
            }
            checkableImageButton.setCheckable(tintTypedArray.getBoolean(R.styleable.TextInputLayout_startIconCheckable, true));
        }
        appCompatTextView.setVisibility(8);
        appCompatTextView.setId(R.id.textinput_prefix_text);
        appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        ViewCompat.setAccessibilityLiveRegion(appCompatTextView, 1);
        TextViewCompat.setTextAppearance(appCompatTextView, tintTypedArray.getResourceId(R.styleable.TextInputLayout_prefixTextAppearance, 0));
        int i5 = R.styleable.TextInputLayout_prefixTextColor;
        if (tintTypedArray.hasValue(i5)) {
            appCompatTextView.setTextColor(tintTypedArray.getColorStateList(i5));
        }
        CharSequence text2 = tintTypedArray.getText(R.styleable.TextInputLayout_prefixText);
        this.c = TextUtils.isEmpty(text2) ? null : text2;
        appCompatTextView.setText(text2);
        d();
        addView(checkableImageButton);
        addView(appCompatTextView);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        c();
    }

    public final void a(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.d;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            ColorStateList colorStateList = this.e;
            PorterDuff.Mode mode = this.f;
            TextInputLayout textInputLayout = this.f3349a;
            p.a(textInputLayout, checkableImageButton, colorStateList, mode);
            b(true);
            p.b(textInputLayout, checkableImageButton, this.e);
            return;
        }
        b(false);
        View.OnLongClickListener onLongClickListener = this.f3351g;
        checkableImageButton.setOnClickListener(null);
        p.c(checkableImageButton, onLongClickListener);
        this.f3351g = null;
        checkableImageButton.setOnLongClickListener(null);
        p.c(checkableImageButton, null);
        if (checkableImageButton.getContentDescription() != null) {
            checkableImageButton.setContentDescription(null);
        }
    }

    public final void b(boolean z) {
        CheckableImageButton checkableImageButton = this.d;
        if ((checkableImageButton.getVisibility() == 0) != z) {
            checkableImageButton.setVisibility(z ? 0 : 8);
            c();
            d();
        }
    }

    public final void c() {
        EditText editText = this.f3349a.e;
        if (editText == null) {
            return;
        }
        ViewCompat.setPaddingRelative(this.f3350b, this.d.getVisibility() == 0 ? 0 : ViewCompat.getPaddingStart(editText), editText.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), editText.getCompoundPaddingBottom());
    }

    public final void d() {
        int i = (this.c == null || this.h) ? 8 : 0;
        setVisibility((this.d.getVisibility() == 0 || i == 0) ? 0 : 8);
        this.f3350b.setVisibility(i);
        this.f3349a.p();
    }
}
