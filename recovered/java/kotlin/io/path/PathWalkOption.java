package kotlin.io.path;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@SinceKotlin(version = "2.1")
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/io/path/PathWalkOption;", "", "INCLUDE_DIRECTORIES", "BREADTH_FIRST", "FOLLOW_LINKS", "kotlin-stdlib-jdk7"}, k = 1, mv = {2, 1, 0}, xi = 48)
@WasExperimental(markerClass = {ExperimentalPathApi.class})
/* loaded from: classes2.dex */
public final class PathWalkOption {
    public static final PathWalkOption BREADTH_FIRST;
    public static final PathWalkOption FOLLOW_LINKS;
    public static final PathWalkOption INCLUDE_DIRECTORIES;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ PathWalkOption[] f5805a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f5806b;

    @NotNull
    public static EnumEntries<PathWalkOption> getEntries() {
        return f5806b;
    }

    static {
        PathWalkOption pathWalkOption = new PathWalkOption("INCLUDE_DIRECTORIES", 0);
        INCLUDE_DIRECTORIES = pathWalkOption;
        PathWalkOption pathWalkOption2 = new PathWalkOption("BREADTH_FIRST", 1);
        BREADTH_FIRST = pathWalkOption2;
        PathWalkOption pathWalkOption3 = new PathWalkOption("FOLLOW_LINKS", 2);
        FOLLOW_LINKS = pathWalkOption3;
        PathWalkOption[] pathWalkOptionArr = {pathWalkOption, pathWalkOption2, pathWalkOption3};
        f5805a = pathWalkOptionArr;
        f5806b = EnumEntriesKt.enumEntries(pathWalkOptionArr);
    }

    public static PathWalkOption valueOf(String str) {
        return (PathWalkOption) Enum.valueOf(PathWalkOption.class, str);
    }

    public static PathWalkOption[] values() {
        return (PathWalkOption[]) f5805a.clone();
    }
}
