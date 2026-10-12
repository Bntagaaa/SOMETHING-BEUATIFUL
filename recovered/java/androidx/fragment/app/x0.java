package androidx.fragment.app;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import androidx.annotation.NonNull;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;

/* loaded from: classes.dex */
class x0 implements HasDefaultViewModelProviderFactory, SavedStateRegistryOwner, ViewModelStoreOwner {

    /* renamed from: a, reason: collision with root package name */
    public final Fragment f1767a;

    /* renamed from: b, reason: collision with root package name */
    public final ViewModelStore f1768b;
    public ViewModelProvider.Factory c;
    public LifecycleRegistry d = null;
    public SavedStateRegistryController e = null;

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final /* synthetic */ CreationExtras getDefaultViewModelCreationExtras() {
        return androidx.lifecycle.e.a(this);
    }

    public x0(Fragment fragment, ViewModelStore viewModelStore) {
        this.f1767a = fragment;
        this.f1768b = viewModelStore;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    @NonNull
    public ViewModelStore getViewModelStore() {
        b();
        return this.f1768b;
    }

    public final void b() {
        if (this.d == null) {
            this.d = new LifecycleRegistry(this);
            this.e = SavedStateRegistryController.create(this);
        }
    }

    @Override // androidx.lifecycle.LifecycleOwner
    @NonNull
    public Lifecycle getLifecycle() {
        b();
        return this.d;
    }

    public final void a(Lifecycle.Event event) {
        this.d.handleLifecycleEvent(event);
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    @NonNull
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        Application application;
        Fragment fragment = this.f1767a;
        ViewModelProvider.Factory defaultViewModelProviderFactory = fragment.getDefaultViewModelProviderFactory();
        if (!defaultViewModelProviderFactory.equals(fragment.V)) {
            this.c = defaultViewModelProviderFactory;
            return defaultViewModelProviderFactory;
        }
        if (this.c == null) {
            Context applicationContext = fragment.requireContext().getApplicationContext();
            while (true) {
                if (!(applicationContext instanceof ContextWrapper)) {
                    application = null;
                    break;
                }
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            }
            this.c = new SavedStateViewModelFactory(application, this, fragment.getArguments());
        }
        return this.c;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    @NonNull
    public SavedStateRegistry getSavedStateRegistry() {
        b();
        return this.e.getSavedStateRegistry();
    }
}
