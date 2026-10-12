package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.os.EnvironmentCompat;
import androidx.core.view.ViewCompat;
import androidx.fragment.R;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.b1;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistryController;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.UUID;

/* loaded from: classes.dex */
class k0 {

    /* renamed from: a, reason: collision with root package name */
    public final z f1708a;

    /* renamed from: b, reason: collision with root package name */
    public final l0 f1709b;
    public final Fragment c;
    public boolean d = false;
    public int e = -1;

    public k0(z zVar, l0 l0Var, Fragment fragment) {
        this.f1708a = zVar;
        this.f1709b = l0Var;
        this.c = fragment;
    }

    public k0(z zVar, l0 l0Var, ClassLoader classLoader, FragmentFactory fragmentFactory, i0 i0Var) {
        this.f1708a = zVar;
        this.f1709b = l0Var;
        Fragment fragmentInstantiate = fragmentFactory.instantiate(classLoader, i0Var.f1701a);
        this.c = fragmentInstantiate;
        Bundle bundle = i0Var.j;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        fragmentInstantiate.setArguments(bundle);
        fragmentInstantiate.f = i0Var.f1702b;
        fragmentInstantiate.n = i0Var.c;
        fragmentInstantiate.p = true;
        fragmentInstantiate.w = i0Var.d;
        fragmentInstantiate.x = i0Var.e;
        fragmentInstantiate.y = i0Var.f;
        fragmentInstantiate.B = i0Var.f1703g;
        fragmentInstantiate.m = i0Var.h;
        fragmentInstantiate.A = i0Var.i;
        fragmentInstantiate.z = i0Var.k;
        fragmentInstantiate.R = Lifecycle.State.values()[i0Var.l];
        Bundle bundle2 = i0Var.m;
        if (bundle2 != null) {
            fragmentInstantiate.f1605b = bundle2;
        } else {
            fragmentInstantiate.f1605b = new Bundle();
        }
        if (FragmentManager.D(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + fragmentInstantiate);
        }
    }

