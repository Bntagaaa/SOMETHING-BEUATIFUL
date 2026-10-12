package androidx.core.view;

import android.annotation.SuppressLint;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class MenuHostHelper {

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f1299a;

    /* renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList f1300b = new CopyOnWriteArrayList();
    public final HashMap c = new HashMap();

    public MenuHostHelper(@NonNull Runnable runnable) {
        this.f1299a = runnable;
    }

    public void onPrepareMenu(@NonNull Menu menu) {
        Iterator it = this.f1300b.iterator();
        while (it.hasNext()) {
            ((MenuProvider) it.next()).onPrepareMenu(menu);
        }
    }

    public void onCreateMenu(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
        Iterator it = this.f1300b.iterator();
        while (it.hasNext()) {
            ((MenuProvider) it.next()).onCreateMenu(menu, menuInflater);
        }
    }

    public boolean onMenuItemSelected(@NonNull MenuItem menuItem) {
        Iterator it = this.f1300b.iterator();
        while (it.hasNext()) {
            if (((MenuProvider) it.next()).onMenuItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void onMenuClosed(@NonNull Menu menu) {
        Iterator it = this.f1300b.iterator();
        while (it.hasNext()) {
            ((MenuProvider) it.next()).onMenuClosed(menu);
        }
    }

    public void addMenuProvider(@NonNull MenuProvider menuProvider) {
        this.f1300b.add(menuProvider);
        this.f1299a.run();
    }

    public void addMenuProvider(@NonNull final MenuProvider menuProvider, @NonNull LifecycleOwner lifecycleOwner) {
        addMenuProvider(menuProvider);
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        HashMap map = this.c;
        a aVar = (a) map.remove(menuProvider);
        if (aVar != null) {
            aVar.f1301a.removeObserver(aVar.f1302b);
            aVar.f1302b = null;
        }
        map.put(menuProvider, new a(lifecycle, new LifecycleEventObserver() { // from class: androidx.core.view.f
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                MenuHostHelper menuHostHelper = this.f1398a;
                menuHostHelper.getClass();
                if (event == Lifecycle.Event.ON_DESTROY) {
                    menuHostHelper.removeMenuProvider(menuProvider);
                }
            }
        }));
    }

    @SuppressLint({"LambdaLast"})
    public void addMenuProvider(@NonNull final MenuProvider menuProvider, @NonNull LifecycleOwner lifecycleOwner, @NonNull final Lifecycle.State state) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        HashMap map = this.c;
        a aVar = (a) map.remove(menuProvider);
        if (aVar != null) {
            aVar.f1301a.removeObserver(aVar.f1302b);
            aVar.f1302b = null;
        }
        map.put(menuProvider, new a(lifecycle, new LifecycleEventObserver() { // from class: androidx.core.view.e
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                MenuHostHelper menuHostHelper = this.f1396a;
                menuHostHelper.getClass();
                Lifecycle.State state2 = state;
                Lifecycle.Event eventUpTo = Lifecycle.Event.upTo(state2);
                MenuProvider menuProvider2 = menuProvider;
                if (event == eventUpTo) {
                    menuHostHelper.addMenuProvider(menuProvider2);
                    return;
                }
                if (event == Lifecycle.Event.ON_DESTROY) {
                    menuHostHelper.removeMenuProvider(menuProvider2);
                } else if (event == Lifecycle.Event.downFrom(state2)) {
                    menuHostHelper.f1300b.remove(menuProvider2);
                    menuHostHelper.f1299a.run();
                }
            }
        }));
    }

    public void removeMenuProvider(@NonNull MenuProvider menuProvider) {
        this.f1300b.remove(menuProvider);
        a aVar = (a) this.c.remove(menuProvider);
        if (aVar != null) {
            aVar.f1301a.removeObserver(aVar.f1302b);
            aVar.f1302b = null;
        }
        this.f1299a.run();
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final Lifecycle f1301a;

        /* renamed from: b, reason: collision with root package name */
        public LifecycleEventObserver f1302b;

        public a(Lifecycle lifecycle, LifecycleEventObserver lifecycleEventObserver) {
            this.f1301a = lifecycle;
            this.f1302b = lifecycleEventObserver;
            lifecycle.addObserver(lifecycleEventObserver);
        }
    }
}
