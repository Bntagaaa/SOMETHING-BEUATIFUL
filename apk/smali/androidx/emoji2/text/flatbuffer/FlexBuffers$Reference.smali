.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reference"
.end annotation


# static fields
.field public static final f:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;


# instance fields
.field public final a:Landroidx/emoji2/text/flatbuffer/a;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 226
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    .line 45
    sget-object v1, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a:Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 226
    invoke-direct {v0, v1, v3, v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;-><init>(Landroidx/emoji2/text/flatbuffer/a;III)V

    sput-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->f:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/flatbuffer/a;III)V
    .locals 8

    and-int/lit8 v0, p4, 0x3

    const/4 v1, 0x1

    shl-int v6, v1, v0

    shr-int/lit8 v7, p4, 0x2

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 234
    invoke-direct/range {v2 .. v7}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;-><init>(Landroidx/emoji2/text/flatbuffer/a;IIII)V

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/flatbuffer/a;IIII)V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->a:Landroidx/emoji2/text/flatbuffer/a;

    .line 239
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->b:I

    .line 240
    iput p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->c:I

    .line 241
    iput p4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->d:I

    .line 242
    iput p5, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    .line 580
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    packed-switch v0, :pswitch_data_0

    return-object p1

    .line 603
    :pswitch_0
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-object p1

    .line 601
    :pswitch_1
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asBlob()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1

    .line 621
    :pswitch_2
    new-instance p1, Landroidx/emoji2/text/flatbuffer/FlexBuffers$FlexBufferException;

    const-string v1, "not_implemented:"

    .line 0
    invoke-static {v0, v1}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1083
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 621
    throw p1

    .line 599
    :pswitch_3
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asVector()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1

    .line 597
    :pswitch_4
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asMap()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1

    .line 595
    :pswitch_5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p1

    .line 593
    :pswitch_6
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asKey()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p1

    .line 591
    :pswitch_7
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asFloat()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    return-object p1

    .line 588
    :pswitch_8
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asUInt()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p1

    .line 585
    :pswitch_9
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asLong()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p1

    .line 582
    :pswitch_a
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    .line 610
    :cond_0
    :pswitch_b
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asVector()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public asBlob()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;
    .locals 4

    .line 546
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isBlob()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isString()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 549
    :cond_0
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->empty()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;

    move-result-object v0

    return-object v0

    .line 547
    :cond_1
    :goto_0
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->b:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->c:I

    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->a:Landroidx/emoji2/text/flatbuffer/a;

    invoke-static {v3, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/a;II)I

    move-result v1

    .line 677
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->d:I

    invoke-direct {v0, v3, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$b;-><init>(Landroidx/emoji2/text/flatbuffer/a;II)V

    return-object v0
.end method

.method public asBoolean()Z
    .locals 7

    .line 559
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isBoolean()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->a:Landroidx/emoji2/text/flatbuffer/a;

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->b:I

    invoke-interface {v0, v3}, Landroidx/emoji2/text/flatbuffer/a;->get(I)B

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 562
    :cond_1
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asUInt()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public asFloat()D
    .locals 6

    const/4 v0, 0x3

    .line 457
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->c:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->b:I

    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->a:Landroidx/emoji2/text/flatbuffer/a;

    iget v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    if-ne v4, v0, :cond_0

    .line 459
    invoke-static {v3, v2, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->b(Landroidx/emoji2/text/flatbuffer/a;II)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    if-eq v4, v0, :cond_7

    const/4 v0, 0x2

    if-eq v4, v0, :cond_6

    const/4 v0, 0x5

    if-eq v4, v0, :cond_5

    const/4 v0, 0x6

    .line 461
    iget v5, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->d:I

    if-eq v4, v0, :cond_4

    const/4 v0, 0x7

    if-eq v4, v0, :cond_3

    const/16 v0, 0x8

    if-eq v4, v0, :cond_2

    const/16 v0, 0xa

    if-eq v4, v0, :cond_1

    const/16 v0, 0x1a

    if-eq v4, v0, :cond_6

    const-wide/16 v0, 0x0

    return-wide v0

    .line 471
    :cond_1
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asVector()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->size()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 462
    :cond_2
    invoke-static {v3, v2, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/a;II)I

    move-result v0

    invoke-static {v3, v0, v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->b(Landroidx/emoji2/text/flatbuffer/a;II)D

    move-result-wide v0

    return-wide v0

    .line 468
    :cond_3
    invoke-static {v3, v2, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/a;II)I

    move-result v0

    .line 45
    invoke-static {v3, v0, v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->d(Landroidx/emoji2/text/flatbuffer/a;II)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 467
    :cond_4
    invoke-static {v3, v2, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/a;II)I

    move-result v0

    .line 172
    invoke-static {v3, v0, v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->c(Landroidx/emoji2/text/flatbuffer/a;II)J

    move-result-wide v0

    long-to-int v1, v0

    int-to-double v0, v1

    return-wide v0

    .line 470
    :cond_5
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 45
    :cond_6
    invoke-static {v3, v2, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->d(Landroidx/emoji2/text/flatbuffer/a;II)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 172
    :cond_7
    invoke-static {v3, v2, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->c(Landroidx/emoji2/text/flatbuffer/a;II)J

    move-result-wide v0

    long-to-int v1, v0

    int-to-double v0, v1

    return-wide v0
.end method

.method public asInt()I
    .locals 6

    const/4 v0, 0x1

    .line 366
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->b:I

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->a:Landroidx/emoji2/text/flatbuffer/a;

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->c:I

    iget v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    if-ne v4, v0, :cond_0

    .line 172
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->c(Landroidx/emoji2/text/flatbuffer/a;II)J

    move-result-wide v0

    :goto_0
    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x2

    if-eq v4, v0, :cond_8

    const/4 v0, 0x3

    if-eq v4, v0, :cond_7

    const/4 v0, 0x5

    if-eq v4, v0, :cond_6

    const/4 v0, 0x6

    .line 370
    iget v5, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->d:I

    if-eq v4, v0, :cond_5

    const/4 v0, 0x7

    if-eq v4, v0, :cond_4

    const/16 v0, 0x8

    if-eq v4, v0, :cond_3

    const/16 v0, 0xa

    if-eq v4, v0, :cond_2

    const/16 v0, 0x1a

    if-eq v4, v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 172
    :cond_1
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->c(Landroidx/emoji2/text/flatbuffer/a;II)J

    move-result-wide v0

    goto :goto_0

    .line 378
    :cond_2
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asVector()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->size()I

    move-result v0

    return v0

    .line 375
    :cond_3
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/a;II)I

    move-result v0

    invoke-static {v2, v0, v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->b(Landroidx/emoji2/text/flatbuffer/a;II)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 373
    :cond_4
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/a;II)I

    move-result v0

    .line 45
    invoke-static {v2, v0, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->d(Landroidx/emoji2/text/flatbuffer/a;II)J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    .line 371
    :cond_5
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/a;II)I

    move-result v0

    .line 172
    invoke-static {v2, v0, v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->c(Landroidx/emoji2/text/flatbuffer/a;II)J

    move-result-wide v0

    goto :goto_0

    .line 377
    :cond_6
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 374
    :cond_7
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->b(Landroidx/emoji2/text/flatbuffer/a;II)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 45
    :cond_8
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->d(Landroidx/emoji2/text/flatbuffer/a;II)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public asKey()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;
    .locals 4

    .line 483
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->b:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->c:I

    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->a:Landroidx/emoji2/text/flatbuffer/a;

    invoke-static {v3, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/a;II)I

    move-result v1

    .line 746
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->d:I

    invoke-direct {v0, v3, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;-><init>(Landroidx/emoji2/text/flatbuffer/a;II)V

    return-object v0

    .line 486
    :cond_0
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->empty()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    move-result-object v0

    return-object v0
.end method

.method public asLong()J
    .locals 8

    const/4 v0, 0x1

    .line 424
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->b:I

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->a:Landroidx/emoji2/text/flatbuffer/a;

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->c:I

    iget v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    if-ne v4, v0, :cond_0

    .line 45
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->c(Landroidx/emoji2/text/flatbuffer/a;II)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v0, 0x2

    if-eq v4, v0, :cond_8

    const/4 v0, 0x3

    if-eq v4, v0, :cond_7

    const/4 v0, 0x5

    const-wide/16 v5, 0x0

    if-eq v4, v0, :cond_6

    const/4 v0, 0x6

    .line 428
    iget v7, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->d:I

    if-eq v4, v0, :cond_5

    const/4 v0, 0x7

    if-eq v4, v0, :cond_4

    const/16 v0, 0x8

    if-eq v4, v0, :cond_3

    const/16 v0, 0xa

    if-eq v4, v0, :cond_2

    const/16 v0, 0x1a

    if-eq v4, v0, :cond_1

    return-wide v5

    .line 172
    :cond_1
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->c(Landroidx/emoji2/text/flatbuffer/a;II)J

    move-result-wide v0

    long-to-int v1, v0

    int-to-long v0, v1

    return-wide v0

    .line 442
    :cond_2
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asVector()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 433
    :cond_3
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/a;II)I

    move-result v0

    invoke-static {v2, v0, v7}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->b(Landroidx/emoji2/text/flatbuffer/a;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 431
    :cond_4
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/a;II)I

    move-result v0

    .line 45
    invoke-static {v2, v0, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->d(Landroidx/emoji2/text/flatbuffer/a;II)J

    move-result-wide v0

    return-wide v0

    .line 429
    :cond_5
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/a;II)I

    move-result v0

    .line 45
    invoke-static {v2, v0, v7}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->c(Landroidx/emoji2/text/flatbuffer/a;II)J

    move-result-wide v0

    return-wide v0

    .line 437
    :cond_6
    :try_start_0
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    return-wide v5

    .line 432
    :cond_7
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->b(Landroidx/emoji2/text/flatbuffer/a;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 45
    :cond_8
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->d(Landroidx/emoji2/text/flatbuffer/a;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public asMap()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;
    .locals 4

    .line 517
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isMap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->b:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->c:I

    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->a:Landroidx/emoji2/text/flatbuffer/a;

    invoke-static {v3, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/a;II)I

    move-result v1

    .line 928
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->d:I

    invoke-direct {v0, v3, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$b;-><init>(Landroidx/emoji2/text/flatbuffer/a;II)V

    return-object v0

    .line 520
    :cond_0
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->empty()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;

    move-result-object v0

    return-object v0
.end method

.method public asString()Ljava/lang/String;
    .locals 4

    .line 495
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isString()Z

    move-result v0

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->d:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->b:I

    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->a:Landroidx/emoji2/text/flatbuffer/a;

    if-eqz v0, :cond_0

    .line 496
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->c:I

    invoke-static {v3, v2, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/a;II)I

    move-result v0

    sub-int v2, v0, v1

    .line 45
    invoke-static {v3, v2, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->d(Landroidx/emoji2/text/flatbuffer/a;II)J

    move-result-wide v1

    long-to-int v2, v1

    .line 498
    invoke-interface {v3, v0, v2}, Landroidx/emoji2/text/flatbuffer/a;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 500
    :cond_0
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isKey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 501
    invoke-static {v3, v2, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/a;II)I

    move-result v0

    move v1, v0

    .line 503
    :goto_0
    invoke-interface {v3, v1}, Landroidx/emoji2/text/flatbuffer/a;->get(I)B

    move-result v2

    if-nez v2, :cond_1

    sub-int/2addr v1, v0

    .line 504
    invoke-interface {v3, v0, v1}, Landroidx/emoji2/text/flatbuffer/a;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 508
    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public asUInt()J
    .locals 6

    const/4 v0, 0x2

    .line 395
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->b:I

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->a:Landroidx/emoji2/text/flatbuffer/a;

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->c:I

    iget v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    if-ne v4, v0, :cond_0

    .line 45
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->d(Landroidx/emoji2/text/flatbuffer/a;II)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    if-eq v4, v0, :cond_8

    const/4 v0, 0x3

    if-eq v4, v0, :cond_7

    const/16 v0, 0xa

    if-eq v4, v0, :cond_6

    const/16 v0, 0x1a

    if-eq v4, v0, :cond_5

    const/4 v0, 0x5

    if-eq v4, v0, :cond_4

    const/4 v0, 0x6

    .line 399
    iget v5, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->d:I

    if-eq v4, v0, :cond_3

    const/4 v0, 0x7

    if-eq v4, v0, :cond_2

    const/16 v0, 0x8

    if-eq v4, v0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 404
    :cond_1
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/a;II)I

    move-result v0

    invoke-static {v2, v0, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->b(Landroidx/emoji2/text/flatbuffer/a;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 400
    :cond_2
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/a;II)I

    move-result v0

    .line 45
    invoke-static {v2, v0, v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->d(Landroidx/emoji2/text/flatbuffer/a;II)J

    move-result-wide v0

    return-wide v0

    .line 402
    :cond_3
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/a;II)I

    move-result v0

    .line 45
    invoke-static {v2, v0, v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->c(Landroidx/emoji2/text/flatbuffer/a;II)J

    move-result-wide v0

    return-wide v0

    .line 406
    :cond_4
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 172
    :cond_5
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->c(Landroidx/emoji2/text/flatbuffer/a;II)J

    move-result-wide v0

    long-to-int v1, v0

    int-to-long v0, v1

    return-wide v0

    .line 407
    :cond_6
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->asVector()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 403
    :cond_7
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->b(Landroidx/emoji2/text/flatbuffer/a;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 45
    :cond_8
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->c(Landroidx/emoji2/text/flatbuffer/a;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public asVector()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;
    .locals 7

    .line 529
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isVector()Z

    move-result v0

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->d:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->c:I

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->b:I

    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->a:Landroidx/emoji2/text/flatbuffer/a;

    if-eqz v0, :cond_0

    .line 530
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    invoke-static {v4, v3, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/a;II)I

    move-result v2

    .line 928
    invoke-direct {v0, v4, v2, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$b;-><init>(Landroidx/emoji2/text/flatbuffer/a;II)V

    return-object v0

    .line 531
    :cond_0
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    const/16 v5, 0xf

    if-ne v0, v5, :cond_1

    .line 533
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    invoke-static {v4, v3, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/a;II)I

    move-result v2

    const/4 v3, 0x4

    invoke-direct {v0, v4, v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;-><init>(Landroidx/emoji2/text/flatbuffer/a;III)V

    return-object v0

    :cond_1
    const/16 v6, 0xb

    if-lt v0, v6, :cond_2

    if-le v0, v5, :cond_3

    :cond_2
    const/16 v5, 0x24

    if-ne v0, v5, :cond_4

    .line 535
    :cond_3
    new-instance v5, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    invoke-static {v4, v3, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/a;II)I

    move-result v2

    add-int/lit8 v0, v0, -0xa

    invoke-direct {v5, v4, v2, v1, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;-><init>(Landroidx/emoji2/text/flatbuffer/a;III)V

    return-object v5

    .line 537
    :cond_4
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->empty()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 250
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    return v0
.end method

.method public isBlob()Z
    .locals 2

    .line 354
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBoolean()Z
    .locals 2

    .line 266
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFloat()Z
    .locals 2

    const/4 v0, 0x3

    .line 290
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    if-eq v1, v0, :cond_1

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isInt()Z
    .locals 3

    .line 298
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public isIntOrUInt()Z
    .locals 1

    .line 282
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isInt()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isUInt()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isKey()Z
    .locals 2

    .line 322
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMap()Z
    .locals 2

    .line 346
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNull()Z
    .locals 1

    .line 258
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNumeric()Z
    .locals 1

    .line 274
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isIntOrUInt()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->isFloat()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isString()Z
    .locals 2

    .line 314
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTypedVector()Z
    .locals 2

    .line 338
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x24

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isUInt()Z
    .locals 2

    const/4 v0, 0x2

    .line 306
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    if-eq v1, v0, :cond_1

    const/4 v0, 0x7

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isVector()Z
    .locals 2

    const/16 v0, 0xa

    .line 330
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    if-eq v1, v0, :cond_1

    const/16 v0, 0x9

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
