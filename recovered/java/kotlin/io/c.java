package kotlin.io;

import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final /* synthetic */ class c implements Function1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5779a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f5780b;

    public /* synthetic */ c(ArrayList arrayList, int i) {
        this.f5779a = i;
        this.f5780b = arrayList;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String it = (String) obj;
        switch (this.f5779a) {
            case 0:
                Intrinsics.checkNotNullParameter(it, "it");
                this.f5780b.add(it);
                break;
            default:
                Intrinsics.checkNotNullParameter(it, "it");
                this.f5780b.add(it);
                break;
        }
        return Unit.INSTANCE;
    }
}
