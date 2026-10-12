package kotlin.text;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final /* synthetic */ class i implements Function1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6071a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f6072b;

    public /* synthetic */ i(Object obj, int i) {
        this.f6071a = i;
        this.f6072b = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f6071a) {
            case 0:
                String it = (String) obj;
                Intrinsics.checkNotNullParameter(it, "it");
                boolean zIsBlank = StringsKt__StringsKt.isBlank(it);
                String str = (String) this.f6072b;
                return zIsBlank ? it.length() < str.length() ? str : it : _COROUTINE.a.z(str, it);
            case 1:
                String line = (String) obj;
                Intrinsics.checkNotNullParameter(line, "line");
                return ((String) this.f6072b) + line;
            default:
                return ((MatcherMatchResult$groups$1) this.f6072b).get(((Integer) obj).intValue());
        }
    }
}
