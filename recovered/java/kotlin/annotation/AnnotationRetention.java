package kotlin.annotation;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/annotation/AnnotationRetention;", "", "SOURCE", "BINARY", "RUNTIME", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class AnnotationRetention {
    public static final AnnotationRetention BINARY;
    public static final AnnotationRetention RUNTIME;
    public static final AnnotationRetention SOURCE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AnnotationRetention[] f5581a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f5582b;

    @NotNull
    public static EnumEntries<AnnotationRetention> getEntries() {
        return f5582b;
    }

    static {
        AnnotationRetention annotationRetention = new AnnotationRetention("SOURCE", 0);
        SOURCE = annotationRetention;
        AnnotationRetention annotationRetention2 = new AnnotationRetention("BINARY", 1);
        BINARY = annotationRetention2;
        AnnotationRetention annotationRetention3 = new AnnotationRetention("RUNTIME", 2);
        RUNTIME = annotationRetention3;
        AnnotationRetention[] annotationRetentionArr = {annotationRetention, annotationRetention2, annotationRetention3};
        f5581a = annotationRetentionArr;
        f5582b = EnumEntriesKt.enumEntries(annotationRetentionArr);
    }

    public static AnnotationRetention valueOf(String str) {
        return (AnnotationRetention) Enum.valueOf(AnnotationRetention.class, str);
    }

    public static AnnotationRetention[] values() {
        return (AnnotationRetention[]) f5581a.clone();
    }
}
