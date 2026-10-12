package androidx.fragment.app;

import android.app.Dialog;
import android.view.View;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
class m extends FragmentContainer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FragmentContainer f1714a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DialogFragment f1715b;

    public m(DialogFragment dialogFragment, FragmentContainer fragmentContainer) {
        this.f1715b = dialogFragment;
        this.f1714a = fragmentContainer;
    }

    @Override // androidx.fragment.app.FragmentContainer
    @Nullable
    public View onFindViewById(int i) {
        FragmentContainer fragmentContainer = this.f1714a;
        if (fragmentContainer.onHasView()) {
            return fragmentContainer.onFindViewById(i);
        }
        Dialog dialog = this.f1715b.m0;
        if (dialog != null) {
            return dialog.findViewById(i);
        }
        return null;
    }

    @Override // androidx.fragment.app.FragmentContainer
    public boolean onHasView() {
        return this.f1714a.onHasView() || this.f1715b.q0;
    }
}
