package androidx.fragment.app;

import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
class l0 {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f1712a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f1713b = new HashMap();
    public h0 c;

    public final void g(k0 k0Var) {
        Fragment fragment = k0Var.c;
        String str = fragment.f;
        HashMap map = this.f1713b;
        if (map.get(str) != null) {
            return;
        }
        map.put(fragment.f, k0Var);
        if (fragment.C) {
            if (fragment.B) {
                this.c.c(fragment);
            } else {
                this.c.e(fragment);
            }
            fragment.C = false;
        }
        if (FragmentManager.D(2)) {
            Log.v("FragmentManager", "Added fragment to active set " + fragment);
        }
    }

    public final void a(Fragment fragment) {
        if (this.f1712a.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.f1712a) {
            this.f1712a.add(fragment);
        }
        fragment.l = true;
    }

    public final void h(k0 k0Var) {
        Fragment fragment = k0Var.c;
        if (fragment.B) {
            this.c.e(fragment);
        }
        if (((k0) this.f1713b.put(fragment.f, null)) != null && FragmentManager.D(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + fragment);
        }
    }

    public final ArrayList d() {
        ArrayList arrayList = new ArrayList();
        for (k0 k0Var : this.f1713b.values()) {
            if (k0Var != null) {
                arrayList.add(k0Var);
            }
        }
        return arrayList;
    }

    public final List f() {
        ArrayList arrayList;
        if (this.f1712a.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        synchronized (this.f1712a) {
            arrayList = new ArrayList(this.f1712a);
        }
        return arrayList;
    }

    public final ArrayList e() {
        ArrayList arrayList = new ArrayList();
        for (k0 k0Var : this.f1713b.values()) {
            if (k0Var != null) {
                arrayList.add(k0Var.c);
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public final Fragment c(String str) {
        for (k0 k0Var : this.f1713b.values()) {
            if (k0Var != null) {
                Fragment fragmentC = k0Var.c;
                if (!str.equals(fragmentC.f)) {
                    fragmentC = fragmentC.u.c.c(str);
                }
                if (fragmentC != null) {
                    return fragmentC;
                }
            }
        }
        return null;
    }

    public final Fragment b(String str) {
        k0 k0Var = (k0) this.f1713b.get(str);
        if (k0Var != null) {
            return k0Var.c;
        }
        return null;
    }
}
