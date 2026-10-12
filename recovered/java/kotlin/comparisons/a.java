package kotlin.comparisons;

import java.util.Comparator;
import kotlin.jvm.functions.Function1;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5716a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f5717b;

    public /* synthetic */ a(Object obj, int i) {
        this.f5716a = i;
        this.f5717b = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f5716a) {
            case 0:
                if (obj == obj2) {
                    return 0;
                }
                if (obj == null) {
                    return 1;
                }
                if (obj2 == null) {
                    return -1;
                }
                return ((Comparator) this.f5717b).compare(obj, obj2);
            case 1:
                if (obj == obj2) {
                    return 0;
                }
                if (obj == null) {
                    return -1;
                }
                if (obj2 == null) {
                    return 1;
                }
                return ((Comparator) this.f5717b).compare(obj, obj2);
            default:
                for (Function1 function1 : (Function1[]) this.f5717b) {
                    int iCompareValues = c.compareValues((Comparable) function1.invoke(obj), (Comparable) function1.invoke(obj2));
                    if (iCompareValues != 0) {
                        return iCompareValues;
                    }
                }
                return 0;
        }
    }
}
