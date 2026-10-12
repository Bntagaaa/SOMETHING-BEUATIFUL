package kotlinx.coroutines.debug.internal;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.AbstractMutableMap;
import kotlin.collections.AbstractMutableSet;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.jvm.internal.markers.KMutableMap;
import kotlin.ranges.RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0010'\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004:\u0003$%&B\u0011\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001a\u0010\n\u001a\u0004\u0018\u00018\u00012\u0006\u0010\t\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\r\u001a\u0004\u0018\u00018\u00012\u0006\u0010\t\u001a\u00028\u00002\u0006\u0010\f\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u000f\u001a\u0004\u0018\u00018\u00012\u0006\u0010\t\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000f\u0010\u000bJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b\u0013\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR&\u0010\u001e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001c0\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001aR\u000b\u0010 \u001a\u00020\u001f8\u0002X\u0082\u0004R!\u0010#\u001a\u0018\u0012\u0014\u0012\u00120\"R\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00000!8\u0002X\u0082\u0004¨\u0006'"}, d2 = {"Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;", "", "K", "V", "Lkotlin/collections/AbstractMutableMap;", "", "weakRefQueue", "<init>", "(Z)V", "key", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "value", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "remove", "", "clear", "()V", "runWeakRefQueueCleaningLoopUntilInterrupted", "", "getSize", "()I", "size", "", "getKeys", "()Ljava/util/Set;", "keys", "", "getEntries", "entries", "Lkotlinx/atomicfu/AtomicInt;", "_size", "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;", "core", "a", "b", "c", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConcurrentWeakMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentWeakMap.kt\nkotlinx/coroutines/debug/internal/ConcurrentWeakMap\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,280:1\n1#2:281\n*E\n"})
/* loaded from: classes2.dex */
public final class ConcurrentWeakMap<K, V> extends AbstractMutableMap<K, V> {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f6232b = AtomicIntegerFieldUpdater.newUpdater(ConcurrentWeakMap.class, "_size$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater c = AtomicReferenceFieldUpdater.newUpdater(ConcurrentWeakMap.class, Object.class, "core$volatile");
    private volatile /* synthetic */ int _size$volatile;

    /* renamed from: a, reason: collision with root package name */
    public final ReferenceQueue f6233a;
    private volatile /* synthetic */ Object core$volatile;

    public ConcurrentWeakMap() {
        this(false, 1, null);
    }

    public static final void access$decrementSize(ConcurrentWeakMap concurrentWeakMap) {
        concurrentWeakMap.getClass();
        f6232b.decrementAndGet(concurrentWeakMap);
    }

    public /* synthetic */ ConcurrentWeakMap(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z);
    }

    public ConcurrentWeakMap(boolean z) {
        this.core$volatile = new a(16);
        this.f6233a = z ? new ReferenceQueue() : null;
    }

