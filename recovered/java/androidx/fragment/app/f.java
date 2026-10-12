package androidx.fragment.app;

import android.animation.Animator;
import androidx.core.os.CancellationSignal;

/* loaded from: classes.dex */
class f implements CancellationSignal.OnCancelListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Animator f1689a;

    public f(Animator animator) {
        this.f1689a = animator;
    }

    @Override // androidx.core.os.CancellationSignal.OnCancelListener
    public void onCancel() {
        this.f1689a.end();
    }
}
