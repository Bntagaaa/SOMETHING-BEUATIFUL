package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
class t implements OnContextAvailableListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FragmentActivity f1742a;

    public t(FragmentActivity fragmentActivity) {
        this.f1742a = fragmentActivity;
    }

    @Override // androidx.activity.contextaware.OnContextAvailableListener
    public void onContextAvailable(@NonNull Context context) {
        FragmentActivity fragmentActivity = this.f1742a;
        fragmentActivity.mFragments.attachHost(null);
        Bundle bundleConsumeRestoredStateForKey = fragmentActivity.getSavedStateRegistry().consumeRestoredStateForKey("android:support:fragments");
        if (bundleConsumeRestoredStateForKey != null) {
            fragmentActivity.mFragments.restoreSaveState(bundleConsumeRestoredStateForKey.getParcelable("android:support:fragments"));
        }
    }
}
