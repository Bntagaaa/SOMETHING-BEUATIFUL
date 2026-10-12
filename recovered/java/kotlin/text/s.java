package kotlin.text;

import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final /* synthetic */ class s implements Function2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6075a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f6076b;
    public final /* synthetic */ Object c;

    public /* synthetic */ s(Object obj, int i, boolean z) {
        this.f6075a = i;
        this.c = obj;
        this.f6076b = z;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.f6075a;
        CharSequence DelimitedRangesSequence = (CharSequence) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                Intrinsics.checkNotNullParameter(DelimitedRangesSequence, "$this$DelimitedRangesSequence");
                int iIndexOfAny = StringsKt__StringsKt.indexOfAny(DelimitedRangesSequence, (char[]) this.c, iIntValue, this.f6076b);
                if (iIndexOfAny < 0) {
                    return null;
                }
                return TuplesKt.to(Integer.valueOf(iIndexOfAny), 1);
            default:
                Intrinsics.checkNotNullParameter(DelimitedRangesSequence, "$this$DelimitedRangesSequence");
                Pair pairA = StringsKt__StringsKt.a(DelimitedRangesSequence, (List) this.c, iIntValue, this.f6076b, false);
                if (pairA != null) {
                    return TuplesKt.to(pairA.getFirst(), Integer.valueOf(((String) pairA.getSecond()).length()));
                }
                return null;
        }
    }
}
