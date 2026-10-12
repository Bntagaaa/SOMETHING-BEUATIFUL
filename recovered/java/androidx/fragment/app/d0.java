package androidx.fragment.app;

import androidx.annotation.NonNull;

/* loaded from: classes.dex */
class d0 implements FragmentOnAttachListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Fragment f1685a;

    public d0(Fragment fragment) {
        this.f1685a = fragment;
    }

    @Override // androidx.fragment.app.FragmentOnAttachListener
    public void onAttachFragment(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        this.f1685a.onAttachFragment(fragment);
    }
}
