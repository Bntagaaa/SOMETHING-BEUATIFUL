package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.VisibleForTesting;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.internal.FastSafeIterableMap;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.Lifecycle;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\b\u0016\u0018\u0000  2\u00020\u0001:\u0002 !B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0017¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0013\u0010\u0012R$\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00068V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\nR\u001a\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e¨\u0006\""}, d2 = {"Landroidx/lifecycle/LifecycleRegistry;", "Landroidx/lifecycle/Lifecycle;", "Landroidx/lifecycle/LifecycleOwner;", "provider", "<init>", "(Landroidx/lifecycle/LifecycleOwner;)V", "Landroidx/lifecycle/Lifecycle$State;", "state", "", "markState", "(Landroidx/lifecycle/Lifecycle$State;)V", "Landroidx/lifecycle/Lifecycle$Event;", NotificationCompat.CATEGORY_EVENT, "handleLifecycleEvent", "(Landroidx/lifecycle/Lifecycle$Event;)V", "Landroidx/lifecycle/LifecycleObserver;", "observer", "addObserver", "(Landroidx/lifecycle/LifecycleObserver;)V", "removeObserver", "getCurrentState", "()Landroidx/lifecycle/Lifecycle$State;", "setCurrentState", "currentState", "Lkotlinx/coroutines/flow/StateFlow;", "getCurrentStateFlow", "()Lkotlinx/coroutines/flow/StateFlow;", "currentStateFlow", "", "getObserverCount", "()I", "observerCount", "Companion", "ObserverWithState", "lifecycle-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public class LifecycleRegistry extends Lifecycle {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: b, reason: collision with root package name */
    public final boolean f1822b;
    public FastSafeIterableMap c;
    public Lifecycle.State d;
    public final WeakReference e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f1823g;
    public boolean h;
    public final ArrayList i;
    public final MutableStateFlow j;

    public /* synthetic */ LifecycleRegistry(LifecycleOwner lifecycleOwner, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(lifecycleOwner, z);
    }

    @JvmStatic
    @VisibleForTesting
    @NotNull
    public static final LifecycleRegistry createUnsafe(@NotNull LifecycleOwner lifecycleOwner) {
        return INSTANCE.createUnsafe(lifecycleOwner);
    }

    public LifecycleRegistry(LifecycleOwner lifecycleOwner, boolean z) {
        this.f1822b = z;
        this.c = new FastSafeIterableMap();
        Lifecycle.State state = Lifecycle.State.INITIALIZED;
        this.d = state;
        this.i = new ArrayList();
        this.e = new WeakReference(lifecycleOwner);
        this.j = StateFlowKt.MutableStateFlow(state);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LifecycleRegistry(@NotNull LifecycleOwner provider) {
        this(provider, true);
        Intrinsics.checkNotNullParameter(provider, "provider");
    }

    @Deprecated(message = "Override [currentState].")
    @MainThread
    public void markState(@NotNull Lifecycle.State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        b("markState");
        setCurrentState(state);
    }

    @Override // androidx.lifecycle.Lifecycle
    @NotNull
    /* renamed from: getCurrentState, reason: from getter */
    public Lifecycle.State getD() {
        return this.d;
    }

    public void setCurrentState(@NotNull Lifecycle.State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        b("setCurrentState");
        c(state);
    }

    @Override // androidx.lifecycle.Lifecycle
    @NotNull
    public StateFlow<Lifecycle.State> getCurrentStateFlow() {
        return FlowKt.asStateFlow(this.j);
    }

    public void handleLifecycleEvent(@NotNull Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(event, "event");
        b("handleLifecycleEvent");
        c(event.getTargetState());
    }

    public final void c(Lifecycle.State state) {
        Lifecycle.State state2 = this.d;
        if (state2 == state) {
            return;
        }
        if (state2 == Lifecycle.State.INITIALIZED && state == Lifecycle.State.DESTROYED) {
            throw new IllegalStateException(("no event down from " + this.d + " in component " + this.e.get()).toString());
        }
        this.d = state;
        if (this.f1823g || this.f != 0) {
            this.h = true;
            return;
        }
        this.f1823g = true;
        d();
        this.f1823g = false;
        if (this.d == Lifecycle.State.DESTROYED) {
            this.c = new FastSafeIterableMap();
        }
    }

    public final Lifecycle.State a(LifecycleObserver lifecycleObserver) {
        ObserverWithState observerWithState;
        Map.Entry entryCeil = this.c.ceil(lifecycleObserver);
        Lifecycle.State state = (entryCeil == null || (observerWithState = (ObserverWithState) entryCeil.getValue()) == null) ? null : observerWithState.getState();
        ArrayList arrayList = this.i;
        Lifecycle.State state2 = arrayList.isEmpty() ? null : (Lifecycle.State) arrayList.get(arrayList.size() - 1);
        Companion companion = INSTANCE;
        return companion.min$lifecycle_runtime_release(companion.min$lifecycle_runtime_release(this.d, state), state2);
    }

    @Override // androidx.lifecycle.Lifecycle
    public void addObserver(@NotNull LifecycleObserver observer) {
        LifecycleOwner lifecycleOwner;
        Intrinsics.checkNotNullParameter(observer, "observer");
        b("addObserver");
        Lifecycle.State state = this.d;
        Lifecycle.State state2 = Lifecycle.State.DESTROYED;
        if (state != state2) {
            state2 = Lifecycle.State.INITIALIZED;
        }
        ObserverWithState observerWithState = new ObserverWithState(observer, state2);
        if (((ObserverWithState) this.c.putIfAbsent(observer, observerWithState)) == null && (lifecycleOwner = (LifecycleOwner) this.e.get()) != null) {
            boolean z = this.f != 0 || this.f1823g;
            Lifecycle.State stateA = a(observer);
            this.f++;
            while (observerWithState.getState().compareTo(stateA) < 0 && this.c.contains(observer)) {
                this.i.add(observerWithState.getState());
                Lifecycle.Event eventUpFrom = Lifecycle.Event.INSTANCE.upFrom(observerWithState.getState());
                if (eventUpFrom == null) {
                    throw new IllegalStateException("no event up from " + observerWithState.getState());
                }
                observerWithState.dispatchEvent(lifecycleOwner, eventUpFrom);
                ArrayList arrayList = this.i;
                arrayList.remove(arrayList.size() - 1);
                stateA = a(observer);
            }
            if (!z) {
                d();
            }
            this.f--;
        }
    }

    @Override // androidx.lifecycle.Lifecycle
    public void removeObserver(@NotNull LifecycleObserver observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        b("removeObserver");
        this.c.remove(observer);
    }

    public int getObserverCount() {
        b("getObserverCount");
        return this.c.size();
    }

    public final void d() {
        LifecycleOwner lifecycleOwner = (LifecycleOwner) this.e.get();
        if (lifecycleOwner != null) {
            while (this.c.size() != 0) {
                Map.Entry<K, V> entryEldest = this.c.eldest();
                Intrinsics.checkNotNull(entryEldest);
                Lifecycle.State state = ((ObserverWithState) entryEldest.getValue()).getState();
                Map.Entry<K, V> entryNewest = this.c.newest();
                Intrinsics.checkNotNull(entryNewest);
                Lifecycle.State state2 = ((ObserverWithState) entryNewest.getValue()).getState();
                if (state == state2 && this.d == state2) {
                    break;
                }
                this.h = false;
                Lifecycle.State state3 = this.d;
                Map.Entry<K, V> entryEldest2 = this.c.eldest();
                Intrinsics.checkNotNull(entryEldest2);
                if (state3.compareTo(((ObserverWithState) entryEldest2.getValue()).getState()) < 0) {
                    Iterator<Map.Entry<K, V>> itDescendingIterator = this.c.descendingIterator();
                    Intrinsics.checkNotNullExpressionValue(itDescendingIterator, "observerMap.descendingIterator()");
                    while (itDescendingIterator.hasNext() && !this.h) {
                        Map.Entry entry = (Map.Entry) itDescendingIterator.next();
                        Intrinsics.checkNotNullExpressionValue(entry, "next()");
                        LifecycleObserver lifecycleObserver = (LifecycleObserver) entry.getKey();
                        ObserverWithState observerWithState = (ObserverWithState) entry.getValue();
                        while (observerWithState.getState().compareTo(this.d) > 0 && !this.h && this.c.contains(lifecycleObserver)) {
                            Lifecycle.Event eventDownFrom = Lifecycle.Event.INSTANCE.downFrom(observerWithState.getState());
                            if (eventDownFrom == null) {
                                throw new IllegalStateException("no event down from " + observerWithState.getState());
                            }
                            this.i.add(eventDownFrom.getTargetState());
                            observerWithState.dispatchEvent(lifecycleOwner, eventDownFrom);
                            this.i.remove(r4.size() - 1);
                        }
                    }
                }
                Map.Entry<K, V> entryNewest2 = this.c.newest();
                if (!this.h && entryNewest2 != 0 && this.d.compareTo(((ObserverWithState) entryNewest2.getValue()).getState()) > 0) {
                    SafeIterableMap<K, V>.IteratorWithAdditions iteratorWithAdditions = this.c.iteratorWithAdditions();
                    Intrinsics.checkNotNullExpressionValue(iteratorWithAdditions, "observerMap.iteratorWithAdditions()");
                    while (iteratorWithAdditions.hasNext() && !this.h) {
                        Map.Entry next = iteratorWithAdditions.next();
                        LifecycleObserver lifecycleObserver2 = (LifecycleObserver) next.getKey();
                        ObserverWithState observerWithState2 = (ObserverWithState) next.getValue();
                        while (observerWithState2.getState().compareTo(this.d) < 0 && !this.h && this.c.contains(lifecycleObserver2)) {
                            this.i.add(observerWithState2.getState());
                            Lifecycle.Event eventUpFrom = Lifecycle.Event.INSTANCE.upFrom(observerWithState2.getState());
                            if (eventUpFrom == null) {
                                throw new IllegalStateException("no event up from " + observerWithState2.getState());
                            }
                            observerWithState2.dispatchEvent(lifecycleOwner, eventUpFrom);
                            this.i.remove(r4.size() - 1);
                        }
                    }
                }
            }
            this.h = false;
            this.j.setValue(getD());
            return;
        }
        throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state.");
    }

    public final void b(String str) {
        if (this.f1822b && !ArchTaskExecutor.getInstance().isMainThread()) {
            throw new IllegalStateException(_COROUTINE.a.A("Method ", str, " must be called on the main thread").toString());
        }
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\r\u001a\u00020\f2\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eR\"\u0010\u0015\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;", "", "Landroidx/lifecycle/LifecycleObserver;", "observer", "Landroidx/lifecycle/Lifecycle$State;", "initialState", "<init>", "(Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/Lifecycle$State;)V", "Landroidx/lifecycle/LifecycleOwner;", "owner", "Landroidx/lifecycle/Lifecycle$Event;", NotificationCompat.CATEGORY_EVENT, "", "dispatchEvent", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V", "a", "Landroidx/lifecycle/Lifecycle$State;", "getState", "()Landroidx/lifecycle/Lifecycle$State;", "setState", "(Landroidx/lifecycle/Lifecycle$State;)V", "state", "Landroidx/lifecycle/LifecycleEventObserver;", "b", "Landroidx/lifecycle/LifecycleEventObserver;", "getLifecycleObserver", "()Landroidx/lifecycle/LifecycleEventObserver;", "setLifecycleObserver", "(Landroidx/lifecycle/LifecycleEventObserver;)V", "lifecycleObserver", "lifecycle-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class ObserverWithState {

        /* renamed from: a, reason: collision with root package name and from kotlin metadata */
        public Lifecycle.State state;

        /* renamed from: b, reason: collision with root package name and from kotlin metadata */
        public LifecycleEventObserver lifecycleObserver;

        public ObserverWithState(@Nullable LifecycleObserver lifecycleObserver, @NotNull Lifecycle.State initialState) {
            Intrinsics.checkNotNullParameter(initialState, "initialState");
            Intrinsics.checkNotNull(lifecycleObserver);
            this.lifecycleObserver = Lifecycling.lifecycleEventObserver(lifecycleObserver);
            this.state = initialState;
        }

        @NotNull
        public final Lifecycle.State getState() {
            return this.state;
        }

        public final void setState(@NotNull Lifecycle.State state) {
            Intrinsics.checkNotNullParameter(state, "<set-?>");
            this.state = state;
        }

        @NotNull
        public final LifecycleEventObserver getLifecycleObserver() {
            return this.lifecycleObserver;
        }

        public final void setLifecycleObserver(@NotNull LifecycleEventObserver lifecycleEventObserver) {
            Intrinsics.checkNotNullParameter(lifecycleEventObserver, "<set-?>");
            this.lifecycleObserver = lifecycleEventObserver;
        }

        public final void dispatchEvent(@Nullable LifecycleOwner owner, @NotNull Lifecycle.Event event) {
            Intrinsics.checkNotNullParameter(event, "event");
            Lifecycle.State targetState = event.getTargetState();
            this.state = LifecycleRegistry.INSTANCE.min$lifecycle_runtime_release(this.state, targetState);
            LifecycleEventObserver lifecycleEventObserver = this.lifecycleObserver;
            Intrinsics.checkNotNull(owner);
            lifecycleEventObserver.onStateChanged(owner, event);
            this.state = targetState;
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u001f\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\bH\u0001¢\u0006\u0002\b\u000b¨\u0006\f"}, d2 = {"Landroidx/lifecycle/LifecycleRegistry$Companion;", "", "()V", "createUnsafe", "Landroidx/lifecycle/LifecycleRegistry;", "owner", "Landroidx/lifecycle/LifecycleOwner;", "min", "Landroidx/lifecycle/Lifecycle$State;", "state1", "state2", "min$lifecycle_runtime_release", "lifecycle-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        @VisibleForTesting
        @NotNull
        public final LifecycleRegistry createUnsafe(@NotNull LifecycleOwner owner) {
            Intrinsics.checkNotNullParameter(owner, "owner");
            return new LifecycleRegistry(owner, false, null);
        }

        @JvmStatic
        @NotNull
        public final Lifecycle.State min$lifecycle_runtime_release(@NotNull Lifecycle.State state1, @Nullable Lifecycle.State state2) {
            Intrinsics.checkNotNullParameter(state1, "state1");
            return (state2 == null || state2.compareTo(state1) >= 0) ? state1 : state2;
        }
    }
}
