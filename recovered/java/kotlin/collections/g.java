package kotlin.collections;

import kotlin.UShortArray;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ArrayIteratorsKt;

/* loaded from: classes2.dex */
public final /* synthetic */ class g implements Function0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5685a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ short[] f5686b;

    public /* synthetic */ g(short[] sArr, int i) {
        this.f5685a = i;
        this.f5686b = sArr;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.f5685a) {
            case 0:
                return ArrayIteratorsKt.iterator(this.f5686b);
            default:
                return UShortArray.m667iteratorimpl(this.f5686b);
        }
    }
}
