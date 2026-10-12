package androidx.core.content.res;

import android.graphics.Typeface;
import androidx.core.content.res.ResourcesCompat;
import androidx.lifecycle.DispatchQueue;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.android.HandlerContext;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1021a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1022b;
    public final /* synthetic */ Object c;

    public /* synthetic */ e(Object obj, Object obj2, int i) {
        this.f1021a = i;
        this.f1022b = obj;
        this.c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1021a) {
            case 0:
                ((ResourcesCompat.FontCallback) this.f1022b).onFontRetrieved((Typeface) this.c);
                return;
            case 1:
                DispatchQueue this$0 = (DispatchQueue) this.f1022b;
                Intrinsics.checkNotNullParameter(this$0, "this$0");
                Runnable runnable = (Runnable) this.c;
                Intrinsics.checkNotNullParameter(runnable, "$runnable");
                if (!this$0.d.offer(runnable)) {
                    throw new IllegalStateException("cannot enqueue any more runnables");
                }
                this$0.drainQueue();
                return;
            default:
                HandlerContext.scheduleResumeAfterDelay$lambda$1((CancellableContinuation) this.f1022b, (HandlerContext) this.c);
                return;
        }
    }
}
