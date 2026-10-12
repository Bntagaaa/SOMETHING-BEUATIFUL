package androidx.fragment.app;

import android.view.View;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
class o extends FragmentContainer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Fragment f1720a;

    public o(Fragment fragment) {
        this.f1720a = fragment;
    }

    @Override // androidx.fragment.app.FragmentContainer
    @Nullable
    public View onFindViewById(int i) {
        Fragment fragment = this.f1720a;
        View view = fragment.H;
        if (view == null) {
            throw new IllegalStateException("Fragment " + fragment + " does not have a view");
        }
        return view.findViewById(i);
    }

    @Override // androidx.fragment.app.FragmentContainer
    public boolean onHasView() {
        return this.f1720a.H != null;
    }
}
