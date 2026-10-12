.class public final Lkotlin/ranges/RangesKt;
.super Lkotlin/ranges/h;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "kotlin/ranges/g",
        "kotlin/ranges/h"
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
    invoke-direct {p0}, Lkotlin/ranges/h;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(J)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lkotlin/ranges/h;->coerceAtLeast(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic b(II)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lkotlin/ranges/h;->coerceIn(III)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(JLkotlin/ranges/LongRange;)J
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlin/ranges/h;->coerceIn(JLkotlin/ranges/ClosedRange;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic d(Lkotlin/ranges/IntRange;I)Lkotlin/ranges/IntProgression;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/ranges/h;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object p0

    return-object p0
.end method
