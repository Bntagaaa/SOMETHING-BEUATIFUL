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
public final class ImmutableLongArray implements Serializable {
    public static final ImmutableLongArray d = new ImmutableLongArray(new long[0], 0, 0);

    /* renamed from: a, reason: collision with root package name */
    public final long[] f4773a;

    /* renamed from: b, reason: collision with root package name */
    public final transient int f4774b;
    public final int c;

    public static ImmutableLongArray of() {
        return d;
    }

    public static ImmutableLongArray of(long j) {
        return new ImmutableLongArray(new long[]{j}, 0, 1);
    }

    public static ImmutableLongArray of(long j, long j2) {
        return new ImmutableLongArray(new long[]{j, j2}, 0, 2);
    }

    public static ImmutableLongArray of(long j, long j2, long j3) {
        return new ImmutableLongArray(new long[]{j, j2, j3}, 0, 3);
    }

    public static ImmutableLongArray of(long j, long j2, long j3, long j4) {
        return new ImmutableLongArray(new long[]{j, j2, j3, j4}, 0, 4);
    }

    public static ImmutableLongArray of(long j, long j2, long j3, long j4, long j5) {
        return new ImmutableLongArray(new long[]{j, j2, j3, j4, j5}, 0, 5);
    }

    public static ImmutableLongArray of(long j, long j2, long j3, long j4, long j5, long j6) {
        return new ImmutableLongArray(new long[]{j, j2, j3, j4, j5, j6}, 0, 6);
    }

    public static ImmutableLongArray of(long j, long... jArr) {
        Preconditions.checkArgument(jArr.length <= 2147483646, "the total number of elements must fit in an int");
        int length = jArr.length + 1;
        long[] jArr2 = new long[length];
        jArr2[0] = j;
        System.arraycopy(jArr, 0, jArr2, 1, jArr.length);
        return new ImmutableLongArray(jArr2, 0, length);
    }

    public static ImmutableLongArray copyOf(long[] jArr) {
        return jArr.length == 0 ? d : new ImmutableLongArray(Arrays.copyOf(jArr, jArr.length));
    }

    public static ImmutableLongArray copyOf(Collection<Long> collection) {
        return collection.isEmpty() ? d : new ImmutableLongArray(Longs.toArray(collection));
    }

