package androidx.fragment.app;

import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityOptionsCompat;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
class r extends ActivityResultLauncher<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f1732a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityResultContract f1733b;

    public r(AtomicReference atomicReference, ActivityResultContract activityResultContract) {
        this.f1732a = atomicReference;
        this.f1733b = activityResultContract;
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public void launch(Object obj, @Nullable ActivityOptionsCompat activityOptionsCompat) {
        ActivityResultLauncher activityResultLauncher = (ActivityResultLauncher) this.f1732a.get();
        if (activityResultLauncher == null) {
            throw new IllegalStateException("Operation cannot be started before fragment is in created state");
        }
        activityResultLauncher.launch(obj, activityOptionsCompat);
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public void unregister() {
        ActivityResultLauncher activityResultLauncher = (ActivityResultLauncher) this.f1732a.getAndSet(null);
        if (activityResultLauncher != null) {
            activityResultLauncher.unregister();
        }
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    @NonNull
    public ActivityResultContract<Object, ?> getContract() {
        return this.f1733b;
    }
}
