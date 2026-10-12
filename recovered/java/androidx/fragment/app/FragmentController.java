package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Preconditions;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.loader.app.LoaderManager;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class FragmentController {

    /* renamed from: a, reason: collision with root package name */
    public final FragmentHostCallback f1617a;

    @Deprecated
    public void dispatchReallyStop() {
    }

    @Deprecated
    public void doLoaderDestroy() {
    }

    @Deprecated
    public void doLoaderRetain() {
    }

    @Deprecated
    public void doLoaderStart() {
    }

    @Deprecated
    public void doLoaderStop(boolean z) {
    }

    @Deprecated
    public void dumpLoaders(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
    }

    @Deprecated
    public void reportLoaderStart() {
    }

    @Deprecated
    public void restoreLoaderNonConfig(@SuppressLint({"UnknownNullness"}) SimpleArrayMap<String, LoaderManager> simpleArrayMap) {
    }

    @Nullable
    @Deprecated
    public SimpleArrayMap<String, LoaderManager> retainLoaderNonConfig() {
        return null;
    }

    @NonNull
    public static FragmentController createController(@NonNull FragmentHostCallback<?> fragmentHostCallback) {
        return new FragmentController((FragmentHostCallback) Preconditions.checkNotNull(fragmentHostCallback, "callbacks == null"));
    }

    public FragmentController(FragmentHostCallback fragmentHostCallback) {
        this.f1617a = fragmentHostCallback;
    }

    @NonNull
    public FragmentManager getSupportFragmentManager() {
        return this.f1617a.e;
    }

    @SuppressLint({"UnknownNullness"})
    @Deprecated
    public LoaderManager getSupportLoaderManager() {
        throw new UnsupportedOperationException("Loaders are managed separately from FragmentController, use LoaderManager.getInstance() to obtain a LoaderManager.");
    }

    @Nullable
    public Fragment findFragmentByWho(@NonNull String str) {
        return this.f1617a.e.c.c(str);
    }

    public int getActiveFragmentsCount() {
        return this.f1617a.e.c.f1713b.size();
    }

    @NonNull
    public List<Fragment> getActiveFragments(@SuppressLint({"UnknownNullness"}) List<Fragment> list) {
        return this.f1617a.e.c.e();
    }

    public void attachHost(@Nullable Fragment fragment) {
        FragmentHostCallback fragmentHostCallback = this.f1617a;
        fragmentHostCallback.e.c(fragmentHostCallback, fragmentHostCallback, fragment);
    }

    @Nullable
    public View onCreateView(@Nullable View view, @NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        return this.f1617a.e.f.onCreateView(view, str, context, attributeSet);
    }

    public void noteStateNotSaved() {
        this.f1617a.e.J();
    }

    @Nullable
    public Parcelable saveAllState() {
        return this.f1617a.e.Q();
    }

    @Deprecated
    public void restoreAllState(@Nullable Parcelable parcelable, @Nullable List<Fragment> list) {
        FragmentManager fragmentManager = this.f1617a.e;
        FragmentManagerNonConfig fragmentManagerNonConfig = new FragmentManagerNonConfig(list, null, null);
        if (fragmentManager.r instanceof ViewModelStoreOwner) {
            fragmentManager.X(new IllegalStateException("You must use restoreSaveState when your FragmentHostCallback implements ViewModelStoreOwner"));
            throw null;
        }
        fragmentManager.L.f(fragmentManagerNonConfig);
        fragmentManager.P(parcelable);
    }

    @Deprecated
    public void restoreAllState(@Nullable Parcelable parcelable, @Nullable FragmentManagerNonConfig fragmentManagerNonConfig) {
        FragmentManager fragmentManager = this.f1617a.e;
        if (fragmentManager.r instanceof ViewModelStoreOwner) {
            fragmentManager.X(new IllegalStateException("You must use restoreSaveState when your FragmentHostCallback implements ViewModelStoreOwner"));
            throw null;
        }
        fragmentManager.L.f(fragmentManagerNonConfig);
        fragmentManager.P(parcelable);
    }

    public void restoreSaveState(@Nullable Parcelable parcelable) {
        FragmentHostCallback fragmentHostCallback = this.f1617a;
        if (!(fragmentHostCallback instanceof ViewModelStoreOwner)) {
            throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
        }
        fragmentHostCallback.e.P(parcelable);
    }

    @Nullable
    @Deprecated
    public List<Fragment> retainNonConfig() {
        List list;
        FragmentManager fragmentManager = this.f1617a.e;
        if (fragmentManager.r instanceof ViewModelStoreOwner) {
            fragmentManager.X(new IllegalStateException("You cannot use retainNonConfig when your FragmentHostCallback implements ViewModelStoreOwner."));
            throw null;
        }
        FragmentManagerNonConfig fragmentManagerNonConfigD = fragmentManager.L.d();
        if (fragmentManagerNonConfigD == null || (list = fragmentManagerNonConfigD.f1637a) == null) {
            return null;
        }
        return new ArrayList(list);
    }

    @Nullable
    @Deprecated
    public FragmentManagerNonConfig retainNestedNonConfig() {
        FragmentManager fragmentManager = this.f1617a.e;
        if (fragmentManager.r instanceof ViewModelStoreOwner) {
            fragmentManager.X(new IllegalStateException("You cannot use retainNonConfig when your FragmentHostCallback implements ViewModelStoreOwner."));
            throw null;
        }
        return fragmentManager.L.d();
    }

    public void dispatchCreate() {
        FragmentManager fragmentManager = this.f1617a.e;
        fragmentManager.D = false;
        fragmentManager.E = false;
        fragmentManager.L.j = false;
        fragmentManager.r(1);
    }

    public void dispatchActivityCreated() {
        FragmentManager fragmentManager = this.f1617a.e;
        fragmentManager.D = false;
        fragmentManager.E = false;
        fragmentManager.L.j = false;
        fragmentManager.r(4);
    }

    public void dispatchStart() {
        FragmentManager fragmentManager = this.f1617a.e;
        fragmentManager.D = false;
        fragmentManager.E = false;
        fragmentManager.L.j = false;
        fragmentManager.r(5);
    }

    public void dispatchResume() {
        FragmentManager fragmentManager = this.f1617a.e;
        fragmentManager.D = false;
        fragmentManager.E = false;
        fragmentManager.L.j = false;
        fragmentManager.r(7);
    }

    public void dispatchPause() {
        this.f1617a.e.r(5);
    }

    public void dispatchStop() {
        FragmentManager fragmentManager = this.f1617a.e;
        fragmentManager.E = true;
        fragmentManager.L.j = true;
        fragmentManager.r(4);
    }

    public void dispatchDestroyView() {
        this.f1617a.e.r(1);
    }

    public void dispatchDestroy() {
        this.f1617a.e.m();
    }

    public void dispatchMultiWindowModeChanged(boolean z) {
        for (Fragment fragment : this.f1617a.e.c.f()) {
            if (fragment != null) {
                fragment.l(z);
            }
        }
    }

    public void dispatchPictureInPictureModeChanged(boolean z) {
        for (Fragment fragment : this.f1617a.e.c.f()) {
            if (fragment != null) {
                fragment.m(z);
            }
        }
    }

    public void dispatchConfigurationChanged(@NonNull Configuration configuration) {
        for (Fragment fragment : this.f1617a.e.c.f()) {
            if (fragment != null) {
                fragment.h(configuration);
            }
        }
    }

    public void dispatchLowMemory() {
        for (Fragment fragment : this.f1617a.e.c.f()) {
            if (fragment != null) {
                fragment.k();
            }
        }
    }

    public boolean dispatchCreateOptionsMenu(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
        return this.f1617a.e.l(menu, menuInflater);
    }

    public boolean dispatchPrepareOptionsMenu(@NonNull Menu menu) {
        return this.f1617a.e.q(menu);
    }

    public boolean dispatchOptionsItemSelected(@NonNull MenuItem menuItem) {
        return this.f1617a.e.n(menuItem);
    }

    public boolean dispatchContextItemSelected(@NonNull MenuItem menuItem) {
        return this.f1617a.e.k(menuItem);
    }

    public void dispatchOptionsMenuClosed(@NonNull Menu menu) {
        this.f1617a.e.o(menu);
    }

    public boolean execPendingActions() {
        return this.f1617a.e.v(true);
    }
}
