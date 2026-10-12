package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.core.os.CancellationSignal;
import androidx.core.view.ViewCompat;
import androidx.fragment.R;
import androidx.fragment.app.Fragment;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
abstract class b1 {

    /* renamed from: a, reason: collision with root package name */
    public final ViewGroup f1666a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f1667b = new ArrayList();
    public final ArrayList c = new ArrayList();
    public boolean d = false;
    public boolean e = false;

    public abstract void b(ArrayList arrayList, boolean z);

    public static b1 f(ViewGroup viewGroup, FragmentManager fragmentManager) {
        return g(viewGroup, fragmentManager.B());
    }

    public static b1 g(ViewGroup viewGroup, d1 d1Var) {
        int i = R.id.special_effects_controller_view_tag;
        Object tag = viewGroup.getTag(i);
        if (tag instanceof b1) {
            return (b1) tag;
        }
        b1 b1VarCreateController = d1Var.createController(viewGroup);
        viewGroup.setTag(i, b1VarCreateController);
        return b1VarCreateController;
    }

    public b1(ViewGroup viewGroup) {
        this.f1666a = viewGroup;
    }

    @NonNull
    public ViewGroup getContainer() {
        return this.f1666a;
    }

    public final c d(Fragment fragment) {
        Iterator it = this.f1667b.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.getFragment().equals(fragment) && !cVar.f) {
                return cVar;
            }
        }
        return null;
    }

    public final void a(c.b bVar, c.a aVar, k0 k0Var) {
        synchronized (this.f1667b) {
            try {
                CancellationSignal cancellationSignal = new CancellationSignal();
                c cVarD = d(k0Var.c);
                if (cVarD != null) {
                    cVarD.b(bVar, aVar);
                    return;
                }
                b bVar2 = new b(bVar, aVar, k0Var, cancellationSignal);
                this.f1667b.add(bVar2);
                bVar2.d.add(new z0(this, bVar2));
                bVar2.d.add(new a1(this, bVar2));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h() {
        synchronized (this.f1667b) {
            try {
                i();
                boolean z = false;
                this.e = false;
                int size = this.f1667b.size() - 1;
                while (true) {
                    if (size < 0) {
                        break;
                    }
                    c cVar = (c) this.f1667b.get(size);
                    c.b bVarC = c.b.c(cVar.getFragment().H);
                    c.b finalState = cVar.getFinalState();
                    c.b bVar = c.b.f1676b;
                    if (finalState != bVar || bVarC == bVar) {
                        size--;
                    } else {
                        Fragment.e eVar = cVar.getFragment().K;
                        if (eVar != null) {
                            z = eVar.w;
                        }
                        this.e = z;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c() {
        if (this.e) {
            return;
        }
        if (!ViewCompat.isAttachedToWindow(this.f1666a)) {
            e();
            this.d = false;
            return;
        }
        synchronized (this.f1667b) {
            try {
                if (!this.f1667b.isEmpty()) {
                    ArrayList arrayList = new ArrayList(this.c);
                    this.c.clear();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        c cVar = (c) it.next();
                        if (FragmentManager.D(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + cVar);
                        }
                        cVar.a();
                        if (!cVar.f1672g) {
                            this.c.add(cVar);
                        }
                    }
                    i();
                    ArrayList arrayList2 = new ArrayList(this.f1667b);
                    this.f1667b.clear();
                    this.c.addAll(arrayList2);
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        ((c) it2.next()).c();
                    }
                    b(arrayList2, this.d);
                    this.d = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e() {
        String str;
        String str2;
        boolean zIsAttachedToWindow = ViewCompat.isAttachedToWindow(this.f1666a);
        synchronized (this.f1667b) {
            try {
                i();
                Iterator it = this.f1667b.iterator();
                while (it.hasNext()) {
                    ((c) it.next()).c();
                }
                Iterator it2 = new ArrayList(this.c).iterator();
                while (it2.hasNext()) {
                    c cVar = (c) it2.next();
                    if (FragmentManager.D(2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("SpecialEffectsController: ");
                        if (zIsAttachedToWindow) {
                            str2 = "";
                        } else {
                            str2 = "Container " + this.f1666a + " is not attached to window. ";
                        }
                        sb.append(str2);
                        sb.append("Cancelling running operation ");
                        sb.append(cVar);
                        Log.v("FragmentManager", sb.toString());
                    }
                    cVar.a();
                }
                Iterator it3 = new ArrayList(this.f1667b).iterator();
                while (it3.hasNext()) {
                    c cVar2 = (c) it3.next();
                    if (FragmentManager.D(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SpecialEffectsController: ");
                        if (zIsAttachedToWindow) {
                            str = "";
                        } else {
                            str = "Container " + this.f1666a + " is not attached to window. ";
                        }
                        sb2.append(str);
                        sb2.append("Cancelling pending operation ");
                        sb2.append(cVar2);
                        Log.v("FragmentManager", sb2.toString());
                    }
                    cVar2.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void i() {
        Iterator it = this.f1667b.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.f1671b == c.a.f1674b) {
                cVar.b(c.b.b(cVar.getFragment().requireView().getVisibility()), c.a.f1673a);
            }
        }
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public b f1670a;

        /* renamed from: b, reason: collision with root package name */
        public a f1671b;
        public final Fragment c;
        public final ArrayList d = new ArrayList();
        public final HashSet e = new HashSet();
        public boolean f = false;

        /* renamed from: g, reason: collision with root package name */
        public boolean f1672g = false;

        public void c() {
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class b {

            /* renamed from: a, reason: collision with root package name */
            public static final b f1675a;

            /* renamed from: b, reason: collision with root package name */
            public static final b f1676b;
            public static final b c;
            public static final b d;
            public static final /* synthetic */ b[] e;

            public static b[] values() {
                return (b[]) e.clone();
            }

            static {
                b bVar = new b("REMOVED", 0);
                f1675a = bVar;
                b bVar2 = new b("VISIBLE", 1);
                f1676b = bVar2;
                b bVar3 = new b("GONE", 2);
                c = bVar3;
                b bVar4 = new b("INVISIBLE", 3);
                d = bVar4;
                e = new b[]{bVar, bVar2, bVar3, bVar4};
            }

            public static b c(View view) {
                if (view.getAlpha() == 0.0f && view.getVisibility() == 0) {
                    return d;
                }
                return b(view.getVisibility());
            }

            public static b b(int i) {
                if (i == 0) {
                    return f1676b;
                }
                if (i == 4) {
                    return d;
                }
                if (i == 8) {
                    return c;
                }
                throw new IllegalArgumentException(_COROUTINE.a.d(i, "Unknown visibility "));
            }

            public final void a(View view) {
                int iOrdinal = ordinal();
                if (iOrdinal == 0) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup != null) {
                        if (FragmentManager.D(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup);
                        }
                        viewGroup.removeView(view);
                        return;
                    }
                    return;
                }
                if (iOrdinal == 1) {
                    if (FragmentManager.D(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
                    }
                    view.setVisibility(0);
                    return;
                }
                if (iOrdinal == 2) {
                    if (FragmentManager.D(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
                    }
                    view.setVisibility(8);
                    return;
                }
                if (iOrdinal != 3) {
                    return;
                }
                if (FragmentManager.D(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
                }
                view.setVisibility(4);
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class a {

            /* renamed from: a, reason: collision with root package name */
            public static final a f1673a;

            /* renamed from: b, reason: collision with root package name */
            public static final a f1674b;
            public static final a c;
            public static final /* synthetic */ a[] d;

            public static a[] values() {
                return (a[]) d.clone();
            }

            static {
                a aVar = new a("NONE", 0);
                f1673a = aVar;
                a aVar2 = new a("ADDING", 1);
                f1674b = aVar2;
                a aVar3 = new a("REMOVING", 2);
                c = aVar3;
                d = new a[]{aVar, aVar2, aVar3};
            }
        }

        public c(b bVar, a aVar, Fragment fragment, CancellationSignal cancellationSignal) {
            this.f1670a = bVar;
            this.f1671b = aVar;
            this.c = fragment;
            cancellationSignal.setOnCancelListener(new c1(this));
        }

        @NonNull
        public b getFinalState() {
            return this.f1670a;
        }

        @NonNull
        public final Fragment getFragment() {
            return this.c;
        }

        public final void a() {
            if (this.f) {
                return;
            }
            this.f = true;
            HashSet hashSet = this.e;
            if (hashSet.isEmpty()) {
                complete();
                return;
            }
            Iterator it = new ArrayList(hashSet).iterator();
            while (it.hasNext()) {
                ((CancellationSignal) it.next()).cancel();
            }
        }

        @NonNull
        public String toString() {
            return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + this.f1670a + "} {mLifecycleImpact = " + this.f1671b + "} {mFragment = " + this.c + "}";
        }

        public final void b(b bVar, a aVar) {
            int iOrdinal = aVar.ordinal();
            b bVar2 = b.f1675a;
            Fragment fragment = this.c;
            if (iOrdinal == 0) {
                if (this.f1670a != bVar2) {
                    if (FragmentManager.D(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: For fragment " + fragment + " mFinalState = " + this.f1670a + " -> " + bVar + ". ");
                    }
                    this.f1670a = bVar;
                    return;
                }
                return;
            }
            if (iOrdinal == 1) {
                if (this.f1670a == bVar2) {
                    if (FragmentManager.D(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: For fragment " + fragment + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + this.f1671b + " to ADDING.");
                    }
                    this.f1670a = b.f1676b;
                    this.f1671b = a.f1674b;
                    return;
                }
                return;
            }
            if (iOrdinal != 2) {
                return;
            }
            if (FragmentManager.D(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: For fragment " + fragment + " mFinalState = " + this.f1670a + " -> REMOVED. mLifecycleImpact  = " + this.f1671b + " to REMOVING.");
            }
            this.f1670a = bVar2;
            this.f1671b = a.c;
        }

        public final void markStartedSpecialEffect(@NonNull CancellationSignal cancellationSignal) {
            c();
            this.e.add(cancellationSignal);
        }

        public final void completeSpecialEffect(@NonNull CancellationSignal cancellationSignal) {
            HashSet hashSet = this.e;
            if (hashSet.remove(cancellationSignal) && hashSet.isEmpty()) {
                complete();
            }
        }

        @CallSuper
        public void complete() {
            if (this.f1672g) {
                return;
            }
            if (FragmentManager.D(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.f1672g = true;
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }
    }

    public static class b extends c {
        public final k0 h;

        @Override // androidx.fragment.app.b1.c
        public final void c() {
            if (this.f1671b == c.a.f1674b) {
                k0 k0Var = this.h;
                Fragment fragment = k0Var.c;
                View viewFindFocus = fragment.H.findFocus();
                if (viewFindFocus != null) {
                    fragment.c().v = viewFindFocus;
                    if (FragmentManager.D(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + fragment);
                    }
                }
                View viewRequireView = getFragment().requireView();
                if (viewRequireView.getParent() == null) {
                    k0Var.b();
                    viewRequireView.setAlpha(0.0f);
                }
                if (viewRequireView.getAlpha() == 0.0f && viewRequireView.getVisibility() == 0) {
                    viewRequireView.setVisibility(4);
                }
                Fragment.e eVar = fragment.K;
                viewRequireView.setAlpha(eVar == null ? 1.0f : eVar.u);
            }
        }

        public b(c.b bVar, c.a aVar, k0 k0Var, CancellationSignal cancellationSignal) {
            super(bVar, aVar, k0Var.c, cancellationSignal);
            this.h = k0Var;
        }

        @Override // androidx.fragment.app.b1.c
        public void complete() {
            super.complete();
            this.h.k();
        }
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1668a;

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f1669b;

        static {
            int[] iArr = new int[c.a.values().length];
            f1669b = iArr;
            try {
                iArr[1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1669b[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1669b[0] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[c.b.values().length];
            f1668a = iArr2;
            try {
                iArr2[0] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1668a[1] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1668a[2] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1668a[3] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }
}
