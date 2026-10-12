package androidx.core.view;

import android.view.WindowInsetsAnimationControlListener;
import android.view.WindowInsetsAnimationController;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
class r implements WindowInsetsAnimationControlListener {

    /* renamed from: a, reason: collision with root package name */
    public WindowInsetsAnimationControllerCompat f1415a = null;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WindowInsetsAnimationControlListenerCompat f1416b;

    public r(WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
        this.f1416b = windowInsetsAnimationControlListenerCompat;
    }

    @Override // android.view.WindowInsetsAnimationControlListener
    public void onReady(@NonNull WindowInsetsAnimationController windowInsetsAnimationController, int i) {
        WindowInsetsAnimationControllerCompat windowInsetsAnimationControllerCompat = new WindowInsetsAnimationControllerCompat(windowInsetsAnimationController);
        this.f1415a = windowInsetsAnimationControllerCompat;
        this.f1416b.onReady(windowInsetsAnimationControllerCompat, i);
    }

    @Override // android.view.WindowInsetsAnimationControlListener
    public void onFinished(@NonNull WindowInsetsAnimationController windowInsetsAnimationController) {
        this.f1416b.onFinished(this.f1415a);
    }

    @Override // android.view.WindowInsetsAnimationControlListener
    public void onCancelled(@Nullable WindowInsetsAnimationController windowInsetsAnimationController) {
        this.f1416b.onCancelled(windowInsetsAnimationController == null ? null : this.f1415a);
    }
}
