.class final Lcom/airbnb/lottie/parser/moshi/e;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/parser/moshi/e$e;,
        Lcom/airbnb/lottie/parser/moshi/e$d;,
        Lcom/airbnb/lottie/parser/moshi/e$f;,
        Lcom/airbnb/lottie/parser/moshi/e$b;,
        Lcom/airbnb/lottie/parser/moshi/e$c;,
        Lcom/airbnb/lottie/parser/moshi/e$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final i:Ljava/util/Comparator;


# instance fields
.field public final a:Ljava/util/Comparator;

.field public b:[Lcom/airbnb/lottie/parser/moshi/e$g;

.field public final c:Lcom/airbnb/lottie/parser/moshi/e$g;

.field public d:I

.field public e:I

.field public f:I

.field public g:Lcom/airbnb/lottie/parser/moshi/e$d;

.field public h:Lcom/airbnb/lottie/parser/moshi/e$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/e$a;

    invoke-direct {v0}, Lcom/airbnb/lottie/parser/moshi/e$a;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/e;->i:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->d:I

    .line 51
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->e:I

    .line 74
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/e;->i:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->a:Ljava/util/Comparator;

    .line 75
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/e$g;

    invoke-direct {v0}, Lcom/airbnb/lottie/parser/moshi/e$g;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    const/16 v0, 0x10

    .line 76
    new-array v0, v0, [Lcom/airbnb/lottie/parser/moshi/e$g;

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->b:[Lcom/airbnb/lottie/parser/moshi/e$g;

    const/16 v0, 0xc

    .line 77
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->f:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Z)Lcom/airbnb/lottie/parser/moshi/e$g;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    .line 132
    iget-object v7, v0, Lcom/airbnb/lottie/parser/moshi/e;->b:[Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 133
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    ushr-int/lit8 v2, v1, 0x14

    ushr-int/lit8 v4, v1, 0xc

    xor-int/2addr v2, v4

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x7

    xor-int/2addr v2, v1

    ushr-int/lit8 v1, v1, 0x4

    xor-int v4, v2, v1

    .line 134
    array-length v1, v7

    const/4 v8, 0x1

    sub-int/2addr v1, v8

    and-int v9, v4, v1

    .line 135
    aget-object v1, v7, v9

    .line 138
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/e;->i:Ljava/util/Comparator;

    iget-object v5, v0, Lcom/airbnb/lottie/parser/moshi/e;->a:Ljava/util/Comparator;

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v1, :cond_5

    if-ne v5, v2, :cond_0

    .line 142
    move-object v6, v3

    check-cast v6, Ljava/lang/Comparable;

    goto :goto_0

    :cond_0
    move-object v6, v11

    .line 146
    :goto_0
    iget-object v12, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->f:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 147
    invoke-interface {v6, v12}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v12

    goto :goto_1

    .line 148
    :cond_1
    invoke-interface {v5, v3, v12}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    :goto_1
    if-nez v12, :cond_2

    return-object v1

    :cond_2
    if-gez v12, :cond_3

    .line 156
    iget-object v13, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    goto :goto_2

    :cond_3
    iget-object v13, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    :goto_2
    if-nez v13, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v13

    goto :goto_0

    :cond_5
    const/4 v12, 0x0

    :goto_3
    if-nez p2, :cond_6

    return-object v11

    .line 173
    :cond_6
    iget-object v6, v0, Lcom/airbnb/lottie/parser/moshi/e;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    if-nez v1, :cond_9

    if-ne v5, v2, :cond_7

    .line 175
    instance-of v2, v3, Ljava/lang/Comparable;

    if-eqz v2, :cond_8

    :cond_7
    move-object v2, v1

    goto :goto_4

    .line 176
    :cond_8
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, " is not Comparable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :goto_4
    new-instance v1, Lcom/airbnb/lottie/parser/moshi/e$g;

    move-object v5, v6

    iget-object v6, v5, Lcom/airbnb/lottie/parser/moshi/e$g;->e:Lcom/airbnb/lottie/parser/moshi/e$g;

    invoke-direct/range {v1 .. v6}, Lcom/airbnb/lottie/parser/moshi/e$g;-><init>(Lcom/airbnb/lottie/parser/moshi/e$g;Ljava/lang/Object;ILcom/airbnb/lottie/parser/moshi/e$g;Lcom/airbnb/lottie/parser/moshi/e$g;)V

    .line 179
    aput-object v1, v7, v9

    goto :goto_6

    :cond_9
    move-object v2, v1

    move-object v5, v6

    .line 181
    new-instance v1, Lcom/airbnb/lottie/parser/moshi/e$g;

    iget-object v6, v5, Lcom/airbnb/lottie/parser/moshi/e$g;->e:Lcom/airbnb/lottie/parser/moshi/e$g;

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/airbnb/lottie/parser/moshi/e$g;-><init>(Lcom/airbnb/lottie/parser/moshi/e$g;Ljava/lang/Object;ILcom/airbnb/lottie/parser/moshi/e$g;Lcom/airbnb/lottie/parser/moshi/e$g;)V

    if-gez v12, :cond_a

    .line 183
    iput-object v1, v2, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    goto :goto_5

    .line 185
    :cond_a
    iput-object v1, v2, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 187
    :goto_5
    invoke-virtual {v0, v2, v8}, Lcom/airbnb/lottie/parser/moshi/e;->b(Lcom/airbnb/lottie/parser/moshi/e$g;Z)V

    .line 190
    :goto_6
    iget v2, v0, Lcom/airbnb/lottie/parser/moshi/e;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/airbnb/lottie/parser/moshi/e;->d:I

    iget v3, v0, Lcom/airbnb/lottie/parser/moshi/e;->f:I

    if-le v2, v3, :cond_17

    .line 561
    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/e;->b:[Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 571
    array-length v3, v2

    mul-int/lit8 v4, v3, 0x2

    .line 573
    new-array v5, v4, [Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 574
    new-instance v6, Lcom/airbnb/lottie/parser/moshi/e$c;

    invoke-direct {v6}, Lcom/airbnb/lottie/parser/moshi/e$c;-><init>()V

    .line 575
    new-instance v7, Lcom/airbnb/lottie/parser/moshi/e$b;

    invoke-direct {v7}, Lcom/airbnb/lottie/parser/moshi/e$b;-><init>()V

    .line 576
    new-instance v9, Lcom/airbnb/lottie/parser/moshi/e$b;

    invoke-direct {v9}, Lcom/airbnb/lottie/parser/moshi/e$b;-><init>()V

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v3, :cond_16

    .line 580
    aget-object v13, v2, v12

    if-nez v13, :cond_b

    const/16 v16, 0x1

    goto/16 :goto_e

    :cond_b
    move-object v15, v11

    move-object v14, v13

    :goto_8
    if-eqz v14, :cond_c

    .line 634
    iput-object v15, v14, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 633
    iget-object v15, v14, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    move-object/from16 v17, v15

    move-object v15, v14

    move-object/from16 v14, v17

    goto :goto_8

    .line 637
    :cond_c
    iput-object v15, v6, Lcom/airbnb/lottie/parser/moshi/e$c;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    .line 589
    :goto_9
    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/e$c;->next()Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 590
    iget v8, v8, Lcom/airbnb/lottie/parser/moshi/e$g;->g:I

    and-int/2addr v8, v3

    if-nez v8, :cond_d

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 686
    :cond_e
    invoke-static {v14}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v14

    .line 687
    iput v8, v7, Lcom/airbnb/lottie/parser/moshi/e$b;->b:I

    .line 688
    iput v10, v7, Lcom/airbnb/lottie/parser/moshi/e$b;->d:I

    .line 689
    iput v10, v7, Lcom/airbnb/lottie/parser/moshi/e$b;->c:I

    .line 690
    iput-object v11, v7, Lcom/airbnb/lottie/parser/moshi/e$b;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 686
    invoke-static {v15}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v15

    .line 687
    iput v8, v9, Lcom/airbnb/lottie/parser/moshi/e$b;->b:I

    .line 688
    iput v10, v9, Lcom/airbnb/lottie/parser/moshi/e$b;->d:I

    .line 689
    iput v10, v9, Lcom/airbnb/lottie/parser/moshi/e$b;->c:I

    .line 690
    iput-object v11, v9, Lcom/airbnb/lottie/parser/moshi/e$b;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    move-object v8, v11

    :goto_a
    if-eqz v13, :cond_f

    .line 634
    iput-object v8, v13, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 633
    iget-object v8, v13, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    move-object/from16 v17, v13

    move-object v13, v8

    move-object/from16 v8, v17

    goto :goto_a

    .line 637
    :cond_f
    iput-object v8, v6, Lcom/airbnb/lottie/parser/moshi/e$c;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 601
    :goto_b
    invoke-virtual {v6}, Lcom/airbnb/lottie/parser/moshi/e$c;->next()Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object v8

    if-eqz v8, :cond_11

    .line 602
    iget v13, v8, Lcom/airbnb/lottie/parser/moshi/e$g;->g:I

    and-int/2addr v13, v3

    if-nez v13, :cond_10

    .line 603
    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/parser/moshi/e$b;->a(Lcom/airbnb/lottie/parser/moshi/e$g;)V

    goto :goto_b

    .line 605
    :cond_10
    invoke-virtual {v9, v8}, Lcom/airbnb/lottie/parser/moshi/e$b;->a(Lcom/airbnb/lottie/parser/moshi/e$g;)V

    goto :goto_b

    :cond_11
    if-lez v14, :cond_13

    .line 759
    iget-object v8, v7, Lcom/airbnb/lottie/parser/moshi/e$b;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 760
    iget-object v13, v8, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    if-nez v13, :cond_12

    goto :goto_c

    .line 761
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_13
    move-object v8, v11

    .line 610
    :goto_c
    aput-object v8, v5, v12

    add-int v8, v12, v3

    if-lez v15, :cond_15

    .line 759
    iget-object v13, v9, Lcom/airbnb/lottie/parser/moshi/e$b;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 760
    iget-object v14, v13, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    if-nez v14, :cond_14

    goto :goto_d

    .line 761
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_15
    move-object v13, v11

    .line 611
    :goto_d
    aput-object v13, v5, v8

    :goto_e
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    goto/16 :goto_7

    :cond_16
    const/16 v16, 0x1

    .line 561
    iput-object v5, v0, Lcom/airbnb/lottie/parser/moshi/e;->b:[Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 562
    div-int/lit8 v2, v4, 0x2

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v2

    iput v4, v0, Lcom/airbnb/lottie/parser/moshi/e;->f:I

    goto :goto_f

    :cond_17
    const/16 v16, 0x1

    .line 193
    :goto_f
    iget v2, v0, Lcom/airbnb/lottie/parser/moshi/e;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/airbnb/lottie/parser/moshi/e;->e:I

    return-object v1
.end method

.method public final b(Lcom/airbnb/lottie/parser/moshi/e$g;Z)V
    .locals 7

    :goto_0
    if-eqz p1, :cond_e

    .line 339
    iget-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 340
    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 341
    iget v3, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v1, :cond_1

    .line 342
    iget v4, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    sub-int v5, v3, v4

    const/4 v6, -0x2

    if-ne v5, v6, :cond_6

    .line 346
    iget-object v0, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 347
    iget-object v3, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    if-eqz v3, :cond_2

    .line 348
    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    if-eqz v0, :cond_3

    .line 349
    iget v2, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    :cond_3
    sub-int/2addr v2, v3

    const/4 v0, -0x1

    if-eq v2, v0, :cond_5

    if-nez v2, :cond_4

    if-nez p2, :cond_4

    goto :goto_4

    .line 356
    :cond_4
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/parser/moshi/e;->f(Lcom/airbnb/lottie/parser/moshi/e$g;)V

    .line 357
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/e;->e(Lcom/airbnb/lottie/parser/moshi/e$g;)V

    goto :goto_5

    .line 353
    :cond_5
    :goto_4
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/e;->e(Lcom/airbnb/lottie/parser/moshi/e$g;)V

    :goto_5
    if-eqz p2, :cond_d

    goto :goto_9

    :cond_6
    const/4 v1, 0x2

    const/4 v6, 0x1

    if-ne v5, v1, :cond_b

    .line 364
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 365
    iget-object v3, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    if-eqz v3, :cond_7

    .line 366
    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    if-eqz v1, :cond_8

    .line 367
    iget v2, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    :cond_8
    sub-int/2addr v2, v3

    if-eq v2, v6, :cond_a

    if-nez v2, :cond_9

    if-nez p2, :cond_9

    goto :goto_7

    .line 374
    :cond_9
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/e;->e(Lcom/airbnb/lottie/parser/moshi/e$g;)V

    .line 375
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/e;->f(Lcom/airbnb/lottie/parser/moshi/e$g;)V

    goto :goto_8

    .line 371
    :cond_a
    :goto_7
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/e;->f(Lcom/airbnb/lottie/parser/moshi/e$g;)V

    :goto_8
    if-eqz p2, :cond_d

    goto :goto_9

    :cond_b
    if-nez v5, :cond_c

    add-int/lit8 v3, v3, 0x1

    .line 382
    iput v3, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    if-eqz p2, :cond_d

    goto :goto_9

    .line 389
    :cond_c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v6

    iput v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    if-nez p2, :cond_d

    goto :goto_9

    .line 338
    :cond_d
    iget-object p1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    goto :goto_0

    :cond_e
    :goto_9
    return-void
.end method

.method public final c(Lcom/airbnb/lottie/parser/moshi/e$g;Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 246
    iget-object p2, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->e:Lcom/airbnb/lottie/parser/moshi/e$g;

    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->d:Lcom/airbnb/lottie/parser/moshi/e$g;

    iput-object v1, p2, Lcom/airbnb/lottie/parser/moshi/e$g;->d:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 247
    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->d:Lcom/airbnb/lottie/parser/moshi/e$g;

    iput-object p2, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->e:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 248
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->e:Lcom/airbnb/lottie/parser/moshi/e$g;

    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->d:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 251
    :cond_0
    iget-object p2, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 252
    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 253
    iget-object v2, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    if-eqz v1, :cond_4

    .line 265
    iget v2, p2, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    iget v4, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    if-le v2, v4, :cond_1

    invoke-virtual {p2}, Lcom/airbnb/lottie/parser/moshi/e$g;->last()Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/airbnb/lottie/parser/moshi/e$g;->first()Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object p2

    .line 266
    :goto_0
    invoke-virtual {p0, p2, v3}, Lcom/airbnb/lottie/parser/moshi/e;->c(Lcom/airbnb/lottie/parser/moshi/e$g;Z)V

    .line 269
    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    if-eqz v1, :cond_2

    .line 271
    iget v2, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    .line 272
    iput-object v1, p2, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 273
    iput-object p2, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 274
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 277
    :goto_1
    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    if-eqz v1, :cond_3

    .line 279
    iget v3, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    .line 280
    iput-object v1, p2, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 281
    iput-object p2, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 282
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 284
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    .line 285
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/parser/moshi/e;->d(Lcom/airbnb/lottie/parser/moshi/e$g;Lcom/airbnb/lottie/parser/moshi/e$g;)V

    return-void

    :cond_4
    if-eqz p2, :cond_5

    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/parser/moshi/e;->d(Lcom/airbnb/lottie/parser/moshi/e$g;Lcom/airbnb/lottie/parser/moshi/e$g;)V

    .line 289
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 291
    invoke-virtual {p0, p1, v1}, Lcom/airbnb/lottie/parser/moshi/e;->d(Lcom/airbnb/lottie/parser/moshi/e$g;Lcom/airbnb/lottie/parser/moshi/e$g;)V

    .line 292
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    goto :goto_2

    .line 294
    :cond_6
    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/parser/moshi/e;->d(Lcom/airbnb/lottie/parser/moshi/e$g;Lcom/airbnb/lottie/parser/moshi/e$g;)V

    .line 297
    :goto_2
    invoke-virtual {p0, v2, v3}, Lcom/airbnb/lottie/parser/moshi/e;->b(Lcom/airbnb/lottie/parser/moshi/e$g;Z)V

    .line 298
    iget p1, p0, Lcom/airbnb/lottie/parser/moshi/e;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/e;->d:I

    .line 299
    iget p1, p0, Lcom/airbnb/lottie/parser/moshi/e;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/e;->e:I

    return-void
.end method

.method public clear()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->b:[Lcom/airbnb/lottie/parser/moshi/e$g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->d:I

    .line 106
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->e:I

    .line 110
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->d:Lcom/airbnb/lottie/parser/moshi/e$g;

    :goto_0
    if-eq v2, v0, :cond_0

    .line 111
    iget-object v3, v2, Lcom/airbnb/lottie/parser/moshi/e$g;->d:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 112
    iput-object v1, v2, Lcom/airbnb/lottie/parser/moshi/e$g;->e:Lcom/airbnb/lottie/parser/moshi/e$g;

    iput-object v1, v2, Lcom/airbnb/lottie/parser/moshi/e$g;->d:Lcom/airbnb/lottie/parser/moshi/e$g;

    move-object v2, v3

    goto :goto_0

    .line 116
    :cond_0
    iput-object v0, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->e:Lcom/airbnb/lottie/parser/moshi/e$g;

    iput-object v0, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->d:Lcom/airbnb/lottie/parser/moshi/e$g;

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 201
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/parser/moshi/e;->a(Ljava/lang/Object;Z)Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final d(Lcom/airbnb/lottie/parser/moshi/e$g;Lcom/airbnb/lottie/parser/moshi/e$g;)V
    .locals 2

    .line 311
    iget-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    const/4 v1, 0x0

    .line 312
    iput-object v1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    if-eqz p2, :cond_0

    .line 314
    iput-object v0, p2, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    :cond_0
    if-eqz v0, :cond_2

    .line 318
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    if-ne v1, p1, :cond_1

    .line 319
    iput-object p2, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    return-void

    .line 322
    :cond_1
    iput-object p2, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    return-void

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->b:[Lcom/airbnb/lottie/parser/moshi/e$g;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget p1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->g:I

    and-int/2addr p1, v1

    .line 326
    aput-object p2, v0, p1

    return-void
.end method

.method public final e(Lcom/airbnb/lottie/parser/moshi/e$g;)V
    .locals 5

    .line 401
    iget-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 402
    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 403
    iget-object v2, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 404
    iget-object v3, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 407
    iput-object v2, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    if-eqz v2, :cond_0

    .line 409
    iput-object p1, v2, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 412
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/airbnb/lottie/parser/moshi/e;->d(Lcom/airbnb/lottie/parser/moshi/e$g;Lcom/airbnb/lottie/parser/moshi/e$g;)V

    .line 415
    iput-object p1, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 416
    iput-object v1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 419
    iget v0, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 420
    iget v2, v2, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 419
    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    if-eqz v3, :cond_3

    .line 422
    iget v4, v3, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    .line 421
    :cond_3
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->g:Lcom/airbnb/lottie/parser/moshi/e$d;

    if-eqz v0, :cond_0

    return-object v0

    .line 458
    :cond_0
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/e$d;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/e$d;-><init>(Lcom/airbnb/lottie/parser/moshi/e;)V

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->g:Lcom/airbnb/lottie/parser/moshi/e$d;

    return-object v0
.end method

.method public final f(Lcom/airbnb/lottie/parser/moshi/e$g;)V
    .locals 5

    .line 429
    iget-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 430
    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 431
    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 432
    iget-object v3, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 435
    iput-object v3, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->b:Lcom/airbnb/lottie/parser/moshi/e$g;

    if-eqz v3, :cond_0

    .line 437
    iput-object p1, v3, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 440
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/parser/moshi/e;->d(Lcom/airbnb/lottie/parser/moshi/e$g;Lcom/airbnb/lottie/parser/moshi/e$g;)V

    .line 443
    iput-object p1, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->c:Lcom/airbnb/lottie/parser/moshi/e$g;

    .line 444
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->a:Lcom/airbnb/lottie/parser/moshi/e$g;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 447
    iget v1, v1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 448
    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 447
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    if-eqz v2, :cond_3

    .line 450
    iget v4, v2, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    .line 449
    :cond_3
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/airbnb/lottie/parser/moshi/e$g;->i:I

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 201
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/airbnb/lottie/parser/moshi/e;->a(Ljava/lang/Object;Z)Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 86
    iget-object p1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->h:Ljava/lang/Object;

    return-object p1

    :cond_1
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->h:Lcom/airbnb/lottie/parser/moshi/e$e;

    if-eqz v0, :cond_0

    return-object v0

    .line 463
    :cond_0
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/e$e;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/e$e;-><init>(Lcom/airbnb/lottie/parser/moshi/e;)V

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->h:Lcom/airbnb/lottie/parser/moshi/e$e;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 97
    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/parser/moshi/e;->a(Ljava/lang/Object;Z)Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object p1

    .line 98
    iget-object v0, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->h:Ljava/lang/Object;

    .line 99
    iput-object p2, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->h:Ljava/lang/Object;

    return-object v0

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 201
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/airbnb/lottie/parser/moshi/e;->a(Ljava/lang/Object;Z)Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 305
    invoke-virtual {p0, p1, v1}, Lcom/airbnb/lottie/parser/moshi/e;->c(Lcom/airbnb/lottie/parser/moshi/e$g;Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 121
    iget-object p1, p1, Lcom/airbnb/lottie/parser/moshi/e$g;->h:Ljava/lang/Object;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/e;->d:I

    return v0
.end method
