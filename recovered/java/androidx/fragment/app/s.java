package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.savedstate.SavedStateRegistry;

/* loaded from: classes.dex */
class s implements SavedStateRegistry.SavedStateProvider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FragmentActivity f1737a;

    public s(FragmentActivity fragmentActivity) {
        this.f1737a = fragmentActivity;
    }

    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
    @NonNull
    public Bundle saveState() {
        Bundle bundle = new Bundle();
        FragmentActivity fragmentActivity = this.f1737a;
        fragmentActivity.markFragmentsCreated();
        fragmentActivity.mFragmentLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
        Parcelable parcelableSaveAllState = fragmentActivity.mFragments.saveAllState();
        if (parcelableSaveAllState != null) {
            bundle.putParcelable("android:support:fragments", parcelableSaveAllState);
        }
        return bundle;
    }
}
