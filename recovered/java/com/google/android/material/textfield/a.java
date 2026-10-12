package com.google.android.material.textfield;

import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.NonNull;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes.dex */
class a extends o {
    public final TextWatcher e;
    public final View.OnFocusChangeListener f;

    /* renamed from: g, reason: collision with root package name */
    public final TextInputLayout.OnEditTextAttachedListener f3305g;
    public final TextInputLayout.OnEndIconChangedListener h;
    public AnimatorSet i;
    public ValueAnimator j;

    /* renamed from: com.google.android.material.textfield.a$a, reason: collision with other inner class name */
    public class C0042a implements TextWatcher {
        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public C0042a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@NonNull Editable editable) {
            a aVar = a.this;
            if (aVar.f3334a.getSuffixText() != null) {
                return;
            }
            aVar.e(a.d(aVar));
        }
    }

    public class b implements View.OnFocusChangeListener {
        public b() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            a aVar = a.this;
            aVar.e(a.d(aVar));
        }
    }

    public class c implements TextInputLayout.OnEditTextAttachedListener {
        public c() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.OnEditTextAttachedListener
        public void onEditTextAttached(@NonNull TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            a aVar = a.this;
            textInputLayout.setEndIconVisible(a.d(aVar));
            editText.setOnFocusChangeListener(aVar.f);
            aVar.c.setOnFocusChangeListener(aVar.f);
            editText.removeTextChangedListener(aVar.e);
            editText.addTextChangedListener(aVar.e);
        }
    }

    public class d implements TextInputLayout.OnEndIconChangedListener {
        public d() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.OnEndIconChangedListener
        public void onEndIconChanged(@NonNull TextInputLayout textInputLayout, int i) {
            EditText editText = textInputLayout.getEditText();
            if (editText == null || i != 2) {
                return;
            }
            editText.post(new RunnableC0043a(editText));
            View.OnFocusChangeListener onFocusChangeListener = editText.getOnFocusChangeListener();
            a aVar = a.this;
            if (onFocusChangeListener == aVar.f) {
                editText.setOnFocusChangeListener(null);
            }
            if (aVar.c.getOnFocusChangeListener() == aVar.f) {
                aVar.c.setOnFocusChangeListener(null);
            }
        }

        /* renamed from: com.google.android.material.textfield.a$d$a, reason: collision with other inner class name */
        public class RunnableC0043a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ EditText f3310a;

            public RunnableC0043a(EditText editText) {
                this.f3310a = editText;
            }

            @Override // java.lang.Runnable
            public void run() {
                d dVar = d.this;
                this.f3310a.removeTextChangedListener(a.this.e);
                a.this.e(true);
            }
        }
    }

    public a(TextInputLayout textInputLayout, int i) {
        super(textInputLayout, i);
        this.e = new C0042a();
        this.f = new b();
        this.f3305g = new c();
        this.h = new d();
    }

    @Override // com.google.android.material.textfield.o
    public final void a() {
        int i = this.d;
        if (i == 0) {
            i = R.drawable.mtrl_ic_cancel;
        }
        TextInputLayout textInputLayout = this.f3334a;
        textInputLayout.setEndIconDrawable(i);
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R.string.clear_text_end_icon_content_description));
        textInputLayout.setEndIconCheckable(false);
        textInputLayout.setEndIconOnClickListener(new com.google.android.material.textfield.b(this));
        textInputLayout.addOnEditTextAttachedListener(this.f3305g);
        textInputLayout.addOnEndIconChangedListener(this.h);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        valueAnimatorOfFloat.setInterpolator(AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
        valueAnimatorOfFloat.setDuration(150L);
        valueAnimatorOfFloat.addUpdateListener(new f(this));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = AnimationUtils.LINEAR_INTERPOLATOR;
        valueAnimatorOfFloat2.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat2.setDuration(100L);
        valueAnimatorOfFloat2.addUpdateListener(new e(this));
        AnimatorSet animatorSet = new AnimatorSet();
        this.i = animatorSet;
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        this.i.addListener(new com.google.android.material.textfield.c(this));
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat3.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat3.setDuration(100L);
        valueAnimatorOfFloat3.addUpdateListener(new e(this));
        this.j = valueAnimatorOfFloat3;
        valueAnimatorOfFloat3.addListener(new com.google.android.material.textfield.d(this));
    }

    @Override // com.google.android.material.textfield.o
    public final void c(boolean z) {
        if (this.f3334a.getSuffixText() == null) {
            return;
        }
        e(z);
    }

    public final void e(boolean z) {
        boolean z2 = this.f3334a.isEndIconVisible() == z;
        if (z && !this.i.isRunning()) {
            this.j.cancel();
            this.i.start();
            if (z2) {
                this.i.end();
                return;
            }
            return;
        }
        if (z) {
            return;
        }
        this.i.cancel();
        this.j.start();
        if (z2) {
            this.j.end();
        }
    }

    public static boolean d(a aVar) {
        EditText editText = aVar.f3334a.getEditText();
        if (editText != null) {
            return (editText.hasFocus() || aVar.c.hasFocus()) && editText.getText().length() > 0;
        }
        return false;
    }
}
