package com.google.android.material.textfield;

import android.content.Context;
import com.google.android.material.internal.CheckableImageButton;

/* loaded from: classes.dex */
abstract class o {

    /* renamed from: a, reason: collision with root package name */
    public final TextInputLayout f3334a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f3335b;
    public final CheckableImageButton c;
    public final int d;

    public abstract void a();

    public boolean b(int i) {
        return true;
    }

    public void c(boolean z) {
    }

    public o(TextInputLayout textInputLayout, int i) {
        this.f3334a = textInputLayout;
        this.f3335b = textInputLayout.getContext();
        this.c = textInputLayout.e0;
        this.d = i;
    }
}
