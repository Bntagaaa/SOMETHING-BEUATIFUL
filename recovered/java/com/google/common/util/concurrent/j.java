package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.j2objc.annotations.ReflectionSupport;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;

@ReflectionSupport(ReflectionSupport.Level.FULL)
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
abstract class j<OutputT> extends AbstractFuture.j<OutputT> {
    public static final b j;
    public static final Logger k = Logger.getLogger(j.class.getName());
    public volatile Set h;
    public volatile int i;

    static {
        b dVar;
        try {
            dVar = new c(AtomicReferenceFieldUpdater.newUpdater(j.class, Set.class, "h"), AtomicIntegerFieldUpdater.newUpdater(j.class, "i"));
            th = null;
        } catch (Throwable th) {
            th = th;
            dVar = new d(0);
        }
        j = dVar;
        if (th != null) {
            k.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
    }

    public static abstract class b {
        public abstract void a(i iVar, Set set);

        public abstract int b(i iVar);

        private b() {
        }

        public /* synthetic */ b(int i) {
            this();
        }
    }

    public static final class c extends b {

        /* renamed from: a, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater f5028a;

        /* renamed from: b, reason: collision with root package name */
        public final AtomicIntegerFieldUpdater f5029b;

        public c(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
            super(0);
            this.f5028a = atomicReferenceFieldUpdater;
            this.f5029b = atomicIntegerFieldUpdater;
        }

        @Override // com.google.common.util.concurrent.j.b
        public final void a(i iVar, Set set) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.f5028a;
                if (atomicReferenceFieldUpdater.compareAndSet(iVar, null, set)) {
                    return;
                }
            } while (atomicReferenceFieldUpdater.get(iVar) == null);
        }

        @Override // com.google.common.util.concurrent.j.b
        public final int b(i iVar) {
            return this.f5029b.decrementAndGet(iVar);
        }
    }

    public static final class d extends b {
        private d() {
            super(0);
        }

        public /* synthetic */ d(int i) {
            this();
        }

        @Override // com.google.common.util.concurrent.j.b
        public final void a(i iVar, Set set) {
            synchronized (iVar) {
                if (iVar.h == null) {
                    iVar.h = set;
                }
            }
        }

        @Override // com.google.common.util.concurrent.j.b
        public final int b(i iVar) {
            int i;
            synchronized (iVar) {
                i = iVar.i - 1;
                iVar.i = i;
            }
            return i;
        }
    }
}
