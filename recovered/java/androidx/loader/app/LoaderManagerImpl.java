package androidx.loader.app;

import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SparseArrayCompat;
import androidx.core.util.DebugUtils;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.j;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.Loader;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

/* loaded from: classes.dex */
class LoaderManagerImpl extends LoaderManager {
    public static boolean c = false;

    /* renamed from: a, reason: collision with root package name */
    public final LifecycleOwner f1907a;

    /* renamed from: b, reason: collision with root package name */
    public final b f1908b;

    public static class LoaderInfo<D> extends MutableLiveData<D> implements Loader.OnLoadCompleteListener<D> {
        public final int l;
        public final Bundle m;
        public final Loader n;
        public LifecycleOwner o;
        public a p;
        public Loader q;

        public LoaderInfo(int i, Bundle bundle, Loader loader, Loader loader2) {
            this.l = i;
            this.m = bundle;
            this.n = loader;
            this.q = loader2;
            loader.registerListener(i, this);
        }

        @Override // androidx.lifecycle.LiveData
        public void onActive() {
            if (LoaderManagerImpl.c) {
                Log.v("LoaderManager", "  Starting: " + this);
            }
            this.n.startLoading();
        }

        @Override // androidx.lifecycle.LiveData
        public void onInactive() {
            if (LoaderManagerImpl.c) {
                Log.v("LoaderManager", "  Stopping: " + this);
            }
            this.n.stopLoading();
        }

        public final void e() {
            LifecycleOwner lifecycleOwner = this.o;
            a aVar = this.p;
            if (lifecycleOwner == null || aVar == null) {
                return;
            }
            super.removeObserver(aVar);
            observe(lifecycleOwner, aVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        public void removeObserver(@NonNull Observer<? super D> observer) {
            super.removeObserver(observer);
            this.o = null;
            this.p = null;
        }

        public final Loader d(boolean z) {
            if (LoaderManagerImpl.c) {
                Log.v("LoaderManager", "  Destroying: " + this);
            }
            Loader loader = this.n;
            loader.cancelLoad();
            loader.abandon();
            a aVar = this.p;
            if (aVar != null) {
                removeObserver(aVar);
                if (z && aVar.c) {
                    boolean z2 = LoaderManagerImpl.c;
                    Loader<D> loader2 = aVar.f1909a;
                    if (z2) {
                        Log.v("LoaderManager", "  Resetting: " + loader2);
                    }
                    aVar.f1910b.onLoaderReset(loader2);
                }
            }
            loader.unregisterListener(this);
            if ((aVar == null || aVar.c) && !z) {
                return loader;
            }
            loader.reset();
            return this.q;
        }

        @Override // androidx.loader.content.Loader.OnLoadCompleteListener
        public void onLoadComplete(@NonNull Loader<D> loader, @Nullable D d) {
            if (LoaderManagerImpl.c) {
                Log.v("LoaderManager", "onLoadComplete: " + this);
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                setValue(d);
                return;
            }
            if (LoaderManagerImpl.c) {
                Log.w("LoaderManager", "onLoadComplete was incorrectly called on a background thread");
            }
            postValue(d);
        }

        @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
        public void setValue(D d) {
            super.setValue(d);
            Loader loader = this.q;
            if (loader != null) {
                loader.reset();
                this.q = null;
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.l);
            sb.append(" : ");
            DebugUtils.buildShortClassTag(this.n, sb);
            sb.append("}}");
            return sb.toString();
        }

        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.l);
            printWriter.print(" mArgs=");
            printWriter.println(this.m);
            printWriter.print(str);
            printWriter.print("mLoader=");
            Loader loader = this.n;
            printWriter.println(loader);
            loader.dump(str + "  ", fileDescriptor, printWriter, strArr);
            if (this.p != null) {
                printWriter.print(str);
                printWriter.print("mCallbacks=");
                printWriter.println(this.p);
                this.p.dump(_COROUTINE.a.z(str, "  "), printWriter);
            }
            printWriter.print(str);
            printWriter.print("mData=");
            printWriter.println(loader.dataToString(getValue()));
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.println(hasActiveObservers());
        }
    }