    public k0(z zVar, l0 l0Var, Fragment fragment, i0 i0Var) {
        this.f1708a = zVar;
        this.f1709b = l0Var;
        this.c = fragment;
        fragment.c = null;
        fragment.d = null;
        fragment.r = 0;
        fragment.o = false;
        fragment.l = false;
        Fragment fragment2 = fragment.h;
        fragment.i = fragment2 != null ? fragment2.f : null;
        fragment.h = null;
        Bundle bundle = i0Var.m;
        if (bundle != null) {
            fragment.f1605b = bundle;
        } else {
            fragment.f1605b = new Bundle();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v4, types: [androidx.fragment.app.b1$c$a] */
    /* JADX WARN: Type inference failed for: r2v19, types: [androidx.fragment.app.b1$c$a] */
    public final int d() {
        ViewGroup viewGroup;
        Fragment fragment = this.c;
        if (fragment.s == null) {
            return fragment.f1604a;
        }
        int iMin = this.e;
        int i = a.f1710a[fragment.R.ordinal()];
        if (i != 1) {
            if (i == 2) {
                iMin = Math.min(iMin, 5);
            } else if (i == 3) {
                iMin = Math.min(iMin, 1);
            } else if (i == 4) {
                iMin = Math.min(iMin, 0);
            } else {
                iMin = Math.min(iMin, -1);
            }
        }
        if (fragment.n) {
            if (fragment.o) {
                iMin = Math.max(this.e, 2);
                View view = fragment.H;
                if (view != null && view.getParent() == null) {
                    iMin = Math.min(iMin, 2);
                }
            } else {
                iMin = this.e < 4 ? Math.min(iMin, fragment.f1604a) : Math.min(iMin, 1);
            }
        }
        if (!fragment.l) {
            iMin = Math.min(iMin, 1);
        }
        b1.c cVar = null;
        if (FragmentManager.O && (viewGroup = fragment.G) != null) {
            b1 b1VarF = b1.f(viewGroup, fragment.getParentFragmentManager());
            b1VarF.getClass();
            b1.c cVarD = b1VarF.d(fragment);
            b1.c cVar2 = cVarD != null ? cVarD.f1671b : null;
            Iterator it = b1VarF.c.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                b1.c cVar3 = (b1.c) it.next();
                if (cVar3.getFragment().equals(fragment) && !cVar3.f) {
                    cVar = cVar3;
                    break;
                }
            }
            cVar = (cVar == null || !(cVar2 == null || cVar2 == b1.c.a.f1673a)) ? cVar2 : cVar.f1671b;
        }
        if (cVar == b1.c.a.f1674b) {
            iMin = Math.min(iMin, 6);
        } else if (cVar == b1.c.a.c) {
            iMin = Math.max(iMin, 3);
        } else if (fragment.m) {
            if (fragment.f()) {
                iMin = Math.min(iMin, 1);
            } else {
                iMin = Math.min(iMin, -1);
            }
        }
        if (fragment.I && fragment.f1604a < 5) {
            iMin = Math.min(iMin, 4);
        }
        if (FragmentManager.D(2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + iMin + " for " + fragment);
        }
        return iMin;
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1710a;

        static {
            int[] iArr = new int[Lifecycle.State.values().length];
            f1710a = iArr;
            try {
                iArr[Lifecycle.State.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1710a[Lifecycle.State.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1710a[Lifecycle.State.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1710a[Lifecycle.State.INITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public final void k() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        boolean z = this.d;
        Fragment fragment = this.c;
        if (z) {
            if (FragmentManager.D(2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + fragment);
                return;
            }
            return;
        }
        try {
            this.d = true;
            while (true) {
                int iD = d();
                int i = fragment.f1604a;
                if (iD == i) {
                    if (FragmentManager.O && fragment.N) {
                        if (fragment.H != null && (viewGroup = fragment.G) != null) {
                            b1 b1VarF = b1.f(viewGroup, fragment.getParentFragmentManager());
                            boolean z2 = fragment.z;
                            b1.c.a aVar = b1.c.a.f1673a;
                            if (z2) {
                                b1VarF.getClass();
                                if (FragmentManager.D(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + fragment);
                                }
                                b1VarF.a(b1.c.b.c, aVar, this);
                            } else {
                                b1VarF.getClass();
                                if (FragmentManager.D(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + fragment);
                                }
                                b1VarF.a(b1.c.b.f1676b, aVar, this);
                            }
                        }
                        FragmentManager fragmentManager = fragment.s;
                        if (fragmentManager != null && fragment.l && FragmentManager.E(fragment)) {
                            fragmentManager.C = true;
                        }
                        fragment.N = false;
                        fragment.onHiddenChanged(fragment.z);
                    }
                    this.d = false;
                    return;
                }
                if (iD > i) {
                    switch (i + 1) {
                        case 0:
                            c();
                            break;
                        case 1:
                            e();
                            break;
                        case 2:
                            j();
                            f();
                            break;
                        case 3:
                            a();
                            break;
                        case 4:
                            if (fragment.H != null && (viewGroup2 = fragment.G) != null) {
                                b1 b1VarF2 = b1.f(viewGroup2, fragment.getParentFragmentManager());
                                b1.c.b bVarB = b1.c.b.b(fragment.H.getVisibility());
                                b1VarF2.getClass();
                                if (FragmentManager.D(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + fragment);
                                }
                                b1VarF2.a(bVarB, b1.c.a.f1674b, this);
                            }
                            fragment.f1604a = 4;
                            break;
                        case 5:
                            q();
                            break;
                        case 6:
                            fragment.f1604a = 6;
                            break;
                        case 7:
                            n();
                            break;
                    }
                } else {
                    switch (i - 1) {
                        case -1:
                            i();
                            break;
                        case 0:
                            g();
                            break;
                        case 1:
                            h();
                            fragment.f1604a = 1;
                            break;
                        case 2:
                            fragment.o = false;
                            fragment.f1604a = 2;
                            break;
                        case 3:
                            if (FragmentManager.D(3)) {
                                Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + fragment);
                            }
                            if (fragment.H != null && fragment.c == null) {
                                p();
                            }
                            if (fragment.H != null && (viewGroup3 = fragment.G) != null) {
                                b1 b1VarF3 = b1.f(viewGroup3, fragment.getParentFragmentManager());
                                b1VarF3.getClass();
                                if (FragmentManager.D(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + fragment);
                                }
                                b1VarF3.a(b1.c.b.f1675a, b1.c.a.c, this);
                            }
                            fragment.f1604a = 3;
                            break;
                        case 4:
                            r();
                            break;
                        case 5:
                            fragment.f1604a = 5;
                            break;
                        case 6:
                            l();
                            break;
                    }
                }
            }
        } catch (Throwable th) {
            this.d = false;
            throw th;
        }
    }

    public final void j() {
        Fragment fragment = this.c;
        if (fragment.n && fragment.o && !fragment.q) {
            if (FragmentManager.D(3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + fragment);
            }
            LayoutInflater layoutInflaterOnGetLayoutInflater = fragment.onGetLayoutInflater(fragment.f1605b);
            fragment.P = layoutInflaterOnGetLayoutInflater;
            fragment.i(layoutInflaterOnGetLayoutInflater, null, fragment.f1605b);
            View view = fragment.H;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                fragment.H.setTag(R.id.fragment_container_view_tag, fragment);
                if (fragment.z) {
                    fragment.H.setVisibility(8);
                }
                fragment.onViewCreated(fragment.H, fragment.f1605b);
                fragment.u.r(2);
                this.f1708a.m(fragment, fragment.H, fragment.f1605b, false);
                fragment.f1604a = 2;
            }
        }
    }

    public final void m(ClassLoader classLoader) {
        Fragment fragment = this.c;
        Bundle bundle = fragment.f1605b;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        fragment.c = fragment.f1605b.getSparseParcelableArray("android:view_state");
        fragment.d = fragment.f1605b.getBundle("android:view_registry_state");
        fragment.i = fragment.f1605b.getString("android:target_state");
        if (fragment.i != null) {
            fragment.j = fragment.f1605b.getInt("android:target_req_state", 0);
        }
        Boolean bool = fragment.e;
        if (bool != null) {
            fragment.J = bool.booleanValue();
            fragment.e = null;
        } else {
            fragment.J = fragment.f1605b.getBoolean("android:user_visible_hint", true);
        }
        if (fragment.J) {
            return;
        }
        fragment.I = true;
    }

    public final void c() {
        boolean zD = FragmentManager.D(3);
        Fragment fragment = this.c;
        if (zD) {
            Log.d("FragmentManager", "moveto ATTACHED: " + fragment);
        }
        Fragment fragment2 = fragment.h;
        k0 k0Var = null;
        l0 l0Var = this.f1709b;
        if (fragment2 != null) {
            k0 k0Var2 = (k0) l0Var.f1713b.get(fragment2.f);
            if (k0Var2 == null) {
                throw new IllegalStateException("Fragment " + fragment + " declared target fragment " + fragment.h + " that does not belong to this FragmentManager!");
            }
            fragment.i = fragment.h.f;
            fragment.h = null;
            k0Var = k0Var2;
        } else {
            String str = fragment.i;
            if (str != null && (k0Var = (k0) l0Var.f1713b.get(str)) == null) {
                StringBuilder sb = new StringBuilder("Fragment ");
                sb.append(fragment);
                sb.append(" declared target fragment ");
                throw new IllegalStateException(_COROUTINE.a.m(sb, fragment.i, " that does not belong to this FragmentManager!"));
            }
        }
        if (k0Var != null && (FragmentManager.O || k0Var.c.f1604a < 1)) {
            k0Var.k();
        }
        FragmentManager fragmentManager = fragment.s;
        fragment.t = fragmentManager.r;
        fragment.v = fragmentManager.t;
        z zVar = this.f1708a;
        zVar.g(fragment, false);
        ArrayList arrayList = fragment.Z;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Fragment.f) it.next()).a();
        }
        arrayList.clear();
        fragment.u.c(fragment.t, fragment.b(), fragment);
        fragment.f1604a = 0;
        fragment.F = false;
        fragment.onAttach(fragment.t.f1620b);
        if (!fragment.F) {
            throw new e1(_COROUTINE.a.h("Fragment ", fragment, " did not call through to super.onAttach()"));
        }
        FragmentManager fragmentManager2 = fragment.s;
        Iterator it2 = fragmentManager2.p.iterator();
        while (it2.hasNext()) {
            ((FragmentOnAttachListener) it2.next()).onAttachFragment(fragmentManager2, fragment);
        }
        FragmentManager fragmentManager3 = fragment.u;
        fragmentManager3.D = false;
        fragmentManager3.E = false;
        fragmentManager3.L.j = false;
        fragmentManager3.r(0);
        zVar.b(fragment, false);
    }

    public final void e() {
        Parcelable parcelable;
        boolean zD = FragmentManager.D(3);
        Fragment fragment = this.c;
        if (zD) {
            Log.d("FragmentManager", "moveto CREATED: " + fragment);
        }
        if (fragment.Q) {
            Bundle bundle = fragment.f1605b;
            if (bundle != null && (parcelable = bundle.getParcelable("android:support:fragments")) != null) {
                fragment.u.P(parcelable);
                FragmentManager fragmentManager = fragment.u;
                fragmentManager.D = false;
                fragmentManager.E = false;
                fragmentManager.L.j = false;
                fragmentManager.r(1);
            }
            fragment.f1604a = 1;
            return;
        }
        Bundle bundle2 = fragment.f1605b;
        z zVar = this.f1708a;
        zVar.h(fragment, bundle2, false);
        Bundle bundle3 = fragment.f1605b;
        fragment.u.J();
        fragment.f1604a = 1;
        fragment.F = false;
        fragment.S.addObserver(new p(fragment));
        fragment.W.performRestore(bundle3);
        fragment.onCreate(bundle3);
        fragment.Q = true;
        if (!fragment.F) {
            throw new e1(_COROUTINE.a.h("Fragment ", fragment, " did not call through to super.onCreate()"));
        }
        fragment.S.handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
        zVar.c(fragment, fragment.f1605b, false);
    }

    public final void f() {
        String resourceName;
        Fragment fragment = this.c;
        if (fragment.n) {
            return;
        }
        if (FragmentManager.D(3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + fragment);
        }
        LayoutInflater layoutInflaterOnGetLayoutInflater = fragment.onGetLayoutInflater(fragment.f1605b);
        fragment.P = layoutInflaterOnGetLayoutInflater;
        ViewGroup viewGroup = fragment.G;
        if (viewGroup == null) {
            int i = fragment.x;
            if (i == 0) {
                viewGroup = null;
            } else {
                if (i == -1) {
                    throw new IllegalArgumentException(_COROUTINE.a.h("Cannot create fragment ", fragment, " for a container view with no id"));
                }
                viewGroup = (ViewGroup) fragment.s.s.onFindViewById(i);
                if (viewGroup == null && !fragment.p) {
                    try {
                        resourceName = fragment.getResources().getResourceName(fragment.x);
                    } catch (Resources.NotFoundException unused) {
                        resourceName = EnvironmentCompat.MEDIA_UNKNOWN;
                    }
                    throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(fragment.x) + " (" + resourceName + ") for fragment " + fragment);
                }
            }
        }
        fragment.G = viewGroup;
        fragment.i(layoutInflaterOnGetLayoutInflater, viewGroup, fragment.f1605b);
        View view = fragment.H;
        if (view != null) {
            boolean z = false;
            view.setSaveFromParentEnabled(false);
            fragment.H.setTag(R.id.fragment_container_view_tag, fragment);
            if (viewGroup != null) {
                b();
            }
            if (fragment.z) {
                fragment.H.setVisibility(8);
            }
            if (ViewCompat.isAttachedToWindow(fragment.H)) {
                ViewCompat.requestApplyInsets(fragment.H);
            } else {
                View view2 = fragment.H;
                view2.addOnAttachStateChangeListener(new j0(view2));
            }
            fragment.onViewCreated(fragment.H, fragment.f1605b);
            fragment.u.r(2);
            this.f1708a.m(fragment, fragment.H, fragment.f1605b, false);
            int visibility = fragment.H.getVisibility();
            float alpha = fragment.H.getAlpha();
            if (FragmentManager.O) {
                fragment.c().u = alpha;
                if (fragment.G != null && visibility == 0) {
                    View viewFindFocus = fragment.H.findFocus();
                    if (viewFindFocus != null) {
                        fragment.c().v = viewFindFocus;
                        if (FragmentManager.D(2)) {
                            Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + fragment);
                        }
                    }
                    fragment.H.setAlpha(0.0f);
                }
            } else {
                if (visibility == 0 && fragment.G != null) {
                    z = true;
                }
                fragment.M = z;
            }
        }
        fragment.f1604a = 2;
    }

