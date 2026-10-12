package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.IdRes;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.collection.ArraySet;
import androidx.core.os.CancellationSignal;
import androidx.fragment.R;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.s0;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class FragmentManager implements FragmentResultOwner {
    public static boolean N = false;
    public static boolean O = true;
    public static final int POP_BACK_STACK_INCLUSIVE = 1;
    public ActivityResultLauncher A;
    public boolean C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public ArrayList H;
    public ArrayList I;
    public ArrayList J;
    public ArrayList K;
    public h0 L;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1622b;
    public ArrayList d;
    public ArrayList e;

    /* renamed from: g, reason: collision with root package name */
    public OnBackPressedDispatcher f1623g;
    public ArrayList l;
    public FragmentHostCallback r;
    public FragmentContainer s;
    public Fragment t;
    public Fragment u;
    public ActivityResultLauncher y;
    public ActivityResultLauncher z;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f1621a = new ArrayList();
    public final l0 c = new l0();
    public final y f = new y(this);
    public final OnBackPressedCallback h = new a();
    public final AtomicInteger i = new AtomicInteger();
    public final Map j = Collections.synchronizedMap(new HashMap());
    public final Map k = Collections.synchronizedMap(new HashMap());
    public final Map m = Collections.synchronizedMap(new HashMap());
    public final b n = new b();
    public final z o = new z(this);
    public final CopyOnWriteArrayList p = new CopyOnWriteArrayList();
    public int q = -1;
    public FragmentFactory v = null;
    public final FragmentFactory w = new c();
    public final d x = new d();
    public ArrayDeque B = new ArrayDeque();
    public final Runnable M = new e();

    public interface BackStackEntry {
        @Nullable
        @Deprecated
        CharSequence getBreadCrumbShortTitle();

        @StringRes
        @Deprecated
        int getBreadCrumbShortTitleRes();

        @Nullable
        @Deprecated
        CharSequence getBreadCrumbTitle();

        @StringRes
        @Deprecated
        int getBreadCrumbTitleRes();

        int getId();

        @Nullable
        String getName();
    }

    public static abstract class FragmentLifecycleCallbacks {
        @Deprecated
        public void onFragmentActivityCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @Nullable Bundle bundle) {
        }

        public void onFragmentAttached(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull Context context) {
        }

        public void onFragmentCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @Nullable Bundle bundle) {
        }

        public void onFragmentDestroyed(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentDetached(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentPaused(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentPreAttached(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull Context context) {
        }

        public void onFragmentPreCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @Nullable Bundle bundle) {
        }

        public void onFragmentResumed(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentSaveInstanceState(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull Bundle bundle) {
        }

        public void onFragmentStarted(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentStopped(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentViewCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull View view, @Nullable Bundle bundle) {
        }

        public void onFragmentViewDestroyed(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }
    }

    public interface OnBackStackChangedListener {
        @MainThread
        void onBackStackChanged();
    }

    public interface j {
        boolean generateOps(@NonNull ArrayList<androidx.fragment.app.a> arrayList, @NonNull ArrayList<Boolean> arrayList2);
    }

    @FragmentStateManagerControl
    public static void enableNewStateManager(boolean z) {
        O = z;
    }

    @Deprecated
    public static void enableDebugLogging(boolean z) {
        N = z;
    }

    public static boolean D(int i2) {
        return N || Log.isLoggable("FragmentManager", i2);
    }

    public final void K(k0 k0Var) {
        Fragment fragment = k0Var.c;
        if (fragment.I) {
            if (this.f1622b) {
                this.G = true;
                return;
            }
            fragment.I = false;
            if (O) {
                k0Var.k();
            } else {
                H(this.q, fragment);
            }
        }
    }

    public static class i implements FragmentResultListener {

        /* renamed from: a, reason: collision with root package name */
        public final Lifecycle f1631a;

        /* renamed from: b, reason: collision with root package name */
        public final FragmentResultListener f1632b;
        public final LifecycleEventObserver c;

        public i(Lifecycle lifecycle, FragmentResultListener fragmentResultListener, LifecycleEventObserver lifecycleEventObserver) {
            this.f1631a = lifecycle;
            this.f1632b = fragmentResultListener;
            this.c = lifecycleEventObserver;
        }

        public boolean isAtLeast(Lifecycle.State state) {
            return this.f1631a.getD().isAtLeast(state);
        }

        @Override // androidx.fragment.app.FragmentResultListener
        public void onFragmentResult(@NonNull String str, @NonNull Bundle bundle) {
            this.f1632b.onFragmentResult(str, bundle);
        }

        public void removeObserver() {
            this.f1631a.removeObserver(this.c);
        }
    }

    @Nullable
    public Fragment findFragmentById(@IdRes int i2) {
        l0 l0Var = this.c;
        ArrayList arrayList = l0Var.f1712a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Fragment fragment = (Fragment) arrayList.get(size);
            if (fragment != null && fragment.w == i2) {
                return fragment;
            }
        }
        for (k0 k0Var : l0Var.f1713b.values()) {
            if (k0Var != null) {
                Fragment fragment2 = k0Var.c;
                if (fragment2.w == i2) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    @Nullable
    public Fragment findFragmentByTag(@Nullable String str) {
        l0 l0Var = this.c;
        if (str != null) {
            ArrayList arrayList = l0Var.f1712a;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                Fragment fragment = (Fragment) arrayList.get(size);
                if (fragment != null && str.equals(fragment.y)) {
                    return fragment;
                }
            }
        }
        if (str != null) {
            for (k0 k0Var : l0Var.f1713b.values()) {
                if (k0Var != null) {
                    Fragment fragment2 = k0Var.c;
                    if (str.equals(fragment2.y)) {
                        return fragment2;
                    }
                }
            }
            return null;
        }
        l0Var.getClass();
        return null;
    }

    public class a extends OnBackPressedCallback {
        public a() {
            super(false);
        }

        @Override // androidx.activity.OnBackPressedCallback
        public void handleOnBackPressed() {
            FragmentManager fragmentManager = FragmentManager.this;
            fragmentManager.v(true);
            if (fragmentManager.h.isEnabled()) {
                fragmentManager.popBackStackImmediate();
            } else {
                fragmentManager.f1623g.onBackPressed();
            }
        }
    }

    public class b implements s0.a {
        public b() {
        }

        @Override // androidx.fragment.app.s0.a
        public void onComplete(@NonNull Fragment fragment, @NonNull CancellationSignal cancellationSignal) {
            if (cancellationSignal.isCanceled()) {
                return;
            }
            FragmentManager fragmentManager = FragmentManager.this;
            Map map = fragmentManager.m;
            HashSet hashSet = (HashSet) map.get(fragment);
            if (hashSet != null && hashSet.remove(cancellationSignal) && hashSet.isEmpty()) {
                map.remove(fragment);
                if (fragment.f1604a < 5) {
                    fragment.j();
                    fragmentManager.o.n(fragment, false);
                    fragment.G = null;
                    fragment.H = null;
                    fragment.T = null;
                    fragment.U.setValue(null);
                    fragment.o = false;
                    fragmentManager.H(fragmentManager.q, fragment);
                }
            }
        }

        @Override // androidx.fragment.app.s0.a
        public void onStart(@NonNull Fragment fragment, @NonNull CancellationSignal cancellationSignal) {
            Map map = FragmentManager.this.m;
            if (map.get(fragment) == null) {
                map.put(fragment, new HashSet());
            }
            ((HashSet) map.get(fragment)).add(cancellationSignal);
        }
    }

    public class c extends FragmentFactory {
        public c() {
        }

        @Override // androidx.fragment.app.FragmentFactory
        @NonNull
        public Fragment instantiate(@NonNull ClassLoader classLoader, @NonNull String str) {
            FragmentHostCallback fragmentHostCallback = FragmentManager.this.r;
            return fragmentHostCallback.instantiate(fragmentHostCallback.f1620b, str, null);
        }
    }

    public class d implements d1 {
        @Override // androidx.fragment.app.d1
        @NonNull
        public b1 createController(@NonNull ViewGroup viewGroup) {
            return new androidx.fragment.app.c(viewGroup);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FragmentManager.this.v(true);
        }
    }

    public final void X(IllegalStateException illegalStateException) {
        Log.e("FragmentManager", illegalStateException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new y0());
        FragmentHostCallback fragmentHostCallback = this.r;
        if (fragmentHostCallback != null) {
            try {
                fragmentHostCallback.onDump("  ", null, printWriter, new String[0]);
                throw illegalStateException;
            } catch (Exception e2) {
                Log.e("FragmentManager", "Failed dumping state", e2);
                throw illegalStateException;
            }
        }
        try {
            dump("  ", null, printWriter, new String[0]);
            throw illegalStateException;
        } catch (Exception e3) {
            Log.e("FragmentManager", "Failed dumping state", e3);
            throw illegalStateException;
        }
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public FragmentTransaction openTransaction() {
        return beginTransaction();
    }

    @NonNull
    public FragmentTransaction beginTransaction() {
        return new androidx.fragment.app.a(this);
    }

    public boolean executePendingTransactions() {
        boolean zV = v(true);
        z();
        return zV;
    }

    public final void Y() {
        synchronized (this.f1621a) {
            try {
                if (!this.f1621a.isEmpty()) {
                    this.h.setEnabled(true);
                } else {
                    this.h.setEnabled(getBackStackEntryCount() > 0 && F(this.t));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean F(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        FragmentManager fragmentManager = fragment.s;
        return fragment.equals(fragmentManager.getPrimaryNavigationFragment()) && F(fragmentManager.t);
    }

    public void popBackStack() {
        t(new k(null, -1, 0), false);
    }

    public boolean popBackStackImmediate() {
        return L(-1, 0, null);
    }

    public void popBackStack(@Nullable String str, int i2) {
        t(new k(str, -1, i2), false);
    }

    public boolean popBackStackImmediate(@Nullable String str, int i2) {
        return L(-1, i2, str);
    }

    public void popBackStack(int i2, int i3) {
        if (i2 < 0) {
            throw new IllegalArgumentException(_COROUTINE.a.d(i2, "Bad id: "));
        }
        t(new k(null, i2, i3), false);
    }

    public boolean popBackStackImmediate(int i2, int i3) {
        if (i2 >= 0) {
            return L(i2, i3, null);
        }
        throw new IllegalArgumentException(_COROUTINE.a.d(i2, "Bad id: "));
    }

    public final boolean L(int i2, int i3, String str) {
        v(false);
        u(true);
        Fragment fragment = this.u;
        if (fragment != null && i2 < 0 && str == null && fragment.getChildFragmentManager().popBackStackImmediate()) {
            return true;
        }
        boolean zM = M(this.H, this.I, str, i2, i3);
        if (zM) {
            this.f1622b = true;
            try {
                O(this.H, this.I);
            } finally {
                f();
            }
        }
        Y();
        boolean z = this.G;
        l0 l0Var = this.c;
        if (z) {
            this.G = false;
            Iterator it = l0Var.d().iterator();
            while (it.hasNext()) {
                K((k0) it.next());
            }
        }
        l0Var.f1713b.values().removeAll(Collections.singleton(null));
        return zM;
    }

    public int getBackStackEntryCount() {
        ArrayList arrayList = this.d;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    @NonNull
    public BackStackEntry getBackStackEntryAt(int i2) {
        return (BackStackEntry) this.d.get(i2);
    }

    public void addOnBackStackChangedListener(@NonNull OnBackStackChangedListener onBackStackChangedListener) {
        if (this.l == null) {
            this.l = new ArrayList();
        }
        this.l.add(onBackStackChangedListener);
    }

    public void removeOnBackStackChangedListener(@NonNull OnBackStackChangedListener onBackStackChangedListener) {
        ArrayList arrayList = this.l;
        if (arrayList != null) {
            arrayList.remove(onBackStackChangedListener);
        }
    }

    @Override // androidx.fragment.app.FragmentResultOwner
    public final void setFragmentResult(@NonNull String str, @NonNull Bundle bundle) {
        i iVar = (i) this.k.get(str);
        if (iVar != null && iVar.isAtLeast(Lifecycle.State.STARTED)) {
            iVar.onFragmentResult(str, bundle);
        } else {
            this.j.put(str, bundle);
        }
    }

    @Override // androidx.fragment.app.FragmentResultOwner
    public final void clearFragmentResult(@NonNull String str) {
        this.j.remove(str);
    }

    @Override // androidx.fragment.app.FragmentResultOwner
    @SuppressLint({"SyntheticAccessor"})
    public final void setFragmentResultListener(@NonNull String str, @NonNull LifecycleOwner lifecycleOwner, @NonNull FragmentResultListener fragmentResultListener) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (lifecycle.getD() == Lifecycle.State.DESTROYED) {
            return;
        }
        f fVar = new f(str, fragmentResultListener, lifecycle);
        lifecycle.addObserver(fVar);
        i iVar = (i) this.k.put(str, new i(lifecycle, fragmentResultListener, fVar));
        if (iVar != null) {
            iVar.removeObserver();
        }
    }

    public class f implements LifecycleEventObserver {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f1627a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ FragmentResultListener f1628b;
        public final /* synthetic */ Lifecycle c;

        public f(String str, FragmentResultListener fragmentResultListener, Lifecycle lifecycle) {
            this.f1627a = str;
            this.f1628b = fragmentResultListener;
            this.c = lifecycle;
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
            Bundle bundle;
            Lifecycle.Event event2 = Lifecycle.Event.ON_START;
            FragmentManager fragmentManager = FragmentManager.this;
            String str = this.f1627a;
            if (event == event2 && (bundle = (Bundle) fragmentManager.j.get(str)) != null) {
                this.f1628b.onFragmentResult(str, bundle);
                fragmentManager.clearFragmentResult(str);
            }
            if (event == Lifecycle.Event.ON_DESTROY) {
                this.c.removeObserver(this);
                fragmentManager.k.remove(str);
            }
        }
    }

    @Override // androidx.fragment.app.FragmentResultOwner
    public final void clearFragmentResultListener(@NonNull String str) {
        i iVar = (i) this.k.remove(str);
        if (iVar != null) {
            iVar.removeObserver();
        }
    }

    public void putFragment(@NonNull Bundle bundle, @NonNull String str, @NonNull Fragment fragment) {
        if (fragment.s == this) {
            bundle.putString(str, fragment.f);
        } else {
            X(new IllegalStateException(_COROUTINE.a.h("Fragment ", fragment, " is not currently in the FragmentManager")));
            throw null;
        }
    }

    @Nullable
    public Fragment getFragment(@NonNull Bundle bundle, @NonNull String str) {
        String string = bundle.getString(str);
        if (string == null) {
            return null;
        }
        Fragment fragmentB = this.c.b(string);
        if (fragmentB != null) {
            return fragmentB;
        }
        X(new IllegalStateException("Fragment no longer exists for key " + str + ": unique id " + string));
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v6, types: [androidx.fragment.app.Fragment] */
    @NonNull
    public static <F extends Fragment> F findFragment(@NonNull View view) {
        F f2;
        View view2 = view;
        while (true) {
            f2 = null;
            if (view2 == null) {
                break;
            }
            Object tag = view2.getTag(R.id.fragment_container_view_tag);
            F f3 = tag instanceof Fragment ? (Fragment) tag : null;
            if (f3 != null) {
                f2 = f3;
                break;
            }
            Object parent = view2.getParent();
            view2 = parent instanceof View ? (View) parent : null;
        }
        if (f2 != null) {
            return f2;
        }
        throw new IllegalStateException("View " + view + " does not have a Fragment set");
    }

    @NonNull
    public List<Fragment> getFragments() {
        return this.c.f();
    }

    @Nullable
    public Fragment.SavedState saveFragmentInstanceState(@NonNull Fragment fragment) {
        Bundle bundleO;
        k0 k0Var = (k0) this.c.f1713b.get(fragment.f);
        if (k0Var != null) {
            Fragment fragment2 = k0Var.c;
            if (fragment2.equals(fragment)) {
                if (fragment2.f1604a <= -1 || (bundleO = k0Var.o()) == null) {
                    return null;
                }
                return new Fragment.SavedState(bundleO);
            }
        }
        X(new IllegalStateException(_COROUTINE.a.h("Fragment ", fragment, " is not currently in the FragmentManager")));
        throw null;
    }

    public boolean isDestroyed() {
        return this.F;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.t;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.t)));
            sb.append("}");
        } else {
            FragmentHostCallback fragmentHostCallback = this.r;
            if (fragmentHostCallback != null) {
                sb.append(fragmentHostCallback.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.r)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    public void dump(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
        int size;
        int size2;
        String strZ = _COROUTINE.a.z(str, "    ");
        l0 l0Var = this.c;
        l0Var.getClass();
        String str2 = str + "    ";
        HashMap map = l0Var.f1713b;
        if (!map.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (k0 k0Var : map.values()) {
                printWriter.print(str);
                if (k0Var != null) {
                    Fragment fragment = k0Var.c;
                    printWriter.println(fragment);
                    fragment.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        ArrayList arrayList = l0Var.f1712a;
        int size3 = arrayList.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i2 = 0; i2 < size3; i2++) {
                Fragment fragment2 = (Fragment) arrayList.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(fragment2.toString());
            }
        }
        ArrayList arrayList2 = this.e;
        if (arrayList2 != null && (size2 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i3 = 0; i3 < size2; i3++) {
                Fragment fragment3 = (Fragment) this.e.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(fragment3.toString());
            }
        }
        ArrayList arrayList3 = this.d;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i4 = 0; i4 < size; i4++) {
                androidx.fragment.app.a aVar = (androidx.fragment.app.a) this.d.get(i4);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i4);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.dump(strZ, printWriter);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.i.get());
        synchronized (this.f1621a) {
            try {
                int size4 = this.f1621a.size();
                if (size4 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i5 = 0; i5 < size4; i5++) {
                        Object obj = (j) this.f1621a.get(i5);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i5);
                        printWriter.print(": ");
                        printWriter.println(obj);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.r);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.s);
        if (this.t != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.t);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.q);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.D);
        printWriter.print(" mStopped=");
        printWriter.print(this.E);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.F);
        if (this.C) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.C);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void H(int r17, androidx.fragment.app.Fragment r18) {
        /*
            Method dump skipped, instructions count: 479
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.FragmentManager.H(int, androidx.fragment.app.Fragment):void");
    }

    public final void e(Fragment fragment) {
        Map map = this.m;
        HashSet hashSet = (HashSet) map.get(fragment);
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                ((CancellationSignal) it.next()).cancel();
            }
            hashSet.clear();
            fragment.j();
            this.o.n(fragment, false);
            fragment.G = null;
            fragment.H = null;
            fragment.T = null;
            fragment.U.setValue(null);
            fragment.o = false;
            map.remove(fragment);
        }
    }

    public final void S(Fragment fragment, boolean z) {
        ViewGroup viewGroupA = A(fragment);
        if (viewGroupA == null || !(viewGroupA instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) viewGroupA).d = !z;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void G(androidx.fragment.app.Fragment r7) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.FragmentManager.G(androidx.fragment.app.Fragment):void");
    }

    public final void I(int i2, boolean z) {
        FragmentHostCallback fragmentHostCallback;
        HashMap map;
        if (this.r == null && i2 != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z || i2 != this.q) {
            this.q = i2;
            boolean z2 = O;
            l0 l0Var = this.c;
            if (z2) {
                Iterator it = l0Var.f1712a.iterator();
                while (true) {
                    boolean zHasNext = it.hasNext();
                    map = l0Var.f1713b;
                    if (!zHasNext) {
                        break;
                    }
                    k0 k0Var = (k0) map.get(((Fragment) it.next()).f);
                    if (k0Var != null) {
                        k0Var.k();
                    }
                }
                for (k0 k0Var2 : map.values()) {
                    if (k0Var2 != null) {
                        k0Var2.k();
                        Fragment fragment = k0Var2.c;
                        if (fragment.m && !fragment.f()) {
                            l0Var.h(k0Var2);
                        }
                    }
                }
            } else {
                Iterator it2 = l0Var.f().iterator();
                while (it2.hasNext()) {
                    G((Fragment) it2.next());
                }
                Iterator it3 = l0Var.d().iterator();
                while (it3.hasNext()) {
                    k0 k0Var3 = (k0) it3.next();
                    Fragment fragment2 = k0Var3.c;
                    if (!fragment2.M) {
                        G(fragment2);
                    }
                    if (fragment2.m && !fragment2.f()) {
                        l0Var.h(k0Var3);
                    }
                }
            }
            Iterator it4 = l0Var.d().iterator();
            while (it4.hasNext()) {
                K((k0) it4.next());
            }
            if (this.C && (fragmentHostCallback = this.r) != null && this.q == 7) {
                fragmentHostCallback.onSupportInvalidateOptionsMenu();
                this.C = false;
            }
        }
    }

    public final k0 i(Fragment fragment) {
        String str = fragment.f;
        l0 l0Var = this.c;
        k0 k0Var = (k0) l0Var.f1713b.get(str);
        if (k0Var != null) {
            return k0Var;
        }
        k0 k0Var2 = new k0(this.o, l0Var, fragment);
        k0Var2.m(this.r.f1620b.getClassLoader());
        k0Var2.e = this.q;
        return k0Var2;
    }

    public final k0 b(Fragment fragment) {
        if (D(2)) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        k0 k0VarI = i(fragment);
        fragment.s = this;
        l0 l0Var = this.c;
        l0Var.g(k0VarI);
        if (!fragment.A) {
            l0Var.a(fragment);
            fragment.m = false;
            if (fragment.H == null) {
                fragment.N = false;
            }
            if (E(fragment)) {
                this.C = true;
            }
        }
        return k0VarI;
    }

    public final void N(Fragment fragment) {
        if (D(2)) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.r);
        }
        boolean zF = fragment.f();
        if (fragment.A && zF) {
            return;
        }
        l0 l0Var = this.c;
        synchronized (l0Var.f1712a) {
            l0Var.f1712a.remove(fragment);
        }
        fragment.l = false;
        if (E(fragment)) {
            this.C = true;
        }
        fragment.m = true;
        V(fragment);
    }

    public final void C(Fragment fragment) {
        if (D(2)) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (fragment.z) {
            return;
        }
        fragment.z = true;
        fragment.N = true ^ fragment.N;
        V(fragment);
    }

    public static void W(Fragment fragment) {
        if (D(2)) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.z) {
            fragment.z = false;
            fragment.N = !fragment.N;
        }
    }

    public final void j(Fragment fragment) {
        if (D(2)) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (fragment.A) {
            return;
        }
        fragment.A = true;
        if (fragment.l) {
            if (D(2)) {
                Log.v("FragmentManager", "remove from detach: " + fragment);
            }
            l0 l0Var = this.c;
            synchronized (l0Var.f1712a) {
                l0Var.f1712a.remove(fragment);
            }
            fragment.l = false;
            if (E(fragment)) {
                this.C = true;
            }
            V(fragment);
        }
    }

    public final void d(Fragment fragment) {
        if (D(2)) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.A) {
            fragment.A = false;
            if (fragment.l) {
                return;
            }
            this.c.a(fragment);
            if (D(2)) {
                Log.v("FragmentManager", "add from attach: " + fragment);
            }
            if (E(fragment)) {
                this.C = true;
            }
        }
    }

    public boolean isStateSaved() {
        return this.D || this.E;
    }

    public final void t(j jVar, boolean z) {
        if (!z) {
            if (this.r != null) {
                if (isStateSaved()) {
                    throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
                }
            } else {
                if (this.F) {
                    throw new IllegalStateException("FragmentManager has been destroyed");
                }
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
        }
        synchronized (this.f1621a) {
            try {
                if (this.r == null) {
                    if (!z) {
                        throw new IllegalStateException("Activity has been destroyed");
                    }
                } else {
                    this.f1621a.add(jVar);
                    R();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void R() {
        synchronized (this.f1621a) {
            try {
                ArrayList arrayList = this.K;
                boolean z = (arrayList == null || arrayList.isEmpty()) ? false : true;
                boolean z2 = this.f1621a.size() == 1;
                if (z || z2) {
                    this.r.c.removeCallbacks(this.M);
                    this.r.c.post(this.M);
                    Y();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void u(boolean z) {
        if (this.f1622b) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.r == null) {
            if (this.F) {
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            throw new IllegalStateException("FragmentManager has not been attached to a host.");
        }
        if (Looper.myLooper() == this.r.c.getLooper()) {
            if (!z && isStateSaved()) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
            if (this.H == null) {
                this.H = new ArrayList();
                this.I = new ArrayList();
            }
            this.f1622b = true;
            try {
                y(null, null);
                return;
            } finally {
                this.f1622b = false;
            }
        }
        throw new IllegalStateException("Must be called from main thread of fragment host");
    }

    public final void w(androidx.fragment.app.a aVar, boolean z) {
        if (z && (this.r == null || this.F)) {
            return;
        }
        u(z);
        if (aVar.generateOps(this.H, this.I)) {
            this.f1622b = true;
            try {
                O(this.H, this.I);
            } finally {
                f();
            }
        }
        Y();
        boolean z2 = this.G;
        l0 l0Var = this.c;
        if (z2) {
            this.G = false;
            Iterator it = l0Var.d().iterator();
            while (it.hasNext()) {
                K((k0) it.next());
            }
        }
        l0Var.f1713b.values().removeAll(Collections.singleton(null));
    }

    public final void f() {
        this.f1622b = false;
        this.I.clear();
        this.H.clear();
    }

    public final boolean v(boolean z) {
        boolean zGenerateOps;
        u(z);
        boolean z2 = false;
        while (true) {
            ArrayList<androidx.fragment.app.a> arrayList = this.H;
            ArrayList<Boolean> arrayList2 = this.I;
            synchronized (this.f1621a) {
                try {
                    if (this.f1621a.isEmpty()) {
                        zGenerateOps = false;
                    } else {
                        int size = this.f1621a.size();
                        zGenerateOps = false;
                        for (int i2 = 0; i2 < size; i2++) {
                            zGenerateOps |= ((j) this.f1621a.get(i2)).generateOps(arrayList, arrayList2);
                        }
                        this.f1621a.clear();
                        this.r.c.removeCallbacks(this.M);
                    }
                } finally {
                }
            }
            if (!zGenerateOps) {
                break;
            }
            z2 = true;
            this.f1622b = true;
            try {
                O(this.H, this.I);
            } finally {
                f();
            }
        }
        Y();
        if (this.G) {
            this.G = false;
            Iterator it = this.c.d().iterator();
            while (it.hasNext()) {
                K((k0) it.next());
            }
        }
        this.c.f1713b.values().removeAll(Collections.singleton(null));
        return z2;
    }

    public final void y(ArrayList arrayList, ArrayList arrayList2) {
        boolean z;
        int iIndexOf;
        androidx.fragment.app.a aVar;
        int iIndexOf2;
        ArrayList arrayList3 = this.K;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (i2 < size) {
            l lVar = (l) this.K.get(i2);
            if (arrayList != null && !lVar.f1635a && (iIndexOf2 = arrayList.indexOf((aVar = lVar.f1636b))) != -1 && arrayList2 != null && ((Boolean) arrayList2.get(iIndexOf2)).booleanValue()) {
                this.K.remove(i2);
                i2--;
                size--;
                aVar.t.h(aVar, lVar.f1635a, false, false);
            } else {
                boolean zIsReady = lVar.isReady();
                androidx.fragment.app.a aVar2 = lVar.f1636b;
                if (zIsReady || (arrayList != null && aVar2.i(arrayList, 0, arrayList.size()))) {
                    this.K.remove(i2);
                    i2--;
                    size--;
                    if (arrayList == null || (z = lVar.f1635a) || (iIndexOf = arrayList.indexOf(aVar2)) == -1 || arrayList2 == null || !((Boolean) arrayList2.get(iIndexOf)).booleanValue()) {
                        lVar.a();
                    } else {
                        aVar2.t.h(aVar2, z, false, false);
                    }
                }
            }
            i2++;
        }
    }

    public final void O(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        y(arrayList, arrayList2);
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            if (!((androidx.fragment.app.a) arrayList.get(i2)).r) {
                if (i3 != i2) {
                    x(arrayList, arrayList2, i3, i2);
                }
                i3 = i2 + 1;
                if (((Boolean) arrayList2.get(i2)).booleanValue()) {
                    while (i3 < size && ((Boolean) arrayList2.get(i3)).booleanValue() && !((androidx.fragment.app.a) arrayList.get(i3)).r) {
                        i3++;
                    }
                }
                x(arrayList, arrayList2, i2, i3);
                i2 = i3 - 1;
            }
            i2++;
        }
        if (i3 != size) {
            x(arrayList, arrayList2, i3, size);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0146  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void x(java.util.ArrayList r22, java.util.ArrayList r23, int r24, int r25) {
        /*
            Method dump skipped, instructions count: 978
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.FragmentManager.x(java.util.ArrayList, java.util.ArrayList, int, int):void");
    }

    public final void h(androidx.fragment.app.a aVar, boolean z, boolean z2, boolean z3) {
        if (z) {
            aVar.g(z3);
        } else {
            aVar.f();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(aVar);
        arrayList2.add(Boolean.valueOf(z));
        if (z2 && this.q >= 1) {
            s0.l(this.r.f1620b, this.s, arrayList, arrayList2, 0, 1, true, this.n);
        }
        if (z3) {
            I(this.q, true);
        }
        Iterator it = this.c.e().iterator();
        while (it.hasNext()) {
            Fragment fragment = (Fragment) it.next();
            if (fragment != null && fragment.H != null && fragment.M && aVar.h(fragment.x)) {
                float f2 = fragment.O;
                if (f2 > 0.0f) {
                    fragment.H.setAlpha(f2);
                }
                if (z3) {
                    fragment.O = 0.0f;
                } else {
                    fragment.O = -1.0f;
                    fragment.M = false;
                }
            }
        }
    }

    public final void V(Fragment fragment) {
        ViewGroup viewGroupA = A(fragment);
        if (viewGroupA != null) {
            Fragment.e eVar = fragment.K;
            if ((eVar == null ? 0 : eVar.f1614g) + (eVar == null ? 0 : eVar.f) + (eVar == null ? 0 : eVar.e) + (eVar == null ? 0 : eVar.d) > 0) {
                int i2 = R.id.visible_removing_fragment_view_tag;
                if (viewGroupA.getTag(i2) == null) {
                    viewGroupA.setTag(i2, fragment);
                }
                Fragment fragment2 = (Fragment) viewGroupA.getTag(i2);
                Fragment.e eVar2 = fragment.K;
                boolean z = eVar2 != null ? eVar2.c : false;
                if (fragment2.K == null) {
                    return;
                }
                fragment2.c().c = z;
            }
        }
    }

    public final ViewGroup A(Fragment fragment) {
        ViewGroup viewGroup = fragment.G;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.x <= 0 || !this.s.onHasView()) {
            return null;
        }
        View viewOnFindViewById = this.s.onFindViewById(fragment.x);
        if (viewOnFindViewById instanceof ViewGroup) {
            return (ViewGroup) viewOnFindViewById;
        }
        return null;
    }

    public final void a(ArraySet arraySet) {
        int i2 = this.q;
        if (i2 < 1) {
            return;
        }
        int iMin = Math.min(i2, 5);
        for (Fragment fragment : this.c.f()) {
            if (fragment.f1604a < iMin) {
                H(iMin, fragment);
                if (fragment.H != null && !fragment.z && fragment.M) {
                    arraySet.add(fragment);
                }
            }
        }
    }

    public final void z() {
        if (O) {
            Iterator it = g().iterator();
            while (it.hasNext()) {
                b1 b1Var = (b1) it.next();
                if (b1Var.e) {
                    b1Var.e = false;
                    b1Var.c();
                }
            }
            return;
        }
        if (this.K != null) {
            while (!this.K.isEmpty()) {
                ((l) this.K.remove(0)).a();
            }
        }
    }

    public final void s() {
        if (O) {
            Iterator it = g().iterator();
            while (it.hasNext()) {
                ((b1) it.next()).e();
            }
            return;
        }
        Map map = this.m;
        if (map.isEmpty()) {
            return;
        }
        for (Fragment fragment : map.keySet()) {
            e(fragment);
            H(this.q, fragment);
        }
    }

    public final HashSet g() {
        HashSet hashSet = new HashSet();
        Iterator it = this.c.d().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = ((k0) it.next()).c.G;
            if (viewGroup != null) {
                hashSet.add(b1.g(viewGroup, B()));
            }
        }
        return hashSet;
    }

    public final boolean M(ArrayList arrayList, ArrayList arrayList2, String str, int i2, int i3) {
        int i4;
        ArrayList arrayList3 = this.d;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i2 < 0 && (i3 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.d.remove(size));
            arrayList2.add(Boolean.TRUE);
        } else {
            if (str != null || i2 >= 0) {
                int size2 = arrayList3.size() - 1;
                while (size2 >= 0) {
                    androidx.fragment.app.a aVar = (androidx.fragment.app.a) this.d.get(size2);
                    if ((str != null && str.equals(aVar.getName())) || (i2 >= 0 && i2 == aVar.v)) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    return false;
                }
                if ((i3 & 1) != 0) {
                    while (true) {
                        size2--;
                        if (size2 < 0) {
                            break;
                        }
                        androidx.fragment.app.a aVar2 = (androidx.fragment.app.a) this.d.get(size2);
                        if (str == null || !str.equals(aVar2.getName())) {
                            if (i2 < 0 || i2 != aVar2.v) {
                                break;
                            }
                        }
                    }
                }
                i4 = size2;
            } else {
                i4 = -1;
            }
            if (i4 == this.d.size() - 1) {
                return false;
            }
            for (int size3 = this.d.size() - 1; size3 > i4; size3--) {
                arrayList.add(this.d.remove(size3));
                arrayList2.add(Boolean.TRUE);
            }
        }
        return true;
    }

    public final Parcelable Q() {
        ArrayList arrayList;
        int size;
        z();
        s();
        v(true);
        this.D = true;
        this.L.j = true;
        l0 l0Var = this.c;
        l0Var.getClass();
        HashMap map = l0Var.f1713b;
        ArrayList arrayList2 = new ArrayList(map.size());
        for (k0 k0Var : map.values()) {
            if (k0Var != null) {
                Fragment fragment = k0Var.c;
                i0 i0Var = new i0(fragment);
                if (fragment.f1604a <= -1 || i0Var.m != null) {
                    i0Var.m = fragment.f1605b;
                } else {
                    Bundle bundleO = k0Var.o();
                    i0Var.m = bundleO;
                    if (fragment.i != null) {
                        if (bundleO == null) {
                            i0Var.m = new Bundle();
                        }
                        i0Var.m.putString("android:target_state", fragment.i);
                        int i2 = fragment.j;
                        if (i2 != 0) {
                            i0Var.m.putInt("android:target_req_state", i2);
                        }
                    }
                }
                arrayList2.add(i0Var);
                if (D(2)) {
                    Log.v("FragmentManager", "Saved state of " + fragment + ": " + i0Var.m);
                }
            }
        }
        androidx.fragment.app.b[] bVarArr = null;
        if (arrayList2.isEmpty()) {
            if (D(2)) {
                Log.v("FragmentManager", "saveAllState: no fragments!");
            }
            return null;
        }
        l0 l0Var2 = this.c;
        synchronized (l0Var2.f1712a) {
            try {
                if (l0Var2.f1712a.isEmpty()) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList(l0Var2.f1712a.size());
                    Iterator it = l0Var2.f1712a.iterator();
                    while (it.hasNext()) {
                        Fragment fragment2 = (Fragment) it.next();
                        arrayList.add(fragment2.f);
                        if (D(2)) {
                            Log.v("FragmentManager", "saveAllState: adding fragment (" + fragment2.f + "): " + fragment2);
                        }
                    }
                }
            } finally {
            }
        }
        ArrayList arrayList3 = this.d;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            bVarArr = new androidx.fragment.app.b[size];
            for (int i3 = 0; i3 < size; i3++) {
                bVarArr[i3] = new androidx.fragment.app.b((androidx.fragment.app.a) this.d.get(i3));
                if (D(2)) {
                    StringBuilder sbO = _COROUTINE.a.o(i3, "saveAllState: adding back stack #", ": ");
                    sbO.append(this.d.get(i3));
                    Log.v("FragmentManager", sbO.toString());
                }
            }
        }
        g0 g0Var = new g0();
        g0Var.f1693a = arrayList2;
        g0Var.f1694b = arrayList;
        g0Var.c = bVarArr;
        g0Var.d = this.i.get();
        Fragment fragment3 = this.u;
        if (fragment3 != null) {
            g0Var.e = fragment3.f;
        }
        g0Var.f.addAll(this.j.keySet());
        g0Var.f1695g.addAll(this.j.values());
        g0Var.h = new ArrayList(this.B);
        return g0Var;
    }

    public final void P(Parcelable parcelable) {
        z zVar;
        int i2;
        k0 k0Var;
        if (parcelable == null) {
            return;
        }
        g0 g0Var = (g0) parcelable;
        if (g0Var.f1693a == null) {
            return;
        }
        l0 l0Var = this.c;
        l0Var.f1713b.clear();
        Iterator it = g0Var.f1693a.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            zVar = this.o;
            if (!zHasNext) {
                break;
            }
            i0 i0Var = (i0) it.next();
            if (i0Var != null) {
                Fragment fragment = (Fragment) this.L.d.get(i0Var.f1702b);
                if (fragment != null) {
                    if (D(2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + fragment);
                    }
                    k0Var = new k0(zVar, l0Var, fragment, i0Var);
                } else {
                    k0Var = new k0(this.o, this.c, this.r.f1620b.getClassLoader(), getFragmentFactory(), i0Var);
                }
                Fragment fragment2 = k0Var.c;
                fragment2.s = this;
                if (D(2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + fragment2.f + "): " + fragment2);
                }
                k0Var.m(this.r.f1620b.getClassLoader());
                l0Var.g(k0Var);
                k0Var.e = this.q;
            }
        }
        h0 h0Var = this.L;
        h0Var.getClass();
        Iterator it2 = new ArrayList(h0Var.d.values()).iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Fragment fragment3 = (Fragment) it2.next();
            if ((l0Var.f1713b.get(fragment3.f) != null ? 1 : 0) == 0) {
                if (D(2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + fragment3 + " that was not found in the set of active Fragments " + g0Var.f1693a);
                }
                this.L.e(fragment3);
                fragment3.s = this;
                k0 k0Var2 = new k0(zVar, l0Var, fragment3);
                k0Var2.e = 1;
                k0Var2.k();
                fragment3.m = true;
                k0Var2.k();
            }
        }
        ArrayList<String> arrayList = g0Var.f1694b;
        l0Var.f1712a.clear();
        if (arrayList != null) {
            for (String str : arrayList) {
                Fragment fragmentB = l0Var.b(str);
                if (fragmentB == null) {
                    throw new IllegalStateException(_COROUTINE.a.A("No instantiated fragment for (", str, ")"));
                }
                if (D(2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str + "): " + fragmentB);
                }
                l0Var.a(fragmentB);
            }
        }
        if (g0Var.c != null) {
            this.d = new ArrayList(g0Var.c.length);
            int i3 = 0;
            while (true) {
                androidx.fragment.app.b[] bVarArr = g0Var.c;
                if (i3 >= bVarArr.length) {
                    break;
                }
                androidx.fragment.app.a aVarInstantiate = bVarArr[i3].instantiate(this);
                if (D(2)) {
                    StringBuilder sbO = _COROUTINE.a.o(i3, "restoreAllState: back stack #", " (index ");
                    sbO.append(aVarInstantiate.v);
                    sbO.append("): ");
                    sbO.append(aVarInstantiate);
                    Log.v("FragmentManager", sbO.toString());
                    PrintWriter printWriter = new PrintWriter(new y0());
                    aVarInstantiate.dump("  ", printWriter, false);
                    printWriter.close();
                }
                this.d.add(aVarInstantiate);
                i3++;
            }
        } else {
            this.d = null;
        }
        this.i.set(g0Var.d);
        String str2 = g0Var.e;
        if (str2 != null) {
            Fragment fragmentB2 = l0Var.b(str2);
            this.u = fragmentB2;
            p(fragmentB2);
        }
        ArrayList arrayList2 = g0Var.f;
        if (arrayList2 != null) {
            while (i2 < arrayList2.size()) {
                Bundle bundle = (Bundle) g0Var.f1695g.get(i2);
                bundle.setClassLoader(this.r.f1620b.getClassLoader());
                this.j.put(arrayList2.get(i2), bundle);
                i2++;
            }
        }
        this.B = new ArrayDeque(g0Var.h);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c(FragmentHostCallback fragmentHostCallback, FragmentContainer fragmentContainer, Fragment fragment) {
        if (this.r != null) {
            throw new IllegalStateException("Already attached");
        }
        this.r = fragmentHostCallback;
        this.s = fragmentContainer;
        this.t = fragment;
        if (fragment != null) {
            addFragmentOnAttachListener(new d0(fragment));
        } else if (fragmentHostCallback instanceof FragmentOnAttachListener) {
            addFragmentOnAttachListener((FragmentOnAttachListener) fragmentHostCallback);
        }
        if (this.t != null) {
            Y();
        }
        if (fragmentHostCallback instanceof OnBackPressedDispatcherOwner) {
            OnBackPressedDispatcherOwner onBackPressedDispatcherOwner = (OnBackPressedDispatcherOwner) fragmentHostCallback;
            OnBackPressedDispatcher onBackPressedDispatcher = onBackPressedDispatcherOwner.getF31b();
            this.f1623g = onBackPressedDispatcher;
            LifecycleOwner lifecycleOwner = onBackPressedDispatcherOwner;
            if (fragment != null) {
                lifecycleOwner = fragment;
            }
            onBackPressedDispatcher.addCallback(lifecycleOwner, this.h);
        }
        if (fragment != null) {
            h0 h0Var = fragment.s.L;
            HashMap map = h0Var.e;
            h0 h0Var2 = (h0) map.get(fragment.f);
            if (h0Var2 == null) {
                h0Var2 = new h0(h0Var.f1698g);
                map.put(fragment.f, h0Var2);
            }
            this.L = h0Var2;
        } else if (fragmentHostCallback instanceof ViewModelStoreOwner) {
            this.L = (h0) new ViewModelProvider(((ViewModelStoreOwner) fragmentHostCallback).getViewModelStore(), h0.k).get(h0.class);
        } else {
            this.L = new h0(false);
        }
        this.L.j = isStateSaved();
        this.c.c = this.L;
        Object obj = this.r;
        if (obj instanceof ActivityResultRegistryOwner) {
            ActivityResultRegistry activityResultRegistry = ((ActivityResultRegistryOwner) obj).getActivityResultRegistry();
            String strI = _COROUTINE.a.i("FragmentManager:", fragment != null ? _COROUTINE.a.m(new StringBuilder(), fragment.f, ":") : "");
            this.y = activityResultRegistry.register(_COROUTINE.a.z(strI, "StartActivityForResult"), new ActivityResultContracts.StartActivityForResult(), new e0(this));
            this.z = activityResultRegistry.register(_COROUTINE.a.z(strI, "StartIntentSenderForResult"), new g(), new a0(this));
            this.A = activityResultRegistry.register(_COROUTINE.a.z(strI, "RequestPermissions"), new ActivityResultContracts.RequestMultiplePermissions(), new b0(this));
        }
    }

    public final void J() {
        if (this.r == null) {
            return;
        }
        this.D = false;
        this.E = false;
        this.L.j = false;
        for (Fragment fragment : this.c.f()) {
            if (fragment != null) {
                fragment.u.J();
            }
        }
    }

    public final void m() {
        this.F = true;
        v(true);
        s();
        r(-1);
        this.r = null;
        this.s = null;
        this.t = null;
        if (this.f1623g != null) {
            this.h.remove();
            this.f1623g = null;
        }
        ActivityResultLauncher activityResultLauncher = this.y;
        if (activityResultLauncher != null) {
            activityResultLauncher.unregister();
            this.z.unregister();
            this.A.unregister();
        }
    }

    public final void r(int i2) {
        try {
            this.f1622b = true;
            for (k0 k0Var : this.c.f1713b.values()) {
                if (k0Var != null) {
                    k0Var.e = i2;
                }
            }
            I(i2, false);
            if (O) {
                Iterator it = g().iterator();
                while (it.hasNext()) {
                    ((b1) it.next()).e();
                }
            }
            this.f1622b = false;
            v(true);
        } catch (Throwable th) {
            this.f1622b = false;
            throw th;
        }
    }

    public final boolean l(Menu menu, MenuInflater menuInflater) {
        if (this.q < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z = false;
        for (Fragment fragment : this.c.f()) {
            if (fragment != null && fragment.isMenuVisible()) {
                boolean zL = false;
                if (!fragment.z) {
                    if (fragment.D && fragment.E) {
                        fragment.onCreateOptionsMenu(menu, menuInflater);
                        zL = true;
                    }
                    zL |= fragment.u.l(menu, menuInflater);
                }
                if (zL) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(fragment);
                    z = true;
                }
            }
        }
        if (this.e != null) {
            for (int i2 = 0; i2 < this.e.size(); i2++) {
                Fragment fragment2 = (Fragment) this.e.get(i2);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.e = arrayList;
        return z;
    }

    public final boolean q(Menu menu) {
        boolean z = false;
        if (this.q < 1) {
            return false;
        }
        for (Fragment fragment : this.c.f()) {
            if (fragment != null && fragment.isMenuVisible()) {
                boolean zQ = false;
                if (!fragment.z) {
                    if (fragment.D && fragment.E) {
                        fragment.onPrepareOptionsMenu(menu);
                        zQ = true;
                    }
                    zQ |= fragment.u.q(menu);
                }
                if (zQ) {
                    z = true;
                }
            }
        }
        return z;
    }

    public final boolean n(MenuItem menuItem) {
        boolean zN;
        if (this.q < 1) {
            return false;
        }
        for (Fragment fragment : this.c.f()) {
            if (fragment != null) {
                if (fragment.z) {
                    zN = false;
                } else {
                    zN = (fragment.D && fragment.E && fragment.onOptionsItemSelected(menuItem)) ? true : fragment.u.n(menuItem);
                }
                if (zN) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean k(MenuItem menuItem) {
        boolean zK;
        if (this.q < 1) {
            return false;
        }
        for (Fragment fragment : this.c.f()) {
            if (fragment != null) {
                if (fragment.z) {
                    zK = false;
                } else {
                    zK = fragment.onContextItemSelected(menuItem) ? true : fragment.u.k(menuItem);
                }
                if (zK) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void o(Menu menu) {
        if (this.q < 1) {
            return;
        }
        for (Fragment fragment : this.c.f()) {
            if (fragment != null && !fragment.z) {
                if (fragment.D && fragment.E) {
                    fragment.onOptionsMenuClosed(menu);
                }
                fragment.u.o(menu);
            }
        }
    }

    public final void U(Fragment fragment) {
        if (fragment != null) {
            if (!fragment.equals(this.c.b(fragment.f)) || (fragment.t != null && fragment.s != this)) {
                throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
            }
        }
        Fragment fragment2 = this.u;
        this.u = fragment;
        p(fragment2);
        p(this.u);
    }

    public final void p(Fragment fragment) {
        if (fragment != null) {
            if (fragment.equals(this.c.b(fragment.f))) {
                fragment.s.getClass();
                boolean zF = F(fragment);
                Boolean bool = fragment.k;
                if (bool == null || bool.booleanValue() != zF) {
                    fragment.k = Boolean.valueOf(zF);
                    fragment.onPrimaryNavigationFragmentChanged(zF);
                    FragmentManager fragmentManager = fragment.u;
                    fragmentManager.Y();
                    fragmentManager.p(fragmentManager.u);
                }
            }
        }
    }

    @Nullable
    public Fragment getPrimaryNavigationFragment() {
        return this.u;
    }

    public final void T(Fragment fragment, Lifecycle.State state) {
        if (!fragment.equals(this.c.b(fragment.f)) || (fragment.t != null && fragment.s != this)) {
            throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
        }
        fragment.R = state;
    }

    public void setFragmentFactory(@NonNull FragmentFactory fragmentFactory) {
        this.v = fragmentFactory;
    }

    @NonNull
    public FragmentFactory getFragmentFactory() {
        FragmentFactory fragmentFactory = this.v;
        if (fragmentFactory != null) {
            return fragmentFactory;
        }
        Fragment fragment = this.t;
        if (fragment != null) {
            return fragment.s.getFragmentFactory();
        }
        return this.w;
    }

    public final d1 B() {
        Fragment fragment = this.t;
        if (fragment != null) {
            return fragment.s.B();
        }
        return this.x;
    }

    public void registerFragmentLifecycleCallbacks(@NonNull FragmentLifecycleCallbacks fragmentLifecycleCallbacks, boolean z) {
        this.o.registerFragmentLifecycleCallbacks(fragmentLifecycleCallbacks, z);
    }

    public void unregisterFragmentLifecycleCallbacks(@NonNull FragmentLifecycleCallbacks fragmentLifecycleCallbacks) {
        this.o.unregisterFragmentLifecycleCallbacks(fragmentLifecycleCallbacks);
    }

    public void addFragmentOnAttachListener(@NonNull FragmentOnAttachListener fragmentOnAttachListener) {
        this.p.add(fragmentOnAttachListener);
    }

    public void removeFragmentOnAttachListener(@NonNull FragmentOnAttachListener fragmentOnAttachListener) {
        this.p.remove(fragmentOnAttachListener);
    }

    public static boolean E(Fragment fragment) {
        if (fragment.D && fragment.E) {
            return true;
        }
        Iterator it = fragment.u.c.e().iterator();
        boolean zE = false;
        while (it.hasNext()) {
            Fragment fragment2 = (Fragment) it.next();
            if (fragment2 != null) {
                zE = E(fragment2);
            }
            if (zE) {
                return true;
            }
        }
        return false;
    }

    public class k implements j {

        /* renamed from: a, reason: collision with root package name */
        public final String f1633a;

        /* renamed from: b, reason: collision with root package name */
        public final int f1634b;
        public final int c;

        public k(String str, int i, int i2) {
            this.f1633a = str;
            this.f1634b = i;
            this.c = i2;
        }

        @Override // androidx.fragment.app.FragmentManager.j
        public boolean generateOps(@NonNull ArrayList<androidx.fragment.app.a> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
            Fragment fragment = FragmentManager.this.u;
            if (fragment != null && this.f1634b < 0 && this.f1633a == null && fragment.getChildFragmentManager().popBackStackImmediate()) {
                return false;
            }
            return FragmentManager.this.M(arrayList, arrayList2, this.f1633a, this.f1634b, this.c);
        }
    }

    public static class l implements Fragment.g {

        /* renamed from: a, reason: collision with root package name */
        public final boolean f1635a;

        /* renamed from: b, reason: collision with root package name */
        public final androidx.fragment.app.a f1636b;
        public int c;

        public l(androidx.fragment.app.a aVar, boolean z) {
            this.f1635a = z;
            this.f1636b = aVar;
        }

        @Override // androidx.fragment.app.Fragment.g
        public void onStartEnterTransition() {
            int i = this.c - 1;
            this.c = i;
            if (i != 0) {
                return;
            }
            this.f1636b.t.R();
        }

        @Override // androidx.fragment.app.Fragment.g
        public void startListening() {
            this.c++;
        }

        public boolean isReady() {
            return this.c == 0;
        }

        public final void a() {
            boolean z = this.c > 0;
            androidx.fragment.app.a aVar = this.f1636b;
            FragmentManager fragmentManager = aVar.t;
            for (Fragment fragment : fragmentManager.getFragments()) {
                fragment.p(null);
                if (z) {
                    Fragment.e eVar = fragment.K;
                    if (eVar == null ? false : eVar.w) {
                        fragment.startPostponedEnterTransition();
                    }
                }
            }
            fragmentManager.h(aVar, this.f1635a, !z, true);
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    public static class h implements Parcelable {
        public static final Parcelable.Creator<h> CREATOR = new a();

        /* renamed from: a, reason: collision with root package name */
        public String f1629a;

        /* renamed from: b, reason: collision with root package name */
        public int f1630b;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public h(String str, int i) {
            this.f1629a = str;
            this.f1630b = i;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f1629a);
            parcel.writeInt(this.f1630b);
        }

        public class a implements Parcelable.Creator<h> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public h createFromParcel(Parcel parcel) {
                h hVar = new h();
                hVar.f1629a = parcel.readString();
                hVar.f1630b = parcel.readInt();
                return hVar;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public h[] newArray(int i) {
                return new h[i];
            }
        }
    }

    public static class g extends ActivityResultContract<IntentSenderRequest, ActivityResult> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        @NonNull
        public Intent createIntent(@NonNull Context context, IntentSenderRequest intentSenderRequest) {
            Bundle bundleExtra;
            Intent intent = new Intent(ActivityResultContracts.StartIntentSenderForResult.ACTION_INTENT_SENDER_REQUEST);
            Intent fillInIntent = intentSenderRequest.getFillInIntent();
            if (fillInIntent != null && (bundleExtra = fillInIntent.getBundleExtra(ActivityResultContracts.StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE)) != null) {
                intent.putExtra(ActivityResultContracts.StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE, bundleExtra);
                fillInIntent.removeExtra(ActivityResultContracts.StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE);
                if (fillInIntent.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                    intentSenderRequest = new IntentSenderRequest.Builder(intentSenderRequest.getIntentSender()).setFillInIntent(null).setFlags(intentSenderRequest.getFlagsValues(), intentSenderRequest.getFlagsMask()).build();
                }
            }
            intent.putExtra(ActivityResultContracts.StartIntentSenderForResult.EXTRA_INTENT_SENDER_REQUEST, intentSenderRequest);
            if (FragmentManager.D(2)) {
                Log.v("FragmentManager", "CreateIntent created the following intent: " + intent);
            }
            return intent;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        @NonNull
        public ActivityResult parseResult(int i, @Nullable Intent intent) {
            return new ActivityResult(i, intent);
        }
    }
}
