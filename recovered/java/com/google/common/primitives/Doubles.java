package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Converter;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class Doubles {
    public static final int BYTES = 8;

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f4754a = Pattern.compile("[+-]?(?:NaN|Infinity|(?:\\d+#(?:\\.\\d*#)?|\\.\\d+#)(?:[eE][+-]?\\d+#)?[fFdD]?|0[xX](?:[0-9a-fA-F]+#(?:\\.[0-9a-fA-F]*#)?|\\.[0-9a-fA-F]+#)[pP][+-]?\\d+#[fFdD]?)".replace("#", "+"));

    public static boolean isFinite(double d) {
        return Double.NEGATIVE_INFINITY < d && d < Double.POSITIVE_INFINITY;
    }

    private Doubles() {
    }

    public static int hashCode(double d) {
        return Double.valueOf(d).hashCode();
    }

    public static int compare(double d, double d2) {
        return Double.compare(d, d2);
    }

    public static boolean contains(double[] dArr, double d) {
        for (double d2 : dArr) {
            if (d2 == d) {
                return true;
            }
        }
        return false;
    }

    public static int indexOf(double[] dArr, double d) {
        return a(dArr, d, 0, dArr.length);
    }

    public static int a(double[] dArr, double d, int i, int i2) {
        while (i < i2) {
            if (dArr[i] == d) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
    
        r0 = r0 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int indexOf(double[] r8, double[] r9) {
        /*
            java.lang.String r0 = "array"
            com.google.common.base.Preconditions.checkNotNull(r8, r0)
            java.lang.String r0 = "target"
            com.google.common.base.Preconditions.checkNotNull(r9, r0)
            int r0 = r9.length
            r1 = 0
            if (r0 != 0) goto Lf
            return r1
        Lf:
            r0 = 0
        L10:
            int r2 = r8.length
            int r3 = r9.length
            int r2 = r2 - r3
            int r2 = r2 + 1
            if (r0 >= r2) goto L2c
            r2 = 0
        L18:
            int r3 = r9.length
            if (r2 >= r3) goto L2b
            int r3 = r0 + r2
            r3 = r8[r3]
            r5 = r9[r2]
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L28
            int r0 = r0 + 1
            goto L10
        L28:
            int r2 = r2 + 1
            goto L18
        L2b:
            return r0
        L2c:
            r8 = -1
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.primitives.Doubles.indexOf(double[], double[]):int");
    }

    public static int lastIndexOf(double[] dArr, double d) {
        for (int length = dArr.length - 1; length >= 0; length--) {
            if (dArr[length] == d) {
                return length;
            }
        }
        return -1;
    }

    public static double min(double... dArr) {
        Preconditions.checkArgument(dArr.length > 0);
        double dMin = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            dMin = Math.min(dMin, dArr[i]);
        }
        return dMin;
    }

    public static double max(double... dArr) {
        Preconditions.checkArgument(dArr.length > 0);
        double dMax = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            dMax = Math.max(dMax, dArr[i]);
        }
        return dMax;
    }

    @Beta
    public static double constrainToRange(double d, double d2, double d3) {
        Preconditions.checkArgument(d2 <= d3, "min (%s) must be less than or equal to max (%s)", Double.valueOf(d2), Double.valueOf(d3));
        return Math.min(Math.max(d, d2), d3);
    }

    public static double[] concat(double[]... dArr) {
        int length = 0;
        for (double[] dArr2 : dArr) {
            length += dArr2.length;
        }
        double[] dArr3 = new double[length];
        int length2 = 0;
        for (double[] dArr4 : dArr) {
            System.arraycopy(dArr4, 0, dArr3, length2, dArr4.length);
            length2 += dArr4.length;
        }
        return dArr3;
    }

    public static final class b extends Converter<String, Double> implements Serializable {

        /* renamed from: b, reason: collision with root package name */
        public static final b f4757b = new b();

        private b() {
        }

        @Override // com.google.common.base.Converter
        public Double doForward(String str) {
            return Double.valueOf(str);
        }

        @Override // com.google.common.base.Converter
        public String doBackward(Double d) {
            return d.toString();
        }

        public String toString() {
            return "Doubles.stringConverter()";
        }
    }

    @Beta
    public static Converter<String, Double> stringConverter() {
        return b.f4757b;
    }

    public static double[] ensureCapacity(double[] dArr, int i, int i2) {
        Preconditions.checkArgument(i >= 0, "Invalid minLength: %s", i);
        Preconditions.checkArgument(i2 >= 0, "Invalid padding: %s", i2);
        return dArr.length < i ? Arrays.copyOf(dArr, i + i2) : dArr;
    }

    public static String join(String str, double... dArr) {
        Preconditions.checkNotNull(str);
        if (dArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(dArr.length * 12);
        sb.append(dArr[0]);
        for (int i = 1; i < dArr.length; i++) {
            sb.append(str);
            sb.append(dArr[i]);
        }
        return sb.toString();
    }

    public static Comparator<double[]> lexicographicalComparator() {
        return c.f4758a;
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class c implements Comparator<double[]> {

        /* renamed from: a, reason: collision with root package name */
        public static final c f4758a = new c("INSTANCE", 0);

        @Override // java.util.Comparator
        public int compare(double[] dArr, double[] dArr2) {
            int iMin = Math.min(dArr.length, dArr2.length);
            for (int i = 0; i < iMin; i++) {
                int iCompare = Double.compare(dArr[i], dArr2[i]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return dArr.length - dArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Doubles.lexicographicalComparator()";
        }
    }

    public static void sortDescending(double[] dArr) {
        Preconditions.checkNotNull(dArr);
        sortDescending(dArr, 0, dArr.length);
    }

    public static void sortDescending(double[] dArr, int i, int i2) {
        Preconditions.checkNotNull(dArr);
        Preconditions.checkPositionIndexes(i, i2, dArr.length);
        Arrays.sort(dArr, i, i2);
        reverse(dArr, i, i2);
    }

    public static void reverse(double[] dArr) {
        Preconditions.checkNotNull(dArr);
        reverse(dArr, 0, dArr.length);
    }

    public static void reverse(double[] dArr, int i, int i2) {
        Preconditions.checkNotNull(dArr);
        Preconditions.checkPositionIndexes(i, i2, dArr.length);
        for (int i3 = i2 - 1; i < i3; i3--) {
            double d = dArr[i];
            dArr[i] = dArr[i3];
            dArr[i3] = d;
            i++;
        }
    }

    public static double[] toArray(Collection<? extends Number> collection) {
        if (collection instanceof a) {
            a aVar = (a) collection;
            return Arrays.copyOfRange(aVar.f4755a, aVar.f4756b, aVar.c);
        }
        Object[] array = collection.toArray();
        int length = array.length;
        double[] dArr = new double[length];
        for (int i = 0; i < length; i++) {
            dArr[i] = ((Number) Preconditions.checkNotNull(array[i])).doubleValue();
        }
        return dArr;
    }

    public static List<Double> asList(double... dArr) {
        if (dArr.length == 0) {
            return Collections.EMPTY_LIST;
        }
        return new a(dArr, 0, dArr.length);
    }

    @GwtCompatible
    public static class a extends AbstractList<Double> implements RandomAccess, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final double[] f4755a;

        /* renamed from: b, reason: collision with root package name */
        public final int f4756b;
        public final int c;

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        public a(double[] dArr, int i, int i2) {
            this.f4755a = dArr;
            this.f4756b = i;
            this.c = i2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.c - this.f4756b;
        }

        @Override // java.util.AbstractList, java.util.List
        public Double get(int i) {
            Preconditions.checkElementIndex(i, size());
            return Double.valueOf(this.f4755a[this.f4756b + i]);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            if (obj instanceof Double) {
                return Doubles.a(this.f4755a, ((Double) obj).doubleValue(), this.f4756b, this.c) != -1;
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            if (!(obj instanceof Double)) {
                return -1;
            }
            double dDoubleValue = ((Double) obj).doubleValue();
            double[] dArr = this.f4755a;
            int i = this.f4756b;
            int iA = Doubles.a(dArr, dDoubleValue, i, this.c);
            if (iA >= 0) {
                return iA - i;
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int i;
            if (obj instanceof Double) {
                double dDoubleValue = ((Double) obj).doubleValue();
                int i2 = Doubles.BYTES;
                int i3 = this.c - 1;
                while (true) {
                    i = this.f4756b;
                    if (i3 < i) {
                        i3 = -1;
                        break;
                    }
                    if (this.f4755a[i3] == dDoubleValue) {
                        break;
                    }
                    i3--;
                }
                if (i3 >= 0) {
                    return i3 - i;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public Double set(int i, Double d) {
            Preconditions.checkElementIndex(i, size());
            int i2 = this.f4756b;
            double[] dArr = this.f4755a;
            double d2 = dArr[i2 + i];
            dArr[i2 + i] = ((Double) Preconditions.checkNotNull(d)).doubleValue();
            return Double.valueOf(d2);
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Double> subList(int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, size());
            if (i == i2) {
                return Collections.EMPTY_LIST;
            }
            int i3 = this.f4756b;
            return new a(this.f4755a, i + i3, i3 + i2);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@NullableDecl Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                int size = size();
                if (aVar.size() != size) {
                    return false;
                }
                for (int i = 0; i < size; i++) {
                    if (this.f4755a[this.f4756b + i] != aVar.f4755a[aVar.f4756b + i]) {
                        return false;
                    }
                }
                return true;
            }
            return super.equals(obj);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int iHashCode = 1;
            for (int i = this.f4756b; i < this.c; i++) {
                iHashCode = (iHashCode * 31) + Doubles.hashCode(this.f4755a[i]);
            }
            return iHashCode;
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 12);
            sb.append('[');
            double[] dArr = this.f4755a;
            int i = this.f4756b;
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
    }

    @Beta
    @NullableDecl
    @GwtIncompatible
    public static Double tryParse(String str) {
        if (!f4754a.matcher(str).matches()) {
            return null;
        }
        try {
            return Double.valueOf(Double.parseDouble(str));
        } catch (NumberFormatException unused) {
            return null;
        }
    }
}