    public final void a() {
        boolean zD = FragmentManager.D(3);
        Fragment fragment = this.c;
        if (zD) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + fragment);
        }
        Bundle bundle = fragment.f1605b;
        fragment.u.J();
        fragment.f1604a = 3;
        fragment.F = false;
        fragment.onActivityCreated(bundle);
        if (!fragment.F) {
            throw new e1(_COROUTINE.a.h("Fragment ", fragment, " did not call through to super.onActivityCreated()"));
        }
        if (FragmentManager.D(3)) {
            Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + fragment);
        }
        View view = fragment.H;
        if (view != null) {
            Bundle bundle2 = fragment.f1605b;
            SparseArray<Parcelable> sparseArray = fragment.c;
            if (sparseArray != null) {
                view.restoreHierarchyState(sparseArray);
                fragment.c = null;
            }
            if (fragment.H != null) {
                fragment.T.e.performRestore(fragment.d);
                fragment.d = null;
            }
            fragment.F = false;
            fragment.onViewStateRestored(bundle2);
            if (!fragment.F) {
                throw new e1(_COROUTINE.a.h("Fragment ", fragment, " did not call through to super.onViewStateRestored()"));
            }
            if (fragment.H != null) {
                fragment.T.a(Lifecycle.Event.ON_CREATE);
            }
        }
        fragment.f1605b = null;
        FragmentManager fragmentManager = fragment.u;
        fragmentManager.D = false;
        fragmentManager.E = false;
        fragmentManager.L.j = false;
        fragmentManager.r(4);
        this.f1708a.a(fragment, fragment.f1605b, false);
    }

    public final void q() {
        boolean zD = FragmentManager.D(3);
        Fragment fragment = this.c;
        if (zD) {
            Log.d("FragmentManager", "moveto STARTED: " + fragment);
        }
        fragment.u.J();
        fragment.u.v(true);
        fragment.f1604a = 5;
        fragment.F = false;
        fragment.onStart();
        if (!fragment.F) {
            throw new e1(_COROUTINE.a.h("Fragment ", fragment, " did not call through to super.onStart()"));
        }
        LifecycleRegistry lifecycleRegistry = fragment.S;
        Lifecycle.Event event = Lifecycle.Event.ON_START;
        lifecycleRegistry.handleLifecycleEvent(event);
        if (fragment.H != null) {
            fragment.T.a(event);
        }
        FragmentManager fragmentManager = fragment.u;
        fragmentManager.D = false;
        fragmentManager.E = false;
        fragmentManager.L.j = false;
        fragmentManager.r(5);
        this.f1708a.k(fragment, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void n() {
        /*
            r7 = this;
            r0 = 3
            boolean r0 = androidx.fragment.app.FragmentManager.D(r0)
            java.lang.String r1 = "FragmentManager"
            androidx.fragment.app.Fragment r2 = r7.c
            if (r0 == 0) goto L1c
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r3 = "moveto RESUMED: "
            r0.<init>(r3)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            android.util.Log.d(r1, r0)
        L1c:
            androidx.fragment.app.Fragment$e r0 = r2.K
            r3 = 0
            if (r0 != 0) goto L23
            r0 = r3
            goto L25
        L23:
            android.view.View r0 = r0.v
        L25:
            if (r0 == 0) goto L7d
            android.view.View r4 = r2.H
            if (r0 != r4) goto L2c
            goto L36
        L2c:
            android.view.ViewParent r4 = r0.getParent()
        L30:
            if (r4 == 0) goto L7d
            android.view.View r5 = r2.H
            if (r4 != r5) goto L78
        L36:
            boolean r4 = r0.requestFocus()
            r5 = 2
            boolean r5 = androidx.fragment.app.FragmentManager.D(r5)
            if (r5 == 0) goto L7d
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "requestFocus: Restoring focused view "
            r5.<init>(r6)
            r5.append(r0)
            java.lang.String r0 = " "
            r5.append(r0)
            if (r4 == 0) goto L55
            java.lang.String r0 = "succeeded"
            goto L57
        L55:
            java.lang.String r0 = "failed"
        L57:
            r5.append(r0)
            java.lang.String r0 = " on Fragment "
            r5.append(r0)
            r5.append(r2)
            java.lang.String r0 = " resulting in focused view "
            r5.append(r0)
            android.view.View r0 = r2.H
            android.view.View r0 = r0.findFocus()
            r5.append(r0)
            java.lang.String r0 = r5.toString()
            android.util.Log.v(r1, r0)
            goto L7d
        L78:
            android.view.ViewParent r4 = r4.getParent()
            goto L30
        L7d:
            androidx.fragment.app.Fragment$e r0 = r2.c()
            r0.v = r3
            androidx.fragment.app.FragmentManager r0 = r2.u
            r0.J()
            androidx.fragment.app.FragmentManager r0 = r2.u
            r1 = 1
            r0.v(r1)
            r0 = 7
            r2.f1604a = r0
            r1 = 0
            r2.F = r1
            r2.onResume()
            boolean r4 = r2.F
            if (r4 == 0) goto Lc4
            androidx.lifecycle.LifecycleRegistry r4 = r2.S
            androidx.lifecycle.Lifecycle$Event r5 = androidx.lifecycle.Lifecycle.Event.ON_RESUME
            r4.handleLifecycleEvent(r5)
            android.view.View r4 = r2.H
            if (r4 == 0) goto Lab
            androidx.fragment.app.x0 r4 = r2.T
            r4.a(r5)
        Lab:
            androidx.fragment.app.FragmentManager r4 = r2.u
            r4.D = r1
            r4.E = r1
            androidx.fragment.app.h0 r5 = r4.L
            r5.j = r1
            r4.r(r0)
            androidx.fragment.app.z r0 = r7.f1708a
            r0.i(r2, r1)
            r2.f1605b = r3
            r2.c = r3
            r2.d = r3
            return
        Lc4:
            androidx.fragment.app.e1 r0 = new androidx.fragment.app.e1
            java.lang.String r1 = "Fragment "
            java.lang.String r3 = " did not call through to super.onResume()"
            java.lang.String r1 = _COROUTINE.a.h(r1, r2, r3)
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.k0.n():void");
    }

    public final void l() {
        boolean zD = FragmentManager.D(3);
        Fragment fragment = this.c;
        if (zD) {
            Log.d("FragmentManager", "movefrom RESUMED: " + fragment);
        }
        fragment.u.r(5);
        if (fragment.H != null) {
            fragment.T.a(Lifecycle.Event.ON_PAUSE);
        }
        fragment.S.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE);
        fragment.f1604a = 6;
        fragment.F = false;
        fragment.onPause();
        if (!fragment.F) {
            throw new e1(_COROUTINE.a.h("Fragment ", fragment, " did not call through to super.onPause()"));
        }
        this.f1708a.f(fragment, false);
    }

    public final void r() {
        boolean zD = FragmentManager.D(3);
        Fragment fragment = this.c;
        if (zD) {
            Log.d("FragmentManager", "movefrom STARTED: " + fragment);
        }
        FragmentManager fragmentManager = fragment.u;
        fragmentManager.E = true;
        fragmentManager.L.j = true;
        fragmentManager.r(4);
        if (fragment.H != null) {
            fragment.T.a(Lifecycle.Event.ON_STOP);
        }
        fragment.S.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
        fragment.f1604a = 4;
        fragment.F = false;
        fragment.onStop();
        if (!fragment.F) {
            throw new e1(_COROUTINE.a.h("Fragment ", fragment, " did not call through to super.onStop()"));
        }
        this.f1708a.l(fragment, false);
    }

    public final Bundle o() {
        Bundle bundle = new Bundle();
        Fragment fragment = this.c;
        fragment.onSaveInstanceState(bundle);
        fragment.W.performSave(bundle);
        Parcelable parcelableQ = fragment.u.Q();
        if (parcelableQ != null) {
            bundle.putParcelable("android:support:fragments", parcelableQ);
        }
        this.f1708a.j(fragment, bundle, false);
        if (bundle.isEmpty()) {
            bundle = null;
        }
        if (fragment.H != null) {
            p();
        }
        if (fragment.c != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", fragment.c);
        }
        if (fragment.d != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBundle("android:view_registry_state", fragment.d);
        }
        if (!fragment.J) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", fragment.J);
        }
        return bundle;
    }

    public final void p() {
        Fragment fragment = this.c;
        if (fragment.H == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        fragment.H.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            fragment.c = sparseArray;
        }
        Bundle bundle = new Bundle();
        fragment.T.e.performSave(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        fragment.d = bundle;
    }

    public final void h() {
        View view;
        boolean zD = FragmentManager.D(3);
        Fragment fragment = this.c;
        if (zD) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + fragment);
        }
        ViewGroup viewGroup = fragment.G;
        if (viewGroup != null && (view = fragment.H) != null) {
            viewGroup.removeView(view);
        }
        fragment.j();
        this.f1708a.n(fragment, false);
        fragment.G = null;
        fragment.H = null;
        fragment.T = null;
        fragment.U.setValue(null);
        fragment.o = false;
    }

    public final void g() {
        Fragment fragmentB;
        boolean zD = FragmentManager.D(3);
        Fragment fragment = this.c;
        if (zD) {
            Log.d("FragmentManager", "movefrom CREATED: " + fragment);
        }
        boolean zIsChangingConfigurations = true;
        boolean z = fragment.m && !fragment.f();
        l0 l0Var = this.f1709b;
        if (!z) {
            h0 h0Var = l0Var.c;
            if (!(!h0Var.d.containsKey(fragment.f) ? true : h0Var.f1698g ? h0Var.h : !h0Var.i)) {
                String str = fragment.i;
                if (str != null && (fragmentB = l0Var.b(str)) != null && fragmentB.B) {
                    fragment.h = fragmentB;
                }
                fragment.f1604a = 0;
                return;
            }
        }
        FragmentHostCallback fragmentHostCallback = fragment.t;
        if (fragmentHostCallback instanceof ViewModelStoreOwner) {
            zIsChangingConfigurations = l0Var.c.h;
        } else {
            Context context = fragmentHostCallback.f1620b;
            if (context instanceof Activity) {
                zIsChangingConfigurations = true ^ ((Activity) context).isChangingConfigurations();
            }
        }
        if (z || zIsChangingConfigurations) {
            h0 h0Var2 = l0Var.c;
            h0Var2.getClass();
            if (FragmentManager.D(3)) {
                Log.d("FragmentManager", "Clearing non-config state for " + fragment);
            }
            HashMap map = h0Var2.e;
            h0 h0Var3 = (h0) map.get(fragment.f);
            if (h0Var3 != null) {
                h0Var3.onCleared();
                map.remove(fragment.f);
            }
            HashMap map2 = h0Var2.f;
            ViewModelStore viewModelStore = (ViewModelStore) map2.get(fragment.f);
            if (viewModelStore != null) {
                viewModelStore.clear();
                map2.remove(fragment.f);
            }
        }
        fragment.u.m();
        fragment.S.handleLifecycleEvent(Lifecycle.Event.ON_DESTROY);
        fragment.f1604a = 0;
        fragment.F = false;
        fragment.Q = false;
        fragment.onDestroy();
        if (!fragment.F) {
            throw new e1(_COROUTINE.a.h("Fragment ", fragment, " did not call through to super.onDestroy()"));
        }
        this.f1708a.d(fragment, false);
        Iterator it = l0Var.d().iterator();
        while (it.hasNext()) {
            k0 k0Var = (k0) it.next();
            if (k0Var != null) {
                String str2 = fragment.f;
                Fragment fragment2 = k0Var.c;
                if (str2.equals(fragment2.i)) {
                    fragment2.h = fragment;
                    fragment2.i = null;
                }
            }
        }
        String str3 = fragment.i;
        if (str3 != null) {
            fragment.h = l0Var.b(str3);
        }
        l0Var.h(this);
    }

    public final void i() {
        boolean zD = FragmentManager.D(3);
        Fragment fragment = this.c;
        if (zD) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + fragment);
        }
        fragment.f1604a = -1;
        fragment.F = false;
        fragment.onDetach();
        fragment.P = null;
        if (!fragment.F) {
            throw new e1(_COROUTINE.a.h("Fragment ", fragment, " did not call through to super.onDetach()"));
        }
        if (!fragment.u.isDestroyed()) {
            fragment.u.m();
            fragment.u = new f0();
        }
        this.f1708a.e(fragment, false);
        fragment.f1604a = -1;
        fragment.t = null;
        fragment.v = null;
        fragment.s = null;
        if (!fragment.m || fragment.f()) {
            h0 h0Var = this.f1709b.c;
            if (!(h0Var.d.containsKey(fragment.f) ? h0Var.f1698g ? h0Var.h : true ^ h0Var.i : true)) {
                return;
            }
        }
        if (FragmentManager.D(3)) {
            Log.d("FragmentManager", "initState called for fragment: " + fragment);
        }
        fragment.S = new LifecycleRegistry(fragment);
        fragment.W = SavedStateRegistryController.create(fragment);
        fragment.V = null;
        fragment.f = UUID.randomUUID().toString();
        fragment.l = false;
        fragment.m = false;
        fragment.n = false;
        fragment.o = false;
        fragment.p = false;
        fragment.r = 0;
        fragment.s = null;
        fragment.u = new f0();
        fragment.t = null;
        fragment.w = 0;
        fragment.x = 0;
        fragment.y = null;
        fragment.z = false;
        fragment.A = false;
    }

    public final void b() {
        View view;
        View view2;
        l0 l0Var = this.f1709b;
        l0Var.getClass();
        Fragment fragment = this.c;
        ViewGroup viewGroup = fragment.G;
        int iIndexOfChild = -1;
        if (viewGroup != null) {
            ArrayList arrayList = l0Var.f1712a;
            int iIndexOf = arrayList.indexOf(fragment);
            int i = iIndexOf - 1;
            while (true) {
                if (i < 0) {
                    while (true) {
                        iIndexOf++;
                        if (iIndexOf >= arrayList.size()) {
                            break;
                        }
                        Fragment fragment2 = (Fragment) arrayList.get(iIndexOf);
                        if (fragment2.G == viewGroup && (view = fragment2.H) != null) {
                            iIndexOfChild = viewGroup.indexOfChild(view);
                            break;
                        }
                    }
                } else {
                    Fragment fragment3 = (Fragment) arrayList.get(i);
                    if (fragment3.G == viewGroup && (view2 = fragment3.H) != null) {
                        iIndexOfChild = viewGroup.indexOfChild(view2) + 1;
                        break;
                    }
                    i--;
                }
            }
        }
        fragment.G.addView(fragment.H, iIndexOfChild);
    }
}
