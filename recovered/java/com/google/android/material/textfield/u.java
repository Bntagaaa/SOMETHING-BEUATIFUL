package com.google.android.material.textfield;

import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.widget.EditText;
import androidx.annotation.NonNull;
import com.google.android.material.R;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes.dex */
class u extends o {
    public final TextWatcher e;
    public final TextInputLayout.OnEditTextAttachedListener f;

    /* renamed from: g, reason: collision with root package name */
    public final TextInputLayout.OnEndIconChangedListener f3342g;

    public class a extends TextWatcherAdapter {
        public a() {
        }

        @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            u.this.c.setChecked(!u.d(r1));
        }
    }

    public class b implements TextInputLayout.OnEditTextAttachedListener {
        public b() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.OnEditTextAttachedListener
        public void onEditTextAttached(@NonNull TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            u uVar = u.this;
            uVar.c.setChecked(!u.d(uVar));
            editText.removeTextChangedListener(uVar.e);
            editText.addTextChangedListener(uVar.e);
        }
    }

    public class c implements TextInputLayout.OnEndIconChangedListener {
        public c() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.OnEndIconChangedListener
        public void onEndIconChanged(@NonNull TextInputLayout textInputLayout, int i) {
            EditText editText = textInputLayout.getEditText();
            if (editText == null || i != 1) {
                return;
            }
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            editText.post(new a(editText));
        }

        public class a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ EditText f3346a;

            public a(EditText editText) {
                this.f3346a = editText;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f3346a.removeTextChangedListener(u.this.e);
            }
        }
    }

    public u(TextInputLayout textInputLayout, int i) {
        super(textInputLayout, i);
        this.e = new a();
        this.f = new b();
        this.f3342g = new c();
    }

    @Override // com.google.android.material.textfield.o
    public final void a() {
        int i = this.d;
        if (i == 0) {
            i = R.drawable.design_password_eye;
        }
        TextInputLayout textInputLayout = this.f3334a;
        textInputLayout.setEndIconDrawable(i);
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R.string.password_toggle_content_description));
        textInputLayout.setEndIconVisible(true);
        textInputLayout.setEndIconCheckable(true);
        textInputLayout.setEndIconOnClickListener(new v(this));
        textInputLayout.addOnEditTextAttachedListener(this.f);
        textInputLayout.addOnEndIconChangedListener(this.f3342g);
        EditText editText = textInputLayout.getEditText();
        if (editText != null) {
            if (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224) {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
        }
    }

    public static boolean d(u uVar) {
        EditText editText = uVar.f3334a.getEditText();
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }
}
