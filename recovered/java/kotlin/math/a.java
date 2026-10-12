package kotlin.math;

import kotlin.Metadata;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/math/a;", "", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final double f5869a;

    /* renamed from: b, reason: collision with root package name */
    public static final double f5870b;
    public static final double c;
    public static final double d;
    public static final double e;

    private a() {
    }

    static {
        new a();
        f5869a = Math.log(2.0d);
        double dSqrt = Math.sqrt(Math.ulp(1.0d));
        f5870b = dSqrt;
        double dSqrt2 = Math.sqrt(dSqrt);
        c = dSqrt2;
        double d2 = 1;
        d = d2 / dSqrt;
        e = d2 / dSqrt2;
    }
}
