package com.google.common.cache;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.cache.a;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtIncompatible
/* loaded from: classes.dex */
interface f<K, V> {
    long getAccessTime();

    int getHash();

    @NullableDecl
    K getKey();

    @NullableDecl
    f<K, V> getNext();

    f<K, V> getNextInAccessQueue();

    f<K, V> getNextInWriteQueue();

    f<K, V> getPreviousInAccessQueue();

    f<K, V> getPreviousInWriteQueue();

    a.a0<K, V> getValueReference();

    long getWriteTime();

    void setAccessTime(long j);

    void setNextInAccessQueue(f<K, V> fVar);

    void setNextInWriteQueue(f<K, V> fVar);

    void setPreviousInAccessQueue(f<K, V> fVar);

    void setPreviousInWriteQueue(f<K, V> fVar);

    void setValueReference(a.a0<K, V> a0Var);

    void setWriteTime(long j);
}