    @Override // kotlin.collections.AbstractMutableMap
    public int getSize() {
        return f6232b.get(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V get(@Nullable Object key) {
        if (key == null) {
            return null;
        }
        return (V) ((a) c.get(this)).getImpl(key);
    }

    @Override // kotlin.collections.AbstractMutableMap, java.util.AbstractMap, java.util.Map
    @Nullable
    public V put(@NotNull K key, @NotNull V value) {
        V v = (V) a.putImpl$default((a) c.get(this), key, value, null, 4, null);
        if (v == ConcurrentWeakMapKt.f6243a) {
            v = (V) a(key, value);
        }
        if (v == null) {
            f6232b.incrementAndGet(this);
        }
        return v;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V remove(@Nullable Object key) {
        if (key == null) {
            return null;
        }
        V v = (V) a.putImpl$default((a) c.get(this), key, null, null, 4, null);
        if (v == ConcurrentWeakMapKt.f6243a) {
            v = (V) a(key, null);
        }
        if (v != null) {
            f6232b.decrementAndGet(this);
        }
        return v;
    }

    public final synchronized Object a(Object obj, Object obj2) {
        Object objPutImpl$default;
        a aVarRehash = (a) c.get(this);
        while (true) {
            Object obj3 = obj;
            Object obj4 = obj2;
            objPutImpl$default = a.putImpl$default(aVarRehash, obj3, obj4, null, 4, null);
            if (objPutImpl$default == ConcurrentWeakMapKt.f6243a) {
                aVarRehash = aVarRehash.rehash();
                c.set(this, aVarRehash);
                obj = obj3;
                obj2 = obj4;
            }
        }
        return objPutImpl$default;
    }

    @Override // kotlin.collections.AbstractMutableMap
    @NotNull
    public Set<K> getKeys() {
        return new c(new kotlinx.coroutines.debug.internal.b(1));
    }

    @Override // kotlin.collections.AbstractMutableMap
    @NotNull
    public Set<Map.Entry<K, V>> getEntries() {
        return new c(new kotlinx.coroutines.debug.internal.b(0));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        Iterator<K> it = keySet().iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
    }

    public final void runWeakRefQueueCleaningLoopUntilInterrupted() throws InterruptedException {
        ReferenceQueue referenceQueue = this.f6233a;
        if (referenceQueue == null) {
            throw new IllegalStateException("Must be created with weakRefQueue = true");
        }
        while (true) {
            try {
                Reference referenceRemove = referenceQueue.remove();
                Intrinsics.checkNotNull(referenceRemove, "null cannot be cast to non-null type kotlinx.coroutines.debug.internal.HashedWeakRef<*>");
                ((a) c.get(this)).cleanWeakRef((HashedWeakRef) referenceRemove);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return;
            }
        }
    }

    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010)\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001:\u0001 B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\u0007\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0006\u001a\u00028\u0000¢\u0006\u0004\b\u0007\u0010\bJ3\u0010\f\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0006\u001a\u00028\u00002\b\u0010\t\u001a\u0004\u0018\u00018\u00012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\n¢\u0006\u0004\b\f\u0010\rJ\u001d\u0010\u000f\u001a\u00120\u0000R\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u00020\u00122\n\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\n¢\u0006\u0004\b\u0013\u0010\u0014J3\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00020\u0018\"\u0004\b\u0002\u0010\u00152\u0018\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u000b\u0010\u001c\u001a\u00020\u001b8\u0002X\u0082\u0004R\u0019\u0010\u001e\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\n0\u001d8\u0002X\u0082\u0004R\u0013\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001d8\u0002X\u0082\u0004¨\u0006!"}, d2 = {"Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;", "", "", "allocated", "<init>", "(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;I)V", "key", "getImpl", "(Ljava/lang/Object;)Ljava/lang/Object;", "value", "Lkotlinx/coroutines/debug/internal/HashedWeakRef;", "weakKey0", "putImpl", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/HashedWeakRef;)Ljava/lang/Object;", "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;", "rehash", "()Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;", "weakRef", "", "cleanWeakRef", "(Lkotlinx/coroutines/debug/internal/HashedWeakRef;)V", "E", "Lkotlin/Function2;", "factory", "", "keyValueIterator", "(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;", "Lkotlinx/atomicfu/AtomicInt;", "load", "Lkotlinx/atomicfu/AtomicArray;", "keys", "values", "a", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class a {

        /* renamed from: g, reason: collision with root package name */
        public static final /* synthetic */ AtomicIntegerFieldUpdater f6234g = AtomicIntegerFieldUpdater.newUpdater(a.class, "load$volatile");

        /* renamed from: a, reason: collision with root package name */
        public final int f6235a;

        /* renamed from: b, reason: collision with root package name */
        public final int f6236b;
        public final int c;
        public final /* synthetic */ AtomicReferenceArray d;
        public final /* synthetic */ AtomicReferenceArray e;
        private volatile /* synthetic */ int load$volatile;

        public a(int i) {
            this.f6235a = i;
            this.f6236b = Integer.numberOfLeadingZeros(i) + 1;
            this.c = (i * 2) / 3;
            this.d = new AtomicReferenceArray(i);
            this.e = new AtomicReferenceArray(i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Nullable
        public final V getImpl(@NotNull K key) {
            int iHashCode = (key.hashCode() * (-1640531527)) >>> this.f6236b;
            while (true) {
                HashedWeakRef hashedWeakRef = (HashedWeakRef) this.d.get(iHashCode);
                if (hashedWeakRef == null) {
                    return null;
                }
                T t = hashedWeakRef.get();
                if (Intrinsics.areEqual(key, t)) {
                    V v = (V) this.e.get(iHashCode);
                    return v instanceof g ? (V) ((g) v).f6261a : v;
                }
                if (t == 0) {
                    a(iHashCode);
                }
                if (iHashCode == 0) {
                    iHashCode = this.f6235a;
                }
                iHashCode--;
            }
        }

        public final void a(int i) {
            while (true) {
                AtomicReferenceArray atomicReferenceArray = this.e;
                Object obj = atomicReferenceArray.get(i);
                if (obj == null || (obj instanceof g)) {
                    return;
                }
                while (!atomicReferenceArray.compareAndSet(i, obj, null)) {
                    if (atomicReferenceArray.get(i) != obj) {
                        break;
                    }
                }
                ConcurrentWeakMap.access$decrementSize(ConcurrentWeakMap.this);
                return;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Object putImpl$default(a aVar, Object obj, Object obj2, HashedWeakRef hashedWeakRef, int i, Object obj3) {
            if ((i & 4) != 0) {
                hashedWeakRef = null;
            }
            return aVar.putImpl(obj, obj2, hashedWeakRef);
        }

        @Nullable
        public final Object putImpl(@NotNull K key, @Nullable V value, @Nullable HashedWeakRef<K> weakKey0) {
            boolean z;
            int i;
            int iHashCode = (key.hashCode() * (-1640531527)) >>> this.f6236b;
            boolean z2 = false;
            loop0: while (true) {
                AtomicReferenceArray atomicReferenceArray = this.d;
                HashedWeakRef hashedWeakRef = (HashedWeakRef) atomicReferenceArray.get(iHashCode);
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f6234g;
                if (hashedWeakRef == null) {
                    if (value != null) {
                        if (z2) {
                            z = z2;
                        } else {
                            do {
                                i = atomicIntegerFieldUpdater.get(this);
                                if (i >= this.c) {
                                    return ConcurrentWeakMapKt.f6243a;
                                }
                            } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, i + 1));
                            z = true;
                        }
                        if (weakKey0 == null) {
                            weakKey0 = new HashedWeakRef<>(key, ConcurrentWeakMap.this.f6233a);
                        }
                        HashedWeakRef<K> hashedWeakRef2 = weakKey0;
                        while (!atomicReferenceArray.compareAndSet(iHashCode, null, hashedWeakRef2)) {
                            if (atomicReferenceArray.get(iHashCode) != null) {
                                z2 = z;
                                weakKey0 = hashedWeakRef2;
                            }
                        }
                        break loop0;
                    }
                    return null;
                }
                T t = hashedWeakRef.get();
                if (!Intrinsics.areEqual(key, t)) {
                    if (t == 0) {
                        a(iHashCode);
                    }
                    if (iHashCode == 0) {
                        iHashCode = this.f6235a;
                    }
                    iHashCode--;
                } else if (z2) {
                    atomicIntegerFieldUpdater.decrementAndGet(this);
                }
            }
            while (true) {
                AtomicReferenceArray atomicReferenceArray2 = this.e;
                Object obj = atomicReferenceArray2.get(iHashCode);
                if (obj instanceof g) {
                    return ConcurrentWeakMapKt.f6243a;
                }
                while (!atomicReferenceArray2.compareAndSet(iHashCode, obj, value)) {
                    if (atomicReferenceArray2.get(iHashCode) != obj) {
                        break;
                    }
                }
                return obj;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NotNull
        public final ConcurrentWeakMap<K, V>.a rehash() {
            int i;
            Object obj;
            while (true) {
                ConcurrentWeakMap concurrentWeakMap = ConcurrentWeakMap.this;
                ConcurrentWeakMap<K, V>.a aVar = (ConcurrentWeakMap<K, V>.a) new a(Integer.highestOneBit(RangesKt.coerceAtLeast(concurrentWeakMap.size(), 4)) * 4);
                while (i < this.f6235a) {
                    HashedWeakRef hashedWeakRef = (HashedWeakRef) this.d.get(i);
                    Object obj2 = hashedWeakRef != null ? hashedWeakRef.get() : null;
                    if (hashedWeakRef != null && obj2 == null) {
                        a(i);
                    }
                    while (true) {
                        AtomicReferenceArray atomicReferenceArray = this.e;
                        obj = atomicReferenceArray.get(i);
                        if (!(obj instanceof g)) {
                            g gVarAccess$mark = ConcurrentWeakMapKt.access$mark(obj);
                            while (!atomicReferenceArray.compareAndSet(i, obj, gVarAccess$mark)) {
                                if (atomicReferenceArray.get(i) != obj) {
                                    break;
                                }
                            }
                            break;
                        }
                        obj = ((g) obj).f6261a;
                        break;
                    }
                    i = (obj2 == null || obj == null || aVar.putImpl(obj2, obj, hashedWeakRef) != ConcurrentWeakMapKt.f6243a) ? i + 1 : 0;
                }
                return aVar;
            }
        }

        public final void cleanWeakRef(@NotNull HashedWeakRef<?> weakRef) {
            int i = (weakRef.hash * (-1640531527)) >>> this.f6236b;
            while (true) {
                HashedWeakRef<?> hashedWeakRef = (HashedWeakRef) this.d.get(i);
                if (hashedWeakRef == null) {
                    return;
                }
                if (hashedWeakRef == weakRef) {
                    a(i);
                    return;
                } else {
                    if (i == 0) {
                        i = this.f6235a;
                    }
                    i--;
                }
            }
        }

        @NotNull
        public final <E> Iterator<E> keyValueIterator(@NotNull Function2<? super K, ? super V, ? extends E> factory) {
            return new C0157a(factory);
        }

        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010)\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0001\n\u0002\b\u0003\b\u0082\u0004\u0018\u0000*\u0004\b\u0002\u0010\u00012\b\u0012\u0004\u0012\u00028\u00020\u0002B!\u0012\u0018\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u0007H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00028\u0002H\u0096\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a;", "E", "", "Lkotlin/Function2;", "factory", "<init>", "(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;Lkotlin/jvm/functions/Function2;)V", "", "hasNext", "()Z", "next", "()Ljava/lang/Object;", "", "remove", "()Ljava/lang/Void;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
        @SourceDebugExtension({"SMAP\nConcurrentWeakMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentWeakMap.kt\nkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,280:1\n1#2:281\n*E\n"})
        /* renamed from: kotlinx.coroutines.debug.internal.ConcurrentWeakMap$a$a, reason: collision with other inner class name */
        public final class C0157a<E> implements Iterator<E>, KMutableIterator {

            /* renamed from: a, reason: collision with root package name */
            public final Function2 f6237a;

            /* renamed from: b, reason: collision with root package name */
            public int f6238b = -1;
            public Object c;
            public Object d;

            public C0157a(@NotNull Function2<? super K, ? super V, ? extends E> function2) {
                this.f6237a = function2;
                a();
            }

            public final void a() {
                T t;
                while (true) {
                    int i = this.f6238b + 1;
                    this.f6238b = i;
                    a aVar = a.this;
                    if (i >= aVar.f6235a) {
                        return;
                    }
                    HashedWeakRef hashedWeakRef = (HashedWeakRef) aVar.d.get(this.f6238b);
                    if (hashedWeakRef != null && (t = hashedWeakRef.get()) != 0) {
                        this.c = t;
                        Object obj = aVar.e.get(this.f6238b);
                        if (obj instanceof g) {
                            obj = ((g) obj).f6261a;
                        }
                        if (obj != null) {
                            this.d = obj;
                            return;
                        }
                    }
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f6238b < a.this.f6235a;
            }

            @Override // java.util.Iterator
            public E next() {
                if (this.f6238b >= a.this.f6235a) {
                    throw new NoSuchElementException();
                }
                Object obj = this.c;
                if (obj == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("key");
                    obj = Unit.INSTANCE;
                }
                Object obj2 = this.d;
                if (obj2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("value");
                    obj2 = Unit.INSTANCE;
                }
                E e = (E) this.f6237a.invoke(obj, obj2);
                a();
                return e;
            }

            @Override // java.util.Iterator
            @NotNull
            public Void remove() {
                ConcurrentWeakMapKt.access$noImpl();
                throw new KotlinNothingValueException();
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010'\n\u0002\b\u000e\b\u0002\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0003B\u0017\u0012\u0006\u0010\u0004\u001a\u00028\u0002\u0012\u0006\u0010\u0005\u001a\u00028\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\t\u001a\u00028\u00032\u0006\u0010\b\u001a\u00028\u0003H\u0016¢\u0006\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u00028\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u0005\u001a\u00028\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\f\u001a\u0004\b\u0010\u0010\u000e¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$b;", "K", "V", "", "key", "value", "<init>", "(Ljava/lang/Object;Ljava/lang/Object;)V", "newValue", "setValue", "(Ljava/lang/Object;)Ljava/lang/Object;", "a", "Ljava/lang/Object;", "getKey", "()Ljava/lang/Object;", "b", "getValue", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class b<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {

        /* renamed from: a, reason: collision with root package name and from kotlin metadata */
        public final Object key;

        /* renamed from: b, reason: collision with root package name and from kotlin metadata */
        public final Object value;

        public b(K k, V v) {
            this.key = k;
            this.value = v;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return (K) this.key;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return (V) this.value;
        }

        @Override // java.util.Map.Entry
        public V setValue(V newValue) {
            ConcurrentWeakMapKt.access$noImpl();
            throw new KotlinNothingValueException();
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010)\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0082\u0004\u0018\u0000*\u0004\b\u0002\u0010\u00012\b\u0012\u0004\u0012\u00028\u00020\u0002B!\u0012\u0018\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028\u0002H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00020\u000bH\u0096\u0002¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$c;", "E", "Lkotlin/collections/AbstractMutableSet;", "Lkotlin/Function2;", "factory", "<init>", "(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;Lkotlin/jvm/functions/Function2;)V", "element", "", "add", "(Ljava/lang/Object;)Z", "", "iterator", "()Ljava/util/Iterator;", "", "getSize", "()I", "size", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class c<E> extends AbstractMutableSet<E> {

        /* renamed from: a, reason: collision with root package name */
        public final Function2 f6241a;

        public c(@NotNull Function2<? super K, ? super V, ? extends E> function2) {
            this.f6241a = function2;
        }

        @Override // kotlin.collections.AbstractMutableSet
        public int getSize() {
            return ConcurrentWeakMap.this.size();
        }

        @Override // kotlin.collections.AbstractMutableSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(E element) {
            ConcurrentWeakMapKt.access$noImpl();
            throw new KotlinNothingValueException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        @NotNull
        public Iterator<E> iterator() {
            return ((a) ConcurrentWeakMap.c.get(ConcurrentWeakMap.this)).keyValueIterator(this.f6241a);
        }
    }
}
