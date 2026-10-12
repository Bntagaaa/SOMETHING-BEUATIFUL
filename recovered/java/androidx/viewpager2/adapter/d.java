package androidx.viewpager2.adapter;

import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;

/* loaded from: classes.dex */
class d implements LifecycleEventObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Handler f2390a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Runnable f2391b;

    public d(Handler handler, Runnable runnable) {
        this.f2390a = handler;
        this.f2391b = runnable;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            this.f2390a.removeCallbacks(this.f2391b);
            lifecycleOwner.getLifecycle().removeObserver(this);
        }
    }
}
