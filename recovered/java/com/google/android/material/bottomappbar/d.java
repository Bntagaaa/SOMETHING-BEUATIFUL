package com.google.android.material.bottomappbar;

import androidx.appcompat.widget.ActionMenuView;

/* loaded from: classes.dex */
class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActionMenuView f2816a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2817b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ BottomAppBar d;

    public d(BottomAppBar bottomAppBar, ActionMenuView actionMenuView, int i, boolean z) {
        this.d = bottomAppBar;
        this.f2816a = actionMenuView;
        this.f2817b = i;
        this.c = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i = this.f2817b;
        boolean z = this.c;
        BottomAppBar bottomAppBar = this.d;
        this.f2816a.setTranslationX(bottomAppBar.getActionMenuViewTranslationX(r3, i, z));
    }
}
