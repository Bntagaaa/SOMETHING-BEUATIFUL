package kotlin.contracts;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.internal.ContractsDsl;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@SinceKotlin(version = "1.3")
@ContractsDsl
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/contracts/InvocationKind;", "", "AT_MOST_ONCE", "AT_LEAST_ONCE", "EXACTLY_ONCE", "UNKNOWN", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@ExperimentalContracts
/* loaded from: classes2.dex */
public final class InvocationKind {

    @ContractsDsl
    public static final InvocationKind AT_LEAST_ONCE;

    @ContractsDsl
    public static final InvocationKind AT_MOST_ONCE;

    @ContractsDsl
    public static final InvocationKind EXACTLY_ONCE;

    @ContractsDsl
    public static final InvocationKind UNKNOWN;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ InvocationKind[] f5725a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f5726b;

    @NotNull
    public static EnumEntries<InvocationKind> getEntries() {
        return f5726b;
    }

    static {
        InvocationKind invocationKind = new InvocationKind("AT_MOST_ONCE", 0);
        AT_MOST_ONCE = invocationKind;
        InvocationKind invocationKind2 = new InvocationKind("AT_LEAST_ONCE", 1);
        AT_LEAST_ONCE = invocationKind2;
        InvocationKind invocationKind3 = new InvocationKind("EXACTLY_ONCE", 2);
        EXACTLY_ONCE = invocationKind3;
        InvocationKind invocationKind4 = new InvocationKind("UNKNOWN", 3);
        UNKNOWN = invocationKind4;
        InvocationKind[] invocationKindArr = {invocationKind, invocationKind2, invocationKind3, invocationKind4};
        f5725a = invocationKindArr;
        f5726b = EnumEntriesKt.enumEntries(invocationKindArr);
    }

    public static InvocationKind valueOf(String str) {
        return (InvocationKind) Enum.valueOf(InvocationKind.class, str);
    }

    public static InvocationKind[] values() {
        return (InvocationKind[]) f5725a.clone();
    }
}
