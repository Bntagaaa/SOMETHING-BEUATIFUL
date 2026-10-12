package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.DoNotMock;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import kotlinx.coroutines.debug.internal.DebugCoroutineInfoImplKt;

@DoNotMock("Create an AbstractIdleService")
@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public interface Service {

    @Beta
    public static abstract class Listener {
        public void failed(State state, Throwable th) {
        }

        public void running() {
        }

        public void starting() {
        }

        public void stopping(State state) {
        }

        public void terminated(State state) {
        }
    }

    void addListener(Listener listener, Executor executor);

    void awaitRunning();

    void awaitRunning(long j, TimeUnit timeUnit) throws TimeoutException;

    void awaitTerminated();

    void awaitTerminated(long j, TimeUnit timeUnit) throws TimeoutException;

    Throwable failureCause();

    boolean isRunning();

    @CanIgnoreReturnValue
    Service startAsync();

    State state();

    @CanIgnoreReturnValue
    Service stopAsync();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Beta
    public static abstract class State {
        public static final State FAILED;
        public static final State NEW;
        public static final State RUNNING;
        public static final State STARTING;
        public static final State STOPPING;
        public static final State TERMINATED;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ State[] f4980a;

        public abstract boolean a();

        public enum a extends State {
            @Override // com.google.common.util.concurrent.Service.State
            public final boolean a() {
                return false;
            }

            public a() {
                super("NEW", 0);
            }
        }

        public enum b extends State {
            @Override // com.google.common.util.concurrent.Service.State
            public final boolean a() {
                return false;
            }

            public b() {
                super("STARTING", 1);
            }
        }

        public enum c extends State {
            @Override // com.google.common.util.concurrent.Service.State
            public final boolean a() {
                return false;
            }

            public c() {
                super(DebugCoroutineInfoImplKt.RUNNING, 2);
            }
        }

        public enum d extends State {
            @Override // com.google.common.util.concurrent.Service.State
            public final boolean a() {
                return false;
            }

            public d() {
                super("STOPPING", 3);
            }
        }

        public enum e extends State {
            @Override // com.google.common.util.concurrent.Service.State
            public final boolean a() {
                return true;
            }

            public e() {
                super("TERMINATED", 4);
            }
        }

        public enum f extends State {
            @Override // com.google.common.util.concurrent.Service.State
            public final boolean a() {
                return true;
            }

            public f() {
                super("FAILED", 5);
            }
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) f4980a.clone();
        }

        static {
            a aVar = new a();
            NEW = aVar;
            b bVar = new b();
            STARTING = bVar;
            c cVar = new c();
            RUNNING = cVar;
            d dVar = new d();
            STOPPING = dVar;
            e eVar = new e();
            TERMINATED = eVar;
            f fVar = new f();
            FAILED = fVar;
            f4980a = new State[]{aVar, bVar, cVar, dVar, eVar, fVar};
        }
    }
}
