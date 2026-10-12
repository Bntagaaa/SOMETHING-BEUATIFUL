package androidx.fragment.app;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class h0 extends ViewModel {
    public static final ViewModelProvider.Factory k = new a();

    /* renamed from: g, reason: collision with root package name */
    public final boolean f1698g;
    public final HashMap d = new HashMap();
    public final HashMap e = new HashMap();
    public final HashMap f = new HashMap();
    public boolean h = false;
    public boolean i = false;
    public boolean j = false;

    public class a implements ViewModelProvider.Factory {
        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public final /* synthetic */ ViewModel create(Class cls, CreationExtras creationExtras) {
            return androidx.lifecycle.j.b(this, cls, creationExtras);
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        @NonNull
        public <T extends ViewModel> T create(@NonNull Class<T> cls) {
            return new h0(true);
        }
    }

    public h0(boolean z) {
        this.f1698g = z;
    }

    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        if (FragmentManager.D(3)) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.h = true;
    }

    public final void c(Fragment fragment) {
        if (this.j) {
            if (FragmentManager.D(2)) {
                Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
                return;
            }
            return;
        }
        HashMap map = this.d;
        if (map.containsKey(fragment.f)) {
            return;
        }
        map.put(fragment.f, fragment);
        if (FragmentManager.D(2)) {
            Log.v("FragmentManager", "Updating retained Fragments: Added " + fragment);
        }
    }

    public final void e(Fragment fragment) {
        if (this.j) {
            if (FragmentManager.D(2)) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
            }
        } else {
            if (this.d.remove(fragment.f) == null || !FragmentManager.D(2)) {
                return;
            }
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + fragment);
        }
    }

    public final void f(FragmentManagerNonConfig fragmentManagerNonConfig) {
        HashMap map = this.d;
        map.clear();
        HashMap map2 = this.e;
        map2.clear();
        HashMap map3 = this.f;
        map3.clear();
        if (fragmentManagerNonConfig != null) {
            List<Fragment> list = fragmentManagerNonConfig.f1637a;
            if (list != null) {
                for (Fragment fragment : list) {
                    if (fragment != null) {
                        map.put(fragment.f, fragment);
                    }
                }
            }
            HashMap map4 = fragmentManagerNonConfig.f1638b;
            if (map4 != null) {
                for (Map.Entry entry : map4.entrySet()) {
                    h0 h0Var = new h0(this.f1698g);
                    h0Var.f((FragmentManagerNonConfig) entry.getValue());
                    map2.put(entry.getKey(), h0Var);
                }
            }
            HashMap map5 = fragmentManagerNonConfig.c;
            if (map5 != null) {
                map3.putAll(map5);
            }
        }
        this.i = false;
    }

    public final FragmentManagerNonConfig d() {
        HashMap map = this.d;
        boolean zIsEmpty = map.isEmpty();
        HashMap map2 = this.e;
        HashMap map3 = this.f;
        if (zIsEmpty && map2.isEmpty() && map3.isEmpty()) {
            return null;
        }
        HashMap map4 = new HashMap();
        for (Map.Entry entry : map2.entrySet()) {
            FragmentManagerNonConfig fragmentManagerNonConfigD = ((h0) entry.getValue()).d();
            if (fragmentManagerNonConfigD != null) {
                map4.put(entry.getKey(), fragmentManagerNonConfigD);
            }
        }
        this.i = true;
        if (map.isEmpty() && map4.isEmpty() && map3.isEmpty()) {
            return null;
        }
        return new FragmentManagerNonConfig(new ArrayList(map.values()), map4, new HashMap(map3));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && h0.class == obj.getClass()) {
            h0 h0Var = (h0) obj;
            if (this.d.equals(h0Var.d) && this.e.equals(h0Var.e) && this.f.equals(h0Var.f)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.f.hashCode() + ((this.e.hashCode() + (this.d.hashCode() * 31)) * 31);
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator it = this.d.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator it2 = this.e.keySet().iterator();
        while (it2.hasNext()) {
            sb.append((String) it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator it3 = this.f.keySet().iterator();
        while (it3.hasNext()) {
            sb.append((String) it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
