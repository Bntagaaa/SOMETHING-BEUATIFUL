package javax.annotation.meta;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class When {
    public static final When ALWAYS;
    public static final When MAYBE;
    public static final When NEVER;
    public static final When UNKNOWN;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ When[] f5540a;

    public static When valueOf(String str) {
        return (When) Enum.valueOf(When.class, str);
    }

    public static When[] values() {
        return (When[]) f5540a.clone();
    }

    static {
        When when = new When("ALWAYS", 0);
        ALWAYS = when;
        When when2 = new When("UNKNOWN", 1);
        UNKNOWN = when2;
        When when3 = new When("MAYBE", 2);
        MAYBE = when3;
        When when4 = new When("NEVER", 3);
        NEVER = when4;
        f5540a = new When[]{when, when2, when3, when4};
    }
}
