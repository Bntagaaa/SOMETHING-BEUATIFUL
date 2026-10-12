package com.google.android.material.behavior;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import com.google.android.material.behavior.SwipeDismissBehavior;

/* loaded from: classes.dex */
class b implements AccessibilityViewCommand {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SwipeDismissBehavior f2801a;

    public b(SwipeDismissBehavior swipeDismissBehavior) {
        this.f2801a = swipeDismissBehavior;
    }

    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
        SwipeDismissBehavior swipeDismissBehavior = this.f2801a;
        if (!swipeDismissBehavior.canSwipeDismissView(view)) {
            return false;
        }
        boolean z = ViewCompat.getLayoutDirection(view) == 1;
        int i = swipeDismissBehavior.f;
        ViewCompat.offsetLeftAndRight(view, (!(i == 0 && z) && (i != 1 || z)) ? view.getWidth() : -view.getWidth());
        view.setAlpha(0.0f);
        SwipeDismissBehavior.OnDismissListener onDismissListener = swipeDismissBehavior.f2794b;
        if (onDismissListener != null) {
            onDismissListener.onDismiss(view);
        }
        return true;
    }
}
