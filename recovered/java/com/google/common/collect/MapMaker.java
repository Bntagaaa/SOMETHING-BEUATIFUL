package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Ascii;
import com.google.common.base.Equivalence;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.m3;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class MapMaker {

    /* renamed from: a, reason: collision with root package name */
    public boolean f3995a;

    /* renamed from: b, reason: collision with root package name */
    public int f3996b = -1;
    public int c = -1;
    public m3.q d;
    public m3.q e;
    public Equivalence f;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public static final a f3997a = new a("VALUE", 0);
    }

    @CanIgnoreReturnValue
    public MapMaker initialCapacity(int i) {
        int i2 = this.f3996b;
        Preconditions.checkState(i2 == -1, "initial capacity was already set to %s", i2);
        Preconditions.checkArgument(i >= 0);
        this.f3996b = i;
        return this;
    }

    @CanIgnoreReturnValue
    public MapMaker concurrencyLevel(int i) {
        int i2 = this.c;
        Preconditions.checkState(i2 == -1, "concurrency level was already set to %s", i2);
        Preconditions.checkArgument(i > 0);
        this.c = i;
        return this;
    }

    @CanIgnoreReturnValue
    @GwtIncompatible
    public MapMaker weakKeys() {
        m3.q.b bVar = m3.q.f4292b;
        m3.q qVar = this.d;
        Preconditions.checkState(qVar == null, "Key strength was already set to %s", qVar);
        this.d = (m3.q) Preconditions.checkNotNull(bVar);
        this.f3995a = true;
        return this;
    }

    public final m3.q a() {
        return (m3.q) MoreObjects.firstNonNull(this.d, m3.q.f4291a);
    }

    @CanIgnoreReturnValue
    @GwtIncompatible
    public MapMaker weakValues() {
        m3.q.b bVar = m3.q.f4292b;
        m3.q qVar = this.e;
        Preconditions.checkState(qVar == null, "Value strength was already set to %s", qVar);
        this.e = (m3.q) Preconditions.checkNotNull(bVar);
        this.f3995a = true;
        return this;
    }

    public final m3.q b() {
        return (m3.q) MoreObjects.firstNonNull(this.e, m3.q.f4291a);
    }

    public <K, V> ConcurrentMap<K, V> makeMap() {
        if (!this.f3995a) {
            int i = this.f3996b;
            if (i == -1) {
                i = 16;
            }
            int i2 = this.c;
            if (i2 == -1) {
                i2 = 4;
            }
            return new ConcurrentHashMap(i, 0.75f, i2);
        }
        m3.a aVar = m3.j;
        m3.q qVarA = a();
        m3.q.a aVar2 = m3.q.f4291a;
        if (qVarA == aVar2 && b() == aVar2) {
            return new m3(this, m3.t.a.f4294a);
        }
        m3.q qVarA2 = a();
        m3.q.b bVar = m3.q.f4292b;
        if (qVarA2 == aVar2 && b() == bVar) {
            return new m3(this, m3.v.a.f4295a);
        }
        if (a() == bVar && b() == aVar2) {
            return new m3(this, m3.c0.a.f4276a);
        }
        if (a() == bVar && b() == bVar) {
            return new m3(this, m3.e0.a.f4279a);
        }
        throw new AssertionError();
    }

    public String toString() {
        MoreObjects.ToStringHelper stringHelper = MoreObjects.toStringHelper(this);
        int i = this.f3996b;
        if (i != -1) {
            stringHelper.add("initialCapacity", i);
        }
        int i2 = this.c;
        if (i2 != -1) {
            stringHelper.add("concurrencyLevel", i2);
        }
        m3.q qVar = this.d;
        if (qVar != null) {
            stringHelper.add("keyStrength", Ascii.toLowerCase(qVar.toString()));
        }
        m3.q qVar2 = this.e;
        if (qVar2 != null) {
            stringHelper.add("valueStrength", Ascii.toLowerCase(qVar2.toString()));
        }
        if (this.f != null) {
            stringHelper.addValue("keyEquivalence");
        }
        return stringHelper.toString();
    }
}
