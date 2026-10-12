package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.CheckReturnValue;
import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Immutable
@Beta
@GwtCompatible
/* loaded from: classes.dex */
public final class ImmutableDoubleArray implements Serializable {
    public static final ImmutableDoubleArray d = new ImmutableDoubleArray(new double[0], 0, 0);

    /* renamed from: a, reason: collision with root package name */
    public final double[] f4763a;

    /* renamed from: b, reason: collision with root package name */
    public final transient int f4764b;
    public final int c;

    public static ImmutableDoubleArray of() {
        return d;
    }

    public static ImmutableDoubleArray of(double d2) {
        return new ImmutableDoubleArray(new double[]{d2}, 0, 1);
    }

    public static ImmutableDoubleArray of(double d2, double d3) {
        return new ImmutableDoubleArray(new double[]{d2, d3}, 0, 2);
    }

    public static ImmutableDoubleArray of(double d2, double d3, double d4) {
        return new ImmutableDoubleArray(new double[]{d2, d3, d4}, 0, 3);
    }

    public static ImmutableDoubleArray of(double d2, double d3, double d4, double d5) {
        return new ImmutableDoubleArray(new double[]{d2, d3, d4, d5}, 0, 4);
    }

    public static ImmutableDoubleArray of(double d2, double d3, double d4, double d5, double d6) {
        return new ImmutableDoubleArray(new double[]{d2, d3, d4, d5, d6}, 0, 5);
    }

    public static ImmutableDoubleArray of(double d2, double d3, double d4, double d5, double d6, double d7) {
        return new ImmutableDoubleArray(new double[]{d2, d3, d4, d5, d6, d7}, 0, 6);
    }

    public static ImmutableDoubleArray of(double d2, double... dArr) {
        Preconditions.checkArgument(dArr.length <= 2147483646, "the total number of elements must fit in an int");
        int length = dArr.length + 1;
        double[] dArr2 = new double[length];
        dArr2[0] = d2;
        System.arraycopy(dArr, 0, dArr2, 1, dArr.length);
        return new ImmutableDoubleArray(dArr2, 0, length);
    }

    public static ImmutableDoubleArray copyOf(double[] dArr) {
        return dArr.length == 0 ? d : new ImmutableDoubleArray(Arrays.copyOf(dArr, dArr.length));
    }

    public static ImmutableDoubleArray copyOf(Collection<Double> collection) {
        return collection.isEmpty() ? d : new ImmutableDoubleArray(Doubles.toArray(collection));
    }

