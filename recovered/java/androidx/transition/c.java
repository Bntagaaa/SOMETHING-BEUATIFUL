package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Matrix;
import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.transition.ChangeTransform;

/* loaded from: classes.dex */
class c extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2275a;

    /* renamed from: b, reason: collision with root package name */
    public final Matrix f2276b = new Matrix();
    public final /* synthetic */ boolean c;
    public final /* synthetic */ Matrix d;
    public final /* synthetic */ View e;
    public final /* synthetic */ ChangeTransform.e f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ ChangeTransform.d f2277g;
    public final /* synthetic */ ChangeTransform h;

    public c(ChangeTransform changeTransform, boolean z, Matrix matrix, View view, ChangeTransform.e eVar, ChangeTransform.d dVar) {
        this.h = changeTransform;
        this.c = z;
        this.d = matrix;
        this.e = view;
        this.f = eVar;
        this.f2277g = dVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f2275a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        boolean z = this.f2275a;
        ChangeTransform.e eVar = this.f;
        View view = this.e;
        if (!z) {
            if (this.c && this.h.I) {
                Matrix matrix = this.d;
                Matrix matrix2 = this.f2276b;
                matrix2.set(matrix);
                view.setTag(R.id.transition_transform, matrix2);
                eVar.restore(view);
            } else {
                view.setTag(R.id.transition_transform, null);
                view.setTag(R.id.parent_matrix, null);
            }
        }
        f0.f2280a.setAnimationMatrix(view, null);
        eVar.restore(view);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public void onAnimationResume(Animator animator) {
        String[] strArr = ChangeTransform.L;
        View view = this.e;
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        ViewCompat.setTranslationZ(view, 0.0f);
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        view.setRotationX(0.0f);
        view.setRotationY(0.0f);
        view.setRotation(0.0f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public void onAnimationPause(Animator animator) {
        Matrix matrix = this.f2277g.f2229a;
        Matrix matrix2 = this.f2276b;
        matrix2.set(matrix);
        int i = R.id.transition_transform;
        View view = this.e;
        view.setTag(i, matrix2);
        this.f.restore(view);
    }
}
