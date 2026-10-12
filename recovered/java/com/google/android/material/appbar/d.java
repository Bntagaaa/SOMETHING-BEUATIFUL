package com.google.android.material.appbar;

import android.content.res.Resources;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import com.google.android.material.appbar.AppBarLayout;

/* loaded from: classes.dex */
class d implements AccessibilityViewCommand {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CoordinatorLayout f2764a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AppBarLayout f2765b;
    public final /* synthetic */ View c;
    public final /* synthetic */ int d;
    public final /* synthetic */ AppBarLayout.BaseBehavior e;

    public d(AppBarLayout.BaseBehavior baseBehavior, CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
        this.e = baseBehavior;
        this.f2764a = coordinatorLayout;
        this.f2765b = appBarLayout;
        this.c = view;
        this.d = i;
    }

    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) throws Resources.NotFoundException {
        this.e.onNestedPreScroll(this.f2764a, (CoordinatorLayout) this.f2765b, this.c, 0, this.d, new int[]{0, 0}, 1);
        return true;
    }
}
