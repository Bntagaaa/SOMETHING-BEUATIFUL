package androidx.fragment.app;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import java.io.PrintWriter;
import java.util.ArrayList;

/* loaded from: classes.dex */
final class a extends FragmentTransaction implements FragmentManager.BackStackEntry, FragmentManager.j {
    public final FragmentManager t;
    public boolean u;
    public int v;

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.v >= 0) {
            sb.append(" #");
            sb.append(this.v);
        }
        if (this.k != null) {
            sb.append(" ");
            sb.append(this.k);
        }
        sb.append("}");
        return sb.toString();
    }

    public void dump(String str, PrintWriter printWriter) {
        dump(str, printWriter, true);
    }

    public void dump(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.k);
            printWriter.print(" mIndex=");
            printWriter.print(this.v);
            printWriter.print(" mCommitted=");
            printWriter.println(this.u);
            if (this.h != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.h));
            }
            if (this.d != 0 || this.e != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.d));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.e));
            }
            if (this.f != 0 || this.f1653g != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f1653g));
            }
            if (this.l != 0 || this.m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.l));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.m);
            }
            if (this.n != 0 || this.o != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.n));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.o);
            }
        }
        ArrayList arrayList = this.c;
        if (arrayList.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            FragmentTransaction.a aVar = (FragmentTransaction.a) arrayList.get(i);
            switch (aVar.f1654a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + aVar.f1654a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(aVar.f1655b);
            if (z) {
                if (aVar.c != 0 || aVar.d != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.c));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.d));
                }
                if (aVar.e != 0 || aVar.f != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.e));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f));
                }
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public a(FragmentManager fragmentManager) {
        FragmentFactory fragmentFactory = fragmentManager.getFragmentFactory();
        FragmentHostCallback fragmentHostCallback = fragmentManager.r;
        super(fragmentFactory, fragmentHostCallback != null ? fragmentHostCallback.f1620b.getClassLoader() : null);
        this.v = -1;
        this.t = fragmentManager;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public int getId() {
        return this.v;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public int getBreadCrumbTitleRes() {
        return this.l;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    public int getBreadCrumbShortTitleRes() {
        return this.n;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    @Nullable
    public CharSequence getBreadCrumbTitle() {
        int i = this.l;
        if (i != 0) {
            return this.t.r.f1620b.getText(i);
        }
        return this.m;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    @Nullable
    public CharSequence getBreadCrumbShortTitle() {
        int i = this.n;
        if (i != 0) {
            return this.t.r.f1620b.getText(i);
        }
        return this.o;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public final void c(int i, Fragment fragment, String str, int i2) {
        super.c(i, fragment, str, i2);
        fragment.s = this.t;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction remove(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.s;
        if (fragmentManager != null && fragmentManager != this.t) {
            throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
        }
        return super.remove(fragment);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction hide(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.s;
        if (fragmentManager != null && fragmentManager != this.t) {
            throw new IllegalStateException("Cannot hide Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
        }
        return super.hide(fragment);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction show(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.s;
        if (fragmentManager != null && fragmentManager != this.t) {
            throw new IllegalStateException("Cannot show Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
        }
        return super.show(fragment);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction detach(@NonNull Fragment fragment) {
        FragmentManager fragmentManager = fragment.s;
        if (fragmentManager != null && fragmentManager != this.t) {
            throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
        }
        return super.detach(fragment);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction setPrimaryNavigationFragment(@Nullable Fragment fragment) {
        FragmentManager fragmentManager;
        if (fragment != null && (fragmentManager = fragment.s) != null && fragmentManager != this.t) {
            throw new IllegalStateException("Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
        }
        return super.setPrimaryNavigationFragment(fragment);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    @NonNull
    public FragmentTransaction setMaxLifecycle(@NonNull Fragment fragment, @NonNull Lifecycle.State state) {
        FragmentManager fragmentManager = fragment.s;
        FragmentManager fragmentManager2 = this.t;
        if (fragmentManager != fragmentManager2) {
            throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + fragmentManager2);
        }
        if (state == Lifecycle.State.INITIALIZED && fragment.f1604a > -1) {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + state + " after the Fragment has been created");
        }
        if (state == Lifecycle.State.DESTROYED) {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + state + ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.");
        }
        return super.setMaxLifecycle(fragment, state);
    }

    public final void d(int i) {
        if (this.i) {
            if (FragmentManager.D(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            ArrayList arrayList = this.c;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                FragmentTransaction.a aVar = (FragmentTransaction.a) arrayList.get(i2);
                Fragment fragment = aVar.f1655b;
                if (fragment != null) {
                    fragment.r += i;
                    if (FragmentManager.D(2)) {
                        Log.v("FragmentManager", "Bump nesting of " + aVar.f1655b + " to " + aVar.f1655b.r);
                    }
                }
            }
        }
    }

    public void runOnCommitRunnables() {
        if (this.s != null) {
            for (int i = 0; i < this.s.size(); i++) {
                ((Runnable) this.s.get(i)).run();
            }
            this.s = null;
        }
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public int commit() {
        return e(false);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public int commitAllowingStateLoss() {
        return e(true);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public void commitNow() {
        disallowAddToBackStack();
        this.t.w(this, false);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public void commitNowAllowingStateLoss() {
        disallowAddToBackStack();
        this.t.w(this, true);
    }

    public final int e(boolean z) {
        if (this.u) {
            throw new IllegalStateException("commit already called");
        }
        if (FragmentManager.D(2)) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new y0());
            dump("  ", printWriter);
            printWriter.close();
        }
        this.u = true;
        boolean z2 = this.i;
        FragmentManager fragmentManager = this.t;
        if (z2) {
            this.v = fragmentManager.i.getAndIncrement();
        } else {
            this.v = -1;
        }
        fragmentManager.t(this, z);
        return this.v;
    }

    @Override // androidx.fragment.app.FragmentManager.j
    public boolean generateOps(@NonNull ArrayList<a> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
        if (FragmentManager.D(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.i) {
            return true;
        }
        FragmentManager fragmentManager = this.t;
        if (fragmentManager.d == null) {
            fragmentManager.d = new ArrayList();
        }
        fragmentManager.d.add(this);
        return true;
    }

    public final boolean h(int i) {
        ArrayList arrayList = this.c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = ((FragmentTransaction.a) arrayList.get(i2)).f1655b;
            int i3 = fragment != null ? fragment.x : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    public final boolean i(ArrayList arrayList, int i, int i2) {
        if (i2 != i) {
            ArrayList arrayList2 = this.c;
            int size = arrayList2.size();
            int i3 = -1;
            for (int i4 = 0; i4 < size; i4++) {
                Fragment fragment = ((FragmentTransaction.a) arrayList2.get(i4)).f1655b;
                int i5 = fragment != null ? fragment.x : 0;
                if (i5 != 0 && i5 != i3) {
                    for (int i6 = i; i6 < i2; i6++) {
                        a aVar = (a) arrayList.get(i6);
                        int size2 = aVar.c.size();
                        for (int i7 = 0; i7 < size2; i7++) {
                            Fragment fragment2 = ((FragmentTransaction.a) aVar.c.get(i7)).f1655b;
                            if ((fragment2 != null ? fragment2.x : 0) == i5) {
                                return true;
                            }
                        }
                    }
                    i3 = i5;
                }
            }
        }
        return false;
    }

    public final void f() {
        ArrayList arrayList = this.c;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            FragmentManager fragmentManager = this.t;
            if (i < size) {
                FragmentTransaction.a aVar = (FragmentTransaction.a) arrayList.get(i);
                Fragment fragment = aVar.f1655b;
                if (fragment != null) {
                    if (fragment.K != null) {
                        fragment.c().c = false;
                    }
                    int i2 = this.h;
                    if (fragment.K != null || i2 != 0) {
                        fragment.c();
                        fragment.K.h = i2;
                    }
                    ArrayList arrayList2 = this.p;
                    ArrayList arrayList3 = this.q;
                    fragment.c();
                    Fragment.e eVar = fragment.K;
                    eVar.i = arrayList2;
                    eVar.j = arrayList3;
                }
                switch (aVar.f1654a) {
                    case 1:
                        fragment.o(aVar.c, aVar.d, aVar.e, aVar.f);
                        fragmentManager.S(fragment, false);
                        fragmentManager.b(fragment);
                        break;
                    case 2:
                    default:
                        throw new IllegalArgumentException("Unknown cmd: " + aVar.f1654a);
                    case 3:
                        fragment.o(aVar.c, aVar.d, aVar.e, aVar.f);
                        fragmentManager.N(fragment);
                        break;
                    case 4:
                        fragment.o(aVar.c, aVar.d, aVar.e, aVar.f);
                        fragmentManager.C(fragment);
                        break;
                    case 5:
                        fragment.o(aVar.c, aVar.d, aVar.e, aVar.f);
                        fragmentManager.S(fragment, false);
                        FragmentManager.W(fragment);
                        break;
                    case 6:
                        fragment.o(aVar.c, aVar.d, aVar.e, aVar.f);
                        fragmentManager.j(fragment);
                        break;
                    case 7:
                        fragment.o(aVar.c, aVar.d, aVar.e, aVar.f);
                        fragmentManager.S(fragment, false);
                        fragmentManager.d(fragment);
                        break;
                    case 8:
                        fragmentManager.U(fragment);
                        break;
                    case 9:
                        fragmentManager.U(null);
                        break;
                    case 10:
                        fragmentManager.T(fragment, aVar.h);
                        break;
                }
                if (!this.r && aVar.f1654a != 1 && fragment != null && !FragmentManager.O) {
                    fragmentManager.G(fragment);
                }
                i++;
            } else {
                if (this.r || FragmentManager.O) {
                    return;
                }
                fragmentManager.I(fragmentManager.q, true);
                return;
            }
        }
    }

    public final void g(boolean z) {
        ArrayList arrayList = this.c;
        int size = arrayList.size() - 1;
        while (true) {
            FragmentManager fragmentManager = this.t;
            if (size >= 0) {
                FragmentTransaction.a aVar = (FragmentTransaction.a) arrayList.get(size);
                Fragment fragment = aVar.f1655b;
                if (fragment != null) {
                    if (fragment.K != null) {
                        fragment.c().c = true;
                    }
                    int i = this.h;
                    int i2 = i != 4097 ? i != 4099 ? i != 8194 ? 0 : FragmentTransaction.TRANSIT_FRAGMENT_OPEN : FragmentTransaction.TRANSIT_FRAGMENT_FADE : 8194;
                    if (fragment.K != null || i2 != 0) {
                        fragment.c();
                        fragment.K.h = i2;
                    }
                    ArrayList arrayList2 = this.q;
                    ArrayList arrayList3 = this.p;
                    fragment.c();
                    Fragment.e eVar = fragment.K;
                    eVar.i = arrayList2;
                    eVar.j = arrayList3;
                }
                switch (aVar.f1654a) {
                    case 1:
                        fragment.o(aVar.c, aVar.d, aVar.e, aVar.f);
                        fragmentManager.S(fragment, true);
                        fragmentManager.N(fragment);
                        break;
                    case 2:
                    default:
                        throw new IllegalArgumentException("Unknown cmd: " + aVar.f1654a);
                    case 3:
                        fragment.o(aVar.c, aVar.d, aVar.e, aVar.f);
                        fragmentManager.b(fragment);
                        break;
                    case 4:
                        fragment.o(aVar.c, aVar.d, aVar.e, aVar.f);
                        fragmentManager.getClass();
                        FragmentManager.W(fragment);
                        break;
                    case 5:
                        fragment.o(aVar.c, aVar.d, aVar.e, aVar.f);
                        fragmentManager.S(fragment, true);
                        fragmentManager.C(fragment);
                        break;
                    case 6:
                        fragment.o(aVar.c, aVar.d, aVar.e, aVar.f);
                        fragmentManager.d(fragment);
                        break;
                    case 7:
                        fragment.o(aVar.c, aVar.d, aVar.e, aVar.f);
                        fragmentManager.S(fragment, true);
                        fragmentManager.j(fragment);
                        break;
                    case 8:
                        fragmentManager.U(null);
                        break;
                    case 9:
                        fragmentManager.U(fragment);
                        break;
                    case 10:
                        fragmentManager.T(fragment, aVar.f1656g);
                        break;
                }
                if (!this.r && aVar.f1654a != 3 && fragment != null && !FragmentManager.O) {
                    fragmentManager.G(fragment);
                }
                size--;
            } else {
                if (this.r || !z || FragmentManager.O) {
                    return;
                }
                fragmentManager.I(fragmentManager.q, true);
                return;
            }
        }
    }

    public static boolean j(FragmentTransaction.a aVar) {
        Fragment fragment = aVar.f1655b;
        if (fragment != null && fragment.l && fragment.H != null && !fragment.A && !fragment.z) {
            Fragment.e eVar = fragment.K;
            if (eVar == null ? false : eVar.w) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.fragment.app.FragmentManager.BackStackEntry
    @Nullable
    public String getName() {
        return this.k;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public boolean isEmpty() {
        return this.c.isEmpty();
    }
}
