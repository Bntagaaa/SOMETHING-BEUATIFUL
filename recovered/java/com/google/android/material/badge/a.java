package com.google.android.material.badge;

import android.view.View;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f2789a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FrameLayout f2790b;
    public final /* synthetic */ BadgeDrawable c;

    public a(BadgeDrawable badgeDrawable, View view, FrameLayout frameLayout) {
        this.c = badgeDrawable;
        this.f2789a = view;
        this.f2790b = frameLayout;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.c.updateBadgeCoordinates(this.f2789a, this.f2790b);
    }
}
