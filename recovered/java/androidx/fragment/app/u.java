package androidx.fragment.app;

import android.view.View;
import androidx.core.os.CancellationSignal;
import androidx.fragment.app.Fragment;

/* loaded from: classes.dex */
class u implements CancellationSignal.OnCancelListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Fragment f1751a;

    public u(Fragment fragment) {
        this.f1751a = fragment;
    }

    @Override // androidx.core.os.CancellationSignal.OnCancelListener
    public void onCancel() {
        Fragment fragment = this.f1751a;
        Fragment.e eVar = fragment.K;
        if ((eVar == null ? null : eVar.f1612a) != null) {
            View view = eVar == null ? null : eVar.f1612a;
            fragment.c().f1612a = null;
            view.clearAnimation();
        }
        fragment.c().f1613b = null;
    }
}
