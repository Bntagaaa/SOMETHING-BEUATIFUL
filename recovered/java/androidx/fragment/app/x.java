package androidx.fragment.app;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Transformation;
import androidx.annotation.NonNull;
import androidx.core.view.OneShotPreDrawListener;

/* loaded from: classes.dex */
class x {
    private x() {
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final Animation f1763a;

        /* renamed from: b, reason: collision with root package name */
        public final Animator f1764b;

        public a(Animation animation) {
            this.f1763a = animation;
            this.f1764b = null;
        }

        public a(Animator animator) {
            this.f1763a = null;
            this.f1764b = animator;
        }
    }

    public static class b extends AnimationSet implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final ViewGroup f1765a;

        /* renamed from: b, reason: collision with root package name */
        public final View f1766b;
        public boolean c;
        public boolean d;
        public boolean e;

        public b(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.e = true;
            this.f1765a = viewGroup;
            this.f1766b = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j, @NonNull Transformation transformation) {
            this.e = true;
            if (this.c) {
                return !this.d;
            }
            if (!super.getTransformation(j, transformation)) {
                this.c = true;
                OneShotPreDrawListener.add(this.f1765a, this);
            }
            return true;
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j, @NonNull Transformation transformation, float f) {
            this.e = true;
            if (this.c) {
                return !this.d;
            }
            if (!super.getTransformation(j, transformation, f)) {
                this.c = true;
                OneShotPreDrawListener.add(this.f1765a, this);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z = this.c;
            ViewGroup viewGroup = this.f1765a;
            if (!z && this.e) {
                this.e = false;
                viewGroup.post(this);
            } else {
                viewGroup.endViewTransition(this.f1766b);
                this.d = true;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x000f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.fragment.app.x.a a(android.content.Context r4, androidx.fragment.app.Fragment r5, boolean r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.x.a(android.content.Context, androidx.fragment.app.Fragment, boolean, boolean):androidx.fragment.app.x$a");
    }
}
