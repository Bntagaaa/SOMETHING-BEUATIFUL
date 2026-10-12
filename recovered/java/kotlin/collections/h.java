package kotlin.collections;

import kotlin.ULongArray;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ArrayIteratorsKt;

/* loaded from: classes2.dex */
public final /* synthetic */ class h implements Function0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5687a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long[] f5688b;

    public /* synthetic */ h(long[] jArr, int i) {
        this.f5687a = i;
        this.f5688b = jArr;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.f5687a) {
            case 0:
                return ArrayIteratorsKt.iterator(this.f5688b);
            default:
                return ULongArray.m642iteratorimpl(this.f5688b);
        }
    }
}
