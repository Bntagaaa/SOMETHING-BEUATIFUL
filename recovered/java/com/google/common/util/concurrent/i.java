package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.Sets;
import com.google.common.collect.UnmodifiableIterator;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;

@GwtCompatible
/* loaded from: classes.dex */
abstract class i<InputT, OutputT> extends j<OutputT> {
    public static final Logger o = Logger.getLogger(i.class.getName());
    public ImmutableCollection l;
    public final boolean m;
    public final boolean n;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public static final a f5026a = new a("OUTPUT_FUTURE_DONE", 0);

        /* renamed from: b, reason: collision with root package name */
        public static final a f5027b = new a("ALL_INPUT_FUTURES_PROCESSED", 1);
    }

    public abstract void k(int i, Object obj);

    public abstract void l();

    public i(ImmutableCollection immutableCollection, boolean z, boolean z2) {
        int size = immutableCollection.size();
        this.h = null;
        this.i = size;
        this.l = (ImmutableCollection) Preconditions.checkNotNull(immutableCollection);
        this.m = z;
        this.n = z2;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final void afterDone() {
        super.afterDone();
        ImmutableCollection immutableCollection = this.l;
        o(a.f5026a);
        if (isCancelled() && (immutableCollection != null)) {
            boolean zWasInterrupted = wasInterrupted();
            UnmodifiableIterator it = immutableCollection.iterator();
            while (it.hasNext()) {
                ((Future) it.next()).cancel(zWasInterrupted);
            }
        }
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final String pendingToString() {
        ImmutableCollection immutableCollection = this.l;
        if (immutableCollection != null) {
            return "futures=" + immutableCollection;
        }
        return super.pendingToString();
    }

    public final void n() {
        if (this.l.isEmpty()) {
            l();
            return;
        }
        if (this.m) {
            UnmodifiableIterator it = this.l.iterator();
            int i = 0;
            while (it.hasNext()) {
                ListenableFuture listenableFuture = (ListenableFuture) it.next();
                listenableFuture.addListener(new g(this, listenableFuture, i), MoreExecutors.directExecutor());
                i++;
            }
            return;
        }
        h hVar = new h(this, this.n ? this.l : null);
        UnmodifiableIterator it2 = this.l.iterator();
        while (it2.hasNext()) {
            ((ListenableFuture) it2.next()).addListener(hVar, MoreExecutors.directExecutor());
        }
    }

    public static void j(i iVar, ImmutableCollection immutableCollection) {
        int iB = j.j.b(iVar);
        int i = 0;
        Preconditions.checkState(iB >= 0, "Less than 0 remaining futures");
        if (iB == 0) {
            if (immutableCollection != null) {
                UnmodifiableIterator it = immutableCollection.iterator();
                while (it.hasNext()) {
                    Future future = (Future) it.next();
                    if (!future.isCancelled()) {
                        try {
                            iVar.k(i, Futures.getDone(future));
                        } catch (ExecutionException e) {
                            iVar.m(e.getCause());
                        } catch (Throwable th) {
                            iVar.m(th);
                        }
                    }
                    i++;
                }
            }
            iVar.h = null;
            iVar.l();
            iVar.o(a.f5027b);
        }
    }

    public final void m(Throwable th) {
        Preconditions.checkNotNull(th);
        if (this.m && !setException(th)) {
            Set set = this.h;
            if (set == null) {
                Set setNewConcurrentHashSet = Sets.newConcurrentHashSet();
                Preconditions.checkNotNull(setNewConcurrentHashSet);
                if (!isCancelled()) {
                    for (Throwable thTryInternalFastPathGetFailure = tryInternalFastPathGetFailure(); thTryInternalFastPathGetFailure != null && setNewConcurrentHashSet.add(thTryInternalFastPathGetFailure); thTryInternalFastPathGetFailure = thTryInternalFastPathGetFailure.getCause()) {
                    }
                }
                j.j.a(this, setNewConcurrentHashSet);
                set = this.h;
            }
            for (Throwable cause = th; cause != null; cause = cause.getCause()) {
                if (set.add(cause)) {
                }
            }
            o.log(Level.SEVERE, th instanceof Error ? "Input Future failed with Error" : "Got more than one input Future failure. Logging failures after the first", th);
            return;
        }
        if (th instanceof Error) {
            o.log(Level.SEVERE, _COROUTINE.a.x(th) ? "Input Future failed with Error" : "Got more than one input Future failure. Logging failures after the first", th);
        }
    }

    public void o(a aVar) {
        Preconditions.checkNotNull(aVar);
        this.l = null;
    }
}
