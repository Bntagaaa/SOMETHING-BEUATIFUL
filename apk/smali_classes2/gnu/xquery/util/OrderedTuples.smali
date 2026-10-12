.class public Lgnu/xquery/util/OrderedTuples;
.super Lgnu/lists/FilterConsumer;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:[Ljava/lang/Object;

.field public c:[Ljava/lang/Object;

.field public d:[I

.field public e:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    const/16 v0, 0xa

    .line 66
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/xquery/util/OrderedTuples;->b:[Ljava/lang/Object;

    return-void
.end method

.method public static make$V(Lgnu/mapping/Procedure;[Ljava/lang/Object;)Lgnu/xquery/util/OrderedTuples;
    .locals 1

    .line 71
    new-instance v0, Lgnu/xquery/util/OrderedTuples;

    invoke-direct {v0}, Lgnu/xquery/util/OrderedTuples;-><init>()V

    .line 72
    iput-object p1, v0, Lgnu/xquery/util/OrderedTuples;->c:[Ljava/lang/Object;

    .line 73
    iput-object p0, v0, Lgnu/xquery/util/OrderedTuples;->e:Lgnu/mapping/Procedure;

    return-object v0
.end method


# virtual methods
.method public run$X(Lgnu/mapping/CallContext;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 208
    iget v1, v0, Lgnu/xquery/util/OrderedTuples;->a:I

    const/4 v2, -0x1

    if-nez v1, :cond_0

    goto/16 :goto_18

    .line 211
    :cond_0
    new-array v1, v1, [I

    iput-object v1, v0, Lgnu/xquery/util/OrderedTuples;->d:[I

    const/4 v1, 0x1

    const/4 v3, 0x1

    .line 215
    :goto_0
    iget v4, v0, Lgnu/xquery/util/OrderedTuples;->a:I

    if-ne v3, v4, :cond_20

    .line 217
    iget-object v4, v0, Lgnu/xquery/util/OrderedTuples;->d:[I

    sub-int/2addr v3, v1

    aput v2, v4, v3

    const/4 v3, 0x0

    const/4 v5, 0x1

    :goto_1
    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    :goto_2
    if-ltz v3, :cond_1d

    add-int/lit8 v9, v8, 0x1

    move v11, v3

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_3
    if-ge v8, v5, :cond_2

    add-int/lit8 v10, v10, 0x1

    .line 240
    iget-object v12, v0, Lgnu/xquery/util/OrderedTuples;->d:[I

    aget v11, v12, v11

    if-gez v11, :cond_1

    goto :goto_4

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    :goto_4
    move v8, v7

    move v7, v6

    move v6, v3

    move v3, v11

    move v11, v5

    :goto_5
    if-gtz v10, :cond_4

    if-lez v11, :cond_3

    if-ltz v3, :cond_3

    goto :goto_6

    :cond_3
    move v6, v7

    move v7, v8

    move v8, v9

    goto :goto_2

    :cond_4
    :goto_6
    if-nez v10, :cond_5

    .line 252
    iget-object v12, v0, Lgnu/xquery/util/OrderedTuples;->d:[I

    aget v12, v12, v3

    add-int/lit8 v11, v11, -0x1

    move/from16 v19, v3

    move v3, v12

    const/4 v1, 0x0

    const/16 v16, -0x1

    goto/16 :goto_16

    :cond_5
    if-eqz v11, :cond_6

    if-gez v3, :cond_7

    :cond_6
    move/from16 v19, v3

    const/4 v1, 0x0

    const/16 v16, -0x1

    goto/16 :goto_15

    :cond_7
    const/4 v12, 0x0

    .line 137
    :goto_7
    iget-object v13, v0, Lgnu/xquery/util/OrderedTuples;->c:[Ljava/lang/Object;

    array-length v14, v13

    if-ge v12, v14, :cond_1a

    .line 139
    aget-object v14, v13, v12

    check-cast v14, Lgnu/mapping/Procedure;

    add-int/lit8 v15, v12, 0x1

    .line 140
    aget-object v15, v13, v15

    check-cast v15, Ljava/lang/String;

    add-int/lit8 v16, v12, 0x2

    .line 141
    aget-object v13, v13, v16

    check-cast v13, Lgnu/xquery/util/NamedCollator;

    if-nez v13, :cond_8

    .line 143
    sget-object v13, Lgnu/xquery/util/NamedCollator;->codepointCollation:Lgnu/xquery/util/NamedCollator;

    :cond_8
    const/16 v16, -0x1

    .line 144
    iget-object v2, v0, Lgnu/xquery/util/OrderedTuples;->b:[Ljava/lang/Object;

    aget-object v2, v2, v6

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v14, v2}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 145
    iget-object v1, v0, Lgnu/xquery/util/OrderedTuples;->b:[Ljava/lang/Object;

    aget-object v1, v1, v3

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v14, v1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 146
    invoke-static {v2}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 147
    invoke-static {v1}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 148
    instance-of v14, v2, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v14, :cond_9

    .line 149
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    :cond_9
    instance-of v14, v1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v14, :cond_a

    .line 151
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    :cond_a
    invoke-static {v2}, Lgnu/xquery/util/SequenceUtils;->isEmptySequence(Ljava/lang/Object;)Z

    move-result v14

    .line 153
    invoke-static {v1}, Lgnu/xquery/util/SequenceUtils;->isEmptySequence(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v14, :cond_b

    if-eqz v18, :cond_b

    move/from16 v19, v3

    goto/16 :goto_12

    :cond_b
    if-nez v14, :cond_c

    if-eqz v18, :cond_d

    :cond_c
    move/from16 v19, v3

    const/4 v1, 0x1

    const/16 v3, 0x4c

    goto/16 :goto_f

    .line 164
    :cond_d
    instance-of v14, v2, Ljava/lang/Number;

    if-eqz v14, :cond_e

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/Number;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->isNaN(D)Z

    move-result v18

    if-eqz v18, :cond_e

    const/4 v4, 0x1

    :goto_8
    move/from16 v19, v3

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    goto :goto_8

    .line 166
    :goto_9
    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_f

    move-object/from16 v20, v1

    check-cast v20, Ljava/lang/Number;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    move-result v20

    if-eqz v20, :cond_f

    const/16 v20, 0x1

    goto :goto_a

    :cond_f
    const/16 v20, 0x0

    :goto_a
    if-eqz v4, :cond_10

    if-eqz v20, :cond_10

    goto :goto_12

    :cond_10
    if-nez v4, :cond_11

    if-eqz v20, :cond_12

    :cond_11
    const/4 v1, 0x1

    goto :goto_c

    :cond_12
    if-eqz v14, :cond_13

    if-eqz v3, :cond_13

    const/4 v3, 0x0

    .line 176
    invoke-static {v2, v1, v3}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;Ljava/lang/Object;Z)I

    move-result v1

    :goto_b
    move v3, v1

    goto :goto_11

    .line 178
    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v2, v1}, Lgnu/xquery/util/NamedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_b

    .line 172
    :goto_c
    invoke-virtual {v15, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_14

    const/4 v2, 0x1

    goto :goto_d

    :cond_14
    const/4 v2, 0x0

    :goto_d
    if-ne v4, v2, :cond_15

    const/16 v17, -0x1

    goto :goto_e

    :cond_15
    const/16 v17, 0x1

    :goto_e
    move/from16 v3, v17

    goto :goto_11

    .line 159
    :goto_f
    invoke-virtual {v15, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_16

    const/4 v3, 0x1

    goto :goto_10

    :cond_16
    const/4 v3, 0x0

    :goto_10
    if-ne v14, v3, :cond_17

    const/4 v1, -0x1

    goto :goto_b

    :cond_17
    const/4 v1, 0x1

    goto :goto_b

    :goto_11
    if-nez v3, :cond_18

    :goto_12
    add-int/lit8 v12, v12, 0x3

    move/from16 v3, v19

    const/4 v1, 0x1

    const/4 v2, -0x1

    goto/16 :goto_7

    :cond_18
    const/4 v1, 0x0

    .line 182
    invoke-virtual {v15, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x41

    if-ne v2, v4, :cond_19

    goto :goto_13

    :cond_19
    neg-int v3, v3

    goto :goto_13

    :cond_1a
    move/from16 v19, v3

    const/4 v1, 0x0

    const/16 v16, -0x1

    const/4 v3, 0x0

    :goto_13
    if-gtz v3, :cond_1b

    .line 259
    iget-object v2, v0, Lgnu/xquery/util/OrderedTuples;->d:[I

    aget v2, v2, v6

    :goto_14
    add-int/lit8 v10, v10, -0x1

    move/from16 v3, v19

    move/from16 v19, v6

    move v6, v2

    goto :goto_16

    .line 262
    :cond_1b
    iget-object v2, v0, Lgnu/xquery/util/OrderedTuples;->d:[I

    aget v2, v2, v19

    add-int/lit8 v11, v11, -0x1

    move v3, v2

    goto :goto_16

    .line 255
    :goto_15
    iget-object v2, v0, Lgnu/xquery/util/OrderedTuples;->d:[I

    aget v2, v2, v6

    goto :goto_14

    :goto_16
    if-ltz v8, :cond_1c

    .line 267
    iget-object v2, v0, Lgnu/xquery/util/OrderedTuples;->d:[I

    aput v19, v2, v8

    goto :goto_17

    :cond_1c
    move/from16 v7, v19

    :goto_17
    move/from16 v8, v19

    const/4 v1, 0x1

    const/4 v2, -0x1

    goto/16 :goto_5

    :cond_1d
    const/4 v1, 0x0

    const/16 v16, -0x1

    .line 276
    iget-object v2, v0, Lgnu/xquery/util/OrderedTuples;->d:[I

    aput v16, v2, v7

    const/4 v2, 0x1

    if-gt v8, v2, :cond_1f

    move v2, v6

    :goto_18
    if-ltz v2, :cond_1e

    .line 91
    iget-object v1, v0, Lgnu/xquery/util/OrderedTuples;->b:[Ljava/lang/Object;

    aget-object v1, v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 92
    iget-object v3, v0, Lgnu/xquery/util/OrderedTuples;->e:Lgnu/mapping/Procedure;

    move-object/from16 v4, p1

    invoke-virtual {v3, v1, v4}, Lgnu/mapping/Procedure;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 93
    invoke-virtual {v4}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 85
    iget-object v1, v0, Lgnu/xquery/util/OrderedTuples;->d:[I

    aget v2, v1, v2

    goto :goto_18

    :cond_1e
    return-void

    :cond_1f
    move-object/from16 v4, p1

    mul-int/lit8 v5, v5, 0x2

    move v3, v6

    const/4 v1, 0x1

    const/4 v2, -0x1

    goto/16 :goto_1

    :cond_20
    move-object/from16 v4, p1

    const/4 v2, 0x1

    const/16 v16, -0x1

    .line 221
    iget-object v1, v0, Lgnu/xquery/util/OrderedTuples;->d:[I

    add-int/lit8 v5, v3, -0x1

    aput v3, v1, v5

    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x1

    const/4 v2, -0x1

    goto/16 :goto_0
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 4

    .line 54
    iget v0, p0, Lgnu/xquery/util/OrderedTuples;->a:I

    iget-object v1, p0, Lgnu/xquery/util/OrderedTuples;->b:[Ljava/lang/Object;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    .line 56
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 57
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iput-object v2, p0, Lgnu/xquery/util/OrderedTuples;->b:[Ljava/lang/Object;

    .line 60
    :cond_0
    iget-object v0, p0, Lgnu/xquery/util/OrderedTuples;->b:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xquery/util/OrderedTuples;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/xquery/util/OrderedTuples;->a:I

    aput-object p1, v0, v1

    return-void
.end method
