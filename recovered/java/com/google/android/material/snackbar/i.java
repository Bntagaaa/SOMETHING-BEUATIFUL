package com.google.android.material.snackbar;

import android.view.View;
import androidx.annotation.NonNull;
import com.google.android.material.behavior.SwipeDismissBehavior;

/* loaded from: classes.dex */
class i implements SwipeDismissBehavior.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseTransientBottomBar f3256a;

    public i(BaseTransientBottomBar baseTransientBottomBar) {
        this.f3256a = baseTransientBottomBar;
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior.OnDismissListener
    public void onDismiss(@NonNull View view) {
        if (view.getParent() != null) {
            view.setVisibility(8);
        }
        this.f3256a.dispatchDismiss(0);
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior.OnDismissListener
    public void onDragStateChanged(int i) {
        BaseTransientBottomBar baseTransientBottomBar = this.f3256a;
        if (i == 0) {
            l.b().restoreTimeoutIfPaused(baseTransientBottomBar.r);
        } else if (i == 1 || i == 2) {
            l.b().pauseTimeout(baseTransientBottomBar.r);
        }
    }
}
