package com.google.common.base;

import java.lang.reflect.InvocationTargetException;
import java.util.AbstractList;

/* loaded from: classes.dex */
final class p extends AbstractList<StackTraceElement> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Throwable f3749a;

    @Override // java.util.AbstractList, java.util.List
    public StackTraceElement get(int i) {
        try {
            return (StackTraceElement) Throwables.f3727b.invoke(Throwables.f3726a, this.f3749a, Integer.valueOf(i));
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw Throwables.propagate(e2.getCause());
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        try {
            return ((Integer) Throwables.c.invoke(Throwables.f3726a, this.f3749a)).intValue();
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw Throwables.propagate(e2.getCause());
        }
    }

    public p(Throwable th) {
        this.f3749a = th;
    }
}
