package androidx.vectordrawable.graphics.drawable;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public interface Animatable2Compat extends Animatable {
    void clearAnimationCallbacks();

    void registerAnimationCallback(@NonNull AnimationCallback animationCallback);

    boolean unregisterAnimationCallback(@NonNull AnimationCallback animationCallback);

    public static abstract class AnimationCallback {

        /* renamed from: a, reason: collision with root package name */
        public Animatable2.AnimationCallback f2316a;

        public void onAnimationEnd(Drawable drawable) {
        }

        public void onAnimationStart(Drawable drawable) {
        }

        public final Animatable2.AnimationCallback a() {
            if (this.f2316a == null) {
                this.f2316a = new b(this);
            }
            return this.f2316a;
        }
    }
}