    public static ImmutableLongArray copyOf(Iterable<Long> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection<Long>) iterable);
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
        public long[] f4775a;

        /* renamed from: b, reason: collision with root package name */
        public int f4776b = 0;

        public Builder(int i) {
            this.f4775a = new long[i];
        }

        public Builder add(long j) {
            a(1);
            long[] jArr = this.f4775a;
            int i = this.f4776b;
            jArr[i] = j;
            this.f4776b = i + 1;
            return this;
        }

        public Builder addAll(long[] jArr) {
            a(jArr.length);
            System.arraycopy(jArr, 0, this.f4775a, this.f4776b, jArr.length);
            this.f4776b += jArr.length;
            return this;
        }

        public Builder addAll(Iterable<Long> iterable) {
            if (iterable instanceof Collection) {
                return addAll((Collection<Long>) iterable);
            }
            Iterator<Long> it = iterable.iterator();
            while (it.hasNext()) {
                add(it.next().longValue());
            }
            return this;
        }

        public Builder addAll(Collection<Long> collection) {
            a(collection.size());
            for (Long l : collection) {
                long[] jArr = this.f4775a;
                int i = this.f4776b;
                this.f4776b = i + 1;
                jArr[i] = l.longValue();
            }
            return this;
        }

        public Builder addAll(ImmutableLongArray immutableLongArray) {
            a(immutableLongArray.length());
            System.arraycopy(immutableLongArray.f4773a, immutableLongArray.f4774b, this.f4775a, this.f4776b, immutableLongArray.length());
            this.f4776b = immutableLongArray.length() + this.f4776b;
            return this;
        }

        public final void a(int i) {
            int i2 = this.f4776b + i;
            long[] jArr = this.f4775a;
            if (i2 > jArr.length) {
                int length = jArr.length;
                if (i2 >= 0) {
                    int iHighestOneBit = length + (length >> 1) + 1;
                    if (iHighestOneBit < i2) {
                        iHighestOneBit = Integer.highestOneBit(i2 - 1) << 1;
                    }
                    if (iHighestOneBit < 0) {
                        iHighestOneBit = Integer.MAX_VALUE;
                    }
                    long[] jArr2 = new long[iHighestOneBit];
                    System.arraycopy(this.f4775a, 0, jArr2, 0, this.f4776b);
                    this.f4775a = jArr2;
                    return;
                }
                throw new AssertionError("cannot store more than MAX_VALUE elements");
            }
        }

        @CheckReturnValue
        public ImmutableLongArray build() {
            int i = this.f4776b;
            return i == 0 ? ImmutableLongArray.d : new ImmutableLongArray(this.f4775a, 0, i);
        }
    }

    public ImmutableLongArray(long[] jArr) {
        this(jArr, 0, jArr.length);
    }

    public ImmutableLongArray(long[] jArr, int i, int i2) {
        this.f4773a = jArr;
        this.f4774b = i;
        this.c = i2;
    }

    public int length() {
        return this.c - this.f4774b;
    }

    public boolean isEmpty() {
        return this.c == this.f4774b;
    }

    public long get(int i) {
        Preconditions.checkElementIndex(i, length());
        return this.f4773a[this.f4774b + i];
    }

    public int indexOf(long j) {
        int i = this.f4774b;
        for (int i2 = i; i2 < this.c; i2++) {
            if (this.f4773a[i2] == j) {
                return i2 - i;
            }
        }
        return -1;
    }

    public int lastIndexOf(long j) {
        int i;
        int i2 = this.c;
        do {
            i2--;
            i = this.f4774b;
            if (i2 < i) {
                return -1;
            }
        } while (this.f4773a[i2] != j);
        return i2 - i;
    }

    public boolean contains(long j) {
        return indexOf(j) >= 0;
    }

    public long[] toArray() {
        return Arrays.copyOfRange(this.f4773a, this.f4774b, this.c);
    }

    public ImmutableLongArray subArray(int i, int i2) {
        Preconditions.checkPositionIndexes(i, i2, length());
        if (i == i2) {
            return d;
        }
        int i3 = this.f4774b;
        return new ImmutableLongArray(this.f4773a, i + i3, i3 + i2);
    }

    public List<Long> asList() {
        return new b(this);
    }

    public static class b extends AbstractList<Long> implements RandomAccess, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final ImmutableLongArray f4777a;

        public b(ImmutableLongArray immutableLongArray) {
            this.f4777a = immutableLongArray;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f4777a.length();
        }

        @Override // java.util.AbstractList, java.util.List
        public Long get(int i) {
            return Long.valueOf(this.f4777a.get(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return indexOf(obj) >= 0;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            if (!(obj instanceof Long)) {
                return -1;
            }
            return this.f4777a.indexOf(((Long) obj).longValue());
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            if (!(obj instanceof Long)) {
                return -1;
            }
            return this.f4777a.lastIndexOf(((Long) obj).longValue());
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Long> subList(int i, int i2) {
            return this.f4777a.subArray(i, i2).asList();
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@NullableDecl Object obj) {
            boolean z = obj instanceof b;
            ImmutableLongArray immutableLongArray = this.f4777a;
            if (z) {
                return immutableLongArray.equals(((b) obj).f4777a);
            }
            if (!(obj instanceof List)) {
                return false;
            }
            List list = (List) obj;
            if (size() != list.size()) {
                return false;
            }
            int i = immutableLongArray.f4774b;
            for (Object obj2 : list) {
                if (obj2 instanceof Long) {
                    int i2 = i + 1;
                    if (immutableLongArray.f4773a[i] == ((Long) obj2).longValue()) {
                        i = i2;
                    }
                }
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            return this.f4777a.hashCode();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return this.f4777a.toString();
        }
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ImmutableLongArray)) {
            return false;
        }
        ImmutableLongArray immutableLongArray = (ImmutableLongArray) obj;
        if (length() != immutableLongArray.length()) {
            return false;
        }
        for (int i = 0; i < length(); i++) {
            if (get(i) != immutableLongArray.get(i)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int iHashCode = 1;
        for (int i = this.f4774b; i < this.c; i++) {
            iHashCode = (iHashCode * 31) + Longs.hashCode(this.f4773a[i]);
        }
        return iHashCode;
    }

    public String toString() {
        if (isEmpty()) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder(length() * 5);
        sb.append('[');
        long[] jArr = this.f4773a;
        int i = this.f4774b;
        sb.append(jArr[i]);
        while (true) {
            i++;
            if (i < this.c) {
                sb.append(", ");
                sb.append(jArr[i]);
            } else {
                sb.append(']');
                return sb.toString();
            }
        }
    }

    public ImmutableLongArray trimmed() {
        if (this.f4774b <= 0) {
            if (this.c >= this.f4773a.length) {
                return this;
            }
        }
        return new ImmutableLongArray(toArray());
    }
}
