package androidx.fragment.app;

import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.arch.core.util.Function;
import androidx.fragment.app.Fragment;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
class q extends Fragment.f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Function f1727a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f1728b;
    public final /* synthetic */ ActivityResultContract c;
    public final /* synthetic */ ActivityResultCallback d;
    public final /* synthetic */ Fragment e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(Fragment fragment, Function function, AtomicReference atomicReference, ActivityResultContract activityResultContract, ActivityResultCallback activityResultCallback) {
        super(0);
        this.e = fragment;
        this.f1727a = function;
        this.f1728b = atomicReference;
        this.c = activityResultContract;
        this.d = activityResultCallback;
    }

    @Override // androidx.fragment.app.Fragment.f
    public final void a() {
        StringBuilder sb = new StringBuilder("fragment_");
        Fragment fragment = this.e;
        sb.append(fragment.f);
        sb.append("_rq#");
        sb.append(fragment.Y.getAndIncrement());
        this.f1728b.set(((ActivityResultRegistry) this.f1727a.apply(null)).register(sb.toString(), fragment, this.c, this.d));
    }
}
