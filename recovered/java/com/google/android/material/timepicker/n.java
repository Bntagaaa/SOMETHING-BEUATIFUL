package com.google.android.material.timepicker;

import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes.dex */
class n implements TextView.OnEditorActionListener, View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final a f3374a;

    /* renamed from: b, reason: collision with root package name */
    public final a f3375b;
    public final i c;
    public boolean d = false;

    public n(a aVar, a aVar2, i iVar) {
        this.f3374a = aVar;
        this.f3375b = aVar2;
        this.c = iVar;
    }

    public void bind() {
        TextInputLayout textInput = this.f3374a.getTextInput();
        TextInputLayout textInput2 = this.f3375b.getTextInput();
        EditText editText = textInput.getEditText();
        EditText editText2 = textInput2.getEditText();
        editText.setImeOptions(268435461);
        editText2.setImeOptions(268435462);
        editText.setOnEditorActionListener(this);
        editText.setOnKeyListener(this);
        editText2.setOnKeyListener(this);
    }

    public final void a(int i) {
        this.f3375b.setChecked(i == 12);
        this.f3374a.setChecked(i == 10);
        this.c.f = i;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        boolean z = i == 5;
        if (z) {
            a(12);
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002d  */
    @Override // android.view.View.OnKeyListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onKey(android.view.View r6, int r7, android.view.KeyEvent r8) {
        /*
            r5 = this;
            boolean r0 = r5.d
            r1 = 0
            if (r0 == 0) goto L6
            return r1
        L6:
            r0 = 1
            r5.d = r0
            android.widget.EditText r6 = (android.widget.EditText) r6
            com.google.android.material.timepicker.i r2 = r5.c
            int r2 = r2.f
            r3 = 12
            if (r2 != r3) goto L2f
            r2 = 67
            if (r7 != r2) goto L2d
            int r7 = r8.getAction()
            if (r7 != 0) goto L2d
            android.text.Editable r6 = r6.getText()
            boolean r6 = android.text.TextUtils.isEmpty(r6)
            if (r6 == 0) goto L2d
            r6 = 10
            r5.a(r6)
            goto L53
        L2d:
            r0 = 0
            goto L53
        L2f:
            android.text.Editable r2 = r6.getText()
            if (r2 != 0) goto L36
            goto L2d
        L36:
            r4 = 7
            if (r7 < r4) goto L2d
            r4 = 16
            if (r7 > r4) goto L2d
            int r7 = r8.getAction()
            if (r7 != r0) goto L2d
            int r6 = r6.getSelectionStart()
            r7 = 2
            if (r6 != r7) goto L2d
            int r6 = r2.length()
            if (r6 != r7) goto L2d
            r5.a(r3)
        L53:
            r5.d = r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.timepicker.n.onKey(android.view.View, int, android.view.KeyEvent):boolean");
    }
}
