package com.google.android.material.textfield;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.resources.MaterialResources;
import java.util.ArrayList;

/* loaded from: classes.dex */
final class s {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3339a;

    /* renamed from: b, reason: collision with root package name */
    public final TextInputLayout f3340b;
    public LinearLayout c;
    public int d;
    public FrameLayout e;
    public AnimatorSet f;

    /* renamed from: g, reason: collision with root package name */
    public final float f3341g;
    public int h;
    public int i;
    public CharSequence j;
    public boolean k;
    public AppCompatTextView l;
    public CharSequence m;
    public int n;
    public ColorStateList o;
    public CharSequence p;
    public boolean q;
    public AppCompatTextView r;
    public int s;
    public ColorStateList t;
    public Typeface u;

    public s(@NonNull TextInputLayout textInputLayout) {
        this.f3339a = textInputLayout.getContext();
        this.f3340b = textInputLayout;
        this.f3341g = r0.getResources().getDimensionPixelSize(R.dimen.design_textinput_caption_translate_y);
    }

    public final void g() {
        this.j = null;
        c();
        if (this.h == 1) {
            if (this.q && !TextUtils.isEmpty(this.p)) {
                this.i = 2;
            } else {
                this.i = 0;
            }
        }
        j(this.h, this.i, i(this.l, ""));
    }

    public final boolean i(AppCompatTextView appCompatTextView, CharSequence charSequence) {
        TextInputLayout textInputLayout = this.f3340b;
        if (ViewCompat.isLaidOut(textInputLayout) && textInputLayout.isEnabled()) {
            return (this.i == this.h && appCompatTextView != null && TextUtils.equals(appCompatTextView.getText(), charSequence)) ? false : true;
        }
        return false;
    }

    public final void j(int i, int i2, boolean z) {
        TextView textViewF;
        TextView textViewF2;
        if (i == i2) {
            return;
        }
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f = animatorSet;
            ArrayList arrayList = new ArrayList();
            d(arrayList, this.q, this.r, 2, i, i2);
            d(arrayList, this.k, this.l, 1, i, i2);
            AnimatorSetCompat.playTogether(animatorSet, arrayList);
            animatorSet.addListener(new q(this, i2, f(i), i, f(i2)));
            animatorSet.start();
        } else if (i != i2) {
            if (i2 != 0 && (textViewF2 = f(i2)) != null) {
                textViewF2.setVisibility(0);
                textViewF2.setAlpha(1.0f);
            }
            if (i != 0 && (textViewF = f(i)) != null) {
                textViewF.setVisibility(4);
                if (i == 1) {
                    textViewF.setText((CharSequence) null);
                }
            }
            this.h = i2;
        }
        TextInputLayout textInputLayout = this.f3340b;
        textInputLayout.q();
        textInputLayout.u(z, false);
        textInputLayout.z();
    }

    public final void d(ArrayList arrayList, boolean z, AppCompatTextView appCompatTextView, int i, int i2, int i3) {
        if (appCompatTextView == null || !z) {
            return;
        }
        if (i == i3 || i == i2) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(appCompatTextView, (Property<AppCompatTextView, Float>) View.ALPHA, i3 == i ? 1.0f : 0.0f);
            objectAnimatorOfFloat.setDuration(167L);
            objectAnimatorOfFloat.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
            arrayList.add(objectAnimatorOfFloat);
            if (i3 == i) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(appCompatTextView, (Property<AppCompatTextView, Float>) View.TRANSLATION_Y, -this.f3341g, 0.0f);
                objectAnimatorOfFloat2.setDuration(217L);
                objectAnimatorOfFloat2.setInterpolator(AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
                arrayList.add(objectAnimatorOfFloat2);
            }
        }
    }

    public final void c() {
        AnimatorSet animatorSet = this.f;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    public final TextView f(int i) {
        if (i == 1) {
            return this.l;
        }
        if (i != 2) {
            return null;
        }
        return this.r;
    }

    public final void b() {
        if (this.c != null) {
            TextInputLayout textInputLayout = this.f3340b;
            if (textInputLayout.getEditText() != null) {
                EditText editText = textInputLayout.getEditText();
                Context context = this.f3339a;
                boolean zIsFontScaleAtLeast1_3 = MaterialResources.isFontScaleAtLeast1_3(context);
                LinearLayout linearLayout = this.c;
                int i = R.dimen.material_helper_text_font_1_3_padding_horizontal;
                int paddingStart = ViewCompat.getPaddingStart(editText);
                if (zIsFontScaleAtLeast1_3) {
                    paddingStart = context.getResources().getDimensionPixelSize(i);
                }
                int i2 = R.dimen.material_helper_text_font_1_3_padding_top;
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_default_padding_top);
                if (zIsFontScaleAtLeast1_3) {
                    dimensionPixelSize = context.getResources().getDimensionPixelSize(i2);
                }
                int paddingEnd = ViewCompat.getPaddingEnd(editText);
                if (zIsFontScaleAtLeast1_3) {
                    paddingEnd = context.getResources().getDimensionPixelSize(i);
                }
                ViewCompat.setPaddingRelative(linearLayout, paddingStart, dimensionPixelSize, paddingEnd, 0);
            }
        }
    }

    public final void a(AppCompatTextView appCompatTextView, int i) {
        if (this.c == null && this.e == null) {
            Context context = this.f3339a;
            LinearLayout linearLayout = new LinearLayout(context);
            this.c = linearLayout;
            linearLayout.setOrientation(0);
            LinearLayout linearLayout2 = this.c;
            TextInputLayout textInputLayout = this.f3340b;
            textInputLayout.addView(linearLayout2, -1, -2);
            this.e = new FrameLayout(context);
            this.c.addView(this.e, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (textInputLayout.getEditText() != null) {
                b();
            }
        }
        if (i == 0 || i == 1) {
            this.e.setVisibility(0);
            this.e.addView(appCompatTextView);
        } else {
            this.c.addView(appCompatTextView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.c.setVisibility(0);
        this.d++;
    }

    public final void h(AppCompatTextView appCompatTextView, int i) {
        FrameLayout frameLayout;
        LinearLayout linearLayout = this.c;
        if (linearLayout == null) {
            return;
        }
        if ((i == 0 || i == 1) && (frameLayout = this.e) != null) {
            frameLayout.removeView(appCompatTextView);
        } else {
            linearLayout.removeView(appCompatTextView);
        }
        int i2 = this.d - 1;
        this.d = i2;
        LinearLayout linearLayout2 = this.c;
        if (i2 == 0) {
            linearLayout2.setVisibility(8);
        }
    }

    public final boolean e() {
        return (this.i != 1 || this.l == null || TextUtils.isEmpty(this.j)) ? false : true;
    }
}
