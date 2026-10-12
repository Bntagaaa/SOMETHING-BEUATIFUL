package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.ExperimentalStdlibApi;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.WasExperimental;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.random.URandomKt;
import kotlin.ranges.UIntProgression;
import kotlin.ranges.ULongProgression;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0007¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0013\u0010\u0002\u001a\u00020\u0005*\u00020\u0004H\u0007¢\u0006\u0004\b\u0002\u0010\u0006\u001a\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u0007¢\u0006\u0004\b\u0007\u0010\b\u001a\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0005*\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\t\u001a\u0013\u0010\n\u001a\u00020\u0001*\u00020\u0000H\u0007¢\u0006\u0004\b\n\u0010\u0003\u001a\u0013\u0010\n\u001a\u00020\u0005*\u00020\u0004H\u0007¢\u0006\u0004\b\n\u0010\u0006\u001a\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u0007¢\u0006\u0004\b\u000b\u0010\b\u001a\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u0005*\u00020\u0004H\u0007¢\u0006\u0004\b\u000b\u0010\t\u001a\u001b\u0010\u000e\u001a\u00020\u0001*\u00020\f2\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u001b\u0010\u000e\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u000e\u0010\u0011\u001a\u001d\u0010\u0012\u001a\u0004\u0018\u00010\u0001*\u00020\f2\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u001d\u0010\u0012\u001a\u0004\u0018\u00010\u0005*\u00020\u00102\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u0012\u0010\u0014\u001a\u001c\u0010\u001a\u001a\u00020\u0017*\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0015H\u0087\u0002¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u001c\u0010\u001a\u001a\u00020\u0017*\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0015H\u0087\u0002¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u001c\u0010\u001a\u001a\u00020\u0017*\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b\u001d\u0010\u001e\u001a\u001c\u0010\u001a\u001a\u00020\u0017*\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0004\b\u001f\u0010 \u001a\u001c\u0010\u001a\u001a\u00020\u0017*\u00020\f2\u0006\u0010\u0016\u001a\u00020!H\u0087\u0002¢\u0006\u0004\b\"\u0010#\u001a\u001c\u0010\u001a\u001a\u00020\u0017*\u00020\u00102\u0006\u0010\u0016\u001a\u00020!H\u0087\u0002¢\u0006\u0004\b$\u0010%\u001a\u001c\u0010)\u001a\u00020\u0000*\u00020\u00152\u0006\u0010&\u001a\u00020\u0015H\u0087\u0004¢\u0006\u0004\b'\u0010(\u001a\u001c\u0010)\u001a\u00020\u0000*\u00020\u00012\u0006\u0010&\u001a\u00020\u0001H\u0087\u0004¢\u0006\u0004\b*\u0010+\u001a\u001c\u0010)\u001a\u00020\u0004*\u00020\u00052\u0006\u0010&\u001a\u00020\u0005H\u0087\u0004¢\u0006\u0004\b,\u0010-\u001a\u001c\u0010)\u001a\u00020\u0000*\u00020!2\u0006\u0010&\u001a\u00020!H\u0087\u0004¢\u0006\u0004\b.\u0010/\u001a\u0013\u00100\u001a\u00020\u0000*\u00020\u0000H\u0007¢\u0006\u0004\b0\u00101\u001a\u0013\u00100\u001a\u00020\u0004*\u00020\u0004H\u0007¢\u0006\u0004\b0\u00102\u001a\u001c\u00104\u001a\u00020\u0000*\u00020\u00002\u0006\u00104\u001a\u000203H\u0087\u0004¢\u0006\u0004\b4\u00105\u001a\u001c\u00104\u001a\u00020\u0004*\u00020\u00042\u0006\u00104\u001a\u000206H\u0087\u0004¢\u0006\u0004\b4\u00107\u001a\u001c\u0010:\u001a\u00020\f*\u00020\u00152\u0006\u0010&\u001a\u00020\u0015H\u0087\u0004¢\u0006\u0004\b8\u00109\u001a\u001c\u0010:\u001a\u00020\f*\u00020\u00012\u0006\u0010&\u001a\u00020\u0001H\u0087\u0004¢\u0006\u0004\b;\u0010<\u001a\u001c\u0010:\u001a\u00020\u0010*\u00020\u00052\u0006\u0010&\u001a\u00020\u0005H\u0087\u0004¢\u0006\u0004\b=\u0010>\u001a\u001c\u0010:\u001a\u00020\f*\u00020!2\u0006\u0010&\u001a\u00020!H\u0087\u0004¢\u0006\u0004\b?\u0010@\u001a\u001b\u0010D\u001a\u00020\u0001*\u00020\u00012\u0006\u0010A\u001a\u00020\u0001H\u0007¢\u0006\u0004\bB\u0010C\u001a\u001b\u0010D\u001a\u00020\u0005*\u00020\u00052\u0006\u0010A\u001a\u00020\u0005H\u0007¢\u0006\u0004\bE\u0010F\u001a\u001b\u0010D\u001a\u00020\u0015*\u00020\u00152\u0006\u0010A\u001a\u00020\u0015H\u0007¢\u0006\u0004\bG\u0010H\u001a\u001b\u0010D\u001a\u00020!*\u00020!2\u0006\u0010A\u001a\u00020!H\u0007¢\u0006\u0004\bI\u0010J\u001a\u001b\u0010M\u001a\u00020\u0001*\u00020\u00012\u0006\u0010K\u001a\u00020\u0001H\u0007¢\u0006\u0004\bL\u0010C\u001a\u001b\u0010M\u001a\u00020\u0005*\u00020\u00052\u0006\u0010K\u001a\u00020\u0005H\u0007¢\u0006\u0004\bN\u0010F\u001a\u001b\u0010M\u001a\u00020\u0015*\u00020\u00152\u0006\u0010K\u001a\u00020\u0015H\u0007¢\u0006\u0004\bO\u0010H\u001a\u001b\u0010M\u001a\u00020!*\u00020!2\u0006\u0010K\u001a\u00020!H\u0007¢\u0006\u0004\bP\u0010J\u001a#\u0010S\u001a\u00020\u0001*\u00020\u00012\u0006\u0010A\u001a\u00020\u00012\u0006\u0010K\u001a\u00020\u0001H\u0007¢\u0006\u0004\bQ\u0010R\u001a#\u0010S\u001a\u00020\u0005*\u00020\u00052\u0006\u0010A\u001a\u00020\u00052\u0006\u0010K\u001a\u00020\u0005H\u0007¢\u0006\u0004\bT\u0010U\u001a#\u0010S\u001a\u00020\u0015*\u00020\u00152\u0006\u0010A\u001a\u00020\u00152\u0006\u0010K\u001a\u00020\u0015H\u0007¢\u0006\u0004\bV\u0010W\u001a#\u0010S\u001a\u00020!*\u00020!2\u0006\u0010A\u001a\u00020!2\u0006\u0010K\u001a\u00020!H\u0007¢\u0006\u0004\bX\u0010Y\u001a!\u0010S\u001a\u00020\u0001*\u00020\u00012\f\u0010[\u001a\b\u0012\u0004\u0012\u00020\u00010ZH\u0007¢\u0006\u0004\b\\\u0010]\u001a!\u0010S\u001a\u00020\u0005*\u00020\u00052\f\u0010[\u001a\b\u0012\u0004\u0012\u00020\u00050ZH\u0007¢\u0006\u0004\b^\u0010_¨\u0006`"}, d2 = {"Lkotlin/ranges/UIntProgression;", "Lkotlin/UInt;", "first", "(Lkotlin/ranges/UIntProgression;)I", "Lkotlin/ranges/ULongProgression;", "Lkotlin/ULong;", "(Lkotlin/ranges/ULongProgression;)J", "firstOrNull", "(Lkotlin/ranges/UIntProgression;)Lkotlin/UInt;", "(Lkotlin/ranges/ULongProgression;)Lkotlin/ULong;", "last", "lastOrNull", "Lkotlin/ranges/UIntRange;", "Lkotlin/random/Random;", "random", "(Lkotlin/ranges/UIntRange;Lkotlin/random/Random;)I", "Lkotlin/ranges/ULongRange;", "(Lkotlin/ranges/ULongRange;Lkotlin/random/Random;)J", "randomOrNull", "(Lkotlin/ranges/UIntRange;Lkotlin/random/Random;)Lkotlin/UInt;", "(Lkotlin/ranges/ULongRange;Lkotlin/random/Random;)Lkotlin/ULong;", "Lkotlin/UByte;", "value", "", "contains-68kG9v0", "(Lkotlin/ranges/UIntRange;B)Z", "contains", "contains-ULb-yJY", "(Lkotlin/ranges/ULongRange;B)Z", "contains-Gab390E", "(Lkotlin/ranges/ULongRange;I)Z", "contains-fz5IDCE", "(Lkotlin/ranges/UIntRange;J)Z", "Lkotlin/UShort;", "contains-ZsK3CEQ", "(Lkotlin/ranges/UIntRange;S)Z", "contains-uhHAxoY", "(Lkotlin/ranges/ULongRange;S)Z", "to", "downTo-Kr8caGY", "(BB)Lkotlin/ranges/UIntProgression;", "downTo", "downTo-J1ME1BU", "(II)Lkotlin/ranges/UIntProgression;", "downTo-eb3DHEI", "(JJ)Lkotlin/ranges/ULongProgression;", "downTo-5PvTz6A", "(SS)Lkotlin/ranges/UIntProgression;", "reversed", "(Lkotlin/ranges/UIntProgression;)Lkotlin/ranges/UIntProgression;", "(Lkotlin/ranges/ULongProgression;)Lkotlin/ranges/ULongProgression;", "", "step", "(Lkotlin/ranges/UIntProgression;I)Lkotlin/ranges/UIntProgression;", "", "(Lkotlin/ranges/ULongProgression;J)Lkotlin/ranges/ULongProgression;", "until-Kr8caGY", "(BB)Lkotlin/ranges/UIntRange;", "until", "until-J1ME1BU", "(II)Lkotlin/ranges/UIntRange;", "until-eb3DHEI", "(JJ)Lkotlin/ranges/ULongRange;", "until-5PvTz6A", "(SS)Lkotlin/ranges/UIntRange;", "minimumValue", "coerceAtLeast-J1ME1BU", "(II)I", "coerceAtLeast", "coerceAtLeast-eb3DHEI", "(JJ)J", "coerceAtLeast-Kr8caGY", "(BB)B", "coerceAtLeast-5PvTz6A", "(SS)S", "maximumValue", "coerceAtMost-J1ME1BU", "coerceAtMost", "coerceAtMost-eb3DHEI", "coerceAtMost-Kr8caGY", "coerceAtMost-5PvTz6A", "coerceIn-WZ9TVnA", "(III)I", "coerceIn", "coerceIn-sambcqE", "(JJJ)J", "coerceIn-b33U2AM", "(BBB)B", "coerceIn-VKSA0NQ", "(SSS)S", "Lkotlin/ranges/ClosedRange;", "range", "coerceIn-wuiCnnA", "(ILkotlin/ranges/ClosedRange;)I", "coerceIn-JPwROB0", "(JLkotlin/ranges/ClosedRange;)J", "kotlin-stdlib"}, k = 5, mv = {2, 1, 0}, xi = 49, xs = "kotlin/ranges/URangesKt")
/* loaded from: classes2.dex */
class k {
    @SinceKotlin(version = "1.7")
    public static final int first(@NotNull UIntProgression uIntProgression) {
        Intrinsics.checkNotNullParameter(uIntProgression, "<this>");
        if (uIntProgression.isEmpty()) {
            throw new NoSuchElementException("Progression " + uIntProgression + " is empty.");
        }
        return uIntProgression.getFirst();
    }

