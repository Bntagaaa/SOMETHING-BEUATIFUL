package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentManager;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
class z {

    /* renamed from: a, reason: collision with root package name */
    public final CopyOnWriteArrayList f1774a = new CopyOnWriteArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final FragmentManager f1775b;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final FragmentManager.FragmentLifecycleCallbacks f1776a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f1777b;

        public a(FragmentManager.FragmentLifecycleCallbacks fragmentLifecycleCallbacks, boolean z) {
            this.f1776a = fragmentLifecycleCallbacks;
            this.f1777b = z;
        }
    }

    public z(FragmentManager fragmentManager) {
        this.f1775b = fragmentManager;
    }

    public void registerFragmentLifecycleCallbacks(@NonNull FragmentManager.FragmentLifecycleCallbacks fragmentLifecycleCallbacks, boolean z) {
        this.f1774a.add(new a(fragmentLifecycleCallbacks, z));
    }

    public void unregisterFragmentLifecycleCallbacks(@NonNull FragmentManager.FragmentLifecycleCallbacks fragmentLifecycleCallbacks) {
        synchronized (this.f1774a) {
            try {
                int size = this.f1774a.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        break;
                    }
                    if (((a) this.f1774a.get(i)).f1776a == fragmentLifecycleCallbacks) {
                        this.f1774a.remove(i);
                        break;
                    }
                    i++;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(Fragment fragment, boolean z) {
        FragmentManager fragmentManager = this.f1775b;
        Context context = fragmentManager.r.f1620b;
        Fragment fragment2 = fragmentManager.t;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().o.b(fragment, true);
        }
        Iterator it = this.f1774a.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z || aVar.f1777b) {
                aVar.f1776a.onFragmentAttached(fragmentManager, fragment, context);
            }
        }
    }

    public final void g(Fragment fragment, boolean z) {
        FragmentManager fragmentManager = this.f1775b;
        Context context = fragmentManager.r.f1620b;
        Fragment fragment2 = fragmentManager.t;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().o.g(fragment, true);
        }
        Iterator it = this.f1774a.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z || aVar.f1777b) {
                aVar.f1776a.onFragmentPreAttached(fragmentManager, fragment, context);
            }
        }
    }

    public final void a(Fragment fragment, Bundle bundle, boolean z) {
        FragmentManager fragmentManager = this.f1775b;
        Fragment fragment2 = fragmentManager.t;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().o.a(fragment, bundle, true);
        }
        Iterator it = this.f1774a.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z || aVar.f1777b) {
                aVar.f1776a.onFragmentActivityCreated(fragmentManager, fragment, bundle);
            }
        }
    }

    public final void c(Fragment fragment, Bundle bundle, boolean z) {
        FragmentManager fragmentManager = this.f1775b;
        Fragment fragment2 = fragmentManager.t;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().o.c(fragment, bundle, true);
        }
        Iterator it = this.f1774a.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z || aVar.f1777b) {
                aVar.f1776a.onFragmentCreated(fragmentManager, fragment, bundle);
            }
        }
    }

    public final void d(Fragment fragment, boolean z) {
        FragmentManager fragmentManager = this.f1775b;
        Fragment fragment2 = fragmentManager.t;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().o.d(fragment, true);
        }
        Iterator it = this.f1774a.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z || aVar.f1777b) {
                aVar.f1776a.onFragmentDestroyed(fragmentManager, fragment);
            }
        }
    }

    public final void e(Fragment fragment, boolean z) {
        FragmentManager fragmentManager = this.f1775b;
        Fragment fragment2 = fragmentManager.t;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().o.e(fragment, true);
        }
        Iterator it = this.f1774a.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z || aVar.f1777b) {
                aVar.f1776a.onFragmentDetached(fragmentManager, fragment);
            }
        }
    }

    public final void f(Fragment fragment, boolean z) {
        FragmentManager fragmentManager = this.f1775b;
        Fragment fragment2 = fragmentManager.t;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().o.f(fragment, true);
        }
        Iterator it = this.f1774a.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z || aVar.f1777b) {
                aVar.f1776a.onFragmentPaused(fragmentManager, fragment);
            }
        }
    }

    public final void h(Fragment fragment, Bundle bundle, boolean z) {
        FragmentManager fragmentManager = this.f1775b;
        Fragment fragment2 = fragmentManager.t;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().o.h(fragment, bundle, true);
        }
        Iterator it = this.f1774a.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z || aVar.f1777b) {
                aVar.f1776a.onFragmentPreCreated(fragmentManager, fragment, bundle);
            }
        }
    }

    public final void i(Fragment fragment, boolean z) {
        FragmentManager fragmentManager = this.f1775b;
        Fragment fragment2 = fragmentManager.t;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().o.i(fragment, true);
        }
        Iterator it = this.f1774a.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z || aVar.f1777b) {
                aVar.f1776a.onFragmentResumed(fragmentManager, fragment);
            }
        }
    }

    public final void j(Fragment fragment, Bundle bundle, boolean z) {
        FragmentManager fragmentManager = this.f1775b;
        Fragment fragment2 = fragmentManager.t;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().o.j(fragment, bundle, true);
        }
        Iterator it = this.f1774a.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z || aVar.f1777b) {
                aVar.f1776a.onFragmentSaveInstanceState(fragmentManager, fragment, bundle);
            }
        }
    }

    public final void k(Fragment fragment, boolean z) {
        FragmentManager fragmentManager = this.f1775b;
        Fragment fragment2 = fragmentManager.t;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().o.k(fragment, true);
        }
        Iterator it = this.f1774a.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z || aVar.f1777b) {
                aVar.f1776a.onFragmentStarted(fragmentManager, fragment);
            }
        }
    }

    public final void l(Fragment fragment, boolean z) {
        FragmentManager fragmentManager = this.f1775b;
        Fragment fragment2 = fragmentManager.t;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().o.l(fragment, true);
        }
        Iterator it = this.f1774a.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z || aVar.f1777b) {
                aVar.f1776a.onFragmentStopped(fragmentManager, fragment);
            }
        }
    }

    public final void m(Fragment fragment, View view, Bundle bundle, boolean z) {
        FragmentManager fragmentManager = this.f1775b;
        Fragment fragment2 = fragmentManager.t;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().o.m(fragment, view, bundle, true);
        }
        Iterator it = this.f1774a.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z || aVar.f1777b) {
                aVar.f1776a.onFragmentViewCreated(fragmentManager, fragment, view, bundle);
            }
        }
    }

    public final void n(Fragment fragment, boolean z) {
        FragmentManager fragmentManager = this.f1775b;
        Fragment fragment2 = fragmentManager.t;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().o.n(fragment, true);
        }
        Iterator it = this.f1774a.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z || aVar.f1777b) {
                aVar.f1776a.onFragmentViewDestroyed(fragmentManager, fragment);
            }
        }
    }
}
