.class public Landroidx/recyclerview/widget/DiffUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/DiffUtil$b;,
        Landroidx/recyclerview/widget/DiffUtil$d;,
        Landroidx/recyclerview/widget/DiffUtil$DiffResult;,
        Landroidx/recyclerview/widget/DiffUtil$e;,
        Landroidx/recyclerview/widget/DiffUtil$f;,
        Landroidx/recyclerview/widget/DiffUtil$c;,
        Landroidx/recyclerview/widget/DiffUtil$ItemCallback;,
        Landroidx/recyclerview/widget/DiffUtil$Callback;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$a;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/DiffUtil;->a:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 1
    .param p0    # Landroidx/recyclerview/widget/DiffUtil$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 106
    invoke-static {p0, v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p0

    return-object p0
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 26
    .param p0    # Landroidx/recyclerview/widget/DiffUtil$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v1, p0

    .line 124
    invoke-virtual {v1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    .line 125
    invoke-virtual {v1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result v2

    .line 127
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 131
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$e;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0, v6, v2}, Landroidx/recyclerview/widget/DiffUtil$e;-><init>(IIII)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 135
    div-int/lit8 v0, v0, 0x2

    .line 139
    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$b;

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    invoke-direct {v5, v0}, Landroidx/recyclerview/widget/DiffUtil$b;-><init>(I)V

    .line 140
    new-instance v7, Landroidx/recyclerview/widget/DiffUtil$b;

    invoke-direct {v7, v0}, Landroidx/recyclerview/widget/DiffUtil$b;-><init>(I)V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    iget-object v9, v5, Landroidx/recyclerview/widget/DiffUtil$b;->a:[I

    iget-object v10, v7, Landroidx/recyclerview/widget/DiffUtil$b;->a:[I

    if-nez v8, :cond_1d

    .line 145
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/DiffUtil$e;

    .line 191
    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$e;->b()I

    move-result v11

    if-lt v11, v2, :cond_16

    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$e;->a()I

    move-result v11

    if-ge v11, v2, :cond_0

    goto/16 :goto_15

    .line 194
    :cond_0
    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$e;->b()I

    move-result v11

    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$e;->a()I

    move-result v13

    add-int/2addr v11, v13

    add-int/2addr v11, v2

    div-int/lit8 v11, v11, 0x2

    .line 195
    iget v13, v8, Landroidx/recyclerview/widget/DiffUtil$e;->a:I

    .line 1051
    iget v14, v5, Landroidx/recyclerview/widget/DiffUtil$b;->b:I

    add-int v15, v2, v14

    aput v13, v9, v15

    .line 196
    iget v13, v8, Landroidx/recyclerview/widget/DiffUtil$e;->b:I

    .line 1051
    iget v15, v7, Landroidx/recyclerview/widget/DiffUtil$b;->b:I

    add-int v16, v2, v15

    aput v13, v10, v16

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_16

    .line 217
    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$e;->b()I

    move-result v16

    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$e;->a()I

    move-result v17

    sub-int v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    rem-int/lit8 v12, v16, 0x2

    if-ne v12, v2, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    .line 218
    :goto_2
    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$e;->b()I

    move-result v16

    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$e;->a()I

    move-result v18

    sub-int v16, v16, v18

    neg-int v2, v13

    move v6, v2

    :goto_3
    if-gt v6, v13, :cond_a

    if-eq v6, v2, :cond_4

    if-eq v6, v13, :cond_2

    move/from16 v19, v6

    add-int/lit8 v6, v19, 0x1

    .line 226
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/DiffUtil$b;->a(I)I

    move-result v6

    move-object/from16 v20, v9

    add-int/lit8 v9, v19, -0x1

    invoke-virtual {v5, v9}, Landroidx/recyclerview/widget/DiffUtil$b;->a(I)I

    move-result v9

    if-le v6, v9, :cond_3

    goto :goto_5

    :cond_2
    move/from16 v19, v6

    move-object/from16 v20, v9

    :cond_3
    add-int/lit8 v6, v19, -0x1

    .line 231
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/DiffUtil$b;->a(I)I

    move-result v6

    add-int/lit8 v9, v6, 0x1

    :goto_4
    move-object/from16 v21, v10

    goto :goto_6

    :cond_4
    move/from16 v19, v6

    move-object/from16 v20, v9

    :goto_5
    add-int/lit8 v6, v19, 0x1

    .line 228
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/DiffUtil$b;->a(I)I

    move-result v6

    move v9, v6

    goto :goto_4

    .line 234
    :goto_6
    iget v10, v8, Landroidx/recyclerview/widget/DiffUtil$e;->c:I

    move/from16 v22, v10

    iget v10, v8, Landroidx/recyclerview/widget/DiffUtil$e;->a:I

    sub-int v10, v9, v10

    add-int v10, v10, v22

    sub-int v10, v10, v19

    if-eqz v13, :cond_6

    if-eq v9, v6, :cond_5

    goto :goto_7

    :cond_5
    add-int/lit8 v22, v10, -0x1

    move/from16 v25, v22

    move/from16 v22, v9

    move/from16 v9, v25

    goto :goto_8

    :cond_6
    :goto_7
    move/from16 v22, v9

    move v9, v10

    :goto_8
    move/from16 v23, v11

    move v11, v10

    move/from16 v10, v22

    move/from16 v22, v23

    move/from16 v23, v12

    .line 237
    :goto_9
    iget v12, v8, Landroidx/recyclerview/widget/DiffUtil$e;->b:I

    if-ge v10, v12, :cond_7

    iget v12, v8, Landroidx/recyclerview/widget/DiffUtil$e;->d:I

    if-ge v11, v12, :cond_7

    .line 239
    invoke-virtual {v1, v10, v11}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v12

    if-eqz v12, :cond_7

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_7
    add-int v12, v19, v14

    .line 1051
    aput v10, v20, v12

    if-eqz v23, :cond_9

    sub-int v12, v16, v19

    move/from16 v24, v14

    add-int/lit8 v14, v2, 0x1

    if-lt v12, v14, :cond_8

    add-int/lit8 v14, v13, -0x1

    if-gt v12, v14, :cond_8

    .line 252
    invoke-virtual {v7, v12}, Landroidx/recyclerview/widget/DiffUtil$b;->a(I)I

    move-result v12

    if-gt v12, v10, :cond_8

    .line 254
    new-instance v12, Landroidx/recyclerview/widget/DiffUtil$f;

    invoke-direct {v12}, Landroidx/recyclerview/widget/DiffUtil$f;-><init>()V

    .line 255
    iput v6, v12, Landroidx/recyclerview/widget/DiffUtil$f;->a:I

    .line 256
    iput v9, v12, Landroidx/recyclerview/widget/DiffUtil$f;->b:I

    .line 257
    iput v10, v12, Landroidx/recyclerview/widget/DiffUtil$f;->c:I

    .line 258
    iput v11, v12, Landroidx/recyclerview/widget/DiffUtil$f;->d:I

    const/4 v6, 0x0

    .line 259
    iput-boolean v6, v12, Landroidx/recyclerview/widget/DiffUtil$f;->e:Z

    goto :goto_c

    :cond_8
    :goto_a
    const/4 v6, 0x0

    goto :goto_b

    :cond_9
    move/from16 v24, v14

    goto :goto_a

    :goto_b
    add-int/lit8 v9, v19, 0x2

    move v6, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v14, v24

    goto/16 :goto_3

    :cond_a
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v22, v11

    move/from16 v24, v14

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_c
    if-eqz v12, :cond_b

    move-object/from16 v16, v7

    goto/16 :goto_16

    .line 274
    :cond_b
    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$e;->b()I

    move-result v9

    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$e;->a()I

    move-result v10

    sub-int/2addr v9, v10

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_c

    const/4 v9, 0x1

    goto :goto_d

    :cond_c
    const/4 v9, 0x0

    .line 275
    :goto_d
    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$e;->b()I

    move-result v10

    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$e;->a()I

    move-result v11

    sub-int/2addr v10, v11

    move v11, v2

    :goto_e
    if-gt v11, v13, :cond_14

    if-eq v11, v2, :cond_e

    if-eq v11, v13, :cond_d

    add-int/lit8 v12, v11, 0x1

    .line 287
    invoke-virtual {v7, v12}, Landroidx/recyclerview/widget/DiffUtil$b;->a(I)I

    move-result v12

    add-int/lit8 v14, v11, -0x1

    invoke-virtual {v7, v14}, Landroidx/recyclerview/widget/DiffUtil$b;->a(I)I

    move-result v14

    if-ge v12, v14, :cond_d

    goto :goto_f

    :cond_d
    add-int/lit8 v12, v11, -0x1

    .line 292
    invoke-virtual {v7, v12}, Landroidx/recyclerview/widget/DiffUtil$b;->a(I)I

    move-result v12

    add-int/lit8 v14, v12, -0x1

    goto :goto_10

    :cond_e
    :goto_f
    add-int/lit8 v12, v11, 0x1

    .line 289
    invoke-virtual {v7, v12}, Landroidx/recyclerview/widget/DiffUtil$b;->a(I)I

    move-result v12

    move v14, v12

    .line 295
    :goto_10
    iget v6, v8, Landroidx/recyclerview/widget/DiffUtil$e;->d:I

    move/from16 v16, v6

    iget v6, v8, Landroidx/recyclerview/widget/DiffUtil$e;->b:I

    sub-int/2addr v6, v14

    sub-int/2addr v6, v11

    sub-int v6, v16, v6

    if-eqz v13, :cond_10

    if-eq v14, v12, :cond_f

    goto :goto_11

    :cond_f
    add-int/lit8 v16, v6, 0x1

    move/from16 v25, v16

    move/from16 v16, v6

    move/from16 v6, v25

    goto :goto_12

    :cond_10
    :goto_11
    move/from16 v16, v6

    :goto_12
    move/from16 v19, v16

    move-object/from16 v16, v7

    move v7, v14

    move/from16 v14, v19

    move/from16 v19, v9

    .line 298
    :goto_13
    iget v9, v8, Landroidx/recyclerview/widget/DiffUtil$e;->a:I

    if-le v7, v9, :cond_11

    iget v9, v8, Landroidx/recyclerview/widget/DiffUtil$e;->c:I

    if-le v14, v9, :cond_11

    add-int/lit8 v9, v7, -0x1

    move/from16 v23, v10

    add-int/lit8 v10, v14, -0x1

    .line 300
    invoke-virtual {v1, v9, v10}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v9

    if-eqz v9, :cond_12

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v14, v14, -0x1

    move/from16 v10, v23

    goto :goto_13

    :cond_11
    move/from16 v23, v10

    :cond_12
    add-int v9, v11, v15

    .line 1051
    aput v7, v21, v9

    if-eqz v19, :cond_13

    sub-int v10, v23, v11

    if-lt v10, v2, :cond_13

    if-gt v10, v13, :cond_13

    .line 313
    invoke-virtual {v5, v10}, Landroidx/recyclerview/widget/DiffUtil$b;->a(I)I

    move-result v9

    if-lt v9, v7, :cond_13

    .line 315
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$f;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DiffUtil$f;-><init>()V

    .line 317
    iput v7, v2, Landroidx/recyclerview/widget/DiffUtil$f;->a:I

    .line 318
    iput v14, v2, Landroidx/recyclerview/widget/DiffUtil$f;->b:I

    .line 319
    iput v12, v2, Landroidx/recyclerview/widget/DiffUtil$f;->c:I

    .line 320
    iput v6, v2, Landroidx/recyclerview/widget/DiffUtil$f;->d:I

    const/4 v6, 0x1

    .line 321
    iput-boolean v6, v2, Landroidx/recyclerview/widget/DiffUtil$f;->e:Z

    goto :goto_14

    :cond_13
    add-int/lit8 v11, v11, 0x2

    move-object/from16 v7, v16

    move/from16 v9, v19

    move/from16 v10, v23

    const/4 v6, 0x0

    goto/16 :goto_e

    :cond_14
    move-object/from16 v16, v7

    const/4 v2, 0x0

    :goto_14
    if-eqz v2, :cond_15

    move-object v12, v2

    goto :goto_16

    :cond_15
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, v16

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move/from16 v11, v22

    move/from16 v14, v24

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_16
    :goto_15
    move-object/from16 v16, v7

    const/4 v12, 0x0

    :goto_16
    if-eqz v12, :cond_1c

    .line 149
    invoke-virtual {v12}, Landroidx/recyclerview/widget/DiffUtil$f;->a()I

    move-result v2

    if-lez v2, :cond_1a

    .line 528
    iget v2, v12, Landroidx/recyclerview/widget/DiffUtil$f;->d:I

    iget v6, v12, Landroidx/recyclerview/widget/DiffUtil$f;->b:I

    sub-int/2addr v2, v6

    iget v7, v12, Landroidx/recyclerview/widget/DiffUtil$f;->c:I

    iget v9, v12, Landroidx/recyclerview/widget/DiffUtil$f;->a:I

    sub-int/2addr v7, v9

    if-eq v2, v7, :cond_19

    .line 546
    iget-boolean v10, v12, Landroidx/recyclerview/widget/DiffUtil$f;->e:Z

    if-eqz v10, :cond_17

    .line 548
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$c;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/DiffUtil$f;->a()I

    move-result v7

    invoke-direct {v2, v9, v6, v7}, Landroidx/recyclerview/widget/DiffUtil$c;-><init>(III)V

    goto :goto_17

    :cond_17
    if-le v2, v7, :cond_18

    .line 552
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$c;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v12}, Landroidx/recyclerview/widget/DiffUtil$f;->a()I

    move-result v7

    invoke-direct {v2, v9, v6, v7}, Landroidx/recyclerview/widget/DiffUtil$c;-><init>(III)V

    goto :goto_17

    .line 554
    :cond_18
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$c;

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v12}, Landroidx/recyclerview/widget/DiffUtil$f;->a()I

    move-result v7

    invoke-direct {v2, v9, v6, v7}, Landroidx/recyclerview/widget/DiffUtil$c;-><init>(III)V

    goto :goto_17

    .line 559
    :cond_19
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$c;

    invoke-direct {v2, v9, v6, v7}, Landroidx/recyclerview/widget/DiffUtil$c;-><init>(III)V

    .line 150
    :goto_17
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$e;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DiffUtil$e;-><init>()V

    const/16 v18, 0x1

    goto :goto_18

    .line 154
    :cond_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v18, 0x1

    add-int/lit8 v2, v2, -0x1

    .line 153
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$e;

    .line 155
    :goto_18
    iget v6, v8, Landroidx/recyclerview/widget/DiffUtil$e;->a:I

    iput v6, v2, Landroidx/recyclerview/widget/DiffUtil$e;->a:I

    .line 156
    iget v6, v8, Landroidx/recyclerview/widget/DiffUtil$e;->c:I

    iput v6, v2, Landroidx/recyclerview/widget/DiffUtil$e;->c:I

    .line 157
    iget v6, v12, Landroidx/recyclerview/widget/DiffUtil$f;->a:I

    iput v6, v2, Landroidx/recyclerview/widget/DiffUtil$e;->b:I

    .line 158
    iget v6, v12, Landroidx/recyclerview/widget/DiffUtil$f;->b:I

    iput v6, v2, Landroidx/recyclerview/widget/DiffUtil$e;->d:I

    .line 159
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget v2, v8, Landroidx/recyclerview/widget/DiffUtil$e;->b:I

    iput v2, v8, Landroidx/recyclerview/widget/DiffUtil$e;->b:I

    .line 165
    iget v2, v8, Landroidx/recyclerview/widget/DiffUtil$e;->d:I

    iput v2, v8, Landroidx/recyclerview/widget/DiffUtil$e;->d:I

    .line 166
    iget v2, v12, Landroidx/recyclerview/widget/DiffUtil$f;->c:I

    iput v2, v8, Landroidx/recyclerview/widget/DiffUtil$e;->a:I

    .line 167
    iget v2, v12, Landroidx/recyclerview/widget/DiffUtil$f;->d:I

    iput v2, v8, Landroidx/recyclerview/widget/DiffUtil$e;->c:I

    .line 168
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_1c
    const/16 v18, 0x1

    .line 170
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_19
    move-object/from16 v7, v16

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    .line 175
    sget-object v0, Landroidx/recyclerview/widget/DiffUtil;->a:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 177
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move/from16 v5, p1

    move-object v2, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    .line 178
    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/ArrayList;[I[IZ)V

    return-object v0
.end method
