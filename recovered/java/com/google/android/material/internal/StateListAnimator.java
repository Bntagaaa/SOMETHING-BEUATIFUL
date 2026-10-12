package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.StateSet;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class StateListAnimator {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f3078a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public b f3079b = null;
    public ValueAnimator c = null;
    public final Animator.AnimatorListener d = new a();

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            StateListAnimator stateListAnimator = StateListAnimator.this;
            if (stateListAnimator.c == animator) {
                stateListAnimator.c = null;
            }
        }
    }

    public void addState(int[] iArr, ValueAnimator valueAnimator) {
        b bVar = new b(iArr, valueAnimator);
        valueAnimator.addListener(this.d);
        this.f3078a.add(bVar);
    }

    public void setState(int[] iArr) {
        b bVar;
        ValueAnimator valueAnimator;
        ArrayList arrayList = this.f3078a;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                bVar = null;
                break;
            }
            bVar = (b) arrayList.get(i);
            if (StateSet.stateSetMatches(bVar.f3081a, iArr)) {
                break;
            } else {
                i++;
            }
        }
        b bVar2 = this.f3079b;
        if (bVar == bVar2) {
            return;
        }
        if (bVar2 != null && (valueAnimator = this.c) != null) {
            valueAnimator.cancel();
            this.c = null;
        }
        this.f3079b = bVar;
        if (bVar != null) {
            ValueAnimator valueAnimator2 = bVar.f3082b;
            this.c = valueAnimator2;
            valueAnimator2.start();
        }
    }

    public void jumpToCurrentState() {
        ValueAnimator valueAnimator = this.c;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.c = null;
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final int[] f3081a;

        /* renamed from: b, reason: collision with root package name */
        public final ValueAnimator f3082b;

        public b(int[] iArr, ValueAnimator valueAnimator) {
            this.f3081a = iArr;
            this.f3082b = valueAnimator;
        }
    }
}
