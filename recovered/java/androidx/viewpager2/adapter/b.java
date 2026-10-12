package androidx.viewpager2.adapter;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;

/* loaded from: classes.dex */
class b extends FragmentManager.FragmentLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Fragment f2387a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FrameLayout f2388b;
    public final /* synthetic */ FragmentStateAdapter c;

    public b(FragmentStateAdapter fragmentStateAdapter, Fragment fragment, FrameLayout frameLayout) {
        this.c = fragmentStateAdapter;
        this.f2387a = fragment;
        this.f2388b = frameLayout;
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentViewCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull View view, @Nullable Bundle bundle) {
        if (fragment == this.f2387a) {
            fragmentManager.unregisterFragmentLifecycleCallbacks(this);
            this.c.getClass();
            FragmentStateAdapter.a(view, this.f2388b);
        }
    }
}
