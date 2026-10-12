package kotlin.io;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/io/OnErrorAction;", "", "SKIP", "TERMINATE", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class OnErrorAction {
    public static final OnErrorAction SKIP;
    public static final OnErrorAction TERMINATE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ OnErrorAction[] f5777a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f5778b;

    @NotNull
    public static EnumEntries<OnErrorAction> getEntries() {
        return f5778b;
    }

    static {
        OnErrorAction onErrorAction = new OnErrorAction("SKIP", 0);
        SKIP = onErrorAction;
        OnErrorAction onErrorAction2 = new OnErrorAction("TERMINATE", 1);
        TERMINATE = onErrorAction2;
        OnErrorAction[] onErrorActionArr = {onErrorAction, onErrorAction2};
        f5777a = onErrorActionArr;
        f5778b = EnumEntriesKt.enumEntries(onErrorActionArr);
    }

    public static OnErrorAction valueOf(String str) {
        return (OnErrorAction) Enum.valueOf(OnErrorAction.class, str);
    }

    public static OnErrorAction[] values() {
        return (OnErrorAction[]) f5777a.clone();
    }
}
