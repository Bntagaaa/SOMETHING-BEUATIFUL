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
public final class ImmutableIntArray implements Serializable {
    public static final ImmutableIntArray d = new ImmutableIntArray(0, 0, new int[0]);

    /* renamed from: a, reason: collision with root package name */
    public final int[] f4768a;

    /* renamed from: b, reason: collision with root package name */
    public final transient int f4769b;
    public final int c;

    public static ImmutableIntArray of() {
        return d;
    }

    public static ImmutableIntArray of(int i) {
        return new ImmutableIntArray(0, 1, new int[]{i});
    }

    public static ImmutableIntArray of(int i, int i2) {
        return new ImmutableIntArray(0, 2, new int[]{i, i2});
    }

    public static ImmutableIntArray of(int i, int i2, int i3) {
        return new ImmutableIntArray(0, 3, new int[]{i, i2, i3});
    }

    public static ImmutableIntArray of(int i, int i2, int i3, int i4) {
        return new ImmutableIntArray(0, 4, new int[]{i, i2, i3, i4});
    }

    public static ImmutableIntArray of(int i, int i2, int i3, int i4, int i5) {
        return new ImmutableIntArray(0, 5, new int[]{i, i2, i3, i4, i5});
    }

    public static ImmutableIntArray of(int i, int i2, int i3, int i4, int i5, int i6) {
        return new ImmutableIntArray(0, 6, new int[]{i, i2, i3, i4, i5, i6});
    }

    public static ImmutableIntArray of(int i, int... iArr) {
        Preconditions.checkArgument(iArr.length <= 2147483646, "the total number of elements must fit in an int");
        int length = iArr.length + 1;
        int[] iArr2 = new int[length];
        iArr2[0] = i;
        System.arraycopy(iArr, 0, iArr2, 1, iArr.length);
        return new ImmutableIntArray(0, length, iArr2);
    }

    public static ImmutableIntArray copyOf(int[] iArr) {
        return iArr.length == 0 ? d : new ImmutableIntArray(Arrays.copyOf(iArr, iArr.length));
    }

    public static ImmutableIntArray copyOf(Collection<Integer> collection) {
        return collection.isEmpty() ? d : new ImmutableIntArray(Ints.toArray(collection));
    }

