.class public Lgnu/kawa/lispexpr/LispReader;
.super Lgnu/text/Lexer;
.source "SourceFile"


# static fields
.field static final SCM_COMPLEX:I = 0x1

.field public static final SCM_NUMBERS:I = 0x1

.field public static final TOKEN_ESCAPE_CHAR:C = '\uffff'


# instance fields
.field protected seenEscapes:Z

.field sharedStructureTable:Lgnu/kawa/util/GeneralHashTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgnu/kawa/util/GeneralHashTable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgnu/text/LineBufferedReader;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;)V

    return-void
.end method

.method public constructor <init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V

    return-void
.end method

.method public static getReadCase()C
    .locals 4

    const/16 v0, 0x50

    .line 73
    :try_start_0
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    const-string v2, "symbol-read-case"

    const-string v3, "P"

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Environment;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x75

    if-ne v1, v0, :cond_1

    const/16 v0, 0x55

    return v0

    :cond_1
    const/16 v0, 0x64

    if-eq v1, v0, :cond_4

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_4

    const/16 v0, 0x4c

    if-ne v1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x69

    if-ne v1, v0, :cond_3

    const/16 v0, 0x49

    return v0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    const/16 v0, 0x44

    :catch_0
    return v0
.end method

.method private isPotentialNumber([CII)Z
    .locals 6

    const/4 v0, 0x0

    move v1, p2

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v1, p3, :cond_7

    .line 439
    aget-char v4, p1, v1

    .line 440
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_0
    const/16 v5, 0x2d

    if-eq v4, v5, :cond_5

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    const/16 v5, 0x23

    if-ne v4, v5, :cond_2

    return v3

    .line 449
    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x2f

    if-eq v4, v3, :cond_4

    const/16 v3, 0x5f

    if-eq v4, v3, :cond_4

    const/16 v3, 0x5e

    if-ne v4, v3, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, 0x2e

    if-eq v4, v3, :cond_6

    return v0

    :cond_4
    :goto_1
    if-ne v1, p2, :cond_6

    return v0

    :cond_5
    :goto_2
    add-int/lit8 v3, v1, 0x1

    if-ne v3, p3, :cond_6

    return v0

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    if-lez v2, :cond_8

    return v3

    :cond_8
    return v0
.end method

.method public static parseNumber(Ljava/lang/CharSequence;I)Ljava/lang/Object;
    .locals 7

    .line 475
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_0

    .line 476
    move-object v0, p0

    check-cast v0, Lgnu/lists/FString;

    iget-object v0, v0, Lgnu/lists/FString;->data:[C

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 478
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    .line 479
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    move v5, p1

    .line 480
    invoke-static/range {v1 .. v6}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseNumber([CIICII)Ljava/lang/Object;
    .locals 32

    move/from16 v0, p1

    add-int v7, v0, p2

    .line 500
    const-string v8, "no digits"

    if-lt v0, v7, :cond_0

    return-object v8

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 502
    aget-char v2, p0, v0

    move v3, v1

    move v4, v2

    move/from16 v1, p3

    move/from16 v2, p4

    :goto_0
    const/16 v9, 0x64

    const/16 v10, 0x45

    const/16 v6, 0x23

    const/16 v11, 0x65

    const/16 v12, 0x49

    const/16 v13, 0x69

    const/16 v15, 0xa

    if-ne v4, v6, :cond_15

    if-lt v3, v7, :cond_1

    return-object v8

    :cond_1
    add-int/lit8 v4, v3, 0x1

    .line 507
    aget-char v3, p0, v3

    const/16 v14, 0x42

    const/4 v5, 0x2

    .line 508
    const-string v16, "duplicate radix specifier"

    if-eq v3, v14, :cond_12

    if-eq v3, v12, :cond_f

    const/16 v12, 0x4f

    if-eq v3, v12, :cond_d

    const/16 v12, 0x58

    if-eq v3, v12, :cond_b

    const/16 v12, 0x62

    if-eq v3, v12, :cond_12

    if-eq v3, v13, :cond_f

    const/16 v12, 0x6f

    if-eq v3, v12, :cond_d

    const/16 v12, 0x78

    if-eq v3, v12, :cond_b

    const/16 v12, 0x44

    if-eq v3, v12, :cond_9

    if-eq v3, v10, :cond_f

    if-eq v3, v9, :cond_9

    if-eq v3, v11, :cond_f

    const/4 v14, 0x0

    .line 545
    :goto_1
    invoke-static {v3, v15}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    if-gez v9, :cond_7

    const/16 v9, 0x52

    if-eq v3, v9, :cond_3

    const/16 v9, 0x72

    if-ne v3, v9, :cond_2

    goto :goto_2

    .line 562
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown modifier \'#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    return-object v16

    :cond_4
    if-lt v14, v5, :cond_6

    if-le v14, v6, :cond_5

    goto :goto_3

    :cond_5
    move v2, v14

    goto :goto_4

    .line 558
    :cond_6
    :goto_3
    const-string v0, "invalid radix specifier"

    return-object v0

    :cond_7
    mul-int/lit8 v14, v14, 0xa

    add-int/2addr v14, v9

    if-lt v4, v7, :cond_8

    .line 550
    const-string v0, "missing letter after \'#\'"

    return-object v0

    :cond_8
    add-int/lit8 v3, v4, 0x1

    .line 551
    aget-char v4, p0, v4

    move/from16 v31, v4

    move v4, v3

    move/from16 v3, v31

    goto :goto_1

    :cond_9
    if-eqz v2, :cond_a

    return-object v16

    :cond_a
    const/16 v2, 0xa

    goto :goto_4

    :cond_b
    if-eqz v2, :cond_c

    return-object v16

    :cond_c
    const/16 v2, 0x10

    goto :goto_4

    :cond_d
    if-eqz v2, :cond_e

    return-object v16

    :cond_e
    const/16 v2, 0x8

    goto :goto_4

    :cond_f
    if-eqz v1, :cond_11

    const/16 v5, 0x20

    if-ne v1, v5, :cond_10

    .line 535
    const-string v0, "non-prefix exactness specifier"

    return-object v0

    .line 537
    :cond_10
    const-string v0, "duplicate exactness specifier"

    return-object v0

    :cond_11
    move v1, v3

    goto :goto_4

    :cond_12
    if-eqz v2, :cond_13

    return-object v16

    :cond_13
    const/4 v2, 0x2

    :goto_4
    if-lt v4, v7, :cond_14

    return-object v8

    :cond_14
    add-int/lit8 v3, v4, 0x1

    .line 566
    aget-char v4, p0, v4

    goto/16 :goto_0

    :cond_15
    const/16 v5, 0x20

    if-nez v1, :cond_16

    const/16 v14, 0x20

    goto :goto_5

    :cond_16
    move v14, v1

    :goto_5
    const/16 v1, 0x2e

    const/16 v16, -0x1

    if-nez v2, :cond_19

    move/from16 v2, p2

    :cond_17
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_18

    :goto_6
    const/16 v2, 0xa

    goto :goto_7

    :cond_18
    add-int v5, v0, v2

    .line 581
    aget-char v5, p0, v5

    if-ne v5, v1, :cond_17

    goto :goto_6

    :cond_19
    :goto_7
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_1a

    const/16 v17, 0x1

    goto :goto_8

    :cond_1a
    const/16 v17, 0x0

    :goto_8
    const/16 v9, 0x2b

    if-eq v4, v5, :cond_1c

    if-ne v4, v9, :cond_1b

    goto :goto_9

    :cond_1b
    const/16 v18, 0x0

    goto :goto_a

    :cond_1c
    :goto_9
    const/16 v18, 0x1

    :goto_a
    if-eqz v18, :cond_1e

    if-lt v3, v7, :cond_1d

    .line 595
    const-string v0, "no digits following sign"

    return-object v0

    :cond_1d
    add-int/lit8 v4, v3, 0x1

    .line 596
    aget-char v3, p0, v3

    move/from16 v31, v4

    move v4, v3

    move/from16 v3, v31

    :cond_1e
    const-wide/16 v10, 0x0

    if-eq v4, v13, :cond_20

    if-ne v4, v12, :cond_1f

    goto :goto_b

    :cond_1f
    const/16 p2, 0x1

    goto :goto_e

    :cond_20
    :goto_b
    if-ne v3, v7, :cond_1f

    const/16 p2, 0x1

    add-int/lit8 v6, v3, -0x2

    if-ne v0, v6, :cond_26

    and-int/lit8 v6, p5, 0x1

    if-eqz v6, :cond_26

    .line 603
    aget-char v0, p0, v0

    if-eq v0, v9, :cond_21

    if-eq v0, v5, :cond_21

    return-object v8

    :cond_21
    if-eq v14, v13, :cond_24

    if-ne v14, v12, :cond_22

    goto :goto_c

    :cond_22
    if-eqz v17, :cond_23

    .line 608
    invoke-static {}, Lgnu/math/Complex;->imMinusOne()Lgnu/math/CComplex;

    move-result-object v0

    return-object v0

    :cond_23
    invoke-static {}, Lgnu/math/Complex;->imOne()Lgnu/math/CComplex;

    move-result-object v0

    return-object v0

    .line 607
    :cond_24
    :goto_c
    new-instance v0, Lgnu/math/DComplex;

    if-eqz v17, :cond_25

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    goto :goto_d

    :cond_25
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :goto_d
    invoke-direct {v0, v10, v11, v1, v2}, Lgnu/math/DComplex;-><init>(DD)V

    return-object v0

    :cond_26
    :goto_e
    const-wide/16 v21, 0x0

    const/4 v0, 0x0

    move/from16 v26, v17

    move-wide/from16 v24, v21

    const/4 v6, -0x1

    const/16 v23, -0x1

    .line 623
    :goto_f
    invoke-static {v4, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    const/16 v11, 0x73

    const/16 v12, 0x6c

    if-ltz v10, :cond_28

    if-gez v6, :cond_27

    add-int/lit8 v6, v3, -0x1

    :cond_27
    move/from16 v29, v14

    int-to-long v13, v2

    mul-long v13, v13, v24

    move/from16 p1, v6

    int-to-long v5, v10

    add-long v24, v13, v5

    move/from16 v6, p1

    move v10, v3

    const/16 v11, 0x2d

    const/4 v13, 0x1

    const/16 v14, 0x2e

    move v3, v2

    goto/16 :goto_14

    :cond_28
    move/from16 v29, v14

    if-eq v4, v1, :cond_37

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_33

    const/16 v5, 0x4c

    if-eq v4, v5, :cond_29

    const/16 v5, 0x53

    if-eq v4, v5, :cond_29

    if-eq v4, v12, :cond_29

    if-eq v4, v11, :cond_29

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    :goto_10
    add-int/lit8 v3, v3, -0x1

    move-object v10, v0

    move v0, v3

    :goto_11
    move v1, v6

    move-wide/from16 v5, v24

    move/from16 v4, v26

    const/16 v11, 0x2d

    const/4 v13, 0x1

    const/16 v14, 0x2e

    move v3, v2

    move/from16 v2, v23

    goto/16 :goto_15

    :cond_29
    :pswitch_0
    if-eq v3, v7, :cond_2a

    if-eq v2, v15, :cond_2b

    :cond_2a
    const/16 v10, 0x2d

    goto :goto_10

    .line 664
    :cond_2b
    aget-char v4, p0, v3

    add-int/lit8 v5, v3, -0x1

    const/16 v10, 0x2d

    if-eq v4, v9, :cond_2d

    if-ne v4, v10, :cond_2c

    goto :goto_12

    .line 672
    :cond_2c
    invoke-static {v4, v15}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-gez v4, :cond_2e

    goto :goto_10

    :cond_2d
    :goto_12
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v7, :cond_32

    .line 668
    aget-char v4, p0, v3

    invoke-static {v4, v15}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-gez v4, :cond_2e

    goto :goto_13

    :cond_2e
    if-eq v2, v15, :cond_2f

    .line 680
    const-string v0, "exponent in non-decimal number"

    return-object v0

    :cond_2f
    if-gez v6, :cond_30

    .line 682
    const-string v0, "mantissa with no digits"

    return-object v0

    :cond_30
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v7, :cond_31

    .line 687
    aget-char v4, p0, v3

    invoke-static {v4, v15}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-gez v4, :cond_30

    :cond_31
    move-object v10, v0

    move v0, v3

    move/from16 v16, v5

    goto :goto_11

    .line 670
    :cond_32
    :goto_13
    const-string v0, "missing exponent digits"

    return-object v0

    :cond_33
    const/16 v10, 0x2d

    if-eqz v0, :cond_34

    .line 692
    const-string v0, "multiple fraction symbol \'/\'"

    return-object v0

    :cond_34
    if-gez v6, :cond_35

    .line 694
    const-string v0, "no digits before fraction symbol \'/\'"

    return-object v0

    :cond_35
    if-ltz v23, :cond_36

    .line 696
    const-string v0, "fraction symbol \'/\' following exponent or \'.\'"

    return-object v0

    :cond_36
    move v0, v3

    move v3, v2

    sub-int v2, v0, v6

    move v10, v0

    move v1, v6

    move-wide/from16 v5, v24

    move/from16 v4, v26

    const/16 v11, 0x2d

    const/4 v13, 0x1

    const/16 v14, 0x2e

    move-object/from16 v0, p0

    .line 697
    invoke-static/range {v0 .. v6}, Lgnu/kawa/lispexpr/LispReader;->valueOf([CIIIZJ)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    move-wide/from16 v24, v21

    const/4 v6, -0x1

    const/16 v26, 0x0

    goto :goto_14

    :cond_37
    move v10, v3

    move v1, v6

    move-wide/from16 v5, v24

    move/from16 v4, v26

    const/16 v11, 0x2d

    const/4 v13, 0x1

    const/16 v14, 0x2e

    move v3, v2

    if-ltz v23, :cond_38

    .line 652
    const-string v0, "duplicate \'.\' in number"

    return-object v0

    :cond_38
    if-eq v3, v15, :cond_39

    .line 654
    const-string v0, "\'.\' in non-decimal number"

    return-object v0

    :cond_39
    add-int/lit8 v23, v10, -0x1

    move/from16 v26, v4

    move-wide/from16 v24, v5

    move v6, v1

    :goto_14
    if-ne v10, v7, :cond_68

    move v1, v10

    move-object v10, v0

    move v0, v1

    move v1, v6

    move/from16 v2, v23

    move-wide/from16 v5, v24

    move/from16 v4, v26

    :goto_15
    if-gez v1, :cond_3f

    if-eqz v18, :cond_3c

    add-int/lit8 v15, v0, 0x4

    if-ge v15, v7, :cond_3c

    add-int/lit8 v18, v0, 0x3

    .line 719
    aget-char v12, p0, v18

    if-ne v12, v14, :cond_3c

    aget-char v12, p0, v15

    const/16 v14, 0x30

    if-ne v12, v14, :cond_3c

    .line 722
    aget-char v12, p0, v0

    const/16 v14, 0x6e

    const/16 v15, 0x69

    if-ne v12, v15, :cond_3a

    add-int/lit8 v15, v0, 0x1

    aget-char v15, p0, v15

    if-ne v15, v14, :cond_3a

    add-int/lit8 v15, v0, 0x2

    aget-char v15, p0, v15

    const/16 v30, 0x1

    const/16 v13, 0x66

    if-ne v15, v13, :cond_3b

    const/16 v14, 0x69

    goto :goto_16

    :cond_3a
    const/16 v30, 0x1

    :cond_3b
    if-ne v12, v14, :cond_3d

    add-int/lit8 v12, v0, 0x1

    .line 728
    aget-char v12, p0, v12

    const/16 v13, 0x61

    if-ne v12, v13, :cond_3d

    add-int/lit8 v12, v0, 0x2

    aget-char v12, p0, v12

    if-ne v12, v14, :cond_3d

    goto :goto_16

    :cond_3c
    const/16 v30, 0x1

    :cond_3d
    const/4 v14, 0x0

    :goto_16
    if-nez v14, :cond_3e

    return-object v8

    :cond_3e
    add-int/lit8 v0, v0, 0x5

    :goto_17
    move v8, v0

    move/from16 v12, v29

    const/16 v15, 0x69

    goto :goto_18

    :cond_3f
    const/16 v30, 0x1

    const/4 v14, 0x0

    goto :goto_17

    :goto_18
    if-eq v12, v15, :cond_40

    const/16 v0, 0x49

    if-eq v12, v0, :cond_40

    const/4 v13, 0x0

    goto :goto_19

    :cond_40
    const/4 v13, 0x1

    :goto_19
    if-eqz v14, :cond_43

    if-ne v14, v15, :cond_41

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_1a

    :cond_41
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 753
    :goto_1a
    new-instance v2, Lgnu/math/DFloNum;

    if-eqz v4, :cond_42

    neg-double v0, v0

    :cond_42
    invoke-direct {v2, v0, v1}, Lgnu/math/DFloNum;-><init>(D)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    :goto_1b
    const/16 v5, 0x65

    const/4 v13, 0x0

    goto/16 :goto_22

    :cond_43
    if-gez v16, :cond_44

    if-ltz v2, :cond_45

    :cond_44
    move-object/from16 v0, p0

    goto :goto_20

    :cond_45
    sub-int v2, v8, v1

    move-object/from16 v0, p0

    .line 776
    invoke-static/range {v0 .. v6}, Lgnu/kawa/lispexpr/LispReader;->valueOf([CIIIZJ)Lgnu/math/IntNum;

    move-result-object v1

    if-nez v10, :cond_46

    :goto_1c
    move-object v2, v1

    goto :goto_1e

    .line 784
    :cond_46
    invoke-virtual {v1}, Lgnu/math/IntNum;->isZero()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 786
    invoke-virtual {v10}, Lgnu/math/IntNum;->isZero()Z

    move-result v2

    if-eqz v13, :cond_49

    .line 788
    new-instance v1, Lgnu/math/DFloNum;

    if-eqz v2, :cond_47

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_1d

    :cond_47
    if-eqz v17, :cond_48

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_1d

    :cond_48
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_1d
    invoke-direct {v1, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    goto :goto_1c

    :cond_49
    if-eqz v2, :cond_4a

    .line 792
    const-string v0, "0/0 is undefined"

    return-object v0

    .line 794
    :cond_4a
    invoke-static {v10, v1}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v1

    goto :goto_1c

    .line 798
    :cond_4b
    invoke-static {v10, v1}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v1

    goto :goto_1c

    :goto_1e
    if-eqz v13, :cond_4d

    .line 801
    invoke-virtual {v2}, Lgnu/math/Complex;->isExact()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 803
    new-instance v1, Lgnu/math/DFloNum;

    if-eqz v17, :cond_4c

    invoke-virtual {v2}, Lgnu/math/RealNum;->isZero()Z

    move-result v3

    if-eqz v3, :cond_4c

    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_1f

    :cond_4c
    invoke-virtual {v2}, Lgnu/math/Complex;->doubleValue()D

    move-result-wide v2

    :goto_1f
    invoke-direct {v1, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v2, v1

    :cond_4d
    const/4 v3, 0x0

    goto :goto_1b

    :goto_20
    if-le v1, v2, :cond_4e

    if-ltz v2, :cond_4e

    move v1, v2

    :cond_4e
    if-eqz v10, :cond_4f

    .line 760
    const-string v0, "floating-point number after fraction symbol \'/\'"

    return-object v0

    .line 761
    :cond_4f
    new-instance v2, Ljava/lang/String;

    sub-int v3, v8, v1

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    if-ltz v16, :cond_51

    .line 764
    aget-char v3, v0, v16

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    const/16 v5, 0x65

    if-eq v3, v5, :cond_50

    sub-int v1, v16, v1

    .line 768
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :cond_50
    const/4 v13, 0x0

    goto :goto_21

    :cond_51
    const/4 v13, 0x0

    const/4 v3, 0x0

    .line 771
    :goto_21
    invoke-static {v2}, Lgnu/lists/Convert;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 772
    new-instance v5, Lgnu/math/DFloNum;

    if-eqz v4, :cond_52

    neg-double v1, v1

    :cond_52
    invoke-direct {v5, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v2, v5

    const/16 v5, 0x65

    :goto_22
    if-eq v12, v5, :cond_54

    const/16 v1, 0x45

    if-ne v12, v1, :cond_53

    goto :goto_24

    :cond_53
    :goto_23
    move-object v6, v2

    goto :goto_25

    .line 808
    :cond_54
    :goto_24
    invoke-virtual {v2}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v2

    goto :goto_23

    :goto_25
    if-ge v8, v7, :cond_63

    add-int/lit8 v1, v8, 0x1

    .line 812
    aget-char v2, v0, v8

    const/16 v3, 0x40

    if-ne v2, v3, :cond_58

    sub-int v2, v7, v1

    const/16 v4, 0xa

    move/from16 v5, p5

    move v3, v12

    .line 816
    invoke-static/range {v0 .. v5}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    move-result-object v0

    .line 818
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_55

    return-object v0

    .line 820
    :cond_55
    instance-of v1, v0, Lgnu/math/RealNum;

    if-nez v1, :cond_56

    .line 821
    const-string v0, "invalid complex polar constant"

    return-object v0

    .line 822
    :cond_56
    check-cast v0, Lgnu/math/RealNum;

    .line 825
    invoke-virtual {v6}, Lgnu/math/RealNum;->isZero()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-virtual {v0}, Lgnu/math/Complex;->isExact()Z

    move-result v1

    if-nez v1, :cond_57

    .line 826
    new-instance v0, Lgnu/math/DFloNum;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 828
    :cond_57
    invoke-static {v6, v0}, Lgnu/math/Complex;->polar(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/DComplex;

    move-result-object v0

    return-object v0

    :cond_58
    move v3, v12

    if-eq v2, v11, :cond_5f

    if-ne v2, v9, :cond_59

    goto :goto_29

    :cond_59
    const/4 v14, 0x0

    .line 850
    :goto_26
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_5a

    add-int/lit8 v1, v1, -0x1

    :goto_27
    const/4 v4, 0x1

    goto :goto_28

    :cond_5a
    add-int/lit8 v14, v14, 0x1

    if-ne v1, v7, :cond_5e

    goto :goto_27

    :goto_28
    if-ne v14, v4, :cond_5d

    add-int/lit8 v0, v1, -0x1

    .line 863
    aget-char v0, p0, v0

    const/16 v5, 0x69

    if-eq v0, v5, :cond_5b

    const/16 v12, 0x49

    if-ne v0, v12, :cond_5d

    :cond_5b
    if-ge v1, v7, :cond_5c

    .line 867
    const-string v0, "junk after imaginary suffix \'i\'"

    return-object v0

    .line 868
    :cond_5c
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    invoke-static {v0, v6}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v0

    return-object v0

    .line 871
    :cond_5d
    const-string v0, "excess junk after number"

    return-object v0

    :cond_5e
    const/4 v4, 0x1

    const/16 v5, 0x69

    const/16 v12, 0x49

    add-int/lit8 v0, v1, 0x1

    .line 858
    aget-char v2, p0, v1

    move v1, v0

    const/16 v30, 0x1

    goto :goto_26

    :cond_5f
    :goto_29
    sub-int v2, v7, v8

    const/16 v4, 0xa

    move-object/from16 v0, p0

    move/from16 v5, p5

    move v1, v8

    .line 834
    invoke-static/range {v0 .. v5}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    move-result-object v0

    .line 836
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_60

    return-object v0

    .line 838
    :cond_60
    instance-of v1, v0, Lgnu/math/Complex;

    if-nez v1, :cond_61

    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid numeric constant ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 840
    :cond_61
    check-cast v0, Lgnu/math/Complex;

    .line 841
    invoke-virtual {v0}, Lgnu/math/Quantity;->re()Lgnu/math/RealNum;

    move-result-object v1

    .line 842
    invoke-virtual {v1}, Lgnu/math/RealNum;->isZero()Z

    move-result v1

    if-nez v1, :cond_62

    .line 843
    const-string v0, "invalid numeric constant"

    return-object v0

    .line 844
    :cond_62
    invoke-virtual {v0}, Lgnu/math/Quantity;->im()Lgnu/math/RealNum;

    move-result-object v0

    invoke-static {v6, v0}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v0

    return-object v0

    .line 874
    :cond_63
    instance-of v0, v6, Lgnu/math/DFloNum;

    if-eqz v0, :cond_67

    if-lez v3, :cond_67

    const/16 v0, 0x65

    if-eq v3, v0, :cond_67

    .line 876
    invoke-virtual {v6}, Lgnu/math/Complex;->doubleValue()D

    move-result-wide v0

    const/16 v2, 0x64

    if-eq v3, v2, :cond_66

    const/16 v2, 0x66

    if-eq v3, v2, :cond_65

    const/16 v2, 0x6c

    if-eq v3, v2, :cond_64

    const/16 v2, 0x73

    if-eq v3, v2, :cond_65

    goto :goto_2a

    .line 884
    :cond_64
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    :cond_65
    double-to-float v0, v0

    .line 880
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 882
    :cond_66
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_67
    :goto_2a
    return-object v6

    :cond_68
    move/from16 v27, v3

    const/16 v1, 0x45

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x69

    const/16 v12, 0x49

    const/4 v13, 0x0

    const/16 v19, 0x64

    const/16 v20, 0x65

    add-int/lit8 v28, v10, 0x1

    .line 712
    aget-char v10, p0, v10

    move v4, v10

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v14, v29

    const/16 p2, 0x1

    const/16 v1, 0x2e

    const/16 v5, 0x2d

    const/16 v13, 0x69

    goto/16 :goto_f

    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static readCharacter(Lgnu/kawa/lispexpr/LispReader;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1150
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    if-gez v0, :cond_0

    .line 1152
    const-string v1, "unexpected EOF in character literal"

    invoke-virtual {p0, v1}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    .line 1153
    :cond_0
    iget v1, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 1154
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 1155
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    const/16 v2, 0x44

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 1156
    iget-object v0, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    .line 1157
    iget v2, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1159
    aget-char p0, v0, v1

    invoke-static {p0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p0

    return-object p0

    .line 1160
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 1161
    invoke-static {v4}, Lgnu/text/Char;->nameToChar(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 1163
    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p0

    return-object p0

    .line 1164
    :cond_2
    aget-char v5, v0, v1

    const/16 v6, 0x78

    if-eq v5, v6, :cond_3

    const/16 v6, 0x58

    if-ne v5, v6, :cond_6

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_0
    if-ne v7, v2, :cond_4

    .line 1171
    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p0

    return-object p0

    :cond_4
    add-int v8, v1, v7

    .line 1172
    aget-char v8, v0, v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    if-gez v8, :cond_5

    goto :goto_1

    :cond_5
    mul-int/lit8 v6, v6, 0x10

    add-int/2addr v6, v8

    const v8, 0x10ffff

    if-le v6, v8, :cond_a

    :cond_6
    :goto_1
    const/16 v6, 0x8

    .line 1180
    invoke-static {v5, v6}, Ljava/lang/Character;->digit(II)I

    move-result v5

    if-ltz v5, :cond_9

    :goto_2
    if-ne v3, v2, :cond_7

    .line 1187
    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p0

    return-object p0

    :cond_7
    add-int v7, v1, v3

    .line 1188
    aget-char v7, v0, v7

    invoke-static {v7, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    if-gez v7, :cond_8

    goto :goto_3

    :cond_8
    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1194
    :cond_9
    :goto_3
    const-string v0, "unknown character name: "

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    const/16 p0, 0x3f

    .line 1195
    invoke-static {p0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p0

    return-object p0

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public static readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1123
    iget v0, p1, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int v2, v0, p0

    .line 1124
    invoke-virtual {p1}, Lgnu/text/Lexer;->read()I

    move-result p0

    const/16 v0, 0x50

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v1

    invoke-virtual {p1, p0, v0, v1}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 1125
    iget p0, p1, Lgnu/text/Lexer;->tokenBufferLength:I

    if-ne v2, p0, :cond_0

    .line 1128
    const-string p0, "missing numeric token"

    invoke-virtual {p1, p0}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 1129
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 1131
    :cond_0
    iget-object v1, p1, Lgnu/text/Lexer;->tokenBuffer:[C

    sub-int v3, p0, v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, p2

    invoke-static/range {v1 .. v6}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    move-result-object p0

    .line 1133
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 1135
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 1136
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    .line 1140
    const-string p0, "invalid numeric constant"

    invoke-virtual {p1, p0}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 1141
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static readSimpleVector(Lgnu/kawa/lispexpr/LispReader;C)Lgnu/lists/SimpleVector;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1250
    :goto_0
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v2

    if-gez v2, :cond_0

    .line 1252
    const-string v3, "unexpected EOF reading uniform vector"

    invoke-virtual {p0, v3}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    :cond_0
    int-to-char v3, v2

    const/16 v4, 0xa

    .line 1253
    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-gez v3, :cond_13

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/16 v5, 0x8

    const/16 v6, 0x40

    const/16 v7, 0x20

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    if-eq v1, v7, :cond_1

    if-ne v1, v6, :cond_3

    :cond_1
    const/16 v8, 0x46

    if-ne p1, v8, :cond_2

    if-lt v1, v7, :cond_3

    :cond_2
    const/16 v9, 0x28

    if-eq v2, v9, :cond_4

    .line 1262
    :cond_3
    const-string p1, "invalid uniform vector syntax"

    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    return-object v3

    :cond_4
    const/4 v2, -0x1

    const/16 v10, 0x29

    .line 1265
    invoke-static {p0, v9, v2, v10}, Lgnu/kawa/lispexpr/ReaderParens;->readList(Lgnu/kawa/lispexpr/LispReader;III)Ljava/lang/Object;

    move-result-object v2

    .line 1266
    invoke-static {v2, v0}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v0

    if-gez v0, :cond_5

    .line 1269
    const-string p1, "invalid elements in uniform vector syntax"

    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    return-object v3

    .line 1272
    :cond_5
    check-cast v2, Lgnu/lists/Sequence;

    if-eq p1, v8, :cond_6

    const/16 p0, 0x53

    if-eq p1, p0, :cond_7

    const/16 p0, 0x55

    if-eq p1, p0, :cond_8

    goto :goto_1

    :cond_6
    if-eq v1, v7, :cond_12

    if-eq v1, v6, :cond_11

    :cond_7
    if-eq v1, v5, :cond_10

    if-eq v1, v4, :cond_f

    if-eq v1, v7, :cond_e

    if-eq v1, v6, :cond_d

    :cond_8
    if-eq v1, v5, :cond_c

    if-eq v1, v4, :cond_b

    if-eq v1, v7, :cond_a

    if-eq v1, v6, :cond_9

    :goto_1
    return-object v3

    .line 1295
    :cond_9
    new-instance p0, Lgnu/lists/U64Vector;

    invoke-direct {p0, v2}, Lgnu/lists/U64Vector;-><init>(Lgnu/lists/Sequence;)V

    return-object p0

    .line 1294
    :cond_a
    new-instance p0, Lgnu/lists/U32Vector;

    invoke-direct {p0, v2}, Lgnu/lists/U32Vector;-><init>(Lgnu/lists/Sequence;)V

    return-object p0

    .line 1293
    :cond_b
    new-instance p0, Lgnu/lists/U16Vector;

    invoke-direct {p0, v2}, Lgnu/lists/U16Vector;-><init>(Lgnu/lists/Sequence;)V

    return-object p0

    .line 1292
    :cond_c
    new-instance p0, Lgnu/lists/U8Vector;

    invoke-direct {p0, v2}, Lgnu/lists/U8Vector;-><init>(Lgnu/lists/Sequence;)V

    return-object p0

    .line 1287
    :cond_d
    new-instance p0, Lgnu/lists/S64Vector;

    invoke-direct {p0, v2}, Lgnu/lists/S64Vector;-><init>(Lgnu/lists/Sequence;)V

    return-object p0

    .line 1286
    :cond_e
    new-instance p0, Lgnu/lists/S32Vector;

    invoke-direct {p0, v2}, Lgnu/lists/S32Vector;-><init>(Lgnu/lists/Sequence;)V

    return-object p0

    .line 1285
    :cond_f
    new-instance p0, Lgnu/lists/S16Vector;

    invoke-direct {p0, v2}, Lgnu/lists/S16Vector;-><init>(Lgnu/lists/Sequence;)V

    return-object p0

    .line 1284
    :cond_10
    new-instance p0, Lgnu/lists/S8Vector;

    invoke-direct {p0, v2}, Lgnu/lists/S8Vector;-><init>(Lgnu/lists/Sequence;)V

    return-object p0

    .line 1279
    :cond_11
    new-instance p0, Lgnu/lists/F64Vector;

    invoke-direct {p0, v2}, Lgnu/lists/F64Vector;-><init>(Lgnu/lists/Sequence;)V

    return-object p0

    .line 1278
    :cond_12
    new-instance p0, Lgnu/lists/F32Vector;

    invoke-direct {p0, v2}, Lgnu/lists/F32Vector;-><init>(Lgnu/lists/Sequence;)V

    return-object p0

    :cond_13
    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v3

    goto/16 :goto_0
.end method

.method public static readSpecial(Lgnu/kawa/lispexpr/LispReader;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1201
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    if-gez v0, :cond_0

    .line 1203
    const-string v1, "unexpected EOF in #! special form"

    invoke-virtual {p0, v1}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    .line 1206
    invoke-virtual {p0}, Lgnu/text/Lexer;->getLineNumber()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lgnu/text/Lexer;->getColumnNumber()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1210
    invoke-static {}, Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;->getInstance()Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;

    move-result-object v0

    const/16 v1, 0x23

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;->read(Lgnu/text/Lexer;II)Ljava/lang/Object;

    .line 1211
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p0

    .line 1214
    :cond_1
    iget v1, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 1215
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 1216
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    const/16 v2, 0x44

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 1217
    iget v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int/2addr v0, v1

    .line 1218
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    .line 1219
    const-string v0, "optional"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1220
    sget-object p0, Lgnu/expr/Special;->optional:Lgnu/expr/Special;

    return-object p0

    .line 1221
    :cond_2
    const-string v0, "rest"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1222
    sget-object p0, Lgnu/expr/Special;->rest:Lgnu/expr/Special;

    return-object p0

    .line 1223
    :cond_3
    const-string v0, "key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1224
    sget-object p0, Lgnu/expr/Special;->key:Lgnu/expr/Special;

    return-object p0

    .line 1225
    :cond_4
    const-string v0, "eof"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1226
    sget-object p0, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    return-object p0

    .line 1227
    :cond_5
    const-string v0, "void"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1229
    sget-object p0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object p0

    .line 1230
    :cond_6
    const-string v0, "default"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1231
    sget-object p0, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    return-object p0

    .line 1232
    :cond_7
    const-string v0, "undefined"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1233
    sget-object p0, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    return-object p0

    .line 1234
    :cond_8
    const-string v0, "abstract"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1235
    sget-object p0, Lgnu/expr/Special;->abstractSpecial:Lgnu/expr/Special;

    return-object p0

    .line 1236
    :cond_9
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 1238
    :cond_a
    const-string v0, "unknown named constant #!"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    return-object v1
.end method

.method private static valueOf([CIIIZJ)Lgnu/math/IntNum;
    .locals 2

    add-int v0, p2, p3

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_1

    if-eqz p4, :cond_0

    neg-long p5, p5

    .line 899
    :cond_0
    invoke-static {p5, p6}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0

    .line 901
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lgnu/math/IntNum;->valueOf([CIIIZ)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public handlePostfix(Ljava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;II)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 409
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    if-ne p1, v0, :cond_0

    .line 410
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 413
    :cond_0
    :goto_0
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    if-ltz v0, :cond_3

    .line 414
    iget-char v1, p2, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 417
    :cond_1
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->read()I

    .line 418
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    .line 419
    invoke-virtual {p0, v0, p2}, Lgnu/kawa/lispexpr/LispReader;->validPostfixLookupStart(ILgnu/kawa/lispexpr/ReadTable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 421
    invoke-virtual {p0}, Lgnu/text/Lexer;->unread()V

    return-object p1

    .line 424
    :cond_2
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 425
    invoke-virtual {p2, v0}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v0

    .line 426
    const-string v1, "quasiquote"

    invoke-virtual {p2, v1}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    invoke-static {p1, v0}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    .line 428
    sget-object v0, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    iget-object v1, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    add-int/lit8 v3, p4, 0x1

    invoke-static {v0, p1, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    return-object p1
.end method

.method public makeNil()Ljava/lang/Object;
    .locals 1

    .line 1092
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    return-object v0
.end method

.method public makePair(Ljava/lang/Object;II)Lgnu/lists/Pair;
    .locals 1

    .line 1097
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {p0, p1, v0, p2, p3}, Lgnu/kawa/lispexpr/LispReader;->makePair(Ljava/lang/Object;Ljava/lang/Object;II)Lgnu/lists/Pair;

    move-result-object p1

    return-object p1
.end method

.method public makePair(Ljava/lang/Object;Ljava/lang/Object;II)Lgnu/lists/Pair;
    .locals 1

    .line 1102
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p3, :cond_0

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p4, p4, 0x1

    .line 1104
    invoke-static {p1, p2, v0, p3, p4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object p1

    return-object p1

    .line 1107
    :cond_0
    invoke-static {p1, p2}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    return-object p1
.end method

.method public readAndHandleToken(IILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p3

    .line 133
    invoke-static {}, Lgnu/kawa/lispexpr/LispReader;->getReadCase()C

    move-result v1

    move/from16 v2, p1

    invoke-virtual {v0, v2, v1, v7}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 134
    iget v8, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 135
    iget-boolean v1, v0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    if-nez v1, :cond_0

    .line 137
    iget-object v1, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    sub-int v3, v8, p2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    move/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 139
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    return-object v1

    :cond_0
    move/from16 v2, p2

    .line 151
    :cond_1
    invoke-static {}, Lgnu/kawa/lispexpr/LispReader;->getReadCase()C

    move-result v1

    const/16 v3, 0x49

    const v6, 0xffff

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v1, v3, :cond_8

    move v1, v2

    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v1, v8, :cond_5

    .line 158
    iget-object v12, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    aget-char v12, v12, v1

    if-ne v12, v6, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    :cond_2
    invoke-static {v12}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v13

    if-eqz v13, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 163
    :cond_3
    invoke-static {v12}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v12

    if-eqz v12, :cond_4

    add-int/lit8 v11, v11, 0x1

    :cond_4
    :goto_1
    add-int/2addr v1, v10

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    const/16 v1, 0x44

    goto :goto_2

    :cond_6
    if-nez v11, :cond_7

    const/16 v1, 0x55

    goto :goto_2

    :cond_7
    const/16 v1, 0x50

    :cond_8
    :goto_2
    add-int/lit8 v3, v2, 0x2

    const/16 v11, 0x3a

    const/16 v12, 0x7d

    if-lt v8, v3, :cond_9

    .line 174
    iget-object v3, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    add-int/lit8 v13, v8, -0x1

    aget-char v13, v3, v13

    if-ne v13, v12, :cond_9

    add-int/lit8 v13, v8, -0x2

    aget-char v3, v3, v13

    if-eq v3, v6, :cond_9

    invoke-virtual {v0}, Lgnu/text/Lexer;->peek()I

    move-result v3

    if-ne v3, v11, :cond_9

    const/4 v3, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    :goto_3
    move v9, v2

    move v14, v9

    const/4 v5, -0x1

    const/4 v10, -0x1

    const/4 v13, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    :goto_4
    if-ge v9, v8, :cond_15

    .line 185
    iget-object v4, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    aget-char v11, v4, v9

    if-ne v11, v6, :cond_a

    add-int/lit8 v9, v9, 0x1

    if-ge v9, v8, :cond_14

    add-int/lit8 v11, v14, 0x1

    .line 189
    aget-char v17, v4, v9

    aput-char v17, v4, v14

    move v14, v11

    goto :goto_7

    :cond_a
    if-eqz v3, :cond_e

    const/16 v4, 0x7b

    if-ne v11, v4, :cond_c

    if-gez v13, :cond_b

    move v13, v14

    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_c
    if-ne v11, v12, :cond_e

    add-int/lit8 v15, v15, -0x1

    if-gez v15, :cond_d

    goto :goto_5

    :cond_d
    if-nez v15, :cond_e

    if-gez v10, :cond_e

    move v10, v14

    :cond_e
    :goto_5
    if-lez v15, :cond_f

    const/16 v4, 0x44

    goto :goto_6

    :cond_f
    const/16 v4, 0x3a

    if-ne v11, v4, :cond_11

    if-ltz v5, :cond_10

    const/4 v5, -0x1

    goto :goto_6

    :cond_10
    move v5, v14

    goto :goto_6

    :cond_11
    const/16 v4, 0x55

    if-ne v1, v4, :cond_12

    .line 221
    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    goto :goto_6

    :cond_12
    const/16 v4, 0x44

    if-ne v1, v4, :cond_13

    .line 223
    invoke-static {v11}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v11

    .line 224
    :cond_13
    :goto_6
    iget-object v4, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    add-int/lit8 v17, v14, 0x1

    aput-char v11, v4, v14

    move/from16 v14, v17

    :cond_14
    :goto_7
    add-int/lit8 v9, v9, 0x1

    const/16 v11, 0x3a

    goto :goto_4

    :cond_15
    sub-int v1, v14, v2

    if-ltz v13, :cond_18

    if-le v10, v13, :cond_18

    if-lez v13, :cond_16

    .line 232
    new-instance v1, Ljava/lang/String;

    iget-object v3, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    sub-int v4, v13, v2

    invoke-direct {v1, v3, v2, v4}, Ljava/lang/String;-><init>([CII)V

    goto :goto_8

    :cond_16
    const/4 v1, 0x0

    :goto_8
    add-int/lit8 v13, v13, 0x1

    .line 234
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    sub-int/2addr v10, v13

    invoke-direct {v2, v3, v13, v10}, Ljava/lang/String;-><init>([CII)V

    .line 235
    invoke-virtual {v0}, Lgnu/text/Lexer;->read()I

    .line 236
    invoke-virtual {v0}, Lgnu/text/Lexer;->read()I

    move-result v3

    .line 237
    invoke-virtual {v7, v3}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v7}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v3

    .line 238
    instance-of v4, v3, Lgnu/mapping/SimpleSymbol;

    if-nez v4, :cond_17

    .line 239
    const-string v4, "expected identifier in symbol after \'{URI}:\'"

    invoke-virtual {v0, v4}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 241
    :cond_17
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lgnu/mapping/Symbol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    return-object v1

    .line 244
    :cond_18
    iget-boolean v3, v7, Lgnu/kawa/lispexpr/ReadTable;->initialColonIsKeyword:Z

    if-eqz v3, :cond_19

    if-ne v5, v2, :cond_19

    const/4 v3, 0x1

    if-le v1, v3, :cond_19

    add-int/lit8 v1, v2, 0x1

    .line 247
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    sub-int/2addr v14, v1

    invoke-direct {v2, v3, v1, v14}, Ljava/lang/String;-><init>([CII)V

    .line 248
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v1

    return-object v1

    .line 250
    :cond_19
    iget-boolean v3, v7, Lgnu/kawa/lispexpr/ReadTable;->finalColonIsKeyword:Z

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    sub-int/2addr v14, v3

    if-ne v5, v14, :cond_1b

    if-gt v1, v3, :cond_1a

    iget-boolean v4, v0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    if-eqz v4, :cond_1b

    .line 253
    :cond_1a
    new-instance v4, Ljava/lang/String;

    iget-object v5, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    sub-int/2addr v1, v3

    invoke-direct {v4, v5, v2, v1}, Ljava/lang/String;-><init>([CII)V

    .line 254
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v1

    return-object v1

    .line 256
    :cond_1b
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    invoke-direct {v3, v4, v2, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7, v3}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public readCommand()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1087
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readEscape()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 911
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    if-gez v0, :cond_0

    .line 914
    const-string v0, "unexpected EOF in character literal"

    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    .line 917
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->readEscape(I)I

    move-result v0

    return v0
.end method

.method public final readEscape(I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    int-to-char v0, p1

    const/16 v1, 0xd

    const/4 v2, -0x1

    const/16 v3, 0x9

    const/16 v4, 0xa

    if-eq v0, v3, :cond_e

    if-eq v0, v4, :cond_e

    const/16 v5, 0x61

    if-eq v0, v5, :cond_d

    const/16 v5, 0x62

    const/16 v6, 0x8

    if-eq v0, v5, :cond_c

    const/16 v5, 0x65

    if-eq v0, v5, :cond_b

    const/16 v5, 0x66

    if-eq v0, v5, :cond_a

    .line 923
    const-string v5, "Invalid escape character syntax"

    const/16 v7, 0x2d

    const/16 v8, 0x3f

    const/16 v9, 0x5c

    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    return p1

    :pswitch_0
    const/16 p1, 0xb

    return p1

    :pswitch_1
    const/4 p1, 0x4

    :goto_0
    add-int/2addr p1, v2

    if-ltz p1, :cond_2

    .line 1033
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    if-gez v0, :cond_0

    .line 1035
    const-string v3, "premature EOF in \\u escape"

    invoke-virtual {p0, v3}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    :cond_0
    int-to-char v0, v0

    const/16 v3, 0x10

    .line 1036
    invoke-static {v0, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    if-gez v0, :cond_1

    .line 1038
    const-string v3, "non-hex character following \\u"

    invoke-virtual {p0, v3}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    :cond_1
    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    return v1

    :pswitch_2
    return v3

    :pswitch_3
    add-int/lit8 p1, p1, -0x30

    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x3

    if-ge v1, v0, :cond_4

    .line 1017
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    int-to-char v2, v0

    .line 1018
    invoke-static {v2, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-ltz v2, :cond_3

    shl-int/lit8 p1, p1, 0x3

    add-int/2addr p1, v2

    goto :goto_1

    :cond_3
    if-ltz v0, :cond_4

    .line 1024
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->unread(I)V

    :cond_4
    return p1

    :sswitch_0
    return v1

    :sswitch_1
    return v4

    :sswitch_2
    return v9

    .line 1044
    :sswitch_3
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readHexEscape()I

    move-result p1

    return p1

    .line 980
    :sswitch_4
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result p1

    if-eq p1, v7, :cond_5

    .line 983
    invoke-virtual {p0, v5}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    return v8

    .line 986
    :cond_5
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result p1

    if-ne p1, v9, :cond_6

    .line 988
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readEscape()I

    move-result p1

    :cond_6
    or-int/lit16 p1, p1, 0x80

    return p1

    .line 991
    :sswitch_5
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result p1

    if-eq p1, v7, :cond_7

    .line 994
    invoke-virtual {p0, v5}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    return v8

    .line 999
    :cond_7
    :sswitch_6
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result p1

    if-ne p1, v9, :cond_8

    .line 1001
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readEscape()I

    move-result p1

    :cond_8
    if-ne p1, v8, :cond_9

    const/16 p1, 0x7f

    return p1

    :cond_9
    and-int/lit16 p1, p1, 0x9f

    return p1

    :sswitch_7
    const/16 p1, 0x22

    return p1

    :cond_a
    const/16 p1, 0xc

    return p1

    :cond_b
    const/16 p1, 0x1b

    return p1

    :cond_c
    return v6

    :cond_d
    const/4 p1, 0x7

    return p1

    .line 941
    :cond_e
    :goto_2
    :sswitch_8
    const-string v0, "unexpected EOF in literal"

    if-gez p1, :cond_f

    .line 943
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    return v2

    :cond_f
    const/16 v5, 0x20

    if-ne p1, v4, :cond_10

    goto :goto_3

    :cond_10
    if-ne p1, v1, :cond_12

    .line 950
    invoke-virtual {p0}, Lgnu/text/Lexer;->peek()I

    move-result p1

    if-ne p1, v4, :cond_11

    .line 951
    invoke-virtual {p0}, Lgnu/text/Lexer;->skip()V

    :cond_11
    const/16 p1, 0xa

    goto :goto_3

    :cond_12
    if-eq p1, v5, :cond_15

    if-eq p1, v3, :cond_15

    .line 957
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->unread(I)V

    :goto_3
    if-eq p1, v4, :cond_13

    return p1

    .line 967
    :cond_13
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result p1

    if-gez p1, :cond_14

    .line 970
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    return v2

    :cond_14
    if-eq p1, v5, :cond_13

    if-eq p1, v3, :cond_13

    .line 975
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->unread(I)V

    const/4 p1, -0x2

    return p1

    .line 960
    :cond_15
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result p1

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_8
        0x20 -> :sswitch_8
        0x22 -> :sswitch_7
        0x43 -> :sswitch_5
        0x4d -> :sswitch_4
        0x58 -> :sswitch_3
        0x5c -> :sswitch_2
        0x5e -> :sswitch_6
        0x6e -> :sswitch_1
        0x72 -> :sswitch_0
        0x78 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readHexEscape()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1057
    :goto_0
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v1

    int-to-char v2, v1

    const/16 v3, 0x10

    .line 1058
    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-ltz v2, :cond_0

    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1

    if-ltz v1, :cond_1

    .line 1067
    invoke-virtual {p0, v1}, Lgnu/text/Lexer;->unread(I)V

    :cond_1
    return v0
.end method

.method public final readNestedComment(CC)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v0

    .line 38
    iget-object v1, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v4

    const/16 v5, 0x7c

    if-ne v4, v5, :cond_1

    .line 44
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v4

    if-ne v4, p1, :cond_2

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    if-ne v4, p1, :cond_2

    .line 50
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v4

    if-ne v4, p2, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    :goto_0
    if-gez v4, :cond_3

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unexpected end-of-file in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " comment starting here"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/2addr v0, v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;II)V

    return-void

    :cond_3
    if-gtz v3, :cond_0

    return-void
.end method

.method public readObject()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    move-object v1, v0

    check-cast v1, Lgnu/mapping/InPort;

    iget-char v1, v1, Lgnu/text/LineBufferedReader;->readState:C

    .line 367
    iget v2, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 368
    check-cast v0, Lgnu/mapping/InPort;

    const/16 v3, 0x20

    iput-char v3, v0, Lgnu/text/LineBufferedReader;->readState:C

    .line 371
    :try_start_0
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    .line 374
    :goto_0
    iget-object v3, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v3

    .line 375
    iget-object v4, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v4

    .line 376
    iget-object v5, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v5}, Lgnu/text/LineBufferedReader;->read()I

    move-result v5

    if-gez v5, :cond_0

    .line 378
    sget-object v0, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :goto_1
    iput v2, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 388
    iget-object v2, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    check-cast v2, Lgnu/mapping/InPort;

    iput-char v1, v2, Lgnu/text/LineBufferedReader;->readState:C

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 379
    :cond_0
    :try_start_1
    invoke-virtual {p0, v5, v0}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v5

    .line 380
    sget-object v6, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v5, v6, :cond_1

    goto :goto_0

    .line 382
    :cond_1
    invoke-virtual {p0, v5, v0, v3, v4}, Lgnu/kawa/lispexpr/LispReader;->handlePostfix(Ljava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;II)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 387
    :goto_2
    iput v2, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 388
    iget-object v2, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    check-cast v2, Lgnu/mapping/InPort;

    iput-char v1, v2, Lgnu/text/LineBufferedReader;->readState:C

    throw v0
.end method

.method public final readObject(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1078
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->unread(I)V

    .line 1079
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readToken(ICLgnu/kawa/lispexpr/ReadTable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-gez p1, :cond_1

    if-eqz p2, :cond_0

    .line 276
    const-string v1, "unexpected EOF between escapes"

    invoke-virtual {p0, v1}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    return-void

    .line 280
    :cond_1
    :goto_1
    invoke-virtual {p3, p1}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v1

    .line 281
    invoke-virtual {v1}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result v2

    const v3, 0xffff

    if-nez v2, :cond_4

    if-eqz p2, :cond_2

    .line 286
    invoke-virtual {p0, v3}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 287
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    goto/16 :goto_2

    :cond_2
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 292
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    goto/16 :goto_2

    .line 295
    :cond_3
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->unread(I)V

    return-void

    .line 298
    :cond_4
    iget-char v4, p3, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    const/4 v5, 0x5

    if-ne p1, v4, :cond_6

    if-nez p2, :cond_6

    .line 300
    iget-object v4, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v4

    .line 301
    iget-char v6, p3, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    if-ne v4, v6, :cond_5

    .line 303
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->unread(I)V

    return-void

    .line 306
    :cond_5
    invoke-virtual {p0, v4, p3}, Lgnu/kawa/lispexpr/LispReader;->validPostfixLookupStart(ILgnu/kawa/lispexpr/ReadTable;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v2, 0x5

    :cond_6
    const/4 v4, 0x3

    const/4 v6, 0x1

    if-ne v2, v4, :cond_a

    .line 312
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result p1

    if-gez p1, :cond_7

    .line 314
    const-string v1, "unexpected EOF after single escape"

    invoke-virtual {p0, v1}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    .line 315
    :cond_7
    iget-boolean v1, p3, Lgnu/kawa/lispexpr/ReadTable;->hexEscapeAfterBackslash:Z

    if-eqz v1, :cond_9

    const/16 v1, 0x78

    if-eq p1, v1, :cond_8

    const/16 v1, 0x58

    if-ne p1, v1, :cond_9

    .line 317
    :cond_8
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readHexEscape()I

    move-result p1

    .line 318
    :cond_9
    invoke-virtual {p0, v3}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 319
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 320
    iput-boolean v6, p0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    goto :goto_2

    :cond_a
    const/4 v4, 0x4

    if-ne v2, v4, :cond_b

    xor-int/lit8 p1, p2, 0x1

    .line 326
    iput-boolean v6, p0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    move p2, p1

    goto :goto_2

    :cond_b
    if-eqz p2, :cond_c

    .line 332
    invoke-virtual {p0, v3}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 333
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    goto :goto_2

    :cond_c
    if-eq v2, v6, :cond_11

    const/4 v3, 0x2

    if-eq v2, v3, :cond_f

    if-eq v2, v4, :cond_e

    if-eq v2, v5, :cond_d

    const/4 v1, 0x6

    if-eq v2, v1, :cond_10

    goto :goto_2

    .line 352
    :cond_d
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->unread(I)V

    return-void

    .line 349
    :cond_e
    iput-boolean v6, p0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    const/4 p2, 0x1

    goto :goto_2

    :cond_f
    const/16 v2, 0x7b

    if-ne p1, v2, :cond_10

    .line 341
    sget-object v2, Lgnu/kawa/lispexpr/ReadTableEntry;->brace:Lgnu/kawa/lispexpr/ReadTableEntry;

    if-ne v1, v2, :cond_10

    add-int/lit8 v0, v0, 0x1

    .line 345
    :cond_10
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 271
    :goto_2
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result p1

    goto/16 :goto_0

    .line 356
    :cond_11
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->unread(I)V

    return-void
.end method

.method public readValues(ILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 94
    invoke-virtual {p2, p1}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 103
    iget v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    const/4 v1, 0x0

    .line 105
    iput-boolean v1, p0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    .line 106
    invoke-virtual {p2}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 127
    invoke-virtual {p0, p1, v0, p3}, Lgnu/kawa/lispexpr/LispReader;->readAndHandleToken(IILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p3, -0x1

    .line 120
    invoke-virtual {p2, p0, p1, p3}, Lgnu/kawa/lispexpr/ReadTableEntry;->read(Lgnu/text/Lexer;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 117
    :cond_1
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 111
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "invalid character #\\"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    iget-boolean p2, p0, Lgnu/text/Lexer;->interactive:Z

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->fatal(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 114
    :goto_0
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1
.end method

.method public setCdr(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1112
    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual {p1, p2}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    return-void
.end method

.method public validPostfixLookupStart(ILgnu/kawa/lispexpr/ReadTable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    const/16 v1, 0x3a

    if-eq p1, v1, :cond_4

    .line 395
    iget-char v1, p2, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x2c

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    return v2

    .line 399
    :cond_1
    invoke-virtual {p2, p1}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object p1

    invoke-virtual {p1}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-eq p1, p2, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v2

    :cond_4
    :goto_1
    return v0
.end method
