package kotlin.text;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* loaded from: classes2.dex */
public final /* synthetic */ class r implements Function1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6073a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CharSequence f6074b;

    public /* synthetic */ r(CharSequence charSequence, int i) {
        this.f6073a = i;
        this.f6074b = charSequence;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        IntRange it = (IntRange) obj;
        switch (this.f6073a) {
            case 0:
                Intrinsics.checkNotNullParameter(it, "it");
                break;
            default:
                Intrinsics.checkNotNullParameter(it, "it");
                break;
        }
        return StringsKt__StringsKt.substring(this.f6074b, it);
    }
}
