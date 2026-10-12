.class public Lgnu/kawa/functions/DivideOp;
.super Lgnu/kawa/functions/ArithOp;
.source "SourceFile"


# static fields
.field public static final $Sl:Lgnu/kawa/functions/DivideOp;

.field public static final div:Lgnu/kawa/functions/DivideOp;

.field public static final div0:Lgnu/kawa/functions/DivideOp;

.field public static final idiv:Lgnu/kawa/functions/DivideOp;

.field public static final mod:Lgnu/kawa/functions/DivideOp;

.field public static final mod0:Lgnu/kawa/functions/DivideOp;

.field public static final modulo:Lgnu/kawa/functions/DivideOp;

.field public static final quotient:Lgnu/kawa/functions/DivideOp;

.field public static final remainder:Lgnu/kawa/functions/DivideOp;


# instance fields
.field rounding_mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 19
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "/"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->$Sl:Lgnu/kawa/functions/DivideOp;

    .line 20
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "idiv"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->idiv:Lgnu/kawa/functions/DivideOp;

    .line 21
    new-instance v1, Lgnu/kawa/functions/DivideOp;

    const-string v3, "quotient"

    const/4 v4, 0x6

    invoke-direct {v1, v3, v4}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lgnu/kawa/functions/DivideOp;->quotient:Lgnu/kawa/functions/DivideOp;

    .line 22
    new-instance v3, Lgnu/kawa/functions/DivideOp;

    const-string v5, "remainder"

    const/16 v6, 0x8

    invoke-direct {v3, v5, v6}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lgnu/kawa/functions/DivideOp;->remainder:Lgnu/kawa/functions/DivideOp;

    .line 23
    new-instance v5, Lgnu/kawa/functions/DivideOp;

    const-string v7, "modulo"

    invoke-direct {v5, v7, v6}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lgnu/kawa/functions/DivideOp;->modulo:Lgnu/kawa/functions/DivideOp;

    .line 24
    new-instance v7, Lgnu/kawa/functions/DivideOp;

    const-string v8, "div"

    invoke-direct {v7, v8, v4}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lgnu/kawa/functions/DivideOp;->div:Lgnu/kawa/functions/DivideOp;

    .line 25
    new-instance v8, Lgnu/kawa/functions/DivideOp;

    const-string v9, "mod"

    invoke-direct {v8, v9, v6}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lgnu/kawa/functions/DivideOp;->mod:Lgnu/kawa/functions/DivideOp;

    .line 26
    new-instance v9, Lgnu/kawa/functions/DivideOp;

    const-string v10, "div0"

    invoke-direct {v9, v10, v4}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lgnu/kawa/functions/DivideOp;->div0:Lgnu/kawa/functions/DivideOp;

    .line 27
    new-instance v4, Lgnu/kawa/functions/DivideOp;

    const-string v10, "mod0"

    invoke-direct {v4, v10, v6}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lgnu/kawa/functions/DivideOp;->mod0:Lgnu/kawa/functions/DivideOp;

    const/4 v6, 0x3

    .line 29
    iput v6, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 30
    iput v6, v1, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 31
    iput v6, v3, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    const/4 v0, 0x1

    .line 32
    iput v0, v5, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    const/4 v0, 0x5

    .line 33
    iput v0, v7, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 34
    iput v0, v8, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 35
    iput v2, v9, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 36
    iput v2, v4, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lgnu/kawa/functions/ArithOp;-><init>(Ljava/lang/String;I)V

    .line 42
    sget-object p1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string p2, "gnu.kawa.functions.CompileArith:validateApplyArithOp"

    invoke-virtual {p0, p1, p2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    sget-object p1, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    const-string p2, "*gnu.kawa.functions.CompileArith:forDiv"

    invoke-virtual {p1, p0, p2}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 50
    array-length v2, v1

    if-nez v2, :cond_0

    .line 52
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v3, 0x0

    .line 53
    aget-object v4, v1, v3

    check-cast v4, Ljava/lang/Number;

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 55
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 56
    :cond_1
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, 0x1

    :goto_0
    if-ge v7, v2, :cond_2c

    .line 59
    aget-object v8, v1, v7

    .line 60
    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v9

    if-ge v6, v9, :cond_2

    move v6, v9

    :cond_2
    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x5

    const/4 v12, 0x4

    if-ge v6, v12, :cond_5

    .line 65
    iget v13, v0, Lgnu/kawa/functions/ArithOp;->op:I

    if-eq v13, v12, :cond_4

    if-eq v13, v11, :cond_4

    .line 72
    iget v13, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    if-ne v13, v10, :cond_3

    if-eq v6, v5, :cond_5

    if-ne v6, v9, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v13, 0x4

    goto :goto_3

    :cond_4
    const/4 v6, 0x4

    goto :goto_1

    :cond_5
    :goto_2
    move v13, v6

    .line 80
    :goto_3
    iget v14, v0, Lgnu/kawa/functions/ArithOp;->op:I

    const/4 v3, 0x7

    const/16 v10, 0x8

    if-ne v14, v11, :cond_7

    const/16 v15, 0xa

    if-gt v6, v15, :cond_7

    if-eq v6, v10, :cond_6

    if-eq v6, v3, :cond_6

    const/16 v6, 0x9

    :cond_6
    const/16 v13, 0xa

    goto :goto_4

    :cond_7
    if-eq v13, v10, :cond_8

    if-ne v13, v3, :cond_a

    :cond_8
    if-ne v14, v3, :cond_9

    const/16 v6, 0x9

    :cond_9
    const/16 v13, 0x9

    :cond_a
    :goto_4
    if-eq v13, v5, :cond_24

    if-eq v13, v9, :cond_22

    const/4 v15, 0x6

    if-eq v13, v12, :cond_1d

    if-eq v13, v11, :cond_13

    const/16 v14, 0x9

    if-eq v13, v14, :cond_11

    .line 213
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v4

    .line 214
    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v8

    .line 215
    iget v14, v0, Lgnu/kawa/functions/ArithOp;->op:I

    if-ne v14, v10, :cond_c

    invoke-virtual {v8}, Lgnu/math/Numeric;->isZero()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 216
    invoke-virtual {v8}, Lgnu/math/Numeric;->isExact()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v4

    :cond_b
    invoke-virtual {v4}, Lgnu/math/Numeric;->toInexact()Lgnu/math/Numeric;

    move-result-object v1

    return-object v1

    .line 217
    :cond_c
    invoke-virtual {v4, v8}, Lgnu/math/Numeric;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v14

    .line 218
    iget v12, v0, Lgnu/kawa/functions/ArithOp;->op:I

    if-ne v12, v10, :cond_d

    .line 219
    check-cast v14, Lgnu/math/RealNum;

    invoke-virtual {v0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v12

    invoke-virtual {v14, v12}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v12

    invoke-virtual {v12, v8}, Lgnu/math/RealNum;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v8

    invoke-virtual {v4, v8}, Lgnu/math/Numeric;->sub(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v14

    .line 220
    :cond_d
    iget v4, v0, Lgnu/kawa/functions/ArithOp;->op:I

    if-eq v4, v11, :cond_10

    if-eq v4, v15, :cond_f

    if-eq v4, v3, :cond_e

    :goto_5
    move v12, v13

    :goto_6
    const/16 v16, 0x0

    goto/16 :goto_13

    .line 223
    :cond_e
    check-cast v14, Lgnu/math/RealNum;

    iget v4, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    invoke-virtual {v14, v4}, Lgnu/math/RealNum;->toExactInt(I)Lgnu/math/IntNum;

    move-result-object v14

    const/4 v6, 0x4

    const/4 v12, 0x4

    goto :goto_6

    .line 227
    :cond_f
    check-cast v14, Lgnu/math/RealNum;

    iget v4, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    invoke-virtual {v14, v4}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v14

    goto :goto_5

    .line 230
    :cond_10
    invoke-virtual {v14}, Lgnu/math/Numeric;->toInexact()Lgnu/math/Numeric;

    move-result-object v14

    goto :goto_5

    .line 189
    :cond_11
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v11

    .line 190
    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v14

    .line 191
    iget v8, v0, Lgnu/kawa/functions/ArithOp;->op:I

    packed-switch v8, :pswitch_data_0

    :goto_7
    move v12, v6

    goto :goto_8

    :pswitch_0
    const-wide/16 v17, 0x0

    cmpl-double v4, v14, v17

    move-wide/from16 v19, v11

    if-eqz v4, :cond_12

    div-double v10, v19, v14

    .line 206
    invoke-virtual {v0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v4

    invoke-static {v10, v11, v4}, Lgnu/math/RealNum;->toInt(DI)D

    move-result-wide v10

    mul-double v10, v10, v14

    sub-double v11, v19, v10

    .line 207
    :cond_12
    invoke-static {v11, v12}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v4

    goto :goto_7

    :pswitch_1
    move-wide/from16 v19, v11

    div-double v11, v19, v14

    .line 201
    invoke-virtual {v0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v4

    invoke-static {v11, v12, v4}, Lgnu/math/RealNum;->toExactInt(DI)Lgnu/math/IntNum;

    move-result-object v4

    const/4 v12, 0x4

    const/4 v13, 0x4

    goto :goto_8

    :pswitch_2
    move-wide/from16 v19, v11

    div-double v11, v19, v14

    .line 198
    invoke-virtual {v0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v4

    invoke-static {v11, v12, v4}, Lgnu/math/RealNum;->toInt(DI)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_7

    :pswitch_3
    move-wide/from16 v19, v11

    div-double v11, v19, v14

    .line 195
    invoke-static {v11, v12}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v4

    goto :goto_7

    :goto_8
    move-object v14, v4

    move v6, v12

    goto :goto_5

    .line 147
    :cond_13
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v10

    .line 148
    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v8

    .line 151
    invoke-virtual {v0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v12

    if-eq v12, v5, :cond_18

    if-eq v12, v9, :cond_17

    const/4 v14, 0x3

    if-eq v12, v14, :cond_16

    if-eq v12, v11, :cond_14

    goto :goto_9

    .line 163
    :cond_14
    invoke-virtual {v8}, Ljava/math/BigDecimal;->signum()I

    move-result v11

    if-gez v11, :cond_15

    sget-object v11, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    goto :goto_9

    :cond_15
    sget-object v11, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 165
    :goto_9
    sget-object v11, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    goto :goto_a

    .line 160
    :cond_16
    sget-object v11, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    goto :goto_a

    .line 157
    :cond_17
    sget-object v11, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    goto :goto_a

    .line 154
    :cond_18
    sget-object v11, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 168
    :goto_a
    new-instance v12, Ljava/math/MathContext;

    const/4 v14, 0x0

    invoke-direct {v12, v14, v11}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 169
    iget v11, v0, Lgnu/kawa/functions/ArithOp;->op:I

    const/4 v14, 0x4

    if-eq v11, v14, :cond_1c

    if-eq v11, v15, :cond_1b

    if-eq v11, v3, :cond_1a

    const/16 v14, 0x8

    if-eq v11, v14, :cond_19

    :goto_b
    move v12, v13

    goto :goto_c

    .line 183
    :cond_19
    invoke-virtual {v10, v8, v12}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v4

    goto :goto_b

    .line 178
    :cond_1a
    invoke-virtual {v10, v8, v12}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    const/4 v6, 0x3

    const/4 v12, 0x3

    goto :goto_c

    .line 175
    :cond_1b
    invoke-virtual {v10, v8, v12}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v4

    goto :goto_b

    .line 172
    :cond_1c
    invoke-virtual {v10, v8}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    goto :goto_b

    :goto_c
    move-object v14, v4

    goto/16 :goto_6

    :cond_1d
    const/4 v10, 0x4

    const/16 v16, 0x0

    if-eq v14, v10, :cond_20

    if-eq v14, v15, :cond_1f

    if-eq v14, v3, :cond_1f

    const/16 v10, 0x8

    if-eq v14, v10, :cond_1e

    :goto_d
    move v12, v13

    goto :goto_f

    .line 132
    :cond_1e
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v4

    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v8

    invoke-virtual {v0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v10

    invoke-static {v4, v8, v10}, Lgnu/math/IntNum;->remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v4

    goto :goto_d

    .line 127
    :cond_1f
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v4

    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v8

    invoke-virtual {v0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v10

    invoke-static {v4, v8, v10}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v4

    goto :goto_d

    .line 137
    :cond_20
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v4

    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v6

    invoke-static {v4, v6}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v4

    .line 139
    instance-of v6, v4, Lgnu/math/IntNum;

    if-eqz v6, :cond_21

    const/4 v12, 0x4

    goto :goto_e

    :cond_21
    const/4 v12, 0x6

    :goto_e
    move v6, v12

    :goto_f
    move-object v14, v4

    goto :goto_13

    :cond_22
    const/16 v16, 0x0

    .line 109
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v10

    .line 110
    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v14

    .line 111
    iget v4, v0, Lgnu/kawa/functions/ArithOp;->op:I

    const/16 v12, 0x8

    if-eq v4, v12, :cond_23

    .line 117
    div-long/2addr v10, v14

    goto :goto_10

    .line 114
    :cond_23
    rem-long/2addr v10, v14

    .line 120
    :goto_10
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    :goto_11
    move v12, v13

    goto :goto_13

    :cond_24
    const/16 v12, 0x8

    const/16 v16, 0x0

    .line 95
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v4

    .line 96
    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v8

    .line 97
    iget v10, v0, Lgnu/kawa/functions/ArithOp;->op:I

    if-eq v10, v12, :cond_25

    .line 103
    div-int/2addr v4, v8

    goto :goto_12

    .line 100
    :cond_25
    rem-int/2addr v4, v8

    .line 106
    :goto_12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_11

    :goto_13
    if-eq v6, v12, :cond_2b

    if-eq v6, v5, :cond_2a

    if-eq v6, v9, :cond_29

    const/4 v4, 0x3

    if-eq v6, v4, :cond_28

    if-eq v6, v3, :cond_27

    const/16 v10, 0x8

    if-eq v6, v10, :cond_26

    goto :goto_15

    .line 250
    :cond_26
    invoke-virtual {v14}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_14
    move-object v4, v3

    goto :goto_16

    .line 247
    :cond_27
    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_14

    .line 253
    :cond_28
    invoke-static {v14}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_14

    .line 244
    :cond_29
    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_14

    .line 241
    :cond_2a
    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_14

    :cond_2b
    :goto_15
    move-object v4, v14

    :goto_16
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_2c
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRoundingMode()I
    .locals 1

    .line 16
    iget v0, p0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    return v0
.end method

.method public numArgs()I
    .locals 2

    .line 262
    iget v0, p0, Lgnu/kawa/functions/ArithOp;->op:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, -0xfff

    return v0

    :cond_0
    const/16 v0, 0x2002

    return v0
.end method
