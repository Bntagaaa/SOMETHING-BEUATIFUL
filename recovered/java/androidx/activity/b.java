package androidx.activity;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.ProcessLifecycleOwner;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f42a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f43b;

    public /* synthetic */ b(Object obj, int i) {
        this.f42a = i;
        this.f43b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj = this.f43b;
        switch (this.f42a) {
            case 0:
                ((ComponentActivity) obj).invalidateMenu();
                break;
            case 1:
                ComponentDialog.a((ComponentDialog) obj);
                break;
            case 2:
                ((OnBackPressedDispatcher) obj).onBackPressed();
                break;
            case 3:
                Function0 action = (Function0) obj;
                Intrinsics.checkNotNullParameter(action, "$action");
                action.invoke();
                break;
            case 4:
                View view = (View) obj;
                ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 0);
                break;
            default:
                ProcessLifecycleOwner.Companion companion = ProcessLifecycleOwner.Companion;
                ProcessLifecycleOwner this$0 = (ProcessLifecycleOwner) obj;
                Intrinsics.checkNotNullParameter(this$0, "this$0");
                this$0.dispatchPauseIfNeeded$lifecycle_process_release();
                this$0.dispatchStopIfNeeded$lifecycle_process_release();
                break;
        }
    }
}
