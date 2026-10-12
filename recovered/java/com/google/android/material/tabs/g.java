package com.google.android.material.tabs;

import android.view.View;
import com.google.android.material.tabs.TabLayout;

/* loaded from: classes.dex */
class g implements View.OnLayoutChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f3294a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TabLayout.TabView f3295b;

    public g(TabLayout.TabView tabView, View view) {
        this.f3295b = tabView;
        this.f3294a = view;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        View view2 = this.f3294a;
        if (view2.getVisibility() == 0) {
            int i9 = TabLayout.TabView.l;
            this.f3295b.d(view2);
        }
    }
}