    public static class a<D> implements Observer<D> {

        /* renamed from: a, reason: collision with root package name */
        public final Loader f1909a;

        /* renamed from: b, reason: collision with root package name */
        public final LoaderManager.LoaderCallbacks f1910b;
        public boolean c = false;

        public a(Loader loader, LoaderManager.LoaderCallbacks loaderCallbacks) {
            this.f1909a = loader;
            this.f1910b = loaderCallbacks;
        }

        @Override // androidx.lifecycle.Observer
        public void onChanged(@Nullable D d) {
            boolean z = LoaderManagerImpl.c;
            Loader<D> loader = this.f1909a;
            if (z) {
                Log.v("LoaderManager", "  onLoadFinished in " + loader + ": " + loader.dataToString(d));
            }
            this.f1910b.onLoadFinished(loader, d);
            this.c = true;
        }

        public String toString() {
            return this.f1910b.toString();
        }

        public void dump(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print("mDeliveredData=");
            printWriter.println(this.c);
        }
    }

    public static class b extends ViewModel {
        public static final ViewModelProvider.Factory f = new a();
        public final SparseArrayCompat d = new SparseArrayCompat();
        public boolean e = false;

        public static class a implements ViewModelProvider.Factory {
            @Override // androidx.lifecycle.ViewModelProvider.Factory
            public final /* synthetic */ ViewModel create(Class cls, CreationExtras creationExtras) {
                return j.b(this, cls, creationExtras);
            }

            @Override // androidx.lifecycle.ViewModelProvider.Factory
            @NonNull
            public <T extends ViewModel> T create(@NonNull Class<T> cls) {
                return new b();
            }
        }

        @Override // androidx.lifecycle.ViewModel
        public void onCleared() {
            super.onCleared();
            SparseArrayCompat sparseArrayCompat = this.d;
            int size = sparseArrayCompat.size();
            for (int i = 0; i < size; i++) {
                ((LoaderInfo) sparseArrayCompat.valueAt(i)).d(true);
            }
            sparseArrayCompat.clear();
        }

        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            SparseArrayCompat sparseArrayCompat = this.d;
            if (sparseArrayCompat.size() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                for (int i = 0; i < sparseArrayCompat.size(); i++) {
                    LoaderInfo loaderInfo = (LoaderInfo) sparseArrayCompat.valueAt(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(sparseArrayCompat.keyAt(i));
                    printWriter.print(": ");
                    printWriter.println(loaderInfo.toString());
                    loaderInfo.dump(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
    }

    @Override // androidx.loader.app.LoaderManager
    @MainThread
    public void destroyLoader(int i) {
        b bVar = this.f1908b;
        if (bVar.e) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("destroyLoader must be called on the main thread");
        }
        if (c) {
            Log.v("LoaderManager", "destroyLoader in " + this + " of " + i);
        }
        LoaderInfo loaderInfo = (LoaderInfo) bVar.d.get(i);
        if (loaderInfo != null) {
            loaderInfo.d(true);
            bVar.d.remove(i);
        }
    }

    @Override // androidx.loader.app.LoaderManager
    @Nullable
    public <D> Loader<D> getLoader(int i) {
        b bVar = this.f1908b;
        if (!bVar.e) {
            LoaderInfo loaderInfo = (LoaderInfo) bVar.d.get(i);
            if (loaderInfo != null) {
                return loaderInfo.n;
            }
            return null;
        }
        throw new IllegalStateException("Called while creating a loader");
    }

    @Override // androidx.loader.app.LoaderManager
    @NonNull
    @MainThread
    public <D> Loader<D> initLoader(int i, @Nullable Bundle bundle, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
        b bVar = this.f1908b;
        if (bVar.e) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() == Looper.myLooper()) {
            LoaderInfo loaderInfo = (LoaderInfo) bVar.d.get(i);
            if (c) {
                Log.v("LoaderManager", "initLoader in " + this + ": args=" + bundle);
            }
            if (loaderInfo == null) {
                return a(i, bundle, loaderCallbacks, null);
            }
            if (c) {
                Log.v("LoaderManager", "  Re-using existing loader " + loaderInfo);
            }
            Loader<D> loader = loaderInfo.n;
            a aVar = new a(loader, loaderCallbacks);
            LifecycleOwner lifecycleOwner = this.f1907a;
            loaderInfo.observe(lifecycleOwner, aVar);
            a aVar2 = loaderInfo.p;
            if (aVar2 != null) {
                loaderInfo.removeObserver(aVar2);
            }
            loaderInfo.o = lifecycleOwner;
            loaderInfo.p = aVar;
            return loader;
        }
        throw new IllegalStateException("initLoader must be called on the main thread");
    }

    @Override // androidx.loader.app.LoaderManager
    @NonNull
    @MainThread
    public <D> Loader<D> restartLoader(int i, @Nullable Bundle bundle, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
        b bVar = this.f1908b;
        if (bVar.e) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("restartLoader must be called on the main thread");
        }
        if (c) {
            Log.v("LoaderManager", "restartLoader in " + this + ": args=" + bundle);
        }
        LoaderInfo loaderInfo = (LoaderInfo) bVar.d.get(i);
        return a(i, bundle, loaderCallbacks, loaderInfo != null ? loaderInfo.d(false) : null);
    }

