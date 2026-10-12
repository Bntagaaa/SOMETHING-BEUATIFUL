package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.os.CancellationSignal;
import androidx.fragment.app.c;

/* loaded from: classes.dex */
class h implements CancellationSignal.OnCancelListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f1696a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f1697b;
    public final /* synthetic */ c.b c;

    public h(View view, ViewGroup viewGroup, c.b bVar) {
        this.f1696a = view;
        this.f1697b = viewGroup;
        this.c = bVar;
    }

    @Override // androidx.core.os.CancellationSignal.OnCancelListener
    public void onCancel() {
        View view = this.f1696a;
        view.clearAnimation();
        this.f1697b.endViewTransition(view);
        this.c.a();
    }
}
