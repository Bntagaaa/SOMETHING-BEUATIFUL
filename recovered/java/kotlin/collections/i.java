package kotlin.collections;

import kotlin.UByteArray;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ArrayIteratorsKt;

/* loaded from: classes2.dex */
public final /* synthetic */ class i implements Function0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5689a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ byte[] f5690b;

    public /* synthetic */ i(byte[] bArr, int i) {
        this.f5689a = i;
        this.f5690b = bArr;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.f5689a) {
            case 0:
                return ArrayIteratorsKt.iterator(this.f5690b);
            default:
                return UByteArray.m592iteratorimpl(this.f5690b);
        }
    }
}
