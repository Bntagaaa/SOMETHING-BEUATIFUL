package androidx.transition;

import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import androidx.transition.Transition;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class TransitionSet extends Transition {
    public static final int ORDERING_SEQUENTIAL = 1;
    public static final int ORDERING_TOGETHER = 0;
    public ArrayList I;
    public boolean J;
    public int K;
    public boolean L;
    public int M;

    @Override // androidx.transition.Transition
    @NonNull
    public /* bridge */ /* synthetic */ Transition addTarget(@NonNull Class cls) {
        return addTarget((Class<?>) cls);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public /* bridge */ /* synthetic */ Transition removeTarget(@NonNull Class cls) {
        return removeTarget((Class<?>) cls);
    }

    public TransitionSet() {
        this.I = new ArrayList();
        this.J = true;
        this.L = false;
        this.M = 0;
    }

    @SuppressLint({"RestrictedApi"})
    public TransitionSet(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.I = new ArrayList();
        this.J = true;
        this.L = false;
        this.M = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.i);
        setOrdering(TypedArrayUtils.getNamedInt(typedArrayObtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionOrdering", 0, 0));
        typedArrayObtainStyledAttributes.recycle();
    }

    @NonNull
    public TransitionSet setOrdering(int i) {
        if (i == 0) {
            this.J = true;
            return this;
        }
        if (i != 1) {
            throw new AndroidRuntimeException(_COROUTINE.a.d(i, "Invalid parameter for TransitionSet ordering: "));
        }
        this.J = false;
        return this;
    }

    public int getOrdering() {
        return !this.J ? 1 : 0;
    }

    @NonNull
    public TransitionSet addTransition(@NonNull Transition transition) {
        this.I.add(transition);
        transition.r = this;
        long j = this.c;
        if (j >= 0) {
            transition.setDuration(j);
        }
        if ((this.M & 1) != 0) {
            transition.setInterpolator(getInterpolator());
        }
        if ((this.M & 2) != 0) {
            transition.setPropagation(getPropagation());
        }
        if ((this.M & 4) != 0) {
            transition.setPathMotion(getPathMotion());
        }
        if ((this.M & 8) != 0) {
            transition.setEpicenterCallback(getEpicenterCallback());
        }
        return this;
    }

    public int getTransitionCount() {
        return this.I.size();
    }

    @Nullable
    public Transition getTransitionAt(int i) {
        if (i < 0 || i >= this.I.size()) {
            return null;
        }
        return (Transition) this.I.get(i);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet setDuration(long j) {
        ArrayList arrayList;
        super.setDuration(j);
        if (this.c >= 0 && (arrayList = this.I) != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((Transition) this.I.get(i)).setDuration(j);
            }
        }
        return this;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet setStartDelay(long j) {
        return (TransitionSet) super.setStartDelay(j);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet setInterpolator(@Nullable TimeInterpolator timeInterpolator) {
        this.M |= 1;
        ArrayList arrayList = this.I;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((Transition) this.I.get(i)).setInterpolator(timeInterpolator);
            }
        }
        return (TransitionSet) super.setInterpolator(timeInterpolator);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addTarget(@NonNull View view) {
        for (int i = 0; i < this.I.size(); i++) {
            ((Transition) this.I.get(i)).addTarget(view);
        }
        return (TransitionSet) super.addTarget(view);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addTarget(@IdRes int i) {
        for (int i2 = 0; i2 < this.I.size(); i2++) {
            ((Transition) this.I.get(i2)).addTarget(i);
        }
        return (TransitionSet) super.addTarget(i);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addTarget(@NonNull String str) {
        for (int i = 0; i < this.I.size(); i++) {
            ((Transition) this.I.get(i)).addTarget(str);
        }
        return (TransitionSet) super.addTarget(str);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addTarget(@NonNull Class<?> cls) {
        for (int i = 0; i < this.I.size(); i++) {
            ((Transition) this.I.get(i)).addTarget(cls);
        }
        return (TransitionSet) super.addTarget(cls);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addListener(@NonNull Transition.TransitionListener transitionListener) {
        return (TransitionSet) super.addListener(transitionListener);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeTarget(@IdRes int i) {
        for (int i2 = 0; i2 < this.I.size(); i2++) {
            ((Transition) this.I.get(i2)).removeTarget(i);
        }
        return (TransitionSet) super.removeTarget(i);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeTarget(@NonNull View view) {
        for (int i = 0; i < this.I.size(); i++) {
            ((Transition) this.I.get(i)).removeTarget(view);
        }
        return (TransitionSet) super.removeTarget(view);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeTarget(@NonNull Class<?> cls) {
        for (int i = 0; i < this.I.size(); i++) {
            ((Transition) this.I.get(i)).removeTarget(cls);
        }
        return (TransitionSet) super.removeTarget(cls);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeTarget(@NonNull String str) {
        for (int i = 0; i < this.I.size(); i++) {
            ((Transition) this.I.get(i)).removeTarget(str);
        }
        return (TransitionSet) super.removeTarget(str);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public Transition excludeTarget(@NonNull View view, boolean z) {
        for (int i = 0; i < this.I.size(); i++) {
            ((Transition) this.I.get(i)).excludeTarget(view, z);
        }
        return super.excludeTarget(view, z);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public Transition excludeTarget(@NonNull String str, boolean z) {
        for (int i = 0; i < this.I.size(); i++) {
            ((Transition) this.I.get(i)).excludeTarget(str, z);
        }
        return super.excludeTarget(str, z);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public Transition excludeTarget(int i, boolean z) {
        for (int i2 = 0; i2 < this.I.size(); i2++) {
            ((Transition) this.I.get(i2)).excludeTarget(i, z);
        }
        return super.excludeTarget(i, z);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public Transition excludeTarget(@NonNull Class<?> cls, boolean z) {
        for (int i = 0; i < this.I.size(); i++) {
            ((Transition) this.I.get(i)).excludeTarget(cls, z);
        }
        return super.excludeTarget(cls, z);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeListener(@NonNull Transition.TransitionListener transitionListener) {
        return (TransitionSet) super.removeListener(transitionListener);
    }

    @Override // androidx.transition.Transition
    public void setPathMotion(PathMotion pathMotion) {
        super.setPathMotion(pathMotion);
        this.M |= 4;
        if (this.I != null) {
            for (int i = 0; i < this.I.size(); i++) {
                ((Transition) this.I.get(i)).setPathMotion(pathMotion);
            }
        }
    }

    @NonNull
    public TransitionSet removeTransition(@NonNull Transition transition) {
        this.I.remove(transition);
        transition.r = null;
        return this;
    }

    public static class b extends TransitionListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public TransitionSet f2264a;

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
            TransitionSet transitionSet = this.f2264a;
            if (transitionSet.L) {
                return;
            }
            transitionSet.start();
            transitionSet.L = true;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            TransitionSet transitionSet = this.f2264a;
            int i = transitionSet.K - 1;
            transitionSet.K = i;
            if (i == 0) {
                transitionSet.L = false;
                transitionSet.end();
            }
            transition.removeListener(this);
        }
    }

    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void createAnimators(ViewGroup viewGroup, u uVar, u uVar2, ArrayList<TransitionValues> arrayList, ArrayList<TransitionValues> arrayList2) {
        long startDelay = getStartDelay();
        int size = this.I.size();
        for (int i = 0; i < size; i++) {
            Transition transition = (Transition) this.I.get(i);
            if (startDelay > 0 && (this.J || i == 0)) {
                long startDelay2 = transition.getStartDelay();
                if (startDelay2 > 0) {
                    transition.setStartDelay(startDelay2 + startDelay);
                } else {
                    transition.setStartDelay(startDelay);
                }
            }
            transition.createAnimators(viewGroup, uVar, uVar2, arrayList, arrayList2);
        }
    }

    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void runAnimators() {
        if (!this.I.isEmpty()) {
            b bVar = new b();
            bVar.f2264a = this;
            Iterator it = this.I.iterator();
            while (it.hasNext()) {
                ((Transition) it.next()).addListener(bVar);
            }
            this.K = this.I.size();
            if (!this.J) {
                for (int i = 1; i < this.I.size(); i++) {
                    ((Transition) this.I.get(i - 1)).addListener(new a((Transition) this.I.get(i)));
                }
                Transition transition = (Transition) this.I.get(0);
                if (transition != null) {
                    transition.runAnimators();
                    return;
                }
                return;
            }
            Iterator it2 = this.I.iterator();
            while (it2.hasNext()) {
                ((Transition) it2.next()).runAnimators();
            }
            return;
        }
        start();
        end();
    }

    public class a extends TransitionListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Transition f2263a;

        public a(Transition transition) {
            this.f2263a = transition;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            this.f2263a.runAnimators();
            transition.removeListener(this);
        }
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        if (i(transitionValues.view)) {
            Iterator it = this.I.iterator();
            while (it.hasNext()) {
                Transition transition = (Transition) it.next();
                if (transition.i(transitionValues.view)) {
                    transition.captureStartValues(transitionValues);
                    transitionValues.f2265a.add(transition);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        if (i(transitionValues.view)) {
            Iterator it = this.I.iterator();
            while (it.hasNext()) {
                Transition transition = (Transition) it.next();
                if (transition.i(transitionValues.view)) {
                    transition.captureEndValues(transitionValues);
                    transitionValues.f2265a.add(transition);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    public final void c(TransitionValues transitionValues) {
        super.c(transitionValues);
        int size = this.I.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.I.get(i)).c(transitionValues);
        }
    }

    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void pause(View view) {
        super.pause(view);
        int size = this.I.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.I.get(i)).pause(view);
        }
    }

    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void resume(View view) {
        super.resume(view);
        int size = this.I.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.I.get(i)).resume(view);
        }
    }

    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void cancel() {
        super.cancel();
        int size = this.I.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.I.get(i)).cancel();
        }
    }

    @Override // androidx.transition.Transition
    public final void f(ViewGroup viewGroup) {
        super.f(viewGroup);
        int size = this.I.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.I.get(i)).f(viewGroup);
        }
    }

    @Override // androidx.transition.Transition
    public final void k(ViewGroup viewGroup) {
        int size = this.I.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.I.get(i)).k(viewGroup);
        }
    }

    @Override // androidx.transition.Transition
    public void setPropagation(TransitionPropagation transitionPropagation) {
        super.setPropagation(transitionPropagation);
        this.M |= 2;
        int size = this.I.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.I.get(i)).setPropagation(transitionPropagation);
        }
    }

    @Override // androidx.transition.Transition
    public void setEpicenterCallback(Transition.EpicenterCallback epicenterCallback) {
        super.setEpicenterCallback(epicenterCallback);
        this.M |= 8;
        int size = this.I.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.I.get(i)).setEpicenterCallback(epicenterCallback);
        }
    }

    @Override // androidx.transition.Transition
    public final String l(String str) {
        String strL = super.l(str);
        for (int i = 0; i < this.I.size(); i++) {
            StringBuilder sbQ = _COROUTINE.a.q(strL, "\n");
            sbQ.append(((Transition) this.I.get(i)).l(str + "  "));
            strL = sbQ.toString();
        }
        return strL;
    }

    @Override // androidx.transition.Transition
    /* renamed from: clone */
    public Transition mo7clone() {
        TransitionSet transitionSet = (TransitionSet) super.mo7clone();
        transitionSet.I = new ArrayList();
        int size = this.I.size();
        for (int i = 0; i < size; i++) {
            Transition transitionMo7clone = ((Transition) this.I.get(i)).mo7clone();
            transitionSet.I.add(transitionMo7clone);
            transitionMo7clone.r = transitionSet;
        }
        return transitionSet;
    }

    @Override // androidx.transition.Transition
    public final void j() {
        this.v = true;
        int size = this.I.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.I.get(i)).j();
        }
    }
}
