package androidx.fragment.app;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.annotation.LayoutRes;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;

/* loaded from: classes.dex */
public class DialogFragment extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    public static final int STYLE_NORMAL = 0;
    public static final int STYLE_NO_FRAME = 2;
    public static final int STYLE_NO_INPUT = 3;
    public static final int STYLE_NO_TITLE = 1;
    public Handler b0;
    public final Runnable c0;
    public final DialogInterface.OnCancelListener d0;
    public final DialogInterface.OnDismissListener e0;
    public int f0;
    public int g0;
    public boolean h0;
    public boolean i0;
    public int j0;
    public boolean k0;
    public final Observer l0;
    public Dialog m0;
    public boolean n0;
    public boolean o0;
    public boolean p0;
    public boolean q0;

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(@NonNull DialogInterface dialogInterface) {
    }

    public class a implements Runnable {
        @Override // java.lang.Runnable
        @SuppressLint({"SyntheticAccessor"})
        public void run() {
            DialogFragment dialogFragment = DialogFragment.this;
            dialogFragment.e0.onDismiss(dialogFragment.m0);
        }

        public a() {
        }
    }

    public class b implements DialogInterface.OnCancelListener {
        @Override // android.content.DialogInterface.OnCancelListener
        @SuppressLint({"SyntheticAccessor"})
        public void onCancel(@Nullable DialogInterface dialogInterface) {
            DialogFragment dialogFragment = DialogFragment.this;
            Dialog dialog = dialogFragment.m0;
            if (dialog != null) {
                dialogFragment.onCancel(dialog);
            }
        }

        public b() {
        }
    }

    public class c implements DialogInterface.OnDismissListener {
        @Override // android.content.DialogInterface.OnDismissListener
        @SuppressLint({"SyntheticAccessor"})
        public void onDismiss(@Nullable DialogInterface dialogInterface) {
            DialogFragment dialogFragment = DialogFragment.this;
            Dialog dialog = dialogFragment.m0;
            if (dialog != null) {
                dialogFragment.onDismiss(dialog);
            }
        }

        public c() {
        }
    }

    public class d implements Observer<LifecycleOwner> {
        @Override // androidx.lifecycle.Observer
        @SuppressLint({"SyntheticAccessor"})
        public void onChanged(LifecycleOwner lifecycleOwner) {
            if (lifecycleOwner != null) {
                DialogFragment dialogFragment = DialogFragment.this;
                if (dialogFragment.i0) {
                    View viewRequireView = dialogFragment.requireView();
                    if (viewRequireView.getParent() != null) {
                        throw new IllegalStateException("DialogFragment can not be attached to a container view");
                    }
                    if (dialogFragment.m0 != null) {
                        if (FragmentManager.D(3)) {
                            Log.d("FragmentManager", "DialogFragment " + this + " setting the content view on " + dialogFragment.m0);
                        }
                        dialogFragment.m0.setContentView(viewRequireView);
                    }
                }
            }
        }

        public d() {
        }
    }

    public DialogFragment() {
        this.c0 = new a();
        this.d0 = new b();
        this.e0 = new c();
        this.f0 = 0;
        this.g0 = 0;
        this.h0 = true;
        this.i0 = true;
        this.j0 = -1;
        this.l0 = new d();
        this.q0 = false;
    }

    public DialogFragment(@LayoutRes int i) {
        super(i);
        this.c0 = new a();
        this.d0 = new b();
        this.e0 = new c();
        this.f0 = 0;
        this.g0 = 0;
        this.h0 = true;
        this.i0 = true;
        this.j0 = -1;
        this.l0 = new d();
        this.q0 = false;
    }

    public void setStyle(int i, @StyleRes int i2) {
        if (FragmentManager.D(2)) {
            Log.d("FragmentManager", "Setting style and theme for DialogFragment " + this + " to " + i + ", " + i2);
        }
        this.f0 = i;
        if (i == 2 || i == 3) {
            this.g0 = R.style.Theme.Panel;
        }
        if (i2 != 0) {
            this.g0 = i2;
        }
    }

    public void show(@NonNull FragmentManager fragmentManager, @Nullable String str) {
        this.o0 = false;
        this.p0 = true;
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        fragmentTransactionBeginTransaction.add(this, str);
        fragmentTransactionBeginTransaction.commit();
    }

    public int show(@NonNull FragmentTransaction fragmentTransaction, @Nullable String str) {
        this.o0 = false;
        this.p0 = true;
        fragmentTransaction.add(this, str);
        this.n0 = false;
        int iCommit = fragmentTransaction.commit();
        this.j0 = iCommit;
        return iCommit;
    }

    public void showNow(@NonNull FragmentManager fragmentManager, @Nullable String str) {
        this.o0 = false;
        this.p0 = true;
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        fragmentTransactionBeginTransaction.add(this, str);
        fragmentTransactionBeginTransaction.commitNow();
    }

    public void dismiss() {
        q(false, false);
    }

    public void dismissAllowingStateLoss() {
        q(true, false);
    }

    public final void q(boolean z, boolean z2) {
        if (this.o0) {
            return;
        }
        this.o0 = true;
        this.p0 = false;
        Dialog dialog = this.m0;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.m0.dismiss();
            if (!z2) {
                if (Looper.myLooper() == this.b0.getLooper()) {
                    onDismiss(this.m0);
                } else {
                    this.b0.post(this.c0);
                }
            }
        }
        this.n0 = true;
        if (this.j0 >= 0) {
            getParentFragmentManager().popBackStack(this.j0, 1);
            this.j0 = -1;
            return;
        }
        FragmentTransaction fragmentTransactionBeginTransaction = getParentFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.remove(this);
        if (z) {
            fragmentTransactionBeginTransaction.commitAllowingStateLoss();
        } else {
            fragmentTransactionBeginTransaction.commit();
        }
    }

    @Nullable
    public Dialog getDialog() {
        return this.m0;
    }

    @NonNull
    public final Dialog requireDialog() {
        Dialog dialog = getDialog();
        if (dialog != null) {
            return dialog;
        }
        throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
    }

    @StyleRes
    public int getTheme() {
        return this.g0;
    }

    public void setCancelable(boolean z) {
        this.h0 = z;
        Dialog dialog = this.m0;
        if (dialog != null) {
            dialog.setCancelable(z);
        }
    }

    public boolean isCancelable() {
        return this.h0;
    }

    public void setShowsDialog(boolean z) {
        this.i0 = z;
    }

    public boolean getShowsDialog() {
        return this.i0;
    }

    @Override // androidx.fragment.app.Fragment
    @MainThread
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        getViewLifecycleOwnerLiveData().observeForever(this.l0);
        if (this.p0) {
            return;
        }
        this.o0 = false;
    }

    @Override // androidx.fragment.app.Fragment
    @MainThread
    public void onDetach() {
        super.onDetach();
        if (!this.p0 && !this.o0) {
            this.o0 = true;
        }
        getViewLifecycleOwnerLiveData().removeObserver(this.l0);
    }

    @Override // androidx.fragment.app.Fragment
    @MainThread
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.b0 = new Handler();
        this.i0 = this.x == 0;
        if (bundle != null) {
            this.f0 = bundle.getInt("android:style", 0);
            this.g0 = bundle.getInt("android:theme", 0);
            this.h0 = bundle.getBoolean("android:cancelable", true);
            this.i0 = bundle.getBoolean("android:showsDialog", this.i0);
            this.j0 = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void i(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.i(layoutInflater, viewGroup, bundle);
        if (this.H != null || this.m0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.m0.onRestoreInstanceState(bundle2);
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public LayoutInflater onGetLayoutInflater(@Nullable Bundle bundle) {
        LayoutInflater layoutInflaterOnGetLayoutInflater = super.onGetLayoutInflater(bundle);
        boolean z = this.i0;
        if (z && !this.k0) {
            if (z && !this.q0) {
                try {
                    this.k0 = true;
                    Dialog dialogOnCreateDialog = onCreateDialog(bundle);
                    this.m0 = dialogOnCreateDialog;
                    if (this.i0) {
                        setupDialog(dialogOnCreateDialog, this.f0);
                        Context context = getContext();
                        if (context instanceof Activity) {
                            this.m0.setOwnerActivity((Activity) context);
                        }
                        this.m0.setCancelable(this.h0);
                        this.m0.setOnCancelListener(this.d0);
                        this.m0.setOnDismissListener(this.e0);
                        this.q0 = true;
                    } else {
                        this.m0 = null;
                    }
                    this.k0 = false;
                } catch (Throwable th) {
                    this.k0 = false;
                    throw th;
                }
            }
            if (FragmentManager.D(2)) {
                Log.d("FragmentManager", "get layout inflater for DialogFragment " + this + " from dialog context");
            }
            Dialog dialog = this.m0;
            if (dialog != null) {
                return layoutInflaterOnGetLayoutInflater.cloneInContext(dialog.getContext());
            }
        } else if (FragmentManager.D(2)) {
            String str = "getting layout inflater for DialogFragment " + this;
            if (!this.i0) {
                _COROUTINE.a.B("mShowsDialog = false: ", str, "FragmentManager");
                return layoutInflaterOnGetLayoutInflater;
            }
            _COROUTINE.a.B("mCreatingDialog = true: ", str, "FragmentManager");
        }
        return layoutInflaterOnGetLayoutInflater;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setupDialog(@NonNull Dialog dialog, int i) {
        if (i != 1 && i != 2) {
            if (i != 3) {
                return;
            }
            Window window = dialog.getWindow();
            if (window != null) {
                window.addFlags(24);
            }
        }
        dialog.requestWindowFeature(1);
    }

    @NonNull
    @MainThread
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        if (FragmentManager.D(3)) {
            Log.d("FragmentManager", "onCreateDialog called for DialogFragment " + this);
        }
        return new Dialog(requireContext(), getTheme());
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NonNull DialogInterface dialogInterface) {
        if (this.n0) {
            return;
        }
        if (FragmentManager.D(3)) {
            Log.d("FragmentManager", "onDismiss called for DialogFragment " + this);
        }
        q(true, true);
    }

    @Override // androidx.fragment.app.Fragment
    @MainThread
    public void onViewStateRestored(@Nullable Bundle bundle) {
        Bundle bundle2;
        super.onViewStateRestored(bundle);
        if (this.m0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.m0.onRestoreInstanceState(bundle2);
    }

    @Override // androidx.fragment.app.Fragment
    @MainThread
    public void onStart() {
        super.onStart();
        Dialog dialog = this.m0;
        if (dialog != null) {
            this.n0 = false;
            dialog.show();
            View decorView = this.m0.getWindow().getDecorView();
            ViewTreeLifecycleOwner.set(decorView, this);
            ViewTreeViewModelStoreOwner.set(decorView, this);
            ViewTreeSavedStateRegistryOwner.set(decorView, this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @MainThread
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Dialog dialog = this.m0;
        if (dialog != null) {
            Bundle bundleOnSaveInstanceState = dialog.onSaveInstanceState();
            bundleOnSaveInstanceState.putBoolean("android:dialogShowing", false);
            bundle.putBundle("android:savedDialogState", bundleOnSaveInstanceState);
        }
        int i = this.f0;
        if (i != 0) {
            bundle.putInt("android:style", i);
        }
        int i2 = this.g0;
        if (i2 != 0) {
            bundle.putInt("android:theme", i2);
        }
        boolean z = this.h0;
        if (!z) {
            bundle.putBoolean("android:cancelable", z);
        }
        boolean z2 = this.i0;
        if (!z2) {
            bundle.putBoolean("android:showsDialog", z2);
        }
        int i3 = this.j0;
        if (i3 != -1) {
            bundle.putInt("android:backStackId", i3);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @MainThread
    public void onStop() {
        super.onStop();
        Dialog dialog = this.m0;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.Fragment
    @MainThread
    public void onDestroyView() {
        super.onDestroyView();
        Dialog dialog = this.m0;
        if (dialog != null) {
            this.n0 = true;
            dialog.setOnDismissListener(null);
            this.m0.dismiss();
            if (!this.o0) {
                onDismiss(this.m0);
            }
            this.m0 = null;
            this.q0 = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final FragmentContainer b() {
        return new m(this, new o(this));
    }
}
