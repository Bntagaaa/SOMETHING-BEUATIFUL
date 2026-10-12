package kotlin;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/DeprecationLevel;", "", "WARNING", "ERROR", "HIDDEN", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class DeprecationLevel {
    public static final DeprecationLevel ERROR;
    public static final DeprecationLevel HIDDEN;
    public static final DeprecationLevel WARNING;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ DeprecationLevel[] f5545a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f5546b;

    @NotNull
    public static EnumEntries<DeprecationLevel> getEntries() {
        return f5546b;
    }

    static {
        DeprecationLevel deprecationLevel = new DeprecationLevel("WARNING", 0);
        WARNING = deprecationLevel;
        DeprecationLevel deprecationLevel2 = new DeprecationLevel("ERROR", 1);
        ERROR = deprecationLevel2;
        DeprecationLevel deprecationLevel3 = new DeprecationLevel("HIDDEN", 2);
        HIDDEN = deprecationLevel3;
        DeprecationLevel[] deprecationLevelArr = {deprecationLevel, deprecationLevel2, deprecationLevel3};
        f5545a = deprecationLevelArr;
        f5546b = EnumEntriesKt.enumEntries(deprecationLevelArr);
    }

    public static DeprecationLevel valueOf(String str) {
        return (DeprecationLevel) Enum.valueOf(DeprecationLevel.class, str);
    }

    public static DeprecationLevel[] values() {
        return (DeprecationLevel[]) f5545a.clone();
    }
}
