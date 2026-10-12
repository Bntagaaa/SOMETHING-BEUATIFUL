package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/coroutines/channels/BufferOverflow;", "", "SUSPEND", "DROP_OLDEST", "DROP_LATEST", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class BufferOverflow {
    public static final BufferOverflow DROP_LATEST;
    public static final BufferOverflow DROP_OLDEST;
    public static final BufferOverflow SUSPEND;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ BufferOverflow[] f6160a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f6161b;

    @NotNull
    public static EnumEntries<BufferOverflow> getEntries() {
        return f6161b;
    }

    static {
        BufferOverflow bufferOverflow = new BufferOverflow("SUSPEND", 0);
        SUSPEND = bufferOverflow;
        BufferOverflow bufferOverflow2 = new BufferOverflow("DROP_OLDEST", 1);
        DROP_OLDEST = bufferOverflow2;
        BufferOverflow bufferOverflow3 = new BufferOverflow("DROP_LATEST", 2);
        DROP_LATEST = bufferOverflow3;
        BufferOverflow[] bufferOverflowArr = {bufferOverflow, bufferOverflow2, bufferOverflow3};
        f6160a = bufferOverflowArr;
        f6161b = EnumEntriesKt.enumEntries(bufferOverflowArr);
    }

    public static BufferOverflow valueOf(String str) {
        return (BufferOverflow) Enum.valueOf(BufferOverflow.class, str);
    }

    public static BufferOverflow[] values() {
        return (BufferOverflow[]) f6160a.clone();
    }
}
