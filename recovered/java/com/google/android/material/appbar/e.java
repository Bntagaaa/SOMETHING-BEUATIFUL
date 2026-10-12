package com.google.android.material.appbar;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.accessibility.AccessibilityViewCommand;

/* loaded from: classes.dex */
class e implements AccessibilityViewCommand {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppBarLayout f2766a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f2767b;

    public e(AppBarLayout appBarLayout, boolean z) {
        this.f2766a = appBarLayout;
        this.f2767b = z;
    }

    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
        this.f2766a.setExpanded(this.f2767b);
        return true;
    }
}
