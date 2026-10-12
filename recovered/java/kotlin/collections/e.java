package kotlin.collections;

import kotlin.UIntArray;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ArrayIteratorsKt;

/* loaded from: classes2.dex */
public final /* synthetic */ class e implements Function0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5681a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int[] f5682b;

    public /* synthetic */ e(int i, int[] iArr) {
        this.f5681a = i;
        this.f5682b = iArr;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.f5681a) {
            case 0:
                return ArrayIteratorsKt.iterator(this.f5682b);
            default:
                return UIntArray.m617iteratorimpl(this.f5682b);
        }
    }
}
