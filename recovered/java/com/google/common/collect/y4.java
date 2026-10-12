package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.b5;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
final class y4<K, V> extends ImmutableBiMap<K, V> {
    public static final y4 k = new y4();
    public final transient Object f;

    /* renamed from: g, reason: collision with root package name */
    public final transient Object[] f4388g;
    public final transient int h;
    public final transient int i;
    public final transient y4 j;

    @Override // com.google.common.collect.ImmutableMap
    public final boolean f() {
        return false;
    }

    private y4() {
        this.f = null;
        this.f4388g = new Object[0];
        this.h = 0;
        this.i = 0;
        this.j = this;
    }

    public y4(Object[] objArr, int i) {
        this.f4388g = objArr;
        this.i = i;
        this.h = 0;
        int iE = i >= 2 ? ImmutableSet.e(i) : 0;
        this.f = b5.i(i, iE, objArr, 0);
        this.j = new y4(b5.i(i, iE, objArr, 1), objArr, i, this);
    }

    public y4(Object obj, Object[] objArr, int i, y4 y4Var) {
        this.f = obj;
        this.f4388g = objArr;
        this.h = 1;
        this.i = i;
        this.j = y4Var;
    }

    @Override // java.util.Map
    public int size() {
        return this.i;
    }

    @Override // com.google.common.collect.ImmutableBiMap, com.google.common.collect.BiMap
    public ImmutableBiMap<V, K> inverse() {
        return this.j;
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(@NullableDecl Object obj) {
        return (V) b5.k(this.f, this.f4388g, this.i, this.h, obj);
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet a() {
        return new b5.a(this, this.f4388g, this.h, this.i);
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet b() {
        return new b5.b(this, new b5.c(this.f4388g, this.h, this.i));
    }
}
