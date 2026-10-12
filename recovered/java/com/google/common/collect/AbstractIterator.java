package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.NoSuchElementException;

@GwtCompatible
/* loaded from: classes.dex */
public abstract class AbstractIterator<T> extends UnmodifiableIterator<T> {

    /* renamed from: a, reason: collision with root package name */
    public b f3834a = b.f3838b;

    /* renamed from: b, reason: collision with root package name */
    public Object f3835b;

    public abstract T computeNext();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public static final b f3837a;

        /* renamed from: b, reason: collision with root package name */
        public static final b f3838b;
        public static final b c;
        public static final b d;
        public static final /* synthetic */ b[] e;

        public static b[] values() {
            return (b[]) e.clone();
        }

        static {
            b bVar = new b("READY", 0);
            f3837a = bVar;
            b bVar2 = new b("NOT_READY", 1);
            f3838b = bVar2;
            b bVar3 = new b("DONE", 2);
            c = bVar3;
            b bVar4 = new b("FAILED", 3);
            d = bVar4;
            e = new b[]{bVar, bVar2, bVar3, bVar4};
        }
    }

    @CanIgnoreReturnValue
    public final T endOfData() {
        this.f3834a = b.c;
        return null;
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f3836a;

        static {
            int[] iArr = new int[b.values().length];
            f3836a = iArr;
            try {
                iArr[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3836a[0] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // java.util.Iterator
    @CanIgnoreReturnValue
    public final boolean hasNext() {
        b bVar = this.f3834a;
        b bVar2 = b.d;
        Preconditions.checkState(bVar != bVar2);
        int iOrdinal = this.f3834a.ordinal();
        if (iOrdinal == 0) {
            return true;
        }
        if (iOrdinal != 2) {
            this.f3834a = bVar2;
            this.f3835b = computeNext();
            if (this.f3834a != b.c) {
                this.f3834a = b.f3837a;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    @CanIgnoreReturnValue
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f3834a = b.f3838b;
        T t = (T) this.f3835b;
        this.f3835b = null;
        return t;
    }

    public final T peek() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        return (T) this.f3835b;
    }
}
