package androidx.fragment.app;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;

/* loaded from: classes.dex */
class p implements LifecycleEventObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Fragment f1723a;

    public p(Fragment fragment) {
        this.f1723a = fragment;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
        View view;
        if (event != Lifecycle.Event.ON_STOP || (view = this.f1723a.H) == null) {
            return;
        }
        view.cancelPendingInputEvents();
    }
}
