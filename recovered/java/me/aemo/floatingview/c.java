package me.aemo.floatingview;

import android.view.View;

/* loaded from: classes2.dex */
class c implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FloatingView f6742a;

    public c(FloatingView floatingView) {
        this.f6742a = floatingView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f6742a.ClickView();
    }
}
