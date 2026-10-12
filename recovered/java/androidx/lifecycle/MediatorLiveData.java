package androidx.lifecycle;

import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.internal.SafeIterableMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class MediatorLiveData<T> extends MutableLiveData<T> {
    public final SafeIterableMap l;

    public MediatorLiveData() {
        this.l = new SafeIterableMap();
    }

    public MediatorLiveData(T t) {
        super(t);
        this.l = new SafeIterableMap();
    }

    @MainThread
    public <S> void addSource(@NonNull LiveData<S> liveData, @NonNull Observer<? super S> observer) {
        if (liveData == null) {
            throw new NullPointerException("source cannot be null");
        }
        a aVar = new a(liveData, observer);
        a aVar2 = (a) this.l.putIfAbsent(liveData, aVar);
        if (aVar2 != null && aVar2.f1840b != observer) {
            throw new IllegalArgumentException("This source was already added with the different observer");
        }
        if (aVar2 == null && hasActiveObservers()) {
            liveData.observeForever(aVar);
        }
    }

    @MainThread
    public <S> void removeSource(@NonNull LiveData<S> liveData) {
        a aVar = (a) this.l.remove(liveData);
        if (aVar != null) {
            aVar.f1839a.removeObserver(aVar);
        }
    }

    @Override // androidx.lifecycle.LiveData
    @CallSuper
    public void onActive() {
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            a aVar = (a) ((Map.Entry) it.next()).getValue();
            aVar.f1839a.observeForever(aVar);
        }
    }

    @Override // androidx.lifecycle.LiveData
    @CallSuper
    public void onInactive() {
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            a aVar = (a) ((Map.Entry) it.next()).getValue();
            aVar.f1839a.removeObserver(aVar);
        }
    }

    public static class a<V> implements Observer<V> {

        /* renamed from: a, reason: collision with root package name */
        public final LiveData f1839a;

        /* renamed from: b, reason: collision with root package name */
        public final Observer f1840b;
        public int c = -1;

        public a(LiveData liveData, Observer observer) {
            this.f1839a = liveData;
            this.f1840b = observer;
        }

        @Override // androidx.lifecycle.Observer
        public void onChanged(@Nullable V v) {
            int i = this.c;
            int i2 = this.f1839a.f1830g;
            if (i != i2) {
                this.c = i2;
                this.f1840b.onChanged(v);
            }
        }
    }
}