    @SinceKotlin(version = "1.7")
    public static final long first(@NotNull ULongProgression uLongProgression) {
        Intrinsics.checkNotNullParameter(uLongProgression, "<this>");
        if (uLongProgression.isEmpty()) {
            throw new NoSuchElementException("Progression " + uLongProgression + " is empty.");
        }
        return uLongProgression.getFirst();
    }

    @SinceKotlin(version = "1.7")
    @Nullable
    public static final UInt firstOrNull(@NotNull UIntProgression uIntProgression) {
        Intrinsics.checkNotNullParameter(uIntProgression, "<this>");
        if (uIntProgression.isEmpty()) {
            return null;
        }
        return UInt.m599boximpl(uIntProgression.getFirst());
    }

    @SinceKotlin(version = "1.7")
    @Nullable
    public static final ULong firstOrNull(@NotNull ULongProgression uLongProgression) {
        Intrinsics.checkNotNullParameter(uLongProgression, "<this>");
        if (uLongProgression.isEmpty()) {
            return null;
        }
        return ULong.m624boximpl(uLongProgression.getFirst());
    }

    @SinceKotlin(version = "1.7")
    public static final int last(@NotNull UIntProgression uIntProgression) {
        Intrinsics.checkNotNullParameter(uIntProgression, "<this>");
        if (uIntProgression.isEmpty()) {
            throw new NoSuchElementException("Progression " + uIntProgression + " is empty.");
        }
        return uIntProgression.getLast();
    }

