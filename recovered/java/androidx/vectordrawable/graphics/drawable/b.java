package androidx.vectordrawable.graphics.drawable;

import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;

/* loaded from: classes.dex */
class b extends Animatable2.AnimationCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Animatable2Compat.AnimationCallback f2345a;

    public b(Animatable2Compat.AnimationCallback animationCallback) {
        this.f2345a = animationCallback;
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public void onAnimationStart(Drawable drawable) {
        this.f2345a.onAnimationStart(drawable);
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public void onAnimationEnd(Drawable drawable) {
        this.f2345a.onAnimationEnd(drawable);
    }
}
