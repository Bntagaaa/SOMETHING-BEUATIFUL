package androidx.fragment.app;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultCaller;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.CallSuper;
import androidx.annotation.ContentView;
import androidx.annotation.LayoutRes;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.UiThread;
import androidx.arch.core.util.Function;
import androidx.core.app.SharedElementCallback;
import androidx.core.view.LayoutInflaterCompat;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.loader.app.LoaderManager;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, LifecycleOwner, ViewModelStoreOwner, HasDefaultViewModelProviderFactory, SavedStateRegistryOwner, ActivityResultCaller {
    public static final Object a0 = new Object();
    public boolean A;
    public boolean B;
    public boolean C;
    public boolean D;
    public boolean E;
    public boolean F;
    public ViewGroup G;
    public View H;
    public boolean I;
    public boolean J;
    public e K;
    public final Runnable L;
    public boolean M;
    public boolean N;
    public float O;
    public LayoutInflater P;
    public boolean Q;
    public Lifecycle.State R;
    public LifecycleRegistry S;
    public x0 T;
    public final MutableLiveData U;
    public SavedStateViewModelFactory V;
    public SavedStateRegistryController W;
    public final int X;
    public final AtomicInteger Y;
    public final ArrayList Z;

    /* renamed from: a, reason: collision with root package name */
    public int f1604a;

    /* renamed from: b, reason: collision with root package name */
    public Bundle f1605b;
    public SparseArray c;
    public Bundle d;
    public Boolean e;
    public String f;

    /* renamed from: g, reason: collision with root package name */
    public Bundle f1606g;
    public Fragment h;
    public String i;
    public int j;
    public Boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public int r;
    public FragmentManager s;
    public FragmentHostCallback t;
    public FragmentManager u;
    public Fragment v;
    public int w;
    public int x;
    public String y;
    public boolean z;

    public interface g {
        void onStartEnterTransition();

        void startListening();
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final /* synthetic */ CreationExtras getDefaultViewModelCreationExtras() {
        return androidx.lifecycle.e.a(this);
    }

    @MainThread
    @Deprecated
    public void onAttachFragment(@NonNull Fragment fragment) {
    }

    @MainThread
    public boolean onContextItemSelected(@NonNull MenuItem menuItem) {
        return false;
    }

    @Nullable
    @MainThread
    public Animation onCreateAnimation(int i, boolean z, int i2) {
        return null;
    }

    @Nullable
    @MainThread
    public Animator onCreateAnimator(int i, boolean z, int i2) {
        return null;
    }

    @MainThread
    public void onCreateOptionsMenu(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
    }

    @MainThread
    public void onDestroyOptionsMenu() {
    }

    @MainThread
    public void onHiddenChanged(boolean z) {
    }

    public void onMultiWindowModeChanged(boolean z) {
    }

    @MainThread
    public boolean onOptionsItemSelected(@NonNull MenuItem menuItem) {
        return false;
    }

    @MainThread
    public void onOptionsMenuClosed(@NonNull Menu menu) {
    }

    public void onPictureInPictureModeChanged(boolean z) {
    }

    @MainThread
    public void onPrepareOptionsMenu(@NonNull Menu menu) {
    }

    @MainThread
    public void onPrimaryNavigationFragmentChanged(boolean z) {
    }

    @Deprecated
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
    }

    @MainThread
    public void onSaveInstanceState(@NonNull Bundle bundle) {
    }

    @MainThread
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
    }

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Fragment.this.startPostponedEnterTransition();
        }
    }

    public static abstract class f {
        public abstract void a();

        private f() {
        }

        public /* synthetic */ f(int i) {
            this();
        }
    }

    @Override // androidx.lifecycle.LifecycleOwner
    @NonNull
    public Lifecycle getLifecycle() {
        return this.S;
    }

    @NonNull
    @MainThread
    public LifecycleOwner getViewLifecycleOwner() {
        x0 x0Var = this.T;
        if (x0Var != null) {
            return x0Var;
        }
        throw new IllegalStateException("Can't access the Fragment View's LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()");
    }

    @NonNull
    public LiveData<LifecycleOwner> getViewLifecycleOwnerLiveData() {
        return this.U;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    @NonNull
    public ViewModelStore getViewModelStore() {
        if (this.s == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (e() != Lifecycle.State.INITIALIZED.ordinal()) {
            HashMap map = this.s.L.f;
            ViewModelStore viewModelStore = (ViewModelStore) map.get(this.f);
            if (viewModelStore != null) {
                return viewModelStore;
            }
            ViewModelStore viewModelStore2 = new ViewModelStore();
            map.put(this.f, viewModelStore2);
            return viewModelStore2;
        }
        throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
    }

    public final int e() {
        Lifecycle.State state = this.R;
        if (state == Lifecycle.State.INITIALIZED || this.v == null) {
            return state.ordinal();
        }
        return Math.min(state.ordinal(), this.v.e());
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    @NonNull
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        Application application;
        if (this.s == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (this.V == null) {
            Context applicationContext = requireContext().getApplicationContext();
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
            if (application == null && FragmentManager.D(3)) {
                Log.d("FragmentManager", "Could not find Application instance from Context " + requireContext().getApplicationContext() + ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory");
            }
            this.V = new SavedStateViewModelFactory(application, this, getArguments());
        }
        return this.V;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    @NonNull
    public final SavedStateRegistry getSavedStateRegistry() {
        return this.W.getSavedStateRegistry();
    }

    @SuppressLint({"BanParcelableUsage, ParcelClassLoader"})
    public static class SavedState implements Parcelable {

        @NonNull
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: a, reason: collision with root package name */
        public final Bundle f1607a;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public SavedState(Bundle bundle) {
            this.f1607a = bundle;
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            Bundle bundle = parcel.readBundle();
            this.f1607a = bundle;
            if (classLoader == null || bundle == null) {
                return;
            }
            bundle.setClassLoader(classLoader);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            parcel.writeBundle(this.f1607a);
        }

        public class a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }
    }

    public static class InstantiationException extends RuntimeException {
        public InstantiationException(@NonNull String str, @Nullable Exception exc) {
            super(str, exc);
        }
    }

    public Fragment() {
        this.f1604a = -1;
        this.f = UUID.randomUUID().toString();
        this.i = null;
        this.k = null;
        this.u = new f0();
        this.E = true;
        this.J = true;
        this.L = new a();
        this.R = Lifecycle.State.RESUMED;
        this.U = new MutableLiveData();
        this.Y = new AtomicInteger();
        this.Z = new ArrayList();
        this.S = new LifecycleRegistry(this);
        this.W = SavedStateRegistryController.create(this);
        this.V = null;
    }

    @ContentView
    public Fragment(@LayoutRes int i) {
        this();
        this.X = i;
    }

    @NonNull
    @Deprecated
    public static Fragment instantiate(@NonNull Context context, @NonNull String str) {
        return instantiate(context, str, null);
    }

    @NonNull
    @Deprecated
    public static Fragment instantiate(@NonNull Context context, @NonNull String str, @Nullable Bundle bundle) throws IllegalAccessException, java.lang.InstantiationException, IllegalArgumentException, InvocationTargetException {
        try {
            Fragment fragmentNewInstance = FragmentFactory.loadFragmentClass(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle == null) {
                return fragmentNewInstance;
            }
            bundle.setClassLoader(fragmentNewInstance.getClass().getClassLoader());
            fragmentNewInstance.setArguments(bundle);
            return fragmentNewInstance;
        } catch (IllegalAccessException e2) {
            throw new InstantiationException(_COROUTINE.a.A("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e2);
        } catch (java.lang.InstantiationException e3) {
            throw new InstantiationException(_COROUTINE.a.A("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e3);
        } catch (NoSuchMethodException e4) {
            throw new InstantiationException(_COROUTINE.a.A("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e4);
        } catch (InvocationTargetException e5) {
            throw new InstantiationException(_COROUTINE.a.A("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e5);
        }
    }

    public final boolean f() {
        return this.r > 0;
    }

    public final boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }

    public final int hashCode() {
        return super.hashCode();
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} (");
        sb.append(this.f);
        if (this.w != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.w));
        }
        if (this.y != null) {
            sb.append(" tag=");
            sb.append(this.y);
        }
        sb.append(")");
        return sb.toString();
    }

    public final int getId() {
        return this.w;
    }

    @Nullable
    public final String getTag() {
        return this.y;
    }

    public void setArguments(@Nullable Bundle bundle) {
        if (this.s != null && isStateSaved()) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.f1606g = bundle;
    }

    @Nullable
    public final Bundle getArguments() {
        return this.f1606g;
    }

    @NonNull
    public final Bundle requireArguments() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments;
        }
        throw new IllegalStateException(_COROUTINE.a.h("Fragment ", this, " does not have any arguments."));
    }

    public final boolean isStateSaved() {
        FragmentManager fragmentManager = this.s;
        if (fragmentManager == null) {
            return false;
        }
        return fragmentManager.isStateSaved();
    }

    public void setInitialSavedState(@Nullable SavedState savedState) {
        Bundle bundle;
        if (this.s != null) {
            throw new IllegalStateException("Fragment already added");
        }
        if (savedState == null || (bundle = savedState.f1607a) == null) {
            bundle = null;
        }
        this.f1605b = bundle;
    }

    @Deprecated
    public void setTargetFragment(@Nullable Fragment fragment, int i) {
        FragmentManager fragmentManager = this.s;
        FragmentManager fragmentManager2 = fragment != null ? fragment.s : null;
        if (fragmentManager != null && fragmentManager2 != null && fragmentManager != fragmentManager2) {
            throw new IllegalArgumentException(_COROUTINE.a.h("Fragment ", fragment, " must share the same FragmentManager to be set as a target fragment"));
        }
        for (Fragment targetFragment = fragment; targetFragment != null; targetFragment = targetFragment.getTargetFragment()) {
            if (targetFragment.equals(this)) {
                throw new IllegalArgumentException("Setting " + fragment + " as the target of " + this + " would create a target cycle");
            }
        }
        if (fragment == null) {
            this.i = null;
            this.h = null;
        } else if (this.s == null || fragment.s == null) {
            this.i = null;
            this.h = fragment;
        } else {
            this.i = fragment.f;
            this.h = null;
        }
        this.j = i;
    }

    @Nullable
    @Deprecated
    public final Fragment getTargetFragment() {
        String str;
        Fragment fragment = this.h;
        if (fragment != null) {
            return fragment;
        }
        FragmentManager fragmentManager = this.s;
        if (fragmentManager == null || (str = this.i) == null) {
            return null;
        }
        return fragmentManager.c.b(str);
    }

    @Deprecated
    public final int getTargetRequestCode() {
        return this.j;
    }

    @Nullable
    public Context getContext() {
        FragmentHostCallback fragmentHostCallback = this.t;
        if (fragmentHostCallback == null) {
            return null;
        }
        return fragmentHostCallback.f1620b;
    }

    @NonNull
    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException(_COROUTINE.a.h("Fragment ", this, " not attached to a context."));
    }

    @Nullable
    public final FragmentActivity getActivity() {
        FragmentHostCallback fragmentHostCallback = this.t;
        if (fragmentHostCallback == null) {
            return null;
        }
        return (FragmentActivity) fragmentHostCallback.f1619a;
    }

    @NonNull
    public final FragmentActivity requireActivity() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException(_COROUTINE.a.h("Fragment ", this, " not attached to an activity."));
    }

    @Nullable
    public final Object getHost() {
        FragmentHostCallback fragmentHostCallback = this.t;
        if (fragmentHostCallback == null) {
            return null;
        }
        return fragmentHostCallback.onGetHost();
    }

    @NonNull
    public final Object requireHost() {
        Object host = getHost();
        if (host != null) {
            return host;
        }
        throw new IllegalStateException(_COROUTINE.a.h("Fragment ", this, " not attached to a host."));
    }

    @NonNull
    public final Resources getResources() {
        return requireContext().getResources();
    }

    @NonNull
    public final CharSequence getText(@StringRes int i) {
        return getResources().getText(i);
    }

    @NonNull
    public final String getString(@StringRes int i) {
        return getResources().getString(i);
    }

    @NonNull
    public final String getString(@StringRes int i, @Nullable Object... objArr) {
        return getResources().getString(i, objArr);
    }

    @Nullable
    @Deprecated
    public final FragmentManager getFragmentManager() {
        return this.s;
    }

    @NonNull
    public final FragmentManager getParentFragmentManager() {
        FragmentManager fragmentManager = this.s;
        if (fragmentManager != null) {
            return fragmentManager;
        }
        throw new IllegalStateException(_COROUTINE.a.h("Fragment ", this, " not associated with a fragment manager."));
    }

    @NonNull
    @Deprecated
    public final FragmentManager requireFragmentManager() {
        return getParentFragmentManager();
    }

    @NonNull
    public final FragmentManager getChildFragmentManager() {
        if (this.t != null) {
            return this.u;
        }
        throw new IllegalStateException(_COROUTINE.a.h("Fragment ", this, " has not been attached yet."));
    }

    @Nullable
    public final Fragment getParentFragment() {
        return this.v;
    }

    @NonNull
    public final Fragment requireParentFragment() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            return parentFragment;
        }
        if (getContext() == null) {
            throw new IllegalStateException(_COROUTINE.a.h("Fragment ", this, " is not attached to any Fragment or host"));
        }
        throw new IllegalStateException("Fragment " + this + " is not a child Fragment, it is directly attached to " + getContext());
    }

    public final boolean isAdded() {
        return this.t != null && this.l;
    }

    public final boolean isDetached() {
        return this.A;
    }

    public final boolean isRemoving() {
        return this.m;
    }

    public final boolean g() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            return parentFragment.isRemoving() || parentFragment.g();
        }
        return false;
    }

    public final boolean isInLayout() {
        return this.o;
    }

    public final boolean isResumed() {
        return this.f1604a >= 7;
    }

    public final boolean isVisible() {
        View view;
        return (!isAdded() || isHidden() || (view = this.H) == null || view.getWindowToken() == null || this.H.getVisibility() != 0) ? false : true;
    }

    public final boolean isHidden() {
        return this.z;
    }

    @SuppressLint({"KotlinPropertyAccess"})
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public final boolean hasOptionsMenu() {
        return this.D;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public final boolean isMenuVisible() {
        if (!this.E) {
            return false;
        }
        if (this.s != null) {
            Fragment fragment = this.v;
            if (!(fragment == null ? true : fragment.isMenuVisible())) {
                return false;
            }
        }
        return true;
    }

    @Deprecated
    public void setRetainInstance(boolean z) {
        this.B = z;
        FragmentManager fragmentManager = this.s;
        if (fragmentManager == null) {
            this.C = true;
        } else if (z) {
            fragmentManager.L.c(this);
        } else {
            fragmentManager.L.e(this);
        }
    }

    @Deprecated
    public final boolean getRetainInstance() {
        return this.B;
    }

    public void setHasOptionsMenu(boolean z) {
        if (this.D != z) {
            this.D = z;
            if (!isAdded() || isHidden()) {
                return;
            }
            this.t.onSupportInvalidateOptionsMenu();
        }
    }

    public void setMenuVisibility(boolean z) {
        if (this.E != z) {
            this.E = z;
            if (this.D && isAdded() && !isHidden()) {
                this.t.onSupportInvalidateOptionsMenu();
            }
        }
    }

    @Deprecated
    public void setUserVisibleHint(boolean z) {
        if (!this.J && z && this.f1604a < 5 && this.s != null && isAdded() && this.Q) {
            FragmentManager fragmentManager = this.s;
            fragmentManager.K(fragmentManager.i(this));
        }
        this.J = z;
        this.I = this.f1604a < 5 && !z;
        if (this.f1605b != null) {
            this.e = Boolean.valueOf(z);
        }
    }

    @Deprecated
    public boolean getUserVisibleHint() {
        return this.J;
    }

    @NonNull
    @Deprecated
    public LoaderManager getLoaderManager() {
        return LoaderManager.getInstance(this);
    }

    public void startActivity(@SuppressLint({"UnknownNullness"}) Intent intent) {
        startActivity(intent, null);
    }

    public void startActivity(@SuppressLint({"UnknownNullness"}) Intent intent, @Nullable Bundle bundle) {
        FragmentHostCallback fragmentHostCallback = this.t;
        if (fragmentHostCallback == null) {
            throw new IllegalStateException(_COROUTINE.a.h("Fragment ", this, " not attached to Activity"));
        }
        fragmentHostCallback.onStartActivityFromFragment(this, intent, -1, bundle);
    }

    @Deprecated
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        startActivityForResult(intent, i, null);
    }

    @Deprecated
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i, @Nullable Bundle bundle) {
        if (this.t == null) {
            throw new IllegalStateException(_COROUTINE.a.h("Fragment ", this, " not attached to Activity"));
        }
        FragmentManager parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.y == null) {
            parentFragmentManager.r.onStartActivityFromFragment(this, intent, i, bundle);
            return;
        }
        parentFragmentManager.B.addLast(new FragmentManager.h(this.f, i));
        if (intent != null && bundle != null) {
            intent.putExtra(ActivityResultContracts.StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE, bundle);
        }
        parentFragmentManager.y.launch(intent);
    }

    @Deprecated
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, @Nullable Intent intent, int i2, int i3, int i4, @Nullable Bundle bundle) throws IntentSender.SendIntentException {
        if (this.t == null) {
            throw new IllegalStateException(_COROUTINE.a.h("Fragment ", this, " not attached to Activity"));
        }
        if (FragmentManager.D(2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in startIntentSenderForResult() requestCode: " + i + " IntentSender: " + intentSender + " fillInIntent: " + intent + " options: " + bundle);
        }
        FragmentManager parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.z == null) {
            parentFragmentManager.r.onStartIntentSenderFromFragment(this, intentSender, i, intent, i2, i3, i4, bundle);
            return;
        }
        if (bundle != null) {
            if (intent == null) {
                intent = new Intent();
                intent.putExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", true);
            }
            if (FragmentManager.D(2)) {
                Log.v("FragmentManager", "ActivityOptions " + bundle + " were added to fillInIntent " + intent + " for fragment " + this);
            }
            intent.putExtra(ActivityResultContracts.StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE, bundle);
        }
        IntentSenderRequest intentSenderRequestBuild = new IntentSenderRequest.Builder(intentSender).setFillInIntent(intent).setFlags(i3, i2).build();
        parentFragmentManager.B.addLast(new FragmentManager.h(this.f, i));
        if (FragmentManager.D(2)) {
            Log.v("FragmentManager", "Fragment " + this + "is launching an IntentSender for result ");
        }
        parentFragmentManager.z.launch(intentSenderRequestBuild);
    }

    @Deprecated
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        if (FragmentManager.D(2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i + " resultCode: " + i2 + " data: " + intent);
        }
    }

    @Deprecated
    public final void requestPermissions(@NonNull String[] strArr, int i) {
        if (this.t == null) {
            throw new IllegalStateException(_COROUTINE.a.h("Fragment ", this, " not attached to Activity"));
        }
        FragmentManager parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.A == null) {
            parentFragmentManager.r.onRequestPermissionsFromFragment(this, strArr, i);
            return;
        }
        parentFragmentManager.B.addLast(new FragmentManager.h(this.f, i));
        parentFragmentManager.A.launch(strArr);
    }

    public boolean shouldShowRequestPermissionRationale(@NonNull String str) {
        FragmentHostCallback fragmentHostCallback = this.t;
        if (fragmentHostCallback != null) {
            return fragmentHostCallback.onShouldShowRequestPermissionRationale(str);
        }
        return false;
    }

    @NonNull
    public LayoutInflater onGetLayoutInflater(@Nullable Bundle bundle) {
        return getLayoutInflater(bundle);
    }

    @NonNull
    public final LayoutInflater getLayoutInflater() {
        LayoutInflater layoutInflater = this.P;
        if (layoutInflater != null) {
            return layoutInflater;
        }
        LayoutInflater layoutInflaterOnGetLayoutInflater = onGetLayoutInflater(null);
        this.P = layoutInflaterOnGetLayoutInflater;
        return layoutInflaterOnGetLayoutInflater;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public LayoutInflater getLayoutInflater(@Nullable Bundle bundle) {
        FragmentHostCallback fragmentHostCallback = this.t;
        if (fragmentHostCallback == null) {
            throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        }
        LayoutInflater layoutInflaterOnGetLayoutInflater = fragmentHostCallback.onGetLayoutInflater();
        LayoutInflaterCompat.setFactory2(layoutInflaterOnGetLayoutInflater, this.u.f);
        return layoutInflaterOnGetLayoutInflater;
    }

    @CallSuper
    @UiThread
    public void onInflate(@NonNull Context context, @NonNull AttributeSet attributeSet, @Nullable Bundle bundle) {
        this.F = true;
        FragmentHostCallback fragmentHostCallback = this.t;
        Activity activity = fragmentHostCallback == null ? null : fragmentHostCallback.f1619a;
        if (activity != null) {
            this.F = false;
            onInflate(activity, attributeSet, bundle);
        }
    }

    @CallSuper
    @UiThread
    @Deprecated
    public void onInflate(@NonNull Activity activity, @NonNull AttributeSet attributeSet, @Nullable Bundle bundle) {
        this.F = true;
    }

    @CallSuper
    @MainThread
    public void onAttach(@NonNull Context context) {
        this.F = true;
        FragmentHostCallback fragmentHostCallback = this.t;
        Activity activity = fragmentHostCallback == null ? null : fragmentHostCallback.f1619a;
        if (activity != null) {
            this.F = false;
            onAttach(activity);
        }
    }

    @CallSuper
    @MainThread
    @Deprecated
    public void onAttach(@NonNull Activity activity) {
        this.F = true;
    }

    @CallSuper
    @MainThread
    public void onCreate(@Nullable Bundle bundle) {
        Parcelable parcelable;
        this.F = true;
        if (bundle != null && (parcelable = bundle.getParcelable("android:support:fragments")) != null) {
            this.u.P(parcelable);
            FragmentManager fragmentManager = this.u;
            fragmentManager.D = false;
            fragmentManager.E = false;
            fragmentManager.L.j = false;
            fragmentManager.r(1);
        }
        FragmentManager fragmentManager2 = this.u;
        if (fragmentManager2.q >= 1) {
            return;
        }
        fragmentManager2.D = false;
        fragmentManager2.E = false;
        fragmentManager2.L.j = false;
        fragmentManager2.r(1);
    }

    @Nullable
    @MainThread
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        int i = this.X;
        if (i != 0) {
            return layoutInflater.inflate(i, viewGroup, false);
        }
        return null;
    }

    @Nullable
    public View getView() {
        return this.H;
    }

    @NonNull
    public final View requireView() {
        View view = getView();
        if (view != null) {
            return view;
        }
        throw new IllegalStateException(_COROUTINE.a.h("Fragment ", this, " did not return a View from onCreateView() or this was called before onCreateView()."));
    }

    @CallSuper
    @MainThread
    @Deprecated
    public void onActivityCreated(@Nullable Bundle bundle) {
        this.F = true;
    }

    @CallSuper
    @MainThread
    public void onViewStateRestored(@Nullable Bundle bundle) {
        this.F = true;
    }

    @CallSuper
    @MainThread
    public void onStart() {
        this.F = true;
    }

    @CallSuper
    @MainThread
    public void onResume() {
        this.F = true;
    }

    @Override // android.content.ComponentCallbacks
    @CallSuper
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        this.F = true;
    }

    @CallSuper
    @MainThread
    public void onPause() {
        this.F = true;
    }

    @CallSuper
    @MainThread
    public void onStop() {
        this.F = true;
    }

    @Override // android.content.ComponentCallbacks
    @CallSuper
    @MainThread
    public void onLowMemory() {
        this.F = true;
    }

    @CallSuper
    @MainThread
    public void onDestroyView() {
        this.F = true;
    }

    @CallSuper
    @MainThread
    public void onDestroy() {
        this.F = true;
    }

    @CallSuper
    @MainThread
    public void onDetach() {
        this.F = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    @MainThread
    public void onCreateContextMenu(@NonNull ContextMenu contextMenu, @NonNull View view, @Nullable ContextMenu.ContextMenuInfo contextMenuInfo) {
        requireActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public void registerForContextMenu(@NonNull View view) {
        view.setOnCreateContextMenuListener(this);
    }

    public void unregisterForContextMenu(@NonNull View view) {
        view.setOnCreateContextMenuListener(null);
    }

    public void setEnterSharedElementCallback(@Nullable SharedElementCallback sharedElementCallback) {
        c().s = sharedElementCallback;
    }

    public void setExitSharedElementCallback(@Nullable SharedElementCallback sharedElementCallback) {
        c().t = sharedElementCallback;
    }

    public void setEnterTransition(@Nullable Object obj) {
        c().k = obj;
    }

    @Nullable
    public Object getEnterTransition() {
        e eVar = this.K;
        if (eVar == null) {
            return null;
        }
        return eVar.k;
    }

    public void setReturnTransition(@Nullable Object obj) {
        c().l = obj;
    }

    @Nullable
    public Object getReturnTransition() {
        e eVar = this.K;
        if (eVar == null) {
            return null;
        }
        Object obj = eVar.l;
        return obj == a0 ? getEnterTransition() : obj;
    }

    public void setExitTransition(@Nullable Object obj) {
        c().m = obj;
    }

    @Nullable
    public Object getExitTransition() {
        e eVar = this.K;
        if (eVar == null) {
            return null;
        }
        return eVar.m;
    }

    public void setReenterTransition(@Nullable Object obj) {
        c().n = obj;
    }

    @Nullable
    public Object getReenterTransition() {
        e eVar = this.K;
        if (eVar == null) {
            return null;
        }
        Object obj = eVar.n;
        return obj == a0 ? getExitTransition() : obj;
    }

    public void setSharedElementEnterTransition(@Nullable Object obj) {
        c().o = obj;
    }

    @Nullable
    public Object getSharedElementEnterTransition() {
        e eVar = this.K;
        if (eVar == null) {
            return null;
        }
        return eVar.o;
    }

    public void setSharedElementReturnTransition(@Nullable Object obj) {
        c().p = obj;
    }

    @Nullable
    public Object getSharedElementReturnTransition() {
        e eVar = this.K;
        if (eVar == null) {
            return null;
        }
        Object obj = eVar.p;
        return obj == a0 ? getSharedElementEnterTransition() : obj;
    }

    public void setAllowEnterTransitionOverlap(boolean z) {
        c().r = Boolean.valueOf(z);
    }

    public boolean getAllowEnterTransitionOverlap() {
        Boolean bool;
        e eVar = this.K;
        if (eVar == null || (bool = eVar.r) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public void setAllowReturnTransitionOverlap(boolean z) {
        c().q = Boolean.valueOf(z);
    }

    public boolean getAllowReturnTransitionOverlap() {
        Boolean bool;
        e eVar = this.K;
        if (eVar == null || (bool = eVar.q) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public void postponeEnterTransition() {
        c().w = true;
    }

    public final void postponeEnterTransition(long j, @NonNull TimeUnit timeUnit) {
        Handler handler;
        c().w = true;
        FragmentManager fragmentManager = this.s;
        if (fragmentManager != null) {
            handler = fragmentManager.r.c;
        } else {
            handler = new Handler(Looper.getMainLooper());
        }
        Runnable runnable = this.L;
        handler.removeCallbacks(runnable);
        handler.postDelayed(runnable, timeUnit.toMillis(j));
    }

    public void startPostponedEnterTransition() {
        if (this.K == null || !c().w) {
            return;
        }
        if (this.t == null) {
            c().w = false;
        } else if (Looper.myLooper() != this.t.c.getLooper()) {
            this.t.c.postAtFrontOfQueue(new b());
        } else {
            a(true);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Fragment.this.a(false);
        }
    }

    public final void a(boolean z) {
        ViewGroup viewGroup;
        FragmentManager fragmentManager;
        e eVar = this.K;
        FragmentManager.l lVar = null;
        if (eVar != null) {
            eVar.w = false;
            FragmentManager.l lVar2 = eVar.x;
            eVar.x = null;
            lVar = lVar2;
        }
        if (lVar != null) {
            lVar.onStartEnterTransition();
            return;
        }
        if (!FragmentManager.O || this.H == null || (viewGroup = this.G) == null || (fragmentManager = this.s) == null) {
            return;
        }
        b1 b1VarG = b1.g(viewGroup, fragmentManager.B());
        b1VarG.h();
        if (z) {
            this.t.c.post(new n(b1VarG));
        } else {
            b1VarG.c();
        }
    }

    public void dump(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.w));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.x));
        printWriter.print(" mTag=");
        printWriter.println(this.y);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.f1604a);
        printWriter.print(" mWho=");
        printWriter.print(this.f);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.r);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.l);
        printWriter.print(" mRemoving=");
        printWriter.print(this.m);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.n);
        printWriter.print(" mInLayout=");
        printWriter.println(this.o);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.z);
        printWriter.print(" mDetached=");
        printWriter.print(this.A);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.E);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.D);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.B);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.J);
        if (this.s != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.s);
        }
        if (this.t != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.t);
        }
        if (this.v != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.v);
        }
        if (this.f1606g != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.f1606g);
        }
        if (this.f1605b != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.f1605b);
        }
        if (this.c != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.c);
        }
        if (this.d != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewRegistryState=");
            printWriter.println(this.d);
        }
        Fragment targetFragment = getTargetFragment();
        if (targetFragment != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(targetFragment);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.j);
        }
        printWriter.print(str);
        printWriter.print("mPopDirection=");
        e eVar = this.K;
        printWriter.println(eVar == null ? false : eVar.c);
        e eVar2 = this.K;
        if ((eVar2 == null ? 0 : eVar2.d) != 0) {
            printWriter.print(str);
            printWriter.print("getEnterAnim=");
            e eVar3 = this.K;
            printWriter.println(eVar3 == null ? 0 : eVar3.d);
        }
        e eVar4 = this.K;
        if ((eVar4 == null ? 0 : eVar4.e) != 0) {
            printWriter.print(str);
            printWriter.print("getExitAnim=");
            e eVar5 = this.K;
            printWriter.println(eVar5 == null ? 0 : eVar5.e);
        }
        e eVar6 = this.K;
        if ((eVar6 == null ? 0 : eVar6.f) != 0) {
            printWriter.print(str);
            printWriter.print("getPopEnterAnim=");
            e eVar7 = this.K;
            printWriter.println(eVar7 == null ? 0 : eVar7.f);
        }
        e eVar8 = this.K;
        if ((eVar8 == null ? 0 : eVar8.f1614g) != 0) {
            printWriter.print(str);
            printWriter.print("getPopExitAnim=");
            e eVar9 = this.K;
            printWriter.println(eVar9 != null ? eVar9.f1614g : 0);
        }
        if (this.G != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.G);
        }
        if (this.H != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.H);
        }
        e eVar10 = this.K;
        if ((eVar10 == null ? null : eVar10.f1612a) != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            e eVar11 = this.K;
            printWriter.println(eVar11 != null ? eVar11.f1612a : null);
        }
        if (getContext() != null) {
            LoaderManager.getInstance(this).dump(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.u + ":");
        this.u.dump(_COROUTINE.a.z(str, "  "), fileDescriptor, printWriter, strArr);
    }

    public FragmentContainer b() {
        return new o(this);
    }

    public void i(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.u.J();
        this.q = true;
        this.T = new x0(this, getViewModelStore());
        View viewOnCreateView = onCreateView(layoutInflater, viewGroup, bundle);
        this.H = viewOnCreateView;
        if (viewOnCreateView == null) {
            if (this.T.d != null) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.T = null;
        } else {
            this.T.b();
            ViewTreeLifecycleOwner.set(this.H, this.T);
            ViewTreeViewModelStoreOwner.set(this.H, this.T);
            ViewTreeSavedStateRegistryOwner.set(this.H, this.T);
            this.U.setValue(this.T);
        }
    }

    public final void l(boolean z) {
        onMultiWindowModeChanged(z);
        for (Fragment fragment : this.u.c.f()) {
            if (fragment != null) {
                fragment.l(z);
            }
        }
    }

    public final void m(boolean z) {
        onPictureInPictureModeChanged(z);
        for (Fragment fragment : this.u.c.f()) {
            if (fragment != null) {
                fragment.m(z);
            }
        }
    }

    public final void h(Configuration configuration) {
        onConfigurationChanged(configuration);
        for (Fragment fragment : this.u.c.f()) {
            if (fragment != null) {
                fragment.h(configuration);
            }
        }
    }

    public final void k() {
        onLowMemory();
        for (Fragment fragment : this.u.c.f()) {
            if (fragment != null) {
                fragment.k();
            }
        }
    }

    public final void j() {
        this.u.r(1);
        if (this.H != null && this.T.getLifecycle().getD().isAtLeast(Lifecycle.State.CREATED)) {
            this.T.a(Lifecycle.Event.ON_DESTROY);
        }
        this.f1604a = 1;
        this.F = false;
        onDestroyView();
        if (!this.F) {
            throw new e1(_COROUTINE.a.h("Fragment ", this, " did not call through to super.onDestroyView()"));
        }
        LoaderManager.getInstance(this).markForRedelivery();
        this.q = false;
    }

    public final void p(FragmentManager.l lVar) {
        c();
        e eVar = this.K;
        FragmentManager.l lVar2 = eVar.x;
        if (lVar == lVar2) {
            return;
        }
        if (lVar != null && lVar2 != null) {
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
        if (eVar.w) {
            eVar.x = lVar;
        }
        if (lVar != null) {
            lVar.startListening();
        }
    }

    public final e c() {
        if (this.K == null) {
            this.K = new e();
        }
        return this.K;
    }

    public final void o(int i, int i2, int i3, int i4) {
        if (this.K == null && i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return;
        }
        c().d = i;
        c().e = i2;
        c().f = i3;
        c().f1614g = i4;
    }

    public final SharedElementCallback d() {
        e eVar = this.K;
        if (eVar == null) {
            return null;
        }
        return eVar.s;
    }

    public class c implements Function<Void, ActivityResultRegistry> {
        public c() {
        }

        @Override // androidx.arch.core.util.Function
        public ActivityResultRegistry apply(Void r3) {
            Fragment fragment = Fragment.this;
            Object obj = fragment.t;
            if (obj instanceof ActivityResultRegistryOwner) {
                return ((ActivityResultRegistryOwner) obj).getActivityResultRegistry();
            }
            return fragment.requireActivity().getActivityResultRegistry();
        }
    }

    @Override // androidx.activity.result.ActivityResultCaller
    @NonNull
    @MainThread
    public final <I, O> ActivityResultLauncher<I> registerForActivityResult(@NonNull ActivityResultContract<I, O> activityResultContract, @NonNull ActivityResultCallback<O> activityResultCallback) {
        return n(activityResultContract, new c(), activityResultCallback);
    }

    public class d implements Function<Void, ActivityResultRegistry> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ActivityResultRegistry f1611a;

        public d(ActivityResultRegistry activityResultRegistry) {
            this.f1611a = activityResultRegistry;
        }

        @Override // androidx.arch.core.util.Function
        public ActivityResultRegistry apply(Void r1) {
            return this.f1611a;
        }
    }

    @Override // androidx.activity.result.ActivityResultCaller
    @NonNull
    @MainThread
    public final <I, O> ActivityResultLauncher<I> registerForActivityResult(@NonNull ActivityResultContract<I, O> activityResultContract, @NonNull ActivityResultRegistry activityResultRegistry, @NonNull ActivityResultCallback<O> activityResultCallback) {
        return n(activityResultContract, new d(activityResultRegistry), activityResultCallback);
    }

    public final ActivityResultLauncher n(ActivityResultContract activityResultContract, Function function, ActivityResultCallback activityResultCallback) {
        if (this.f1604a > 1) {
            throw new IllegalStateException(_COROUTINE.a.h("Fragment ", this, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."));
        }
        AtomicReference atomicReference = new AtomicReference();
        q qVar = new q(this, function, atomicReference, activityResultContract, activityResultCallback);
        if (this.f1604a >= 0) {
            qVar.a();
        } else {
            this.Z.add(qVar);
        }
        return new r(atomicReference, activityResultContract);
    }

    public static class e {

        /* renamed from: a, reason: collision with root package name */
        public View f1612a;

        /* renamed from: b, reason: collision with root package name */
        public Animator f1613b;
        public boolean c;
        public int d;
        public int e;
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public int f1614g;
        public int h;
        public ArrayList i;
        public ArrayList j;
        public Object k = null;
        public Object l;
        public Object m;
        public Object n;
        public Object o;
        public Object p;
        public Boolean q;
        public Boolean r;
        public SharedElementCallback s;
        public SharedElementCallback t;
        public float u;
        public View v;
        public boolean w;
        public FragmentManager.l x;
        public boolean y;

        public e() {
            Object obj = Fragment.a0;
            this.l = obj;
            this.m = null;
            this.n = obj;
            this.o = null;
            this.p = obj;
            this.s = null;
            this.t = null;
            this.u = 1.0f;
            this.v = null;
        }
    }
}
