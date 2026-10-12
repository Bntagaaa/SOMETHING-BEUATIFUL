package androidx.fragment.app;

import android.view.View;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
class j0 implements View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f1706a;

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
    }

    public j0(View view) {
        this.f1706a = view;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        View view2 = this.f1706a;
        view2.removeOnAttachStateChangeListener(this);
        ViewCompat.requestApplyInsets(view2);
    }
}
