package kotlin.text;

import java.util.LinkedHashMap;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.jvm.functions.Function0;
import kotlin.ranges.RangesKt;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Function0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6065a;

    public /* synthetic */ a(int i) {
        this.f6065a = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.f6065a) {
            case 0:
                EnumEntries<CharDirectionality> entries = CharDirectionality.getEntries();
                LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(kotlin.collections.l.collectionSizeOrDefault(entries, 10)), 16));
                for (CharDirectionality charDirectionality : entries) {
                    linkedHashMap.put(Integer.valueOf(charDirectionality.value), charDirectionality);
                }
                return linkedHashMap;
            default:
                return Unit.INSTANCE;
        }
    }
}
