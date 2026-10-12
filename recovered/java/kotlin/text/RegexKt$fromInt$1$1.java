package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class RegexKt$fromInt$1$1 implements Function1<Enum<Object>, Boolean> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6055a;

    public RegexKt$fromInt$1$1(int i) {
        this.f6055a = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(Enum<Object> r3) {
        d dVar = (d) r3;
        return Boolean.valueOf((dVar.getMask() & this.f6055a) == dVar.getValue());
    }
}