    @Override // androidx.loader.app.LoaderManager
    public boolean hasRunningLoaders() {
        a aVar;
        SparseArrayCompat sparseArrayCompat = this.f1908b.d;
        int size = sparseArrayCompat.size();
        for (int i = 0; i < size; i++) {
            LoaderInfo loaderInfo = (LoaderInfo) sparseArrayCompat.valueAt(i);
            if (loaderInfo.hasActiveObservers() && (aVar = loaderInfo.p) != null && !aVar.c) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.loader.app.LoaderManager
    public void markForRedelivery() {
        SparseArrayCompat sparseArrayCompat = this.f1908b.d;
        int size = sparseArrayCompat.size();
        for (int i = 0; i < size; i++) {
            ((LoaderInfo) sparseArrayCompat.valueAt(i)).e();
        }
    }

    public LoaderManagerImpl(LifecycleOwner lifecycleOwner, ViewModelStore viewModelStore) {
        this.f1907a = lifecycleOwner;
        this.f1908b = (b) new ViewModelProvider(viewModelStore, b.f).get(b.class);
    }

    public final Loader a(int i, Bundle bundle, LoaderManager.LoaderCallbacks loaderCallbacks, Loader loader) {
        b bVar = this.f1908b;
        try {
            bVar.e = true;
            Loader loaderOnCreateLoader = loaderCallbacks.onCreateLoader(i, bundle);
            if (loaderOnCreateLoader == null) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
            }
            if (loaderOnCreateLoader.getClass().isMemberClass() && !Modifier.isStatic(loaderOnCreateLoader.getClass().getModifiers())) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + loaderOnCreateLoader);
            }
            LoaderInfo loaderInfo = new LoaderInfo(i, bundle, loaderOnCreateLoader, loader);
            if (c) {
                Log.v("LoaderManager", "  Created new loader " + loaderInfo);
            }
            bVar.d.put(i, loaderInfo);
            bVar.e = false;
            Loader loader2 = loaderInfo.n;
            a aVar = new a(loader2, loaderCallbacks);
            LifecycleOwner lifecycleOwner = this.f1907a;
            loaderInfo.observe(lifecycleOwner, aVar);
            a aVar2 = loaderInfo.p;
            if (aVar2 != null) {
                loaderInfo.removeObserver(aVar2);
            }
            loaderInfo.o = lifecycleOwner;
            loaderInfo.p = aVar;
            return loader2;
        } catch (Throwable th) {
            bVar.e = false;
            throw th;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        DebugUtils.buildShortClassTag(this.f1907a, sb);
        sb.append("}}");
        return sb.toString();
    }

    @Override // androidx.loader.app.LoaderManager
    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f1908b.dump(str, fileDescriptor, printWriter, strArr);
    }
}
