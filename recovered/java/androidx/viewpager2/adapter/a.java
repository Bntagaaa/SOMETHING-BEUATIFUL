package androidx.viewpager2.adapter;

import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;

/* loaded from: classes.dex */
class a implements LifecycleEventObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FragmentViewHolder f2385a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FragmentStateAdapter f2386b;

    public a(FragmentStateAdapter fragmentStateAdapter, FragmentViewHolder fragmentViewHolder) {
        this.f2386b = fragmentStateAdapter;
        this.f2385a = fragmentViewHolder;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
        FragmentStateAdapter fragmentStateAdapter = this.f2386b;
        if (fragmentStateAdapter.f2378b.isStateSaved()) {
            return;
        }
        lifecycleOwner.getLifecycle().removeObserver(this);
        FragmentViewHolder fragmentViewHolder = this.f2385a;
        if (ViewCompat.isAttachedToWindow((FrameLayout) fragmentViewHolder.itemView)) {
            fragmentStateAdapter.d(fragmentViewHolder);
        }
    }
}
