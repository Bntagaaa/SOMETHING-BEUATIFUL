package androidx.concurrent.futures;

import androidx.annotation.RestrictTo;
import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class DirectExecutor implements Executor {
    public static final DirectExecutor INSTANCE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ DirectExecutor[] f589a;

    public static DirectExecutor valueOf(String str) {
        return (DirectExecutor) Enum.valueOf(DirectExecutor.class, str);
    }

    public static DirectExecutor[] values() {
        return (DirectExecutor[]) f589a.clone();
    }

    static {
        DirectExecutor directExecutor = new DirectExecutor("INSTANCE", 0);
        INSTANCE = directExecutor;
        f589a = new DirectExecutor[]{directExecutor};
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public String toString() {
        return "DirectExecutor";
    }
}
