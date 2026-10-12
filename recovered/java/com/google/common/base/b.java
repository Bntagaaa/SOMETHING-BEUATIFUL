package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
abstract class b<T> implements Iterator<T> {

    /* renamed from: a, reason: collision with root package name */
    public EnumC0091b f3730a = EnumC0091b.f3734b;

    /* renamed from: b, reason: collision with root package name */
    public Object f3731b;

    public abstract T computeNext();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* renamed from: com.google.common.base.b$b, reason: collision with other inner class name */
    public static final class EnumC0091b {

        /* renamed from: a, reason: collision with root package name */
        public static final EnumC0091b f3733a;

        /* renamed from: b, reason: collision with root package name */
        public static final EnumC0091b f3734b;
        public static final EnumC0091b c;
        public static final EnumC0091b d;
        public static final /* synthetic */ EnumC0091b[] e;

        public static EnumC0091b[] values() {
            return (EnumC0091b[]) e.clone();
        }

        static {
            EnumC0091b enumC0091b = new EnumC0091b("READY", 0);
            f3733a = enumC0091b;
            EnumC0091b enumC0091b2 = new EnumC0091b("NOT_READY", 1);
            f3734b = enumC0091b2;
            EnumC0091b enumC0091b3 = new EnumC0091b("DONE", 2);
            c = enumC0091b3;
            EnumC0091b enumC0091b4 = new EnumC0091b("FAILED", 3);
            d = enumC0091b4;
            e = new EnumC0091b[]{enumC0091b, enumC0091b2, enumC0091b3, enumC0091b4};
        }
    }

    @CanIgnoreReturnValue
    @NullableDecl
    public final T endOfData() {
        this.f3730a = EnumC0091b.c;
        return null;
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f3732a;

        static {
            int[] iArr = new int[EnumC0091b.values().length];
            f3732a = iArr;
            try {
                iArr[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3732a[0] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        EnumC0091b enumC0091b = this.f3730a;
        EnumC0091b enumC0091b2 = EnumC0091b.d;
        Preconditions.checkState(enumC0091b != enumC0091b2);
        int iOrdinal = this.f3730a.ordinal();
        if (iOrdinal == 0) {
            return true;
        }
        if (iOrdinal != 2) {
            this.f3730a = enumC0091b2;
            this.f3731b = computeNext();
            if (this.f3730a != EnumC0091b.c) {
                this.f3730a = EnumC0091b.f3733a;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f3730a = EnumC0091b.f3734b;
        T t = (T) this.f3731b;
        this.f3731b = null;
        return t;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
