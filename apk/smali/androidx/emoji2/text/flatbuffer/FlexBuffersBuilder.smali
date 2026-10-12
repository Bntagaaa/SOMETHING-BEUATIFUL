.class public Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;
    }
.end annotation


# static fields
.field public static final BUILDER_FLAG_NONE:I = 0x0

.field public static final BUILDER_FLAG_SHARE_ALL:I = 0x7

.field public static final BUILDER_FLAG_SHARE_KEYS:I = 0x1

.field public static final BUILDER_FLAG_SHARE_KEYS_AND_STRINGS:I = 0x3

.field public static final BUILDER_FLAG_SHARE_KEY_VECTORS:I = 0x4

.field public static final BUILDER_FLAG_SHARE_STRINGS:I = 0x2


# instance fields
.field public final a:Landroidx/emoji2/text/flatbuffer/b;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashMap;

.field public final e:I

.field public final f:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x100

    .line 126
    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 119
    new-instance v0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;

    invoke-direct {v0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;-><init>(I)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;-><init>(Landroidx/emoji2/text/flatbuffer/b;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/flatbuffer/b;I)V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->c:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->d:Ljava/util/HashMap;

    .line 94
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$a;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$a;-><init>(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;)V

    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->f:Ljava/util/Comparator;

    .line 141
    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/b;

    .line 142
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 151
    invoke-direct {p0, p1, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    new-instance v0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;-><init>([B)V

    invoke-direct {p0, v0, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;-><init>(Landroidx/emoji2/text/flatbuffer/b;I)V

    return-void
.end method

.method public static e(J)I
    .locals 4

    const/16 v0, 0xff

    int-to-long v0, v0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const v0, 0xffff

    int-to-long v0, v0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 v0, -0x1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    cmp-long v2, p0, v0

    if-gtz v2, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 393
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/b;

    invoke-interface {v1}, Landroidx/emoji2/text/flatbuffer/b;->writePosition()I

    move-result v2

    not-int v2, v2

    add-int/2addr v2, v0

    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, v2

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 395
    invoke-interface {v1, v0}, Landroidx/emoji2/text/flatbuffer/b;->put(B)V

    move v0, v2

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final b(IIIZZLandroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    const/4 v2, 0x1

    move/from16 v3, p3

    int-to-long v4, v3

    .line 496
    invoke-static {v4, v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->e(J)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 498
    iget-object v9, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/b;

    if-eqz v1, :cond_0

    .line 501
    invoke-interface {v9}, Landroidx/emoji2/text/flatbuffer/b;->writePosition()I

    move-result v14

    .line 734
    iget-wide v12, v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->d:J

    iget v11, v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->b:I

    const/4 v15, 0x0

    iget v10, v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->a:I

    invoke-static/range {v10 .. v15}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->a(IIJII)I

    move-result v10

    .line 501
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v10, 0x3

    goto :goto_0

    :cond_0
    const/4 v10, 0x1

    :goto_0
    const/4 v11, 0x4

    move v15, v6

    const/4 v12, 0x4

    move/from16 v6, p2

    .line 506
    :goto_1
    iget-object v13, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_4

    .line 507
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    invoke-interface {v9}, Landroidx/emoji2/text/flatbuffer/b;->writePosition()I

    move-result v21

    add-int v22, v6, v10

    .line 734
    iget v8, v14, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->b:I

    move/from16 v18, v8

    .line 734
    iget-wide v7, v14, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->d:J

    iget v14, v14, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->a:I

    move-wide/from16 v19, v7

    move/from16 v17, v14

    invoke-static/range {v17 .. v22}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->a(IIJII)I

    move-result v7

    .line 508
    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v7, p2

    if-eqz p4, :cond_3

    if-ne v6, v7, :cond_3

    .line 511
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    iget v12, v8, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->a:I

    if-lt v12, v2, :cond_1

    if-le v12, v11, :cond_3

    :cond_1
    const/16 v8, 0x1a

    if-ne v12, v8, :cond_2

    goto :goto_2

    .line 513
    :cond_2
    new-instance v1, Landroidx/emoji2/text/flatbuffer/FlexBuffers$FlexBufferException;

    .line 1083
    const-string v2, "TypedVector does not support this element type"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 513
    throw v1

    :cond_3
    :goto_2
    add-int/2addr v6, v2

    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    move/from16 v7, p2

    .line 526
    invoke-virtual {v0, v15}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a(I)I

    move-result v6

    if-eqz v1, :cond_5

    .line 529
    iget-wide v10, v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->d:J

    .line 552
    invoke-interface {v9}, Landroidx/emoji2/text/flatbuffer/b;->writePosition()I

    move-result v8

    const/4 v14, 0x1

    int-to-long v2, v8

    sub-long/2addr v2, v10

    long-to-int v3, v2

    int-to-long v2, v3

    .line 554
    invoke-virtual {v0, v6, v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->h(IJ)V

    const-wide/16 v2, 0x1

    .line 530
    iget v8, v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->b:I

    shl-long/2addr v2, v8

    invoke-virtual {v0, v6, v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->h(IJ)V

    goto :goto_3

    :cond_5
    const/4 v14, 0x1

    :goto_3
    if-nez p5, :cond_6

    .line 533
    invoke-virtual {v0, v6, v4, v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->h(IJ)V

    .line 536
    :cond_6
    invoke-interface {v9}, Landroidx/emoji2/text/flatbuffer/b;->writePosition()I

    move-result v2

    move v3, v7

    .line 537
    :goto_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 538
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    invoke-virtual {v0, v4, v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->f(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;I)V

    add-int/2addr v3, v14

    goto :goto_4

    :cond_7
    if-nez p4, :cond_b

    .line 542
    :goto_5
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v7, v3, :cond_b

    .line 543
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    .line 636
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 726
    sget v4, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->FBT_NULL:I

    .line 122
    iget v4, v3, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->a:I

    const/4 v5, 0x3

    const/16 v8, 0x1a

    if-le v4, v5, :cond_9

    if-ne v4, v8, :cond_8

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v6, 0x1

    .line 726
    :goto_7
    iget v3, v3, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->b:I

    if-eqz v6, :cond_a

    .line 727
    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_a
    shl-int/lit8 v4, v4, 0x2

    or-int/2addr v3, v4

    int-to-byte v3, v3

    .line 543
    invoke-interface {v9, v3}, Landroidx/emoji2/text/flatbuffer/b;->put(B)V

    add-int/2addr v7, v14

    goto :goto_5

    .line 546
    :cond_b
    new-instance v3, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    if-eqz v1, :cond_c

    const/16 v1, 0x9

    const/16 v14, 0x9

    goto :goto_9

    :cond_c
    if-eqz p4, :cond_e

    if-eqz p5, :cond_d

    move/from16 v1, p3

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    .line 547
    :goto_8
    invoke-static {v12, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->e(II)I

    move-result v1

    move v14, v1

    goto :goto_9

    :cond_e
    const/16 v1, 0xa

    const/16 v14, 0xa

    :goto_9
    int-to-long v1, v2

    move/from16 v13, p1

    move-wide/from16 v16, v1

    move-object v12, v3

    invoke-direct/range {v12 .. v17}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;-><init>(IIIJ)V

    return-object v12
.end method

.method public final c(Ljava/lang/String;)I
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 186
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/b;

    invoke-interface {v0}, Landroidx/emoji2/text/flatbuffer/b;->writePosition()I

    move-result v1

    .line 187
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->e:I

    and-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->c:Ljava/util/HashMap;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 188
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    .line 190
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 191
    array-length v5, v2

    invoke-interface {v0, v2, v4, v5}, Landroidx/emoji2/text/flatbuffer/b;->put([BII)V

    .line 192
    invoke-interface {v0, v4}, Landroidx/emoji2/text/flatbuffer/b;->put(B)V

    .line 193
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 195
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 198
    :cond_2
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 199
    array-length v5, v2

    invoke-interface {v0, v2, v4, v5}, Landroidx/emoji2/text/flatbuffer/b;->put([BII)V

    .line 200
    invoke-interface {v0, v4}, Landroidx/emoji2/text/flatbuffer/b;->put(B)V

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method public final d(J)V
    .locals 7

    .line 282
    invoke-static {p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->e(J)I

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    long-to-int p2, p1

    .line 690
    new-instance v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    int-to-long v5, p2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;-><init>(IIIJ)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    long-to-int p2, p1

    .line 694
    new-instance v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    int-to-long v5, p2

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;-><init>(IIIJ)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    long-to-int p2, p1

    .line 698
    new-instance v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    int-to-long v5, p2

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-direct/range {v1 .. v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;-><init>(IIIJ)V

    goto :goto_0

    .line 702
    :cond_2
    new-instance v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    const/4 v3, 0x2

    const/4 v4, 0x3

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;-><init>(IIIJ)V

    .line 293
    :goto_0
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public endMap(Ljava/lang/String;I)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v2, p2

    .line 598
    invoke-virtual/range {p0 .. p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->c(Ljava/lang/String;)I

    move-result v1

    .line 600
    iget-object v7, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v7, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->f:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 602
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-long v3, v3

    .line 614
    invoke-static {v3, v4}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->e(J)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v11, v5

    move v5, v2

    .line 617
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v9, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/b;

    if-ge v5, v8, :cond_0

    .line 618
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    iget v8, v8, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->e:I

    int-to-long v14, v8

    invoke-interface {v9}, Landroidx/emoji2/text/flatbuffer/b;->writePosition()I

    move-result v16

    add-int/lit8 v17, v5, 0x1

    const/4 v12, 0x4

    const/4 v13, 0x0

    .line 636
    invoke-static/range {v12 .. v17}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->a(IIJII)I

    move-result v5

    .line 619
    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    move/from16 v5, v17

    goto :goto_0

    .line 622
    :cond_0
    invoke-virtual {v0, v11}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a(I)I

    move-result v5

    .line 624
    invoke-virtual {v0, v5, v3, v4}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->h(IJ)V

    .line 626
    invoke-interface {v9}, Landroidx/emoji2/text/flatbuffer/b;->writePosition()I

    move-result v3

    move v4, v2

    .line 627
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 628
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    iget v8, v8, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->e:I

    .line 630
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    iget v8, v8, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->e:I

    int-to-long v12, v8

    .line 552
    invoke-interface {v9}, Landroidx/emoji2/text/flatbuffer/b;->writePosition()I

    move-result v8

    int-to-long v14, v8

    sub-long/2addr v14, v12

    long-to-int v8, v14

    int-to-long v12, v8

    .line 554
    invoke-virtual {v0, v5, v12, v13}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->h(IJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 633
    :cond_1
    new-instance v8, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    const/4 v4, 0x4

    invoke-static {v4, v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->e(II)I

    move-result v10

    int-to-long v12, v3

    const/4 v9, -0x1

    invoke-direct/range {v8 .. v13}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;-><init>(IIIJ)V

    move-object v6, v8

    .line 603
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b(IIIZZLandroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object v1

    .line 605
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 606
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 608
    :cond_2
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    iget-wide v0, v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->d:J

    long-to-int v1, v0

    return v1
.end method

.method public endVector(Ljava/lang/String;IZZ)I
    .locals 7

    .line 449
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->c(Ljava/lang/String;)I

    move-result v1

    .line 450
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v3, v0, p2

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b(IIIZZLandroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object p2

    .line 452
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-le p3, v2, :cond_0

    .line 453
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    iget-wide p1, p2, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->d:J

    long-to-int p2, p1

    return p2
.end method

.method public final f(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;I)V
    .locals 5

    .line 558
    iget v0, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->a:I

    iget-wide v1, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->d:J

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/b;

    if-eq v0, v3, :cond_0

    const/16 p1, 0x1a

    if-eq v0, p1, :cond_3

    .line 552
    invoke-interface {v4}, Landroidx/emoji2/text/flatbuffer/b;->writePosition()I

    move-result p1

    int-to-long v3, p1

    sub-long/2addr v3, v1

    long-to-int p1, v3

    int-to-long v0, p1

    .line 554
    invoke-virtual {p0, p2, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->h(IJ)V

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 575
    iget-wide v1, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->c:D

    if-ne p2, v0, :cond_1

    double-to-float p1, v1

    .line 576
    invoke-interface {v4, p1}, Landroidx/emoji2/text/flatbuffer/b;->putFloat(F)V

    return-void

    :cond_1
    const/16 p1, 0x8

    if-ne p2, p1, :cond_2

    .line 578
    invoke-interface {v4, v1, v2}, Landroidx/emoji2/text/flatbuffer/b;->putDouble(D)V

    :cond_2
    return-void

    .line 563
    :cond_3
    invoke-virtual {p0, p2, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->h(IJ)V

    return-void
.end method

.method public finish()Ljava/nio/ByteBuffer;
    .locals 8

    .line 472
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    iget-object v7, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/b;

    invoke-interface {v7}, Landroidx/emoji2/text/flatbuffer/b;->writePosition()I

    move-result v5

    .line 734
    iget v2, v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->b:I

    .line 734
    iget-wide v3, v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->d:J

    iget v1, v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->a:I

    invoke-static/range {v1 .. v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->a(IIJII)I

    move-result v1

    .line 472
    invoke-virtual {p0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a(I)I

    move-result v1

    .line 473
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    invoke-virtual {p0, v2, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->f(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;I)V

    .line 475
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    .line 714
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 726
    sget v2, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->FBT_NULL:I

    const/4 v2, 0x3

    .line 122
    iget v3, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->a:I

    if-le v3, v2, :cond_1

    const/16 v2, 0x1a

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 726
    :goto_1
    iget v0, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->b:I

    if-eqz v2, :cond_2

    .line 727
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    shl-int/lit8 v2, v3, 0x2

    or-int/2addr v0, v2

    int-to-byte v0, v0

    .line 475
    invoke-interface {v7, v0}, Landroidx/emoji2/text/flatbuffer/b;->put(B)V

    int-to-byte v0, v1

    .line 477
    invoke-interface {v7, v0}, Landroidx/emoji2/text/flatbuffer/b;->put(B)V

    .line 479
    invoke-interface {v7}, Landroidx/emoji2/text/flatbuffer/a;->data()[B

    move-result-object v0

    invoke-interface {v7}, Landroidx/emoji2/text/flatbuffer/b;->writePosition()I

    move-result v1

    invoke-static {v0, v6, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final g([BIIZ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;
    .locals 8

    .line 379
    array-length v0, p1

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->e(J)I

    move-result v5

    .line 380
    invoke-virtual {p0, v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a(I)I

    move-result v0

    .line 381
    array-length v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->h(IJ)V

    .line 382
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/b;

    invoke-interface {v0}, Landroidx/emoji2/text/flatbuffer/b;->writePosition()I

    move-result v1

    .line 383
    array-length v2, p1

    const/4 v3, 0x0

    invoke-interface {v0, p1, v3, v2}, Landroidx/emoji2/text/flatbuffer/b;->put([BII)V

    if-eqz p4, :cond_0

    .line 385
    invoke-interface {v0, v3}, Landroidx/emoji2/text/flatbuffer/b;->put(B)V

    .line 670
    :cond_0
    new-instance v2, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    int-to-long v6, v1

    move v3, p2

    move v4, p3

    invoke-direct/range {v2 .. v7}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;-><init>(IIIJ)V

    return-object v2
.end method

.method public getBuffer()Landroidx/emoji2/text/flatbuffer/b;
    .locals 1

    .line 162
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/b;

    return-object v0
.end method

.method public final h(IJ)V
    .locals 2

    const/4 v0, 0x1

    .line 401
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/b;

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    return-void

    .line 405
    :cond_0
    invoke-interface {v1, p2, p3}, Landroidx/emoji2/text/flatbuffer/b;->putLong(J)V

    return-void

    :cond_1
    long-to-int p1, p2

    .line 404
    invoke-interface {v1, p1}, Landroidx/emoji2/text/flatbuffer/b;->putInt(I)V

    return-void

    :cond_2
    long-to-int p1, p2

    int-to-short p1, p1

    .line 403
    invoke-interface {v1, p1}, Landroidx/emoji2/text/flatbuffer/b;->putShort(S)V

    return-void

    :cond_3
    long-to-int p1, p2

    int-to-byte p1, p1

    .line 402
    invoke-interface {v1, p1}, Landroidx/emoji2/text/flatbuffer/b;->put(B)V

    return-void
.end method

.method public putBlob(Ljava/lang/String;[B)I
    .locals 2

    .line 425
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->c(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x19

    const/4 v1, 0x0

    .line 426
    invoke-virtual {p0, p2, p1, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->g([BIIZ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object p1

    .line 427
    iget-object p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    iget-wide p1, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->d:J

    long-to-int p2, p1

    return p2
.end method

.method public putBlob([B)I
    .locals 1

    const/4 v0, 0x0

    .line 415
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putBlob(Ljava/lang/String;[B)I

    move-result p1

    return p1
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 7

    .line 179
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->c(Ljava/lang/String;)I

    move-result v2

    .line 666
    new-instance v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    if-eqz p2, :cond_0

    const-wide/16 p1, 0x1

    :goto_0
    move-wide v5, p1

    goto :goto_1

    :cond_0
    const-wide/16 p1, 0x0

    goto :goto_0

    :goto_1
    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;-><init>(IIIJ)V

    .line 179
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public putBoolean(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public putFloat(D)V
    .locals 1

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putFloat(Ljava/lang/String;D)V

    return-void
.end method

.method public putFloat(F)V
    .locals 1

    const/4 v0, 0x0

    .line 301
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public putFloat(Ljava/lang/String;D)V
    .locals 3

    .line 327
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->c(Ljava/lang/String;)I

    move-result p1

    .line 710
    new-instance v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;-><init>(IID)V

    .line 327
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 4

    .line 310
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->c(Ljava/lang/String;)I

    move-result p1

    .line 706
    new-instance v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    float-to-double v2, p2

    const/4 p2, 0x2

    invoke-direct {v1, p1, p2, v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;-><init>(IID)V

    .line 310
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public putInt(I)V
    .locals 1

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public putInt(J)V
    .locals 1

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p0, v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putInt(Ljava/lang/String;J)V

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2

    int-to-long v0, p2

    .line 220
    invoke-virtual {p0, p1, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putInt(Ljava/lang/String;J)V

    return-void
.end method

.method public putInt(Ljava/lang/String;J)V
    .locals 6

    .line 229
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->c(Ljava/lang/String;)I

    move-result v1

    const-wide/16 v2, -0x80

    .line 230
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    cmp-long v0, v2, p2

    if-gtz v0, :cond_0

    const-wide/16 v2, 0x7f

    cmp-long v0, p2, v2

    if-gtz v0, :cond_0

    long-to-int p3, p2

    .line 674
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    int-to-long v4, p3

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;-><init>(IIIJ)V

    .line 231
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-wide/16 v2, -0x8000

    cmp-long v0, v2, p2

    if-gtz v0, :cond_1

    const-wide/16 v2, 0x7fff

    cmp-long v0, p2, v2

    if-gtz v0, :cond_1

    long-to-int p3, p2

    .line 678
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    int-to-long v4, p3

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;-><init>(IIIJ)V

    .line 233
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const-wide/32 v2, -0x80000000

    cmp-long v0, v2, p2

    if-gtz v0, :cond_2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, p2, v2

    if-gtz v0, :cond_2

    long-to-int p3, p2

    .line 682
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    int-to-long v4, p3

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;-><init>(IIIJ)V

    .line 235
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 686
    :cond_2
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    const/4 v2, 0x1

    const/4 v3, 0x3

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;-><init>(IIIJ)V

    .line 237
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public putString(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 336
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .line 346
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->c(Ljava/lang/String;)I

    move-result v1

    .line 347
    iget p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->e:I

    and-int/lit8 p1, p1, 0x2

    iget-object v6, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    const/4 v2, 0x5

    if-eqz p1, :cond_1

    .line 348
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->d:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_0

    .line 367
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {p0, v3, v1, v2, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->g([BIIZ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object v0

    .line 351
    iget-wide v1, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->d:J

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v2

    .line 355
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->e(J)I

    move-result v3

    .line 356
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 670
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    int-to-long v4, p1

    const/4 v2, 0x5

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;-><init>(IIIJ)V

    .line 356
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 367
    :cond_1
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->g([BIIZ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object p1

    .line 361
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    iget-wide p1, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->d:J

    long-to-int p2, p1

    return p2
.end method

.method public putUInt(I)V
    .locals 2

    int-to-long v0, p1

    .line 254
    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->d(J)V

    return-void
.end method

.method public putUInt(J)V
    .locals 0

    .line 262
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->d(J)V

    return-void
.end method

.method public putUInt64(Ljava/math/BigInteger;)V
    .locals 6

    .line 271
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    .line 275
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    .line 702
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v1, -0x1

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;-><init>(IIIJ)V

    .line 275
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startMap()I
    .locals 1

    .line 588
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startVector()I
    .locals 1

    .line 437
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
