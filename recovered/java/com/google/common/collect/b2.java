package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.Comparator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
final class b2<T> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Comparator f4176a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f4177b;
    public final Object c;
    public final BoundType d;
    public final boolean e;
    public final Object f;

    /* renamed from: g, reason: collision with root package name */
    public final BoundType f4178g;

    public b2(Comparator comparator, boolean z, Object obj, BoundType boundType, boolean z2, Object obj2, BoundType boundType2) {
        this.f4176a = (Comparator) Preconditions.checkNotNull(comparator);
        this.f4177b = z;
        this.e = z2;
        this.c = obj;
        this.d = (BoundType) Preconditions.checkNotNull(boundType);
        this.f = obj2;
        this.f4178g = (BoundType) Preconditions.checkNotNull(boundType2);
        if (z) {
            comparator.compare(obj, obj);
        }
        if (z2) {
            comparator.compare(obj2, obj2);
        }
        if (z && z2) {
            int iCompare = comparator.compare(obj, obj2);
            Preconditions.checkArgument(iCompare <= 0, "lowerEndpoint (%s) > upperEndpoint (%s)", obj, obj2);
            if (iCompare == 0) {
                BoundType boundType3 = BoundType.OPEN;
                Preconditions.checkArgument((boundType != boundType3) | (boundType2 != boundType3));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean d(Object obj) {
        if (!this.f4177b) {
            return false;
        }
        int iCompare = this.f4176a.compare(obj, this.c);
        return ((iCompare == 0) & (this.d == BoundType.OPEN)) | (iCompare < 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean c(Object obj) {
        if (!this.e) {
            return false;
        }
        int iCompare = this.f4176a.compare(obj, this.f);
        return ((iCompare == 0) & (this.f4178g == BoundType.OPEN)) | (iCompare > 0);
    }

    public final boolean a(Object obj) {
        return (d(obj) || c(obj)) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final b2 b(b2 b2Var) {
        boolean z;
        int iCompare;
        boolean z2;
        Object obj;
        int iCompare2;
        Object obj2;
        int iCompare3;
        BoundType boundType;
        Preconditions.checkNotNull(b2Var);
        Comparator comparator = this.f4176a;
        Preconditions.checkArgument(comparator.equals(b2Var.f4176a));
        boolean z3 = b2Var.f4177b;
        BoundType boundType2 = b2Var.d;
        Object obj3 = b2Var.c;
        boolean z4 = this.f4177b;
        if (z4) {
            Object obj4 = this.c;
            if (!z3 || ((iCompare = comparator.compare(obj4, obj3)) >= 0 && !(iCompare == 0 && boundType2 == BoundType.OPEN))) {
                boundType2 = this.d;
                z = z4;
                obj3 = obj4;
            } else {
                z = z4;
            }
        } else {
            z = z3;
        }
        boolean z5 = b2Var.e;
        BoundType boundType3 = b2Var.f4178g;
        Object obj5 = b2Var.f;
        boolean z6 = this.e;
        if (z6) {
            Object obj6 = this.f;
            if (!z5 || ((iCompare2 = comparator.compare(obj6, obj5)) <= 0 && !(iCompare2 == 0 && boundType3 == BoundType.OPEN))) {
                boundType3 = this.f4178g;
                z2 = z6;
                obj = obj6;
            } else {
                obj = obj5;
                z2 = z6;
            }
        } else {
            obj = obj5;
            z2 = z5;
        }
        if (z && z2 && ((iCompare3 = comparator.compare(obj3, obj)) > 0 || (iCompare3 == 0 && boundType2 == (boundType = BoundType.OPEN) && boundType3 == boundType))) {
            boundType2 = BoundType.OPEN;
            boundType3 = BoundType.CLOSED;
            obj2 = obj;
        } else {
            obj2 = obj3;
        }
        return new b2(this.f4176a, z, obj2, boundType2, z2, obj, boundType3);
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof b2) {
            b2 b2Var = (b2) obj;
            if (this.f4176a.equals(b2Var.f4176a) && this.f4177b == b2Var.f4177b && this.e == b2Var.e && this.d.equals(b2Var.d) && this.f4178g.equals(b2Var.f4178g) && Objects.equal(this.c, b2Var.c) && Objects.equal(this.f, b2Var.f)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(this.f4176a, this.c, this.d, this.f, this.f4178g);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f4176a);
        sb.append(":");
        BoundType boundType = BoundType.CLOSED;
        sb.append(this.d == boundType ? '[' : '(');
        sb.append(this.f4177b ? this.c : "-∞");
        sb.append(',');
        sb.append(this.e ? this.f : "∞");
        sb.append(this.f4178g == boundType ? ']' : ')');
        return sb.toString();
    }
}
