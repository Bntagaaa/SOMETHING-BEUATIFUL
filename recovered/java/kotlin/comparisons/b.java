package kotlin.comparisons;

import java.util.Comparator;

/* loaded from: classes2.dex */
public final /* synthetic */ class b implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5718a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Comparator f5719b;
    public final /* synthetic */ Comparator c;

    public /* synthetic */ b(Comparator comparator, Comparator comparator2, int i) {
        this.f5718a = i;
        this.f5719b = comparator;
        this.c = comparator2;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f5718a) {
            case 0:
                int iCompare = this.f5719b.compare(obj, obj2);
                return iCompare != 0 ? iCompare : this.c.compare(obj2, obj);
            default:
                int iCompare2 = this.f5719b.compare(obj, obj2);
                return iCompare2 != 0 ? iCompare2 : this.c.compare(obj, obj2);
        }
    }
}