    public static ImmutableIntArray copyOf(Iterable<Integer> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection<Integer>) iterable);
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
        public int[] f4770a;

        /* renamed from: b, reason: collision with root package name */
        public int f4771b = 0;

        public Builder(int i) {
            this.f4770a = new int[i];
        }

        public Builder add(int i) {
            a(1);
            int[] iArr = this.f4770a;
            int i2 = this.f4771b;
            iArr[i2] = i;
            this.f4771b = i2 + 1;
            return this;
        }

        public Builder addAll(int[] iArr) {
            a(iArr.length);
            System.arraycopy(iArr, 0, this.f4770a, this.f4771b, iArr.length);
            this.f4771b += iArr.length;
            return this;
        }

        public Builder addAll(Iterable<Integer> iterable) {
            if (iterable instanceof Collection) {
                return addAll((Collection<Integer>) iterable);
            }
            Iterator<Integer> it = iterable.iterator();
            while (it.hasNext()) {
                add(it.next().intValue());
            }
            return this;
        }

        public Builder addAll(Collection<Integer> collection) {
            a(collection.size());
            for (Integer num : collection) {
                int[] iArr = this.f4770a;
                int i = this.f4771b;
                this.f4771b = i + 1;
                iArr[i] = num.intValue();
            }
            return this;
        }

        public Builder addAll(ImmutableIntArray immutableIntArray) {
            a(immutableIntArray.length());
            System.arraycopy(immutableIntArray.f4768a, immutableIntArray.f4769b, this.f4770a, this.f4771b, immutableIntArray.length());
            this.f4771b = immutableIntArray.length() + this.f4771b;
            return this;
        }

        public final void a(int i) {
            int i2 = this.f4771b + i;
            int[] iArr = this.f4770a;
            if (i2 > iArr.length) {
                int length = iArr.length;
                if (i2 >= 0) {
                    int iHighestOneBit = length + (length >> 1) + 1;
                    if (iHighestOneBit < i2) {
                        iHighestOneBit = Integer.highestOneBit(i2 - 1) << 1;
                    }
                    if (iHighestOneBit < 0) {
                        iHighestOneBit = Integer.MAX_VALUE;
                    }
                    int[] iArr2 = new int[iHighestOneBit];
                    System.arraycopy(this.f4770a, 0, iArr2, 0, this.f4771b);
                    this.f4770a = iArr2;
                    return;
                }
                throw new AssertionError("cannot store more than MAX_VALUE elements");
            }
        }

        @CheckReturnValue
        public ImmutableIntArray build() {
            int i = this.f4771b;
            return i == 0 ? ImmutableIntArray.d : new ImmutableIntArray(0, i, this.f4770a);
        }
    }

    public ImmutableIntArray(int[] iArr) {
        this(0, iArr.length, iArr);
    }

    public ImmutableIntArray(int i, int i2, int[] iArr) {
        this.f4768a = iArr;
        this.f4769b = i;
        this.c = i2;
    }

    public int length() {
        return this.c - this.f4769b;
    }

    public boolean isEmpty() {
        return this.c == this.f4769b;
    }

    public int get(int i) {
        Preconditions.checkElementIndex(i, length());
        return this.f4768a[this.f4769b + i];
    }

    public int indexOf(int i) {
        int i2 = this.f4769b;
        for (int i3 = i2; i3 < this.c; i3++) {
            if (this.f4768a[i3] == i) {
                return i3 - i2;
            }
        }
        return -1;
    }

    public int lastIndexOf(int i) {
        int i2;
        int i3 = this.c;
        do {
            i3--;
            i2 = this.f4769b;
            if (i3 < i2) {
                return -1;
            }
        } while (this.f4768a[i3] != i);
        return i3 - i2;
    }

    public boolean contains(int i) {
        return indexOf(i) >= 0;
    }

    public int[] toArray() {
        return Arrays.copyOfRange(this.f4768a, this.f4769b, this.c);
    }

    public ImmutableIntArray subArray(int i, int i2) {
        Preconditions.checkPositionIndexes(i, i2, length());
        if (i == i2) {
            return d;
        }
        int i3 = this.f4769b;
        return new ImmutableIntArray(i + i3, i3 + i2, this.f4768a);
    }

    public List<Integer> asList() {
        return new b(this);
    }

    public static class b extends AbstractList<Integer> implements RandomAccess, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final ImmutableIntArray f4772a;

        public b(ImmutableIntArray immutableIntArray) {
            this.f4772a = immutableIntArray;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f4772a.length();
        }

        @Override // java.util.AbstractList, java.util.List
        public Integer get(int i) {
            return Integer.valueOf(this.f4772a.get(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return indexOf(obj) >= 0;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            if (!(obj instanceof Integer)) {
                return -1;
            }
            return this.f4772a.indexOf(((Integer) obj).intValue());
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            if (!(obj instanceof Integer)) {
                return -1;
            }
            return this.f4772a.lastIndexOf(((Integer) obj).intValue());
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Integer> subList(int i, int i2) {
            return this.f4772a.subArray(i, i2).asList();
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@NullableDecl Object obj) {
            boolean z = obj instanceof b;
            ImmutableIntArray immutableIntArray = this.f4772a;
            if (z) {
                return immutableIntArray.equals(((b) obj).f4772a);
            }
            if (!(obj instanceof List)) {
                return false;
            }
            List list = (List) obj;
            if (size() != list.size()) {
                return false;
            }
            int i = immutableIntArray.f4769b;
            for (Object obj2 : list) {
                if (obj2 instanceof Integer) {
                    int i2 = i + 1;
                    if (immutableIntArray.f4768a[i] == ((Integer) obj2).intValue()) {
                        i = i2;
                    }
                }
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            return this.f4772a.hashCode();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return this.f4772a.toString();
        }
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ImmutableIntArray)) {
            return false;
        }
        ImmutableIntArray immutableIntArray = (ImmutableIntArray) obj;
        if (length() != immutableIntArray.length()) {
            return false;
        }
        for (int i = 0; i < length(); i++) {
            if (get(i) != immutableIntArray.get(i)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int iHashCode = 1;
        for (int i = this.f4769b; i < this.c; i++) {
            iHashCode = (iHashCode * 31) + Ints.hashCode(this.f4768a[i]);
        }
        return iHashCode;
    }

    public String toString() {
        if (isEmpty()) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder(length() * 5);
        sb.append('[');
        int[] iArr = this.f4768a;
        int i = this.f4769b;
        sb.append(iArr[i]);
        while (true) {
            i++;
            if (i < this.c) {
                sb.append(", ");
                sb.append(iArr[i]);
            } else {
                sb.append(']');
                return sb.toString();
            }
        }
    }

    public ImmutableIntArray trimmed() {
        if (this.f4769b <= 0) {
            if (this.c >= this.f4768a.length) {
                return this;
            }
        }
        return new ImmutableIntArray(toArray());
    }
}
