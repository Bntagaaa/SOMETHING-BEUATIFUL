package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/coroutines/flow/SharingCommand;", "", "START", "STOP", "STOP_AND_RESET_REPLAY_CACHE", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class SharingCommand {
    public static final SharingCommand START;
    public static final SharingCommand STOP;
    public static final SharingCommand STOP_AND_RESET_REPLAY_CACHE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ SharingCommand[] f6490a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f6491b;

    @NotNull
    public static EnumEntries<SharingCommand> getEntries() {
        return f6491b;
    }

    static {
        SharingCommand sharingCommand = new SharingCommand("START", 0);
        START = sharingCommand;
        SharingCommand sharingCommand2 = new SharingCommand("STOP", 1);
        STOP = sharingCommand2;
        SharingCommand sharingCommand3 = new SharingCommand("STOP_AND_RESET_REPLAY_CACHE", 2);
        STOP_AND_RESET_REPLAY_CACHE = sharingCommand3;
        SharingCommand[] sharingCommandArr = {sharingCommand, sharingCommand2, sharingCommand3};
        f6490a = sharingCommandArr;
        f6491b = EnumEntriesKt.enumEntries(sharingCommandArr);
    }

    public static SharingCommand valueOf(String str) {
        return (SharingCommand) Enum.valueOf(SharingCommand.class, str);
    }

    public static SharingCommand[] values() {
        return (SharingCommand[]) f6490a.clone();
    }
}
