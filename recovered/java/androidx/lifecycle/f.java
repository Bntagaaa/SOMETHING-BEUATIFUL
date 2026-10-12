package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import androidx.savedstate.SavedStateRegistry;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements LifecycleEventObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1896a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1897b;

    public /* synthetic */ f(Object obj, int i) {
        this.f1896a = i;
        this.f1897b = obj;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        Object obj = this.f1897b;
        switch (this.f1896a) {
            case 0:
                MutableStateFlow mutableStateFlow = (MutableStateFlow) obj;
                Intrinsics.checkNotNullParameter(mutableStateFlow, "$mutableStateFlow");
                Intrinsics.checkNotNullParameter(lifecycleOwner, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(event, "event");
                mutableStateFlow.setValue(event.getTargetState());
                break;
            case 1:
                ((ProducerScope) obj).mo1142trySendJP2dKIU(event);
                break;
            default:
                int i = SavedStateRegistry.f2202g;
                SavedStateRegistry this$0 = (SavedStateRegistry) obj;
                Intrinsics.checkNotNullParameter(this$0, "this$0");
                Intrinsics.checkNotNullParameter(lifecycleOwner, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(event, "event");
                if (event != Lifecycle.Event.ON_START) {
                    if (event == Lifecycle.Event.ON_STOP) {
                        this$0.isAllowingSavingState = false;
                        break;
                    }
                } else {
                    this$0.isAllowingSavingState = true;
                    break;
                }
                break;
        }
    }
}
