package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.Lifecycle;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class LiveData<T> {
    public static final Object k = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Object f1828a;

    /* renamed from: b, reason: collision with root package name */
    public final SafeIterableMap f1829b;
    public int c;
    public boolean d;
    public volatile Object e;
    public volatile Object f;

    /* renamed from: g, reason: collision with root package name */
    public int f1830g;
    public boolean h;
    public boolean i;
    public final Runnable j;

    public class b extends LiveData<T>.d {
        @Override // androidx.lifecycle.LiveData.d
        public final boolean d() {
            return true;
        }
    }

    public void onActive() {
    }

    public void onInactive() {
    }

    public class a implements Runnable {
        public a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.f1828a) {
                obj = LiveData.this.f;
                LiveData.this.f = LiveData.k;
            }
            LiveData.this.setValue(obj);
        }
    }

    public LiveData(T t) {
        this.f1828a = new Object();
        this.f1829b = new SafeIterableMap();
        this.c = 0;
        this.f = k;
        this.j = new a();
        this.e = t;
        this.f1830g = 0;
    }

    public LiveData() {
        this.f1828a = new Object();
        this.f1829b = new SafeIterableMap();
        this.c = 0;
        Object obj = k;
        this.f = obj;
        this.j = new a();
        this.e = obj;
        this.f1830g = -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(d dVar) {
        if (dVar.f1833b) {
            if (!dVar.d()) {
                dVar.a(false);
                return;
            }
            int i = dVar.c;
            int i2 = this.f1830g;
            if (i >= i2) {
                return;
            }
            dVar.c = i2;
            dVar.f1832a.onChanged(this.e);
        }
    }

    public final void c(d dVar) {
        if (this.h) {
            this.i = true;
            return;
        }
        this.h = true;
        do {
            this.i = false;
            if (dVar != null) {
                b(dVar);
                dVar = null;
            } else {
                SafeIterableMap<K, V>.IteratorWithAdditions iteratorWithAdditions = this.f1829b.iteratorWithAdditions();
                while (iteratorWithAdditions.hasNext()) {
                    b((d) iteratorWithAdditions.next().getValue());
                    if (this.i) {
                        break;
                    }
                }
            }
        } while (this.i);
        this.h = false;
    }

    @MainThread
    public void observe(@NonNull LifecycleOwner lifecycleOwner, @NonNull Observer<? super T> observer) {
        a("observe");
        if (lifecycleOwner.getLifecycle().getCurrentState() == Lifecycle.State.DESTROYED) {
            return;
        }
        c cVar = new c(lifecycleOwner, observer);
        d dVar = (d) this.f1829b.putIfAbsent(observer, cVar);
        if (dVar != null && !dVar.c(lifecycleOwner)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (dVar != null) {
            return;
        }
        lifecycleOwner.getLifecycle().addObserver(cVar);
    }

    @MainThread
    public void observeForever(@NonNull Observer<? super T> observer) {
        a("observeForever");
        b bVar = new b(observer);
        d dVar = (d) this.f1829b.putIfAbsent(observer, bVar);
        if (dVar instanceof c) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (dVar != null) {
            return;
        }
        bVar.a(true);
    }

    @MainThread
    public void removeObserver(@NonNull Observer<? super T> observer) {
        a("removeObserver");
        d dVar = (d) this.f1829b.remove(observer);
        if (dVar == null) {
            return;
        }
        dVar.b();
        dVar.a(false);
    }

    @MainThread
    public void removeObservers(@NonNull LifecycleOwner lifecycleOwner) {
        a("removeObservers");
        Iterator it = this.f1829b.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (((d) entry.getValue()).c(lifecycleOwner)) {
                removeObserver((Observer) entry.getKey());
            }
        }
    }

    public void postValue(T t) {
        boolean z;
        synchronized (this.f1828a) {
            z = this.f == k;
            this.f = t;
        }
        if (z) {
            ArchTaskExecutor.getInstance().postToMainThread(this.j);
        }
    }

    @MainThread
    public void setValue(T t) {
        a("setValue");
        this.f1830g++;
        this.e = t;
        c(null);
    }

    @Nullable
    public T getValue() {
        T t = (T) this.e;
        if (t != k) {
            return t;
        }
        return null;
    }

    public boolean isInitialized() {
        return this.e != k;
    }

    public boolean hasObservers() {
        return this.f1829b.size() > 0;
    }

    public boolean hasActiveObservers() {
        return this.c > 0;
    }

    public class c extends LiveData<T>.d implements LifecycleEventObserver {
        public final LifecycleOwner e;

        public c(LifecycleOwner lifecycleOwner, Observer observer) {
            super(observer);
            this.e = lifecycleOwner;
        }

        @Override // androidx.lifecycle.LiveData.d
        public final boolean d() {
            return this.e.getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.STARTED);
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
            LifecycleOwner lifecycleOwner2 = this.e;
            Lifecycle.State currentState = lifecycleOwner2.getLifecycle().getCurrentState();
            if (currentState == Lifecycle.State.DESTROYED) {
                LiveData.this.removeObserver(this.f1832a);
                return;
            }
            Lifecycle.State state = null;
            while (state != currentState) {
                a(d());
                state = currentState;
                currentState = lifecycleOwner2.getLifecycle().getCurrentState();
            }
        }

        @Override // androidx.lifecycle.LiveData.d
        public final boolean c(LifecycleOwner lifecycleOwner) {
            return this.e == lifecycleOwner;
        }

        @Override // androidx.lifecycle.LiveData.d
        public final void b() {
            this.e.getLifecycle().removeObserver(this);
        }
    }

    public abstract class d {

        /* renamed from: a, reason: collision with root package name */
        public final Observer f1832a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f1833b;
        public int c = -1;

        public void b() {
        }

        public boolean c(LifecycleOwner lifecycleOwner) {
            return false;
        }

        public abstract boolean d();

        public d(Observer observer) {
            this.f1832a = observer;
        }

        public final void a(boolean z) {
            if (z == this.f1833b) {
                return;
            }
            this.f1833b = z;
            int i = z ? 1 : -1;
            LiveData liveData = LiveData.this;
            int i2 = liveData.c;
            liveData.c = i + i2;
            if (!liveData.d) {
                liveData.d = true;
                while (true) {
                    try {
                        int i3 = liveData.c;
                        if (i2 == i3) {
                            break;
                        }
                        boolean z2 = i2 == 0 && i3 > 0;
                        boolean z3 = i2 > 0 && i3 == 0;
                        if (z2) {
                            liveData.onActive();
                        } else if (z3) {
                            liveData.onInactive();
                        }
                        i2 = i3;
                    } catch (Throwable th) {
                        liveData.d = false;
                        throw th;
                    }
                }
                liveData.d = false;
            }
            if (this.f1833b) {
                liveData.c(this);
            }
        }
    }

    public static void a(String str) {
        if (!ArchTaskExecutor.getInstance().isMainThread()) {
            throw new IllegalStateException(_COROUTINE.a.A("Cannot invoke ", str, " on a background thread"));
        }
    }
}
