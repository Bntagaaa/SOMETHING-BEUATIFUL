package com.google.android.material.bottomsheet;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.accessibility.AccessibilityViewCommand;

/* loaded from: classes.dex */
class c implements AccessibilityViewCommand {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2838a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f2839b;

    public c(BottomSheetBehavior bottomSheetBehavior, int i) {
        this.f2839b = bottomSheetBehavior;
        this.f2838a = i;
    }

    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
        this.f2839b.setState(this.f2838a);
        return true;
    }
}
