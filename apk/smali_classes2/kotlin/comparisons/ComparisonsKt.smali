.class public final Lkotlin/comparisons/ComparisonsKt;
.super Lkotlin/comparisons/e;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "kotlin/comparisons/c",
        "kotlin/comparisons/d",
        "kotlin/comparisons/e"
    }
    d2 = {}
    k = 0x4
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x31
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/comparisons/e;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)Ljava/lang/Comparable;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/comparisons/d;->maxOf(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method
