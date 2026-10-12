package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.core.view.ViewCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class TransitionManager {
    public static final AutoTransition c = new AutoTransition();
    public static final ThreadLocal d = new ThreadLocal();
    public static final ArrayList e = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    public final ArrayMap f2257a = new ArrayMap();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayMap f2258b = new ArrayMap();

    public void setTransition(@NonNull Scene scene, @Nullable Transition transition) {
        this.f2257a.put(scene, transition);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setTransition(@NonNull Scene scene, @NonNull Scene scene2, @Nullable Transition transition) {
        ArrayMap arrayMap = this.f2258b;
        ArrayMap arrayMap2 = (ArrayMap) arrayMap.get(scene2);
        if (arrayMap2 == null) {
            arrayMap2 = new ArrayMap();
            arrayMap.put(scene2, arrayMap2);
        }
        arrayMap2.put(scene, transition);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void transitionTo(@NonNull Scene scene) {
        Transition transition;
        Scene currentScene;
        ArrayMap arrayMap;
        ViewGroup sceneRoot = scene.getSceneRoot();
        if ((sceneRoot == null || (currentScene = Scene.getCurrentScene(sceneRoot)) == null || (arrayMap = (ArrayMap) this.f2258b.get(scene)) == null || (transition = (Transition) arrayMap.get(currentScene)) == null) && (transition = (Transition) this.f2257a.get(scene)) == null) {
            transition = c;
        }
        a(scene, transition);
    }

    public static void a(Scene scene, Transition transition) {
        ViewGroup sceneRoot = scene.getSceneRoot();
        ArrayList arrayList = e;
        if (arrayList.contains(sceneRoot)) {
            return;
        }
        Scene currentScene = Scene.getCurrentScene(sceneRoot);
        if (transition == null) {
            if (currentScene != null) {
                currentScene.exit();
            }
            scene.enter();
            return;
        }
        arrayList.add(sceneRoot);
        Transition transitionMo7clone = transition.mo7clone();
        transitionMo7clone.k(sceneRoot);
        if (currentScene != null && currentScene.f2247b > 0) {
            transitionMo7clone.j();
        }
        c(sceneRoot, transitionMo7clone);
        scene.enter();
        if (sceneRoot != null) {
            a aVar = new a();
            aVar.f2259a = transitionMo7clone;
            aVar.f2260b = sceneRoot;
            sceneRoot.addOnAttachStateChangeListener(aVar);
            sceneRoot.getViewTreeObserver().addOnPreDrawListener(aVar);
        }
    }

    public static ArrayMap b() {
        ArrayMap arrayMap;
        ThreadLocal threadLocal = d;
        WeakReference weakReference = (WeakReference) threadLocal.get();
        if (weakReference != null && (arrayMap = (ArrayMap) weakReference.get()) != null) {
            return arrayMap;
        }
        ArrayMap arrayMap2 = new ArrayMap();
        threadLocal.set(new WeakReference(arrayMap2));
        return arrayMap2;
    }

    public static class a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* renamed from: a, reason: collision with root package name */
        public Transition f2259a;

        /* renamed from: b, reason: collision with root package name */
        public ViewGroup f2260b;

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:106:0x0231  */
        /* JADX WARN: Removed duplicated region for block: B:133:0x01d4 A[EDGE_INSN: B:133:0x01d4->B:89:0x01d4 BREAK  A[LOOP:1: B:19:0x0083->B:88:0x01cc], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:14:0x004e  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0088  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x01dd  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x0200  */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onPreDraw() {
            /*
                Method dump skipped, instructions count: 670
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.transition.TransitionManager.a.onPreDraw():boolean");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewGroup viewGroup = this.f2260b;
            viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
            viewGroup.removeOnAttachStateChangeListener(this);
            ArrayList arrayList = TransitionManager.e;
            ViewGroup viewGroup2 = this.f2260b;
            arrayList.remove(viewGroup2);
            ArrayList arrayList2 = (ArrayList) TransitionManager.b().get(viewGroup2);
            if (arrayList2 != null && arrayList2.size() > 0) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((Transition) it.next()).resume(viewGroup2);
                }
            }
            this.f2259a.e(true);
        }

        /* renamed from: androidx.transition.TransitionManager$a$a, reason: collision with other inner class name */
        public class C0034a extends TransitionListenerAdapter {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ ArrayMap f2261a;

            public C0034a(ArrayMap arrayMap) {
                this.f2261a = arrayMap;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
            public void onTransitionEnd(@NonNull Transition transition) {
                ((ArrayList) this.f2261a.get(a.this.f2260b)).remove(transition);
                transition.removeListener(this);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void c(ViewGroup viewGroup, Transition transition) {
        ArrayList arrayList = (ArrayList) b().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((Transition) it.next()).pause(viewGroup);
            }
        }
        if (transition != null) {
            transition.d(viewGroup, true);
        }
        Scene currentScene = Scene.getCurrentScene(viewGroup);
        if (currentScene != null) {
            currentScene.exit();
        }
    }

    public static void go(@NonNull Scene scene) {
        a(scene, c);
    }

    public static void go(@NonNull Scene scene, @Nullable Transition transition) {
        a(scene, transition);
    }

    public static void beginDelayedTransition(@NonNull ViewGroup viewGroup) {
        beginDelayedTransition(viewGroup, null);
    }

    public static void beginDelayedTransition(@NonNull ViewGroup viewGroup, @Nullable Transition transition) {
        ArrayList arrayList = e;
        if (arrayList.contains(viewGroup) || !ViewCompat.isLaidOut(viewGroup)) {
            return;
        }
        arrayList.add(viewGroup);
        if (transition == null) {
            transition = c;
        }
        Transition transitionMo7clone = transition.mo7clone();
        c(viewGroup, transitionMo7clone);
        viewGroup.setTag(R.id.transition_current_scene, null);
        if (transitionMo7clone != null) {
            a aVar = new a();
            aVar.f2259a = transitionMo7clone;
            aVar.f2260b = viewGroup;
            viewGroup.addOnAttachStateChangeListener(aVar);
            viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void endTransitions(ViewGroup viewGroup) {
        e.remove(viewGroup);
        ArrayList arrayList = (ArrayList) b().get(viewGroup);
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        for (int size = arrayList2.size() - 1; size >= 0; size--) {
            ((Transition) arrayList2.get(size)).f(viewGroup);
        }
    }
}
