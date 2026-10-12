package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.collect.MapMaker;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.logging.Level;
import java.util.logging.Logger;

@CanIgnoreReturnValue
@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public class CycleDetectingLockFactory {

    /* renamed from: b, reason: collision with root package name */
    public static final ConcurrentMap f4920b = new MapMaker().weakKeys().makeMap();
    public static final Logger c = Logger.getLogger(CycleDetectingLockFactory.class.getName());
    public static final ThreadLocal d = new a();

    /* renamed from: a, reason: collision with root package name */
    public final Policy f4921a;

    @Beta
    public interface Policy {
        void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException);
    }

    public interface b {
        h getLockGraphNode();

        boolean isAcquiredByCurrentThread();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Beta
    public static abstract class Policies implements Policy {
        public static final Policies DISABLED;
        public static final Policies THROW;
        public static final Policies WARN;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Policies[] f4922a;

        public enum b extends Policies {
            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.Policy
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
                CycleDetectingLockFactory.c.log(Level.SEVERE, "Detected potential deadlock", (Throwable) potentialDeadlockException);
            }

            public b() {
                super("WARN", 1);
            }
        }

        public enum a extends Policies {
            public a() {
                super("THROW", 0);
            }

            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.Policy
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
                throw potentialDeadlockException;
            }
        }

        public enum c extends Policies {
            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.Policy
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
            }

            public c() {
                super("DISABLED", 2);
            }
        }

        public static Policies valueOf(String str) {
            return (Policies) Enum.valueOf(Policies.class, str);
        }

        public static Policies[] values() {
            return (Policies[]) f4922a.clone();
        }

        static {
            a aVar = new a();
            THROW = aVar;
            b bVar = new b();
            WARN = bVar;
            c cVar = new c();
            DISABLED = cVar;
            f4922a = new Policies[]{aVar, bVar, cVar};
        }
    }

    @Beta
    public static final class WithExplicitOrdering<E extends Enum<E>> extends CycleDetectingLockFactory {
        public final Map e;

        public WithExplicitOrdering(Policy policy, Map map) {
            super(policy);
            this.e = map;
        }

        public ReentrantLock newReentrantLock(E e) {
            return newReentrantLock((WithExplicitOrdering<E>) e, false);
        }

        public ReentrantLock newReentrantLock(E e, boolean z) {
            return this.f4921a == Policies.DISABLED ? new ReentrantLock(z) : new c((h) this.e.get(e), z);
        }

        public ReentrantReadWriteLock newReentrantReadWriteLock(E e) {
            return newReentrantReadWriteLock((WithExplicitOrdering<E>) e, false);
        }

        public ReentrantReadWriteLock newReentrantReadWriteLock(E e, boolean z) {
            return this.f4921a == Policies.DISABLED ? new ReentrantReadWriteLock(z) : new e(this, (h) this.e.get(e), z);
        }
    }

    public static void a(CycleDetectingLockFactory cycleDetectingLockFactory, b bVar) {
        cycleDetectingLockFactory.getClass();
        if (bVar.isAcquiredByCurrentThread()) {
            return;
        }
        ArrayList arrayList = (ArrayList) d.get();
        h lockGraphNode = bVar.getLockGraphNode();
        lockGraphNode.a(cycleDetectingLockFactory.f4921a, arrayList);
        arrayList.add(lockGraphNode);
    }

    public static CycleDetectingLockFactory newInstance(Policy policy) {
        return new CycleDetectingLockFactory(policy);
    }

    public ReentrantLock newReentrantLock(String str) {
        return newReentrantLock(str, false);
    }

    public ReentrantLock newReentrantLock(String str, boolean z) {
        return this.f4921a == Policies.DISABLED ? new ReentrantLock(z) : new c(new h(str), z);
    }

    public ReentrantReadWriteLock newReentrantReadWriteLock(String str) {
        return newReentrantReadWriteLock(str, false);
    }

    public ReentrantReadWriteLock newReentrantReadWriteLock(String str, boolean z) {
        return this.f4921a == Policies.DISABLED ? new ReentrantReadWriteLock(z) : new e(this, new h(str), z);
    }

    public static <E extends Enum<E>> WithExplicitOrdering<E> newInstanceWithExplicitOrdering(Class<E> cls, Policy policy) {
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(policy);
        ConcurrentMap concurrentMap = f4920b;
        Map map = (Map) concurrentMap.get(cls);
        if (map == null) {
            EnumMap enumMapNewEnumMap = Maps.newEnumMap(cls);
            E[] enumConstants = cls.getEnumConstants();
            int length = enumConstants.length;
            ArrayList arrayListNewArrayListWithCapacity = Lists.newArrayListWithCapacity(length);
            int i = 0;
            for (E e2 : enumConstants) {
                h hVar = new h(e2.getDeclaringClass().getSimpleName() + "." + e2.name());
                arrayListNewArrayListWithCapacity.add(hVar);
                enumMapNewEnumMap.put((EnumMap) e2, (E) hVar);
            }
            for (int i2 = 1; i2 < length; i2++) {
                ((h) arrayListNewArrayListWithCapacity.get(i2)).a(Policies.THROW, arrayListNewArrayListWithCapacity.subList(0, i2));
            }
            while (i < length - 1) {
                i++;
                ((h) arrayListNewArrayListWithCapacity.get(i)).a(Policies.DISABLED, arrayListNewArrayListWithCapacity.subList(i, length));
            }
            Map mapUnmodifiableMap = Collections.unmodifiableMap(enumMapNewEnumMap);
            map = (Map) MoreObjects.firstNonNull((Map) concurrentMap.putIfAbsent(cls, mapUnmodifiableMap), mapUnmodifiableMap);
        }
        return new WithExplicitOrdering<>(policy, map);
    }

    public CycleDetectingLockFactory(Policy policy) {
        this.f4921a = (Policy) Preconditions.checkNotNull(policy);
    }

    public static class a extends ThreadLocal<ArrayList<h>> {
        @Override // java.lang.ThreadLocal
        public ArrayList<h> initialValue() {
            return Lists.newArrayListWithCapacity(3);
        }
    }

    public static class g extends IllegalStateException {

        /* renamed from: a, reason: collision with root package name */
        public static final StackTraceElement[] f4931a = new StackTraceElement[0];

        /* renamed from: b, reason: collision with root package name */
        public static final ImmutableSet f4932b = ImmutableSet.of(CycleDetectingLockFactory.class.getName(), g.class.getName(), h.class.getName());

        public g(h hVar, h hVar2) {
            super(hVar.c + " -> " + hVar2.c);
            StackTraceElement[] stackTrace = getStackTrace();
            int length = stackTrace.length;
            for (int i = 0; i < length; i++) {
                if (WithExplicitOrdering.class.getName().equals(stackTrace[i].getClassName())) {
                    setStackTrace(f4931a);
                    return;
                }
                if (!f4932b.contains(stackTrace[i].getClassName())) {
                    setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i, length));
                    return;
                }
            }
        }
    }

    @Beta
    public static final class PotentialDeadlockException extends g {
        public final g c;

        public PotentialDeadlockException(h hVar, h hVar2, g gVar) {
            super(hVar, hVar2);
            this.c = gVar;
            initCause(gVar);
        }

        public g getConflictingStackTrace() {
            return this.c;
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            StringBuilder sb = new StringBuilder(super.getMessage());
            for (Throwable cause = this.c; cause != null; cause = cause.getCause()) {
                sb.append(", ");
                sb.append(cause.getMessage());
            }
            return sb.toString();
        }
    }

    public static class h {

        /* renamed from: a, reason: collision with root package name */
        public final ConcurrentMap f4933a = new MapMaker().weakKeys().makeMap();

        /* renamed from: b, reason: collision with root package name */
        public final ConcurrentMap f4934b = new MapMaker().weakKeys().makeMap();
        public final String c;

        public h(String str) {
            this.c = (String) Preconditions.checkNotNull(str);
        }

        public final void a(Policy policy, List list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                h hVar = (h) list.get(i);
                Preconditions.checkState(this != hVar, "Attempted to acquire multiple locks with the same rank %s", hVar.c);
                ConcurrentMap concurrentMap = this.f4933a;
                if (!concurrentMap.containsKey(hVar)) {
                    ConcurrentMap concurrentMap2 = this.f4934b;
                    PotentialDeadlockException potentialDeadlockException = (PotentialDeadlockException) concurrentMap2.get(hVar);
                    if (potentialDeadlockException != null) {
                        policy.handlePotentialDeadlock(new PotentialDeadlockException(hVar, this, potentialDeadlockException.getConflictingStackTrace()));
                    } else {
                        g gVarB = hVar.b(this, Sets.newIdentityHashSet());
                        if (gVarB == null) {
                            concurrentMap.put(hVar, new g(hVar, this));
                        } else {
                            PotentialDeadlockException potentialDeadlockException2 = new PotentialDeadlockException(hVar, this, gVarB);
                            concurrentMap2.put(hVar, potentialDeadlockException2);
                            policy.handlePotentialDeadlock(potentialDeadlockException2);
                        }
                    }
                }
            }
        }

        public final g b(h hVar, Set set) {
            if (!set.add(this)) {
                return null;
            }
            ConcurrentMap concurrentMap = this.f4933a;
            g gVar = (g) concurrentMap.get(hVar);
            if (gVar != null) {
                return gVar;
            }
            for (Map.Entry entry : concurrentMap.entrySet()) {
                h hVar2 = (h) entry.getKey();
                g gVarB = hVar2.b(hVar, set);
                if (gVarB != null) {
                    g gVar2 = new g(hVar2, this);
                    gVar2.setStackTrace(((g) entry.getValue()).getStackTrace());
                    gVar2.initCause(gVarB);
                    return gVar2;
                }
            }
            return null;
        }
    }

    public static void b(b bVar) {
        if (bVar.isAcquiredByCurrentThread()) {
            return;
        }
        ArrayList arrayList = (ArrayList) d.get();
        h lockGraphNode = bVar.getLockGraphNode();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == lockGraphNode) {
                arrayList.remove(size);
                return;
            }
        }
    }

    public final class c extends ReentrantLock implements b {

        /* renamed from: a, reason: collision with root package name */
        public final h f4923a;

        public c(h hVar, boolean z) {
            super(z);
            this.f4923a = (h) Preconditions.checkNotNull(hVar);
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.b
        public h getLockGraphNode() {
            return this.f4923a;
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.b
        public boolean isAcquiredByCurrentThread() {
            return isHeldByCurrentThread();
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public void lock() {
            CycleDetectingLockFactory.a(CycleDetectingLockFactory.this, this);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.b(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
            CycleDetectingLockFactory.a(CycleDetectingLockFactory.this, this);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.b(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public boolean tryLock() {
            CycleDetectingLockFactory.a(CycleDetectingLockFactory.this, this);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.b(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public boolean tryLock(long j, TimeUnit timeUnit) throws InterruptedException {
            CycleDetectingLockFactory.a(CycleDetectingLockFactory.this, this);
            try {
                return super.tryLock(j, timeUnit);
            } finally {
                CycleDetectingLockFactory.b(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public void unlock() {
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.b(this);
            }
        }
    }

    public final class e extends ReentrantReadWriteLock implements b {

        /* renamed from: a, reason: collision with root package name */
        public final d f4927a;

        /* renamed from: b, reason: collision with root package name */
        public final f f4928b;
        public final h c;

        public e(CycleDetectingLockFactory cycleDetectingLockFactory, h hVar, boolean z) {
            super(z);
            this.f4927a = cycleDetectingLockFactory.new d(this);
            this.f4928b = cycleDetectingLockFactory.new f(this);
            this.c = (h) Preconditions.checkNotNull(hVar);
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock, java.util.concurrent.locks.ReadWriteLock
        public ReentrantReadWriteLock.ReadLock readLock() {
            return this.f4927a;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock, java.util.concurrent.locks.ReadWriteLock
        public ReentrantReadWriteLock.WriteLock writeLock() {
            return this.f4928b;
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.b
        public h getLockGraphNode() {
            return this.c;
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.b
        public boolean isAcquiredByCurrentThread() {
            return isWriteLockedByCurrentThread() || getReadHoldCount() > 0;
        }
    }

    public class d extends ReentrantReadWriteLock.ReadLock {

        /* renamed from: a, reason: collision with root package name */
        public final e f4925a;

        public d(e eVar) {
            super(eVar);
            this.f4925a = eVar;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public void lock() {
            CycleDetectingLockFactory cycleDetectingLockFactory = CycleDetectingLockFactory.this;
            e eVar = this.f4925a;
            CycleDetectingLockFactory.a(cycleDetectingLockFactory, eVar);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.b(eVar);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
            CycleDetectingLockFactory cycleDetectingLockFactory = CycleDetectingLockFactory.this;
            e eVar = this.f4925a;
            CycleDetectingLockFactory.a(cycleDetectingLockFactory, eVar);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.b(eVar);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public boolean tryLock() {
            CycleDetectingLockFactory cycleDetectingLockFactory = CycleDetectingLockFactory.this;
            e eVar = this.f4925a;
            CycleDetectingLockFactory.a(cycleDetectingLockFactory, eVar);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.b(eVar);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public boolean tryLock(long j, TimeUnit timeUnit) throws InterruptedException {
            CycleDetectingLockFactory cycleDetectingLockFactory = CycleDetectingLockFactory.this;
            e eVar = this.f4925a;
            CycleDetectingLockFactory.a(cycleDetectingLockFactory, eVar);
            try {
                return super.tryLock(j, timeUnit);
            } finally {
                CycleDetectingLockFactory.b(eVar);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public void unlock() {
            e eVar = this.f4925a;
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.b(eVar);
            }
        }
    }

    public class f extends ReentrantReadWriteLock.WriteLock {

        /* renamed from: a, reason: collision with root package name */
        public final e f4929a;

        public f(e eVar) {
            super(eVar);
            this.f4929a = eVar;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public void lock() {
            CycleDetectingLockFactory cycleDetectingLockFactory = CycleDetectingLockFactory.this;
            e eVar = this.f4929a;
            CycleDetectingLockFactory.a(cycleDetectingLockFactory, eVar);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.b(eVar);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
            CycleDetectingLockFactory cycleDetectingLockFactory = CycleDetectingLockFactory.this;
            e eVar = this.f4929a;
            CycleDetectingLockFactory.a(cycleDetectingLockFactory, eVar);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.b(eVar);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public boolean tryLock() {
            CycleDetectingLockFactory cycleDetectingLockFactory = CycleDetectingLockFactory.this;
            e eVar = this.f4929a;
            CycleDetectingLockFactory.a(cycleDetectingLockFactory, eVar);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.b(eVar);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public boolean tryLock(long j, TimeUnit timeUnit) throws InterruptedException {
            CycleDetectingLockFactory cycleDetectingLockFactory = CycleDetectingLockFactory.this;
            e eVar = this.f4929a;
            CycleDetectingLockFactory.a(cycleDetectingLockFactory, eVar);
            try {
                return super.tryLock(j, timeUnit);
            } finally {
                CycleDetectingLockFactory.b(eVar);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public void unlock() {
            e eVar = this.f4929a;
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.b(eVar);
            }
        }
    }
}
