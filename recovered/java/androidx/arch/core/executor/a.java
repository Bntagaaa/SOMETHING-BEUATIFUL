package androidx.arch.core.executor;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f523a;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f523a) {
            case 0:
                ArchTaskExecutor.getInstance().postToMainThread(runnable);
                break;
            case 1:
                ArchTaskExecutor.getInstance().executeOnDiskIO(runnable);
                break;
            default:
                runnable.run();
                break;
        }
    }
}
