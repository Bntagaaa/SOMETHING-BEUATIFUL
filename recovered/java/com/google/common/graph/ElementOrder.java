package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import com.google.common.collect.Ordering;
import com.google.errorprone.annotations.Immutable;
import java.util.AbstractMap;
import java.util.Comparator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Immutable
@Beta
/* loaded from: classes.dex */
public final class ElementOrder<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Type f4444a;

    /* renamed from: b, reason: collision with root package name */
    public final Comparator f4445b;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Type {
        public static final Type INSERTION;
        public static final Type SORTED;
        public static final Type STABLE;
        public static final Type UNORDERED;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Type[] f4446a;

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) f4446a.clone();
        }

        static {
            Type type = new Type("UNORDERED", 0);
            UNORDERED = type;
            Type type2 = new Type("STABLE", 1);
            STABLE = type2;
            Type type3 = new Type("INSERTION", 2);
            INSERTION = type3;
            Type type4 = new Type("SORTED", 3);
            SORTED = type4;
            f4446a = new Type[]{type, type2, type3, type4};
        }
    }

    public ElementOrder(Type type, Comparator comparator) {
        this.f4444a = (Type) Preconditions.checkNotNull(type);
        this.f4445b = comparator;
        Preconditions.checkState((type == Type.SORTED) == (comparator != null));
    }

    public static <S> ElementOrder<S> unordered() {
        return new ElementOrder<>(Type.UNORDERED, null);
    }

    public static <S> ElementOrder<S> insertion() {
        return new ElementOrder<>(Type.INSERTION, null);
    }

    public static <S extends Comparable<? super S>> ElementOrder<S> natural() {
        return new ElementOrder<>(Type.SORTED, Ordering.natural());
    }

    public static <S> ElementOrder<S> sorted(Comparator<S> comparator) {
        return new ElementOrder<>(Type.SORTED, comparator);
    }

    public Type type() {
        return this.f4444a;
    }

    public Comparator<T> comparator() {
        Comparator<T> comparator = this.f4445b;
        if (comparator != null) {
            return comparator;
        }
        throw new UnsupportedOperationException("This ordering does not define a comparator.");
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ElementOrder)) {
            return false;
        }
        ElementOrder elementOrder = (ElementOrder) obj;
        return this.f4444a == elementOrder.f4444a && Objects.equal(this.f4445b, elementOrder.f4445b);
    }

    public int hashCode() {
        return Objects.hashCode(this.f4444a, this.f4445b);
    }

    public String toString() {
        MoreObjects.ToStringHelper toStringHelperAdd = MoreObjects.toStringHelper(this).add("type", this.f4444a);
        Comparator comparator = this.f4445b;
        if (comparator != null) {
            toStringHelperAdd.add("comparator", comparator);
        }
        return toStringHelperAdd.toString();
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4447a;

        static {
            int[] iArr = new int[Type.values().length];
            f4447a = iArr;
            try {
                iArr[Type.UNORDERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4447a[Type.INSERTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4447a[Type.STABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4447a[Type.SORTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public final AbstractMap a(int i) {
        int i2 = a.f4447a[this.f4444a.ordinal()];
        if (i2 == 1) {
            return Maps.newHashMapWithExpectedSize(i);
        }
        if (i2 == 2 || i2 == 3) {
            return Maps.newLinkedHashMapWithExpectedSize(i);
        }
        if (i2 == 4) {
            return Maps.newTreeMap(comparator());
        }
        throw new AssertionError();
    }
}