    @SinceKotlin(version = "1.7")
    public static final long last(@NotNull ULongProgression uLongProgression) {
        Intrinsics.checkNotNullParameter(uLongProgression, "<this>");
        if (uLongProgression.isEmpty()) {
            throw new NoSuchElementException("Progression " + uLongProgression + " is empty.");
        }
        return uLongProgression.getLast();
    }

    @SinceKotlin(version = "1.7")
    @Nullable
    public static final UInt lastOrNull(@NotNull UIntProgression uIntProgression) {
        Intrinsics.checkNotNullParameter(uIntProgression, "<this>");
        if (uIntProgression.isEmpty()) {
            return null;
        }
        return UInt.m599boximpl(uIntProgression.getLast());
    }

    @SinceKotlin(version = "1.7")
    @Nullable
    public static final ULong lastOrNull(@NotNull ULongProgression uLongProgression) {
        Intrinsics.checkNotNullParameter(uLongProgression, "<this>");
        if (uLongProgression.isEmpty()) {
            return null;
        }
        return ULong.m624boximpl(uLongProgression.getLast());
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final int random(@NotNull UIntRange uIntRange, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(uIntRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        try {
            return URandomKt.nextUInt(random, uIntRange);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final long random(@NotNull ULongRange uLongRange, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(uLongRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        try {
            return URandomKt.nextULong(random, uLongRange);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class, ExperimentalUnsignedTypes.class})
    @Nullable
    public static final UInt randomOrNull(@NotNull UIntRange uIntRange, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(uIntRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        if (uIntRange.isEmpty()) {
            return null;
        }
        return UInt.m599boximpl(URandomKt.nextUInt(random, uIntRange));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class, ExperimentalUnsignedTypes.class})
    @Nullable
    public static final ULong randomOrNull(@NotNull ULongRange uLongRange, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(uLongRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        if (uLongRange.isEmpty()) {
            return null;
        }
        return ULong.m624boximpl(URandomKt.nextULong(random, uLongRange));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-68kG9v0, reason: not valid java name */
    public static final boolean m994contains68kG9v0(@NotNull UIntRange contains, byte b2) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m966containsWZ4Q5Ns(UInt.m600constructorimpl(b2 & 255));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-ULb-yJY, reason: not valid java name */
    public static final boolean m996containsULbyJY(@NotNull ULongRange contains, byte b2) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m974containsVKZWuLQ(ULong.m625constructorimpl(b2 & 255));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-Gab390E, reason: not valid java name */
    public static final boolean m995containsGab390E(@NotNull ULongRange contains, int i) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m974containsVKZWuLQ(ULong.m625constructorimpl(i & 4294967295L));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-fz5IDCE, reason: not valid java name */
    public static final boolean m998containsfz5IDCE(@NotNull UIntRange contains, long j) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return ULong.m625constructorimpl(j >>> 32) == 0 && contains.m966containsWZ4Q5Ns(UInt.m600constructorimpl((int) j));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-ZsK3CEQ, reason: not valid java name */
    public static final boolean m997containsZsK3CEQ(@NotNull UIntRange contains, short s) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m966containsWZ4Q5Ns(UInt.m600constructorimpl(s & UShort.MAX_VALUE));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-uhHAxoY, reason: not valid java name */
    public static final boolean m999containsuhHAxoY(@NotNull ULongRange contains, short s) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m974containsVKZWuLQ(ULong.m625constructorimpl(s & 65535));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: downTo-Kr8caGY, reason: not valid java name */
    public static final UIntProgression m1002downToKr8caGY(byte b2, byte b3) {
        return UIntProgression.INSTANCE.m964fromClosedRangeNkh28Cs(UInt.m600constructorimpl(b2 & 255), UInt.m600constructorimpl(b3 & 255), -1);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: downTo-J1ME1BU, reason: not valid java name */
    public static final UIntProgression m1001downToJ1ME1BU(int i, int i2) {
        return UIntProgression.INSTANCE.m964fromClosedRangeNkh28Cs(i, i2, -1);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: downTo-eb3DHEI, reason: not valid java name */
    public static final ULongProgression m1003downToeb3DHEI(long j, long j2) {
        return ULongProgression.INSTANCE.m972fromClosedRange7ftBX0g(j, j2, -1L);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: downTo-5PvTz6A, reason: not valid java name */
    public static final UIntProgression m1000downTo5PvTz6A(short s, short s2) {
        return UIntProgression.INSTANCE.m964fromClosedRangeNkh28Cs(UInt.m600constructorimpl(s & UShort.MAX_VALUE), UInt.m600constructorimpl(s2 & UShort.MAX_VALUE), -1);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    public static final UIntProgression reversed(@NotNull UIntProgression uIntProgression) {
        Intrinsics.checkNotNullParameter(uIntProgression, "<this>");
        return UIntProgression.INSTANCE.m964fromClosedRangeNkh28Cs(uIntProgression.getLast(), uIntProgression.getFirst(), -uIntProgression.getStep());
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    public static final ULongProgression reversed(@NotNull ULongProgression uLongProgression) {
        Intrinsics.checkNotNullParameter(uLongProgression, "<this>");
        return ULongProgression.INSTANCE.m972fromClosedRange7ftBX0g(uLongProgression.getLast(), uLongProgression.getFirst(), -uLongProgression.getStep());
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    public static final UIntProgression step(@NotNull UIntProgression uIntProgression, int i) {
        Intrinsics.checkNotNullParameter(uIntProgression, "<this>");
        g.checkStepIsPositive(i > 0, Integer.valueOf(i));
        UIntProgression.Companion companion = UIntProgression.INSTANCE;
        int first = uIntProgression.getFirst();
        int last = uIntProgression.getLast();
        if (uIntProgression.getStep() <= 0) {
            i = -i;
        }
        return companion.m964fromClosedRangeNkh28Cs(first, last, i);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    public static final ULongProgression step(@NotNull ULongProgression uLongProgression, long j) {
        Intrinsics.checkNotNullParameter(uLongProgression, "<this>");
        g.checkStepIsPositive(j > 0, Long.valueOf(j));
        ULongProgression.Companion companion = ULongProgression.INSTANCE;
        long first = uLongProgression.getFirst();
        long last = uLongProgression.getLast();
        if (uLongProgression.getStep() <= 0) {
            j = -j;
        }
        return companion.m972fromClosedRange7ftBX0g(first, last, j);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: until-Kr8caGY, reason: not valid java name */
    public static final UIntRange m1006untilKr8caGY(byte b2, byte b3) {
        return Intrinsics.compare(b3 & 255, 0) <= 0 ? UIntRange.INSTANCE.getEMPTY() : new UIntRange(UInt.m600constructorimpl(b2 & 255), UInt.m600constructorimpl(UInt.m600constructorimpl(r3) - 1), null);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: until-J1ME1BU, reason: not valid java name */
    public static final UIntRange m1005untilJ1ME1BU(int i, int i2) {
        return Integer.compare(i2 ^ Integer.MIN_VALUE, Integer.MIN_VALUE) <= 0 ? UIntRange.INSTANCE.getEMPTY() : new UIntRange(i, UInt.m600constructorimpl(i2 - 1), null);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: until-eb3DHEI, reason: not valid java name */
    public static final ULongRange m1007untileb3DHEI(long j, long j2) {
        return Long.compare(j2 ^ Long.MIN_VALUE, Long.MIN_VALUE) <= 0 ? ULongRange.INSTANCE.getEMPTY() : new ULongRange(j, ULong.m625constructorimpl(j2 - ULong.m625constructorimpl(1 & 4294967295L)), null);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: until-5PvTz6A, reason: not valid java name */
    public static final UIntRange m1004until5PvTz6A(short s, short s2) {
        return Intrinsics.compare(s2 & UShort.MAX_VALUE, 0) <= 0 ? UIntRange.INSTANCE.getEMPTY() : new UIntRange(UInt.m600constructorimpl(s & UShort.MAX_VALUE), UInt.m600constructorimpl(UInt.m600constructorimpl(r3) - 1), null);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtLeast-J1ME1BU, reason: not valid java name */
    public static final int m981coerceAtLeastJ1ME1BU(int i, int i2) {
        return Integer.compare(i ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i2) < 0 ? i2 : i;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtLeast-eb3DHEI, reason: not valid java name */
    public static final long m983coerceAtLeasteb3DHEI(long j, long j2) {
        return Long.compare(j ^ Long.MIN_VALUE, Long.MIN_VALUE ^ j2) < 0 ? j2 : j;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtLeast-Kr8caGY, reason: not valid java name */
    public static final byte m982coerceAtLeastKr8caGY(byte b2, byte b3) {
        return Intrinsics.compare(b2 & 255, b3 & 255) < 0 ? b3 : b2;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtLeast-5PvTz6A, reason: not valid java name */
    public static final short m980coerceAtLeast5PvTz6A(short s, short s2) {
        return Intrinsics.compare(s & UShort.MAX_VALUE, 65535 & s2) < 0 ? s2 : s;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtMost-J1ME1BU, reason: not valid java name */
    public static final int m985coerceAtMostJ1ME1BU(int i, int i2) {
        return Integer.compare(i ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i2) > 0 ? i2 : i;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtMost-eb3DHEI, reason: not valid java name */
    public static final long m987coerceAtMosteb3DHEI(long j, long j2) {
        return Long.compare(j ^ Long.MIN_VALUE, Long.MIN_VALUE ^ j2) > 0 ? j2 : j;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtMost-Kr8caGY, reason: not valid java name */
    public static final byte m986coerceAtMostKr8caGY(byte b2, byte b3) {
        return Intrinsics.compare(b2 & 255, b3 & 255) > 0 ? b3 : b2;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtMost-5PvTz6A, reason: not valid java name */
    public static final short m984coerceAtMost5PvTz6A(short s, short s2) {
        return Intrinsics.compare(s & UShort.MAX_VALUE, 65535 & s2) > 0 ? s2 : s;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-WZ9TVnA, reason: not valid java name */
    public static final int m990coerceInWZ9TVnA(int i, int i2, int i3) {
        int i4 = i2 ^ Integer.MIN_VALUE;
        int i5 = i3 ^ Integer.MIN_VALUE;
        if (Integer.compare(i4, i5) <= 0) {
            int i6 = Integer.MIN_VALUE ^ i;
            return Integer.compare(i6, i4) < 0 ? i2 : Integer.compare(i6, i5) > 0 ? i3 : i;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) UInt.m604toStringimpl(i3)) + " is less than minimum " + ((Object) UInt.m604toStringimpl(i2)) + '.');
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-sambcqE, reason: not valid java name */
    public static final long m992coerceInsambcqE(long j, long j2, long j3) {
        long j4 = j2 ^ Long.MIN_VALUE;
        long j5 = j3 ^ Long.MIN_VALUE;
        if (Long.compare(j4, j5) <= 0) {
            long j6 = Long.MIN_VALUE ^ j;
            return Long.compare(j6, j4) < 0 ? j2 : Long.compare(j6, j5) > 0 ? j3 : j;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) ULong.m629toStringimpl(j3)) + " is less than minimum " + ((Object) ULong.m629toStringimpl(j2)) + '.');
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-b33U2AM, reason: not valid java name */
    public static final byte m991coerceInb33U2AM(byte b2, byte b3, byte b4) {
        int i = b3 & 255;
        int i2 = b4 & 255;
        if (Intrinsics.compare(i, i2) <= 0) {
            int i3 = b2 & 255;
            return Intrinsics.compare(i3, i) < 0 ? b3 : Intrinsics.compare(i3, i2) > 0 ? b4 : b2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) UByte.m579toStringimpl(b4)) + " is less than minimum " + ((Object) UByte.m579toStringimpl(b3)) + '.');
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-VKSA0NQ, reason: not valid java name */
    public static final short m989coerceInVKSA0NQ(short s, short s2, short s3) {
        int i = s2 & UShort.MAX_VALUE;
        int i2 = s3 & UShort.MAX_VALUE;
        if (Intrinsics.compare(i, i2) <= 0) {
            int i3 = 65535 & s;
            return Intrinsics.compare(i3, i) < 0 ? s2 : Intrinsics.compare(i3, i2) > 0 ? s3 : s;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) UShort.m654toStringimpl(s3)) + " is less than minimum " + ((Object) UShort.m654toStringimpl(s2)) + '.');
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-wuiCnnA, reason: not valid java name */
    public static final int m993coerceInwuiCnnA(int i, @NotNull ClosedRange<UInt> range) {
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((UInt) h.coerceIn(UInt.m599boximpl(i), (ClosedFloatingPointRange<UInt>) range)).getData();
        }
        if (!range.isEmpty()) {
            int i2 = i ^ Integer.MIN_VALUE;
            return Integer.compare(i2, ((UInt) range.getStart()).getData() ^ Integer.MIN_VALUE) < 0 ? ((UInt) range.getStart()).getData() : Integer.compare(i2, ((UInt) range.getEndInclusive()).getData() ^ Integer.MIN_VALUE) > 0 ? ((UInt) range.getEndInclusive()).getData() : i;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-JPwROB0, reason: not valid java name */
    public static final long m988coerceInJPwROB0(long j, @NotNull ClosedRange<ULong> range) {
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((ULong) h.coerceIn(ULong.m624boximpl(j), (ClosedFloatingPointRange<ULong>) range)).getData();
        }
        if (!range.isEmpty()) {
            long j2 = j ^ Long.MIN_VALUE;
            return Long.compare(j2, ((ULong) range.getStart()).getData() ^ Long.MIN_VALUE) < 0 ? ((ULong) range.getStart()).getData() : Long.compare(j2, ((ULong) range.getEndInclusive()).getData() ^ Long.MIN_VALUE) > 0 ? ((ULong) range.getEndInclusive()).getData() : j;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
    }
}
