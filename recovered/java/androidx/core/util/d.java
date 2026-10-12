package androidx.core.util;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1267a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Predicate f1268b;
    public final /* synthetic */ Object c;

    public /* synthetic */ d(Predicate predicate, Predicate predicate2, int i) {
        this.f1267a = i;
        this.f1268b = predicate;
        this.c = predicate2;
    }

    public /* synthetic */ d(Class cls, Predicate predicate) {
        this.f1267a = 2;
        this.c = cls;
        this.f1268b = predicate;
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f1267a;
        return f.a(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate negate() {
        switch (this.f1267a) {
        }
        return f.b(this);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f1267a;
        return f.c(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        switch (this.f1267a) {
            case 0:
                if (this.f1268b.test(obj) || ((Predicate) this.c).test(obj)) {
                }
                break;
            case 1:
                if (!this.f1268b.test(obj) || !((Predicate) this.c).test(obj)) {
                }
                break;
            default:
                Class cls = (Class) this.c;
                if (cls.isInstance(obj)) {
                    if (this.f1268b.test(cls.cast(obj))) {
                    }
                }
                break;
        }
        return false;
    }
}
