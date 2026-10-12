package gnu.xquery.util;

import gnu.lists.FilterConsumer;
import gnu.mapping.Procedure;

/* loaded from: classes2.dex */
public class OrderedTuples extends FilterConsumer {

    /* renamed from: a, reason: collision with root package name */
    public int f5533a;

    /* renamed from: b, reason: collision with root package name */
    public Object[] f5534b;
    public Object[] c;
    public int[] d;
    public Procedure e;

    @Override // gnu.lists.FilterConsumer, gnu.lists.Consumer
    public void writeObject(Object obj) {
        int i = this.f5533a;
        Object[] objArr = this.f5534b;
        if (i >= objArr.length) {
            Object[] objArr2 = new Object[i * 2];
            System.arraycopy(objArr, 0, objArr2, 0, i);
            this.f5534b = objArr2;
        }
        Object[] objArr3 = this.f5534b;
        int i2 = this.f5533a;
        this.f5533a = i2 + 1;
        objArr3[i2] = obj;
    }

    public OrderedTuples() {
        super(null);
        this.f5534b = new Object[10];
    }

    public static OrderedTuples make$V(Procedure procedure, Object[] objArr) {
        OrderedTuples orderedTuples = new OrderedTuples();
        orderedTuples.c = objArr;
        orderedTuples.e = procedure;
        return orderedTuples;
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x0140 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0138 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run$X(gnu.mapping.CallContext r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 441
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.util.OrderedTuples.run$X(gnu.mapping.CallContext):void");
    }
}
