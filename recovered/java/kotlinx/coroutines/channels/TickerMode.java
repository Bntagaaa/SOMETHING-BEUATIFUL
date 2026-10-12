package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlinx.coroutines.ObsoleteCoroutinesApi;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@ObsoleteCoroutinesApi
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/channels/TickerMode;", "", "FIXED_PERIOD", "FIXED_DELAY", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class TickerMode {
    public static final TickerMode FIXED_DELAY;
    public static final TickerMode FIXED_PERIOD;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ TickerMode[] f6180a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f6181b;

    @NotNull
    public static EnumEntries<TickerMode> getEntries() {
        return f6181b;
    }

    static {
        TickerMode tickerMode = new TickerMode("FIXED_PERIOD", 0);
        FIXED_PERIOD = tickerMode;
        TickerMode tickerMode2 = new TickerMode("FIXED_DELAY", 1);
        FIXED_DELAY = tickerMode2;
        TickerMode[] tickerModeArr = {tickerMode, tickerMode2};
        f6180a = tickerModeArr;
        f6181b = EnumEntriesKt.enumEntries(tickerModeArr);
    }

    public static TickerMode valueOf(String str) {
        return (TickerMode) Enum.valueOf(TickerMode.class, str);
    }

    public static TickerMode[] values() {
        return (TickerMode[]) f6180a.clone();
    }
}
