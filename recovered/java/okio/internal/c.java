package okio.internal;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import okio.BufferedSource;

@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "headerId", "", "dataSize", "", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes2.dex */
final class c extends Lambda implements Function2<Integer, Long, Unit> {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BufferedSource f6844b;
    public final /* synthetic */ Ref.ObjectRef c;
    public final /* synthetic */ Ref.ObjectRef d;
    public final /* synthetic */ Ref.ObjectRef e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(BufferedSource bufferedSource, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2, Ref.ObjectRef objectRef3) {
        super(2);
        this.f6844b = bufferedSource;
        this.c = objectRef;
        this.d = objectRef2;
        this.e = objectRef3;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Integer num, Long l) throws IOException {
        invoke(num.intValue(), l.longValue());
        return Unit.INSTANCE;
    }

    /* JADX WARN: Type inference failed for: r11v3, types: [T, java.lang.Long] */
    /* JADX WARN: Type inference failed for: r13v2, types: [T, java.lang.Long] */
    /* JADX WARN: Type inference failed for: r13v4, types: [T, java.lang.Long] */
    public final void invoke(int i, long j) throws IOException {
        if (i == 21589) {
            if (j < 1) {
                throw new IOException("bad zip: extended timestamp extra too short");
            }
            byte b2 = this.f6844b.readByte();
            boolean z = (b2 & 1) == 1;
            boolean z2 = (b2 & 2) == 2;
            boolean z3 = (b2 & 4) == 4;
            long j2 = z ? 5L : 1L;
            if (z2) {
                j2 += 4;
            }
            if (z3) {
                j2 += 4;
            }
            if (j < j2) {
                throw new IOException("bad zip: extended timestamp extra too short");
            }
            if (z) {
                this.c.element = Long.valueOf(r2.readIntLe() * 1000);
            }
            if (z2) {
                this.d.element = Long.valueOf(r2.readIntLe() * 1000);
            }
            if (z3) {
                this.e.element = Long.valueOf(r2.readIntLe() * 1000);
            }
        }
    }
}
