package com.google.android.material.datepicker;

import android.view.View;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;

/* loaded from: classes.dex */
class q implements OnApplyWindowInsetsListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2982a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f2983b;
    public final /* synthetic */ int c;

    public q(View view, int i, int i2) {
        this.f2982a = i;
        this.f2983b = view;
        this.c = i2;
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        int i = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()).top;
        View view2 = this.f2983b;
        int i2 = this.f2982a;
        if (i2 >= 0) {
            view2.getLayoutParams().height = i2 + i;
            view2.setLayoutParams(view2.getLayoutParams());
        }
        view2.setPadding(view2.getPaddingLeft(), this.c + i, view2.getPaddingRight(), view2.getPaddingBottom());
        return windowInsetsCompat;
    }
}
