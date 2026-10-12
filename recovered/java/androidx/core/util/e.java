package androidx.core.util;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1269a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1270b;

    public /* synthetic */ e(Object obj, int i) {
        this.f1269a = i;
        this.f1270b = obj;
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f1269a;
        return f.a(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate negate() {
        switch (this.f1269a) {
        }
        return f.b(this);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f1269a;
        return f.c(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        switch (this.f1269a) {
            case 0:
                return this.f1270b.equals(obj);
            default:
                return !((Predicate) this.f1270b).test(obj);
        }
    }
}
