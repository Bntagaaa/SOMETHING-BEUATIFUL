package androidx.viewpager2.adapter;

import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.viewpager2.adapter.FragmentStateAdapter;

/* loaded from: classes.dex */
class g implements LifecycleEventObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FragmentStateAdapter.c f2394a;

    public g(FragmentStateAdapter.c cVar) {
        this.f2394a = cVar;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
        this.f2394a.b(false);
    }
}