    public static ImmutableDoubleArray copyOf(Iterable<Double> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection<Double>) iterable);
        }
        return builder().addAll(iterable).build();
    }

    public static Builder builder(int i) {
        Preconditions.checkArgument(i >= 0, "Invalid initialCapacity: %s", i);
        return new Builder(i);
    }

    public static Builder builder() {
        return new Builder(10);
    }

    @CanIgnoreReturnValue
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public double[] f4765a;

        /* renamed from: b, reason: collision with root package name */
        public int f4766b = 0;

        public Builder(int i) {
            this.f4765a = new double[i];
        }

        public Builder add(double d) {
            a(1);
            double[] dArr = this.f4765a;
            int i = this.f4766b;
            dArr[i] = d;
            this.f4766b = i + 1;
            return this;
        }

        public Builder addAll(double[] dArr) {
            a(dArr.length);
            System.arraycopy(dArr, 0, this.f4765a, this.f4766b, dArr.length);
            this.f4766b += dArr.length;
            return this;
        }

        public Builder addAll(Iterable<Double> iterable) {
            if (iterable instanceof Collection) {
                return addAll((Collection<Double>) iterable);
            }
            Iterator<Double> it = iterable.iterator();
            while (it.hasNext()) {
                add(it.next().doubleValue());
            }
            return this;
        }

        public Builder addAll(Collection<Double> collection) {
            a(collection.size());
            for (Double d : collection) {
                double[] dArr = this.f4765a;
                int i = this.f4766b;
                this.f4766b = i + 1;
                dArr[i] = d.doubleValue();
            }
            return this;
        }

        public Builder addAll(ImmutableDoubleArray immutableDoubleArray) {
            a(immutableDoubleArray.length());
            System.arraycopy(immutableDoubleArray.f4763a, immutableDoubleArray.f4764b, this.f4765a, this.f4766b, immutableDoubleArray.length());
            this.f4766b = immutableDoubleArray.length() + this.f4766b;
            return this;
        }

        public final void a(int i) {
            int i2 = this.f4766b + i;
            double[] dArr = this.f4765a;
            if (i2 > dArr.length) {
                int length = dArr.length;
                if (i2 >= 0) {
                    int iHighestOneBit = length + (length >> 1) + 1;
                    if (iHighestOneBit < i2) {
                        iHighestOneBit = Integer.highestOneBit(i2 - 1) << 1;
                    }
                    if (iHighestOneBit < 0) {
                        iHighestOneBit = Integer.MAX_VALUE;
                    }
                    double[] dArr2 = new double[iHighestOneBit];
                    System.arraycopy(this.f4765a, 0, dArr2, 0, this.f4766b);
                    this.f4765a = dArr2;
                    return;
                }
                throw new AssertionError("cannot store more than MAX_VALUE elements");
            }
        }

        @CheckReturnValue
        public ImmutableDoubleArray build() {
            int i = this.f4766b;
            return i == 0 ? ImmutableDoubleArray.d : new ImmutableDoubleArray(this.f4765a, 0, i);
        }
    }

    public ImmutableDoubleArray(double[] dArr) {
        this(dArr, 0, dArr.length);
    }

    public ImmutableDoubleArray(double[] dArr, int i, int i2) {
        this.f4763a = dArr;
        this.f4764b = i;
        this.c = i2;
    }

    public int length() {
        return this.c - this.f4764b;
    }

    public boolean isEmpty() {
        return this.c == this.f4764b;
    }

    public double get(int i) {
        Preconditions.checkElementIndex(i, length());
        return this.f4763a[this.f4764b + i];
    }

    public int indexOf(double d2) {
        int i = this.f4764b;
        for (int i2 = i; i2 < this.c; i2++) {
            if (a(this.f4763a[i2], d2)) {
                return i2 - i;
            }
        }
        return -1;
    }

    public int lastIndexOf(double d2) {
        int i;
        int i2 = this.c;
        do {
            i2--;
            i = this.f4764b;
            if (i2 < i) {
                return -1;
            }
        } while (!a(this.f4763a[i2], d2));
        return i2 - i;
    }

    public boolean contains(double d2) {
        return indexOf(d2) >= 0;
    }

    public double[] toArray() {
        return Arrays.copyOfRange(this.f4763a, this.f4764b, this.c);
    }

    public ImmutableDoubleArray subArray(int i, int i2) {
        Preconditions.checkPositionIndexes(i, i2, length());
        if (i == i2) {
            return d;
        }
        int i3 = this.f4764b;
        return new ImmutableDoubleArray(this.f4763a, i + i3, i3 + i2);
    }

    public List<Double> asList() {
        return new b(this);
    }

    public static class b extends AbstractList<Double> implements RandomAccess, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final ImmutableDoubleArray f4767a;

        public b(ImmutableDoubleArray immutableDoubleArray) {
            this.f4767a = immutableDoubleArray;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f4767a.length();
        }

        @Override // java.util.AbstractList, java.util.List
        public Double get(int i) {
            return Double.valueOf(this.f4767a.get(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return indexOf(obj) >= 0;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            if (!(obj instanceof Double)) {
                return -1;
            }
            return this.f4767a.indexOf(((Double) obj).doubleValue());
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            if (!(obj instanceof Double)) {
                return -1;
            }
            return this.f4767a.lastIndexOf(((Double) obj).doubleValue());
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Double> subList(int i, int i2) {
            return this.f4767a.subArray(i, i2).asList();
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@NullableDecl Object obj) {
            boolean z = obj instanceof b;
            ImmutableDoubleArray immutableDoubleArray = this.f4767a;
            if (z) {
                return immutableDoubleArray.equals(((b) obj).f4767a);
            }
            if (!(obj instanceof List)) {
                return false;
            }
            List list = (List) obj;
            if (size() != list.size()) {
                return false;
            }
            int i = immutableDoubleArray.f4764b;
            for (Object obj2 : list) {
                if (obj2 instanceof Double) {
                    int i2 = i + 1;
                    if (ImmutableDoubleArray.a(immutableDoubleArray.f4763a[i], ((Double) obj2).doubleValue())) {
                        i = i2;
                    }
                }
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            return this.f4767a.hashCode();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return this.f4767a.toString();
        }
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ImmutableDoubleArray)) {
            return false;
        }
        ImmutableDoubleArray immutableDoubleArray = (ImmutableDoubleArray) obj;
        if (length() != immutableDoubleArray.length()) {
            return false;
        }
        for (int i = 0; i < length(); i++) {
            if (!a(get(i), immutableDoubleArray.get(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(double d2, double d3) {
        return Double.doubleToLongBits(d2) == Double.doubleToLongBits(d3);
    }

    public int hashCode() {
        int iHashCode = 1;
        for (int i = this.f4764b; i < this.c; i++) {
            iHashCode = (iHashCode * 31) + Doubles.hashCode(this.f4763a[i]);
        }
        return iHashCode;
    }

    public String toString() {
        if (isEmpty()) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder(length() * 5);
        sb.append('[');
        double[] dArr = this.f4763a;
        int i = this.f4764b;
        sb.append(dArr[i]);
        while (true) {
            i++;
            if (i < this.c) {
                sb.append(", ");
                sb.append(dArr[i]);
            } else {
                sb.append(']');
                return sb.toString();
            }
        }
    }

    public ImmutableDoubleArray trimmed() {
        if (this.f4764b <= 0) {
            if (this.c >= this.f4763a.length) {
                return this;
            }
        }
        return new ImmutableDoubleArray(toArray());
    }
}
