package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Add missing generic type declarations: [T] */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
/* loaded from: classes2.dex */
public final class FlowKt__ZipKt$combine$6$1<T> implements Function0<T[]> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Flow[] f6476a;

    public FlowKt__ZipKt$combine$6$1(Flow<T>[] flowArr) {
        this.f6476a = flowArr;
    }

    @Override // kotlin.jvm.functions.Function0
    public final T[] invoke() {
        int length = this.f6476a.length;
        Intrinsics.reifiedOperationMarker(0, "T?");
        return (T[]) new Object[length];
    }
}
