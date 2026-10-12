package kotlin.io.path;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@SinceKotlin(version = "1.8")
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/io/path/CopyActionResult;", "", "CONTINUE", "SKIP_SUBTREE", "TERMINATE", "kotlin-stdlib-jdk7"}, k = 1, mv = {2, 1, 0}, xi = 48)
@ExperimentalPathApi
/* loaded from: classes2.dex */
public final class CopyActionResult {
    public static final CopyActionResult CONTINUE;
    public static final CopyActionResult SKIP_SUBTREE;
    public static final CopyActionResult TERMINATE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ CopyActionResult[] f5795a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f5796b;

    @NotNull
    public static EnumEntries<CopyActionResult> getEntries() {
        return f5796b;
    }

    static {
        CopyActionResult copyActionResult = new CopyActionResult("CONTINUE", 0);
        CONTINUE = copyActionResult;
        CopyActionResult copyActionResult2 = new CopyActionResult("SKIP_SUBTREE", 1);
        SKIP_SUBTREE = copyActionResult2;
        CopyActionResult copyActionResult3 = new CopyActionResult("TERMINATE", 2);
        TERMINATE = copyActionResult3;
        CopyActionResult[] copyActionResultArr = {copyActionResult, copyActionResult2, copyActionResult3};
        f5795a = copyActionResultArr;
        f5796b = EnumEntriesKt.enumEntries(copyActionResultArr);
    }

    public static CopyActionResult valueOf(String str) {
        return (CopyActionResult) Enum.valueOf(CopyActionResult.class, str);
    }

    public static CopyActionResult[] values() {
        return (CopyActionResult[]) f5795a.clone();
    }
}
