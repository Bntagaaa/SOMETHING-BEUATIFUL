package kotlin.collections;

import kotlin.jvm.functions.Function1;

/* loaded from: classes2.dex */
public final /* synthetic */ class r implements Function1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5691a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5692b;

    public /* synthetic */ r(int i, int i2) {
        this.f5691a = i2;
        this.f5692b = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.f5691a;
        ((Integer) obj).intValue();
        switch (i) {
            case 0:
                throw new IndexOutOfBoundsException("Collection doesn't contain element at index " + this.f5692b + '.');
            default:
                throw new IndexOutOfBoundsException("Sequence doesn't contain element at index " + this.f5692b + '.');
        }
    }
}
