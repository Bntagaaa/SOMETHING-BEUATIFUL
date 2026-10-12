package androidx.fragment.app;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.core.os.CancellationSignal;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupCompat;
import androidx.fragment.app.b1;
import androidx.fragment.app.x;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
class c extends b1 {
    /* JADX WARN: Removed duplicated region for block: B:235:0x05ff  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x0695  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x072f A[LOOP:6: B:278:0x0729->B:280:0x072f, LOOP_END] */
    @Override // androidx.fragment.app.b1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(java.util.ArrayList r38, boolean r39) {
        /*
            Method dump skipped, instructions count: 1863
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.c.b(java.util.ArrayList, boolean):void");
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1677a;

        static {
            int[] iArr = new int[b1.c.b.values().length];
            f1677a = iArr;
            try {
                iArr[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1677a[3] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1677a[0] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1677a[1] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static void l(ArrayMap arrayMap, Collection collection) {
        Iterator it = arrayMap.entrySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(ViewCompat.getTransitionName((View) ((Map.Entry) it.next()).getValue()))) {
                it.remove();
            }
        }
    }

    public static void j(View view, ArrayList arrayList) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (ViewGroupCompat.isTransitionGroup(viewGroup)) {
                if (arrayList.contains(view)) {
                    return;
                }
                arrayList.add(viewGroup);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    j(childAt, arrayList);
                }
            }
            return;
        }
        if (arrayList.contains(view)) {
            return;
        }
        arrayList.add(view);
    }

    public static void k(ArrayMap arrayMap, View view) {
        String transitionName = ViewCompat.getTransitionName(view);
        if (transitionName != null) {
            arrayMap.put(transitionName, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    k(arrayMap, childAt);
                }
            }
        }
    }

    /* renamed from: androidx.fragment.app.c$c, reason: collision with other inner class name */
    public static class C0021c {

        /* renamed from: a, reason: collision with root package name */
        public final b1.c f1678a;

        /* renamed from: b, reason: collision with root package name */
        public final CancellationSignal f1679b;

        public C0021c(b1.c cVar, CancellationSignal cancellationSignal) {
            this.f1678a = cVar;
            this.f1679b = cancellationSignal;
        }

        public final boolean b() {
            b1.c cVar = this.f1678a;
            b1.c.b bVarC = b1.c.b.c(cVar.getFragment().H);
            b1.c.b finalState = cVar.getFinalState();
            if (bVarC == finalState) {
                return true;
            }
            b1.c.b bVar = b1.c.b.f1676b;
            return (bVarC == bVar || finalState == bVar) ? false : true;
        }

        public final void a() {
            this.f1678a.completeSpecialEffect(this.f1679b);
        }
    }

    public static class b extends C0021c {
        public boolean c;
        public boolean d;
        public x.a e;

        public final x.a c(Context context) {
            if (this.d) {
                return this.e;
            }
            b1.c cVar = this.f1678a;
            x.a aVarA = x.a(context, cVar.getFragment(), cVar.getFinalState() == b1.c.b.f1676b, this.c);
            this.e = aVarA;
            this.d = true;
            return aVarA;
        }
    }

    public static class d extends C0021c {
        public final Object c;
        public final boolean d;
        public final Object e;

        public d(b1.c cVar, CancellationSignal cancellationSignal, boolean z, boolean z2) {
            Object exitTransition;
            Object enterTransition;
            boolean allowEnterTransitionOverlap;
            super(cVar, cancellationSignal);
            if (cVar.getFinalState() == b1.c.b.f1676b) {
                if (z) {
                    enterTransition = cVar.getFragment().getReenterTransition();
                } else {
                    enterTransition = cVar.getFragment().getEnterTransition();
                }
                this.c = enterTransition;
                if (z) {
                    allowEnterTransitionOverlap = cVar.getFragment().getAllowReturnTransitionOverlap();
                } else {
                    allowEnterTransitionOverlap = cVar.getFragment().getAllowEnterTransitionOverlap();
                }
                this.d = allowEnterTransitionOverlap;
            } else {
                if (z) {
                    exitTransition = cVar.getFragment().getReturnTransition();
                } else {
                    exitTransition = cVar.getFragment().getExitTransition();
                }
                this.c = exitTransition;
                this.d = true;
            }
            if (!z2) {
                this.e = null;
            } else if (z) {
                this.e = cVar.getFragment().getSharedElementReturnTransition();
            } else {
                this.e = cVar.getFragment().getSharedElementEnterTransition();
            }
        }

        public boolean hasSharedElementTransition() {
            return this.e != null;
        }

        @Nullable
        public Object getSharedElementTransition() {
            return this.e;
        }

        public final FragmentTransitionImpl c(Object obj) {
            if (obj == null) {
                return null;
            }
            FragmentTransitionImpl fragmentTransitionImpl = s0.f1739b;
            if (fragmentTransitionImpl != null && fragmentTransitionImpl.canHandle(obj)) {
                return fragmentTransitionImpl;
            }
            FragmentTransitionImpl fragmentTransitionImpl2 = s0.c;
            if (fragmentTransitionImpl2 != null && fragmentTransitionImpl2.canHandle(obj)) {
                return fragmentTransitionImpl2;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + this.f1678a.getFragment() + " is not a valid framework Transition or AndroidX Transition");
        }
    }
}
