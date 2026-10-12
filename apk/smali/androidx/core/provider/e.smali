.class public final synthetic Landroidx/core/provider/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/core/provider/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    iget v0, p0, Landroidx/core/provider/e;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lkotlin/uuid/Uuid;

    check-cast p2, Lkotlin/uuid/Uuid;

    sget-object v0, Lkotlin/uuid/Uuid;->Companion:Lkotlin/uuid/Uuid$Companion;

    .line 0
    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    iget-wide v0, p1, Lkotlin/uuid/Uuid;->a:J

    iget-wide v2, p2, Lkotlin/uuid/Uuid;->a:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    .line 396
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    iget-wide p1, p2, Lkotlin/uuid/Uuid;->a:J

    invoke-static {p1, p2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p1

    xor-long/2addr v0, v4

    xor-long/2addr p1, v4

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    goto :goto_0

    .line 398
    :cond_0
    iget-wide v0, p1, Lkotlin/uuid/Uuid;->b:J

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    iget-wide p1, p2, Lkotlin/uuid/Uuid;->b:J

    invoke-static {p1, p2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p1

    xor-long/2addr v0, v4

    xor-long/2addr p1, v4

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    :goto_0
    return p1

    .line 0
    :pswitch_0
    check-cast p1, [B

    check-cast p2, [B

    .line 198
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_1

    .line 199
    array-length p1, p1

    array-length p2, p2

    sub-int/2addr p1, p2

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 201
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 202
    aget-byte v2, p1, v1

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_2

    sub-int p1, v2, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_2
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
