.class public Lgnu/kawa/functions/CompileArith;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static $Mn:Lgnu/kawa/functions/CompileArith;

.field public static $Pl:Lgnu/kawa/functions/CompileArith;


# instance fields
.field op:I

.field proc:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lgnu/kawa/functions/CompileArith;

    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/CompileArith;-><init>(Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/functions/CompileArith;->$Pl:Lgnu/kawa/functions/CompileArith;

    .line 15
    new-instance v0, Lgnu/kawa/functions/CompileArith;

    sget-object v1, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/CompileArith;-><init>(Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/functions/CompileArith;->$Mn:Lgnu/kawa/functions/CompileArith;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    check-cast p1, Lgnu/mapping/Procedure;

    iput-object p1, p0, Lgnu/kawa/functions/CompileArith;->proc:Lgnu/mapping/Procedure;

    .line 20
    iput p2, p0, Lgnu/kawa/functions/CompileArith;->op:I

    return-void
.end method

.method public static adjustReturnKind(II)I
    .locals 4

    const/4 v0, 0x4

    if-lt p1, v0, :cond_3

    const/4 v1, 0x7

    if-gt p1, v1, :cond_3

    if-lez p0, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x5

    const/16 v3, 0xa

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-gt p0, v3, :cond_3

    return v0

    :cond_1
    if-gt p0, v3, :cond_3

    if-eq p0, v1, :cond_3

    const/16 p0, 0x8

    return p0

    :cond_2
    if-gt p0, v0, :cond_3

    const/4 p0, 0x6

    :cond_3
    :goto_0
    return p0
.end method

.method public static appropriateIntConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z
    .locals 1

    .line 40
    aget-object v0, p0, p1

    invoke-virtual {p2, v0}, Lgnu/expr/InlineCalls;->fixIntValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 43
    aput-object p2, p0, p1

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static appropriateLongConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z
    .locals 1

    .line 51
    aget-object v0, p0, p1

    invoke-virtual {p2, v0}, Lgnu/expr/InlineCalls;->fixLongValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 54
    aput-object p2, p0, p1

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static forBitwise(Ljava/lang/Object;)Lgnu/kawa/functions/CompileArith;
    .locals 2

    .line 35
    new-instance v0, Lgnu/kawa/functions/CompileArith;

    move-object v1, p0

    check-cast v1, Lgnu/kawa/functions/BitwiseOp;

    iget v1, v1, Lgnu/kawa/functions/ArithOp;->op:I

    invoke-direct {v0, p0, v1}, Lgnu/kawa/functions/CompileArith;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static forDiv(Ljava/lang/Object;)Lgnu/kawa/functions/CompileArith;
    .locals 2

    .line 30
    new-instance v0, Lgnu/kawa/functions/CompileArith;

    move-object v1, p0

    check-cast v1, Lgnu/kawa/functions/DivideOp;

    iget v1, v1, Lgnu/kawa/functions/ArithOp;->op:I

    invoke-direct {v0, p0, v1}, Lgnu/kawa/functions/CompileArith;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static forMul(Ljava/lang/Object;)Lgnu/kawa/functions/CompileArith;
    .locals 2

    .line 25
    new-instance v0, Lgnu/kawa/functions/CompileArith;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lgnu/kawa/functions/CompileArith;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static getReturnKind(III)I
    .locals 1

    const/16 v0, 0x9

    if-lt p2, v0, :cond_0

    const/16 v0, 0xc

    if-gt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-lez p0, :cond_2

    if-le p0, p1, :cond_1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    return p0
.end method

.method public static pairwise(Lgnu/mapping/Procedure;Lgnu/expr/Expression;[Lgnu/expr/Expression;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;
    .locals 7

    .line 588
    array-length v0, p2

    const/4 v1, 0x0

    .line 589
    aget-object v2, p2, v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v0, :cond_1

    .line 594
    aget-object v5, p2, v4

    const/4 v6, 0x2

    new-array v6, v6, [Lgnu/expr/Expression;

    aput-object v2, v6, v1

    aput-object v5, v6, v3

    .line 595
    new-instance v2, Lgnu/expr/ApplyExp;

    invoke-direct {v2, p1, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    const/4 v5, 0x0

    .line 596
    invoke-virtual {p3, v2, v5, p0}, Lgnu/expr/InlineCalls;->maybeInline(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v2, v5

    :cond_0
    add-int/2addr v4, v3

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static validateApplyAdd(Lgnu/kawa/functions/AddOp;Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;
    .locals 2

    .line 469
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p2

    .line 470
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget p0, p0, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    if-gez p0, :cond_5

    const/4 p0, 0x0

    .line 472
    aget-object v0, p2, p0

    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 473
    instance-of v1, v0, Lgnu/bytecode/PrimType;

    if-eqz v1, :cond_5

    .line 475
    invoke-virtual {v0}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x56

    if-eq v0, v1, :cond_4

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x44

    if-ne v0, p0, :cond_1

    .line 485
    sget-object p0, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    const/16 v0, 0x77

    goto :goto_1

    :cond_1
    const/16 p0, 0x46

    if-ne v0, p0, :cond_2

    .line 490
    sget-object p0, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    const/16 v0, 0x76

    goto :goto_1

    :cond_2
    const/16 p0, 0x4a

    if-ne v0, p0, :cond_3

    .line 495
    sget-object p0, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/bytecode/PrimType;

    const/16 v0, 0x75

    goto :goto_1

    .line 500
    :cond_3
    sget-object p0, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    const/16 v0, 0x74

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    move-object p0, v0

    const/4 v0, 0x0

    :goto_1
    if-eqz p0, :cond_5

    .line 504
    invoke-static {v0, p0}, Lgnu/expr/PrimProcedure;->makeBuiltinUnary(ILgnu/bytecode/Type;)Lgnu/expr/PrimProcedure;

    move-result-object p0

    .line 506
    new-instance p1, Lgnu/expr/ApplyExp;

    invoke-direct {p1, p0, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    :cond_5
    return-object p1
.end method

.method public static validateApplyArithOp(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 8

    .line 63
    move-object p2, p3

    check-cast p2, Lgnu/kawa/functions/ArithOp;

    .line 64
    iget p2, p2, Lgnu/kawa/functions/ArithOp;->op:I

    .line 65
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 67
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 68
    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 69
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object p0

    invoke-static {p3, p0, v0, p1}, Lgnu/kawa/functions/CompileArith;->pairwise(Lgnu/mapping/Procedure;Lgnu/expr/Expression;[Lgnu/expr/Expression;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0

    .line 71
    :cond_0
    invoke-virtual {p0, p3, p1}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v1

    if-eq v1, p0, :cond_1

    return-object v1

    .line 76
    :cond_1
    array-length v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    array-length v1, v0

    if-ne v1, v4, :cond_9

    .line 78
    :cond_2
    aget-object v1, v0, v3

    invoke-virtual {v1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-static {v1}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v1

    .line 79
    array-length v5, v0

    if-ne v5, v2, :cond_8

    const/16 v5, 0x9

    if-lt p2, v5, :cond_3

    const/16 v5, 0xc

    if-le p2, v5, :cond_8

    .line 83
    :cond_3
    aget-object v5, v0, v4

    invoke-virtual {v5}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    invoke-static {v5}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v5

    .line 84
    invoke-static {v1, v5, p2}, Lgnu/kawa/functions/CompileArith;->getReturnKind(III)I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    if-ne v1, v4, :cond_4

    .line 87
    invoke-static {v0, v4, p1}, Lgnu/kawa/functions/CompileArith;->appropriateIntConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_0
    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    if-ne v5, v4, :cond_5

    .line 89
    invoke-static {v0, v3, p1}, Lgnu/kawa/functions/CompileArith;->appropriateIntConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_0

    :cond_5
    if-ne v1, v2, :cond_6

    .line 91
    invoke-static {v0, v4, p1}, Lgnu/kawa/functions/CompileArith;->appropriateLongConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    const/4 v1, 0x2

    goto :goto_2

    :cond_6
    if-ne v5, v2, :cond_7

    .line 93
    invoke-static {v0, v3, p1}, Lgnu/kawa/functions/CompileArith;->appropriateLongConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    move v1, v6

    .line 101
    :cond_8
    :goto_2
    invoke-static {v1, p2}, Lgnu/kawa/functions/CompileArith;->adjustReturnKind(II)I

    move-result v3

    .line 102
    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->kindType(I)Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 107
    :cond_9
    invoke-virtual {p1}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v0

    iget-boolean v0, v0, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    if-eq p2, v4, :cond_d

    if-eq p2, v2, :cond_d

    const/16 v0, 0x10

    if-eq p2, v0, :cond_b

    packed-switch p2, :pswitch_data_0

    goto :goto_3

    .line 120
    :pswitch_0
    check-cast p3, Lgnu/kawa/functions/DivideOp;

    invoke-static {p3, p0, p1}, Lgnu/kawa/functions/CompileArith;->validateApplyDiv(Lgnu/kawa/functions/DivideOp;Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_b
    if-lez v3, :cond_c

    .line 123
    invoke-static {p0, v3, p1}, Lgnu/kawa/functions/CompileArith;->validateApplyNot(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object p0

    :cond_c
    :goto_3
    return-object p0

    .line 114
    :cond_d
    check-cast p3, Lgnu/kawa/functions/AddOp;

    invoke-static {p3, p0, p1}, Lgnu/kawa/functions/CompileArith;->validateApplyAdd(Lgnu/kawa/functions/AddOp;Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static validateApplyDiv(Lgnu/kawa/functions/DivideOp;Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;
    .locals 3

    const/4 p0, 0x0

    .line 516
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p2

    .line 517
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 519
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v0

    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    aget-object p2, p2, p0

    const/4 v2, 0x2

    new-array v2, v2, [Lgnu/expr/Expression;

    aput-object v0, v2, p0

    aput-object p2, v2, v1

    .line 520
    new-instance p0, Lgnu/expr/ApplyExp;

    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static validateApplyNot(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/Expression;
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 527
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 529
    invoke-virtual {p0, v1}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v2

    const/4 v4, 0x0

    if-eq p1, v3, :cond_3

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    .line 537
    const-string v4, "gnu.math.BitOps"

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 539
    const-string v4, "java.meth.BigInteger"

    :cond_2
    :goto_0
    if-eqz v4, :cond_4

    .line 543
    new-instance p1, Lgnu/expr/ApplyExp;

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p2

    const-string v0, "not"

    invoke-virtual {p2, v0, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p2

    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    return-object p1

    .line 532
    :cond_3
    :goto_1
    invoke-static {}, Lgnu/math/IntNum;->minusOne()Lgnu/math/IntNum;

    move-result-object p0

    invoke-static {p0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p0

    new-array p1, v0, [Lgnu/expr/Expression;

    aput-object v2, p1, v1

    aput-object p0, p1, v3

    .line 533
    new-instance p0, Lgnu/expr/ApplyExp;

    sget-object v0, Lgnu/kawa/functions/BitwiseOp;->xor:Lgnu/kawa/functions/BitwiseOp;

    invoke-direct {p0, v0, p1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {p2, p0, v4}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static validateApplyNumberCompare(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 0

    .line 552
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 553
    invoke-virtual {p0, p3, p1}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object p1

    if-eq p1, p0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method public static validateApplyNumberPredicate(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 2

    .line 605
    check-cast p3, Lgnu/kawa/functions/NumberPredicate;

    .line 606
    iget p2, p3, Lgnu/kawa/functions/NumberPredicate;->op:I

    .line 607
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p2

    const/4 p3, 0x0

    .line 608
    aget-object v0, p2, p3

    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p1, v0, v1}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    aput-object p1, p2, p3

    .line 609
    sget-object p1, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    return-object p0
.end method


# virtual methods
.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 132
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    .line 133
    array-length v7, v4

    if-nez v7, :cond_0

    .line 136
    iget-object v1, v0, Lgnu/kawa/functions/CompileArith;->proc:Lgnu/mapping/Procedure;

    check-cast v1, Lgnu/kawa/functions/ArithOp;

    invoke-virtual {v1}, Lgnu/kawa/functions/ArithOp;->defaultResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1, v6}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    return-void

    :cond_0
    if-eq v7, v3, :cond_26

    .line 139
    instance-of v8, v6, Lgnu/expr/IgnoreTarget;

    if-eqz v8, :cond_1

    goto/16 :goto_15

    .line 147
    :cond_1
    aget-object v8, v4, v2

    invoke-virtual {v8}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v8

    .line 148
    aget-object v9, v4, v3

    invoke-virtual {v9}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v9

    invoke-static {v9}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v9

    .line 149
    iget v10, v0, Lgnu/kawa/functions/CompileArith;->op:I

    invoke-static {v8, v9, v10}, Lgnu/kawa/functions/CompileArith;->getReturnKind(III)I

    move-result v10

    .line 150
    invoke-static {v10}, Lgnu/kawa/functions/Arithmetic;->kindType(I)Lgnu/bytecode/Type;

    move-result-object v11

    if-eqz v10, :cond_25

    if-eq v7, v1, :cond_2

    goto/16 :goto_14

    .line 156
    :cond_2
    invoke-virtual {v6}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v12

    .line 157
    invoke-static {v12}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v12

    const/16 v13, 0xa

    const/4 v15, 0x7

    const/16 v16, 0x0

    const/4 v2, 0x4

    const/16 v14, 0x8

    if-eq v12, v3, :cond_3

    if-ne v12, v1, :cond_5

    :cond_3
    if-lt v10, v3, :cond_5

    if-gt v10, v2, :cond_5

    if-ne v12, v3, :cond_4

    .line 163
    sget-object v10, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    :goto_0
    move-object v11, v10

    goto :goto_1

    :cond_4
    sget-object v10, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/bytecode/PrimType;

    goto :goto_0

    :goto_1
    move v10, v12

    goto :goto_2

    :cond_5
    if-eq v12, v14, :cond_6

    if-ne v12, v15, :cond_8

    :cond_6
    if-le v10, v1, :cond_8

    if-gt v10, v13, :cond_8

    if-ne v12, v15, :cond_7

    .line 171
    sget-object v10, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    goto :goto_0

    :cond_7
    sget-object v10, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    goto :goto_0

    :cond_8
    if-ne v10, v15, :cond_9

    .line 176
    sget-object v11, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    goto :goto_2

    :cond_9
    if-eq v10, v14, :cond_a

    const/16 v12, 0x9

    if-ne v10, v12, :cond_b

    .line 180
    :cond_a
    sget-object v11, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    const/16 v10, 0x8

    .line 185
    :cond_b
    :goto_2
    iget v12, v0, Lgnu/kawa/functions/CompileArith;->op:I

    const/16 v17, 0x1

    const/4 v1, 0x6

    if-lt v12, v2, :cond_14

    if-gt v12, v14, :cond_14

    .line 187
    iget-object v12, v0, Lgnu/kawa/functions/CompileArith;->proc:Lgnu/mapping/Procedure;

    check-cast v12, Lgnu/kawa/functions/DivideOp;

    .line 188
    iget v14, v12, Lgnu/kawa/functions/ArithOp;->op:I

    if-ne v14, v2, :cond_c

    if-le v10, v2, :cond_14

    if-ge v10, v1, :cond_14

    const/16 v3, 0x9

    if-gt v10, v3, :cond_c

    goto :goto_5

    :cond_c
    const/4 v3, 0x5

    if-ne v14, v3, :cond_d

    if-gt v10, v13, :cond_d

    if-ne v10, v15, :cond_e

    :cond_d
    if-ne v14, v2, :cond_f

    if-ne v10, v13, :cond_f

    :cond_e
    const/16 v10, 0x8

    goto :goto_5

    :cond_f
    if-eq v14, v15, :cond_11

    if-ne v14, v1, :cond_10

    if-gt v10, v2, :cond_10

    goto :goto_3

    :cond_10
    const/16 v3, 0x8

    const/4 v14, 0x3

    goto :goto_4

    .line 196
    :cond_11
    :goto_3
    invoke-virtual {v12}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v3

    const/4 v14, 0x3

    if-eq v3, v14, :cond_14

    if-eq v10, v2, :cond_14

    if-eq v10, v15, :cond_14

    const/16 v3, 0x8

    if-ne v10, v3, :cond_12

    goto :goto_5

    .line 205
    :cond_12
    :goto_4
    iget v1, v12, Lgnu/kawa/functions/ArithOp;->op:I

    if-ne v1, v3, :cond_13

    invoke-virtual {v12}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v1

    if-eq v1, v14, :cond_14

    if-ne v10, v2, :cond_13

    goto :goto_5

    .line 212
    :cond_13
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    .line 216
    :cond_14
    :goto_5
    iget v1, v0, Lgnu/kawa/functions/CompileArith;->op:I

    if-ne v1, v2, :cond_18

    if-gt v10, v13, :cond_18

    const/16 v3, 0x8

    if-eq v10, v3, :cond_18

    if-eq v10, v15, :cond_18

    const/4 v3, 0x6

    if-eq v10, v3, :cond_15

    if-le v10, v2, :cond_16

    :cond_15
    const/4 v7, 0x2

    goto :goto_7

    .line 233
    :cond_16
    sget-object v1, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 234
    sget-object v2, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

    const-string v3, "make"

    const/4 v7, 0x2

    invoke-virtual {v2, v3, v7}, Lgnu/kawa/lispexpr/LangObjType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    :goto_6
    move-object v11, v1

    goto :goto_9

    :goto_7
    if-ne v10, v3, :cond_17

    .line 225
    sget-object v1, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_8

    :cond_17
    sget-object v1, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 229
    :goto_8
    const-string v2, "divide"

    invoke-virtual {v1, v2, v7}, Lgnu/kawa/lispexpr/LangObjType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    goto :goto_6

    .line 236
    :goto_9
    invoke-static {v11}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v1

    .line 237
    aget-object v3, v4, v16

    invoke-virtual {v3, v5, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 238
    aget-object v3, v4, v17

    invoke-virtual {v3, v5, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 239
    invoke-virtual {v5}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto/16 :goto_13

    :cond_18
    const/16 v3, 0xd

    if-ne v10, v2, :cond_19

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1a

    const/4 v14, 0x3

    if-eq v1, v14, :cond_1a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    if-eq v1, v3, :cond_1a

    const/16 v2, 0xe

    if-eq v1, v2, :cond_1a

    const/16 v2, 0xf

    if-eq v1, v2, :cond_1a

    if-eq v1, v15, :cond_1a

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1a

    const/16 v12, 0x9

    if-lt v1, v12, :cond_19

    const/16 v2, 0xb

    if-gt v1, v2, :cond_19

    goto :goto_a

    :cond_19
    const/4 v2, 0x1

    goto :goto_b

    .line 247
    :cond_1a
    :goto_a
    aget-object v1, v4, v16

    const/4 v2, 0x1

    aget-object v2, v4, v2

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lgnu/kawa/functions/CompileArith;->compileIntNum(Lgnu/expr/Expression;Lgnu/expr/Expression;IILgnu/expr/Compilation;)Z

    goto/16 :goto_13

    :goto_b
    if-eq v10, v2, :cond_1d

    const/4 v2, 0x2

    if-eq v10, v2, :cond_1d

    const/16 v2, 0x8

    if-eq v10, v15, :cond_1b

    if-ne v10, v2, :cond_1c

    :cond_1b
    if-le v1, v2, :cond_1d

    if-lt v1, v3, :cond_1c

    goto :goto_c

    .line 285
    :cond_1c
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    .line 255
    :cond_1d
    :goto_c
    invoke-static {v11}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v1

    .line 257
    invoke-virtual {v5}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v7, :cond_24

    const/4 v8, 0x1

    if-ne v3, v8, :cond_1e

    .line 260
    iget v8, v0, Lgnu/kawa/functions/CompileArith;->op:I

    const/16 v12, 0x9

    if-lt v8, v12, :cond_1e

    const/16 v9, 0xc

    if-gt v8, v9, :cond_1e

    .line 261
    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-static {v1}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v1

    .line 262
    :cond_1e
    aget-object v8, v4, v3

    invoke-virtual {v8, v5, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    if-nez v3, :cond_1f

    const/16 v9, 0x8

    :goto_e
    const/16 v13, 0x9

    :goto_f
    const/16 v17, 0x1

    goto :goto_12

    :cond_1f
    const/4 v8, 0x1

    if-eq v10, v8, :cond_21

    const/4 v8, 0x2

    if-eq v10, v8, :cond_20

    if-eq v10, v15, :cond_20

    const/16 v9, 0x8

    if-eq v10, v9, :cond_22

    goto :goto_e

    :cond_20
    :goto_10
    const/16 v9, 0x8

    goto :goto_11

    :cond_21
    const/4 v8, 0x2

    goto :goto_10

    .line 271
    :cond_22
    :goto_11
    iget v12, v0, Lgnu/kawa/functions/CompileArith;->op:I

    const/16 v13, 0x9

    if-ne v12, v13, :cond_23

    .line 273
    new-array v12, v8, [Lgnu/bytecode/Type;

    aput-object v11, v12, v16

    sget-object v14, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    const/16 v17, 0x1

    aput-object v14, v12, v17

    .line 274
    const-string v14, "gnu.math.IntNum"

    invoke-static {v14}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v14

    const-string v8, "shift"

    invoke-virtual {v14, v8, v12}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v8

    .line 275
    invoke-virtual {v2, v8}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_f

    .line 278
    :cond_23
    invoke-virtual {v0}, Lgnu/kawa/functions/CompileArith;->primitiveOpcode()I

    move-result v8

    invoke-virtual {v11}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v12

    check-cast v12, Lgnu/bytecode/PrimType;

    invoke-virtual {v2, v8, v12}, Lgnu/bytecode/CodeAttr;->emitBinop(ILgnu/bytecode/Type;)V

    goto :goto_f

    :goto_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 288
    :cond_24
    :goto_13
    invoke-virtual {v6, v5, v11}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    return-void

    .line 153
    :cond_25
    :goto_14
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    .line 142
    :cond_26
    :goto_15
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void
.end method

.method public compileIntNum(Lgnu/expr/Expression;Lgnu/expr/Expression;IILgnu/expr/Compilation;)Z
    .locals 14

    move-object/from16 v1, p2

    .line 295
    iget v0, p0, Lgnu/kawa/functions/CompileArith;->op:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    instance-of v0, v1, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_3

    .line 297
    invoke-virtual {v1}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v0

    const-wide/32 v5, 0x7fffffff

    move/from16 v7, p4

    if-gt v7, v4, :cond_0

    .line 302
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    const-wide/32 v10, -0x80000000

    cmp-long v0, v8, v10

    if-lez v0, :cond_2

    cmp-long v0, v8, v5

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 305
    :cond_0
    instance-of v8, v0, Lgnu/math/IntNum;

    if-eqz v8, :cond_1

    .line 307
    check-cast v0, Lgnu/math/IntNum;

    .line 308
    invoke-virtual {v0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v8

    const-wide/32 v10, -0x7fffffff

    .line 309
    invoke-virtual {v0, v10, v11, v5, v6}, Lgnu/math/IntNum;->inRange(JJ)Z

    move-result v0

    goto :goto_0

    :cond_1
    const-wide/16 v8, 0x0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 317
    sget-object v0, Lgnu/kawa/functions/CompileArith;->$Pl:Lgnu/kawa/functions/CompileArith;

    neg-long v1, v8

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    const/4 v4, 0x1

    move-object v1, p1

    move/from16 v3, p3

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lgnu/kawa/functions/CompileArith;->compileIntNum(Lgnu/expr/Expression;Lgnu/expr/Expression;IILgnu/expr/Compilation;)Z

    move-result v0

    return v0

    :cond_3
    move/from16 v7, p4

    .line 322
    :cond_4
    iget v0, p0, Lgnu/kawa/functions/CompileArith;->op:I

    const/4 v5, 0x3

    if-eq v0, v3, :cond_7

    if-ne v0, v5, :cond_5

    goto :goto_2

    :cond_5
    const/16 v6, 0x9

    if-lt v0, v6, :cond_6

    const/16 v6, 0xc

    if-gt v0, v6, :cond_6

    .line 339
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 340
    sget-object v6, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    move-object v10, p1

    move-object/from16 v7, p5

    move-object v8, v0

    :goto_1
    const/4 v9, 0x0

    move-object v0, p0

    goto/16 :goto_9

    .line 345
    :cond_6
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    move-object v10, p1

    move-object/from16 v7, p5

    move-object v6, v0

    move-object v8, v6

    goto :goto_1

    .line 327
    :cond_7
    :goto_2
    invoke-static {p1}, Lgnu/expr/InlineCalls;->checkIntValue(Lgnu/expr/Expression;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    move/from16 v0, p3

    .line 329
    :goto_3
    invoke-static {v1}, Lgnu/expr/InlineCalls;->checkIntValue(Lgnu/expr/Expression;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_9

    const/4 v7, 0x1

    :cond_9
    if-ne v0, v3, :cond_a

    if-eq v7, v3, :cond_a

    const/4 v6, 0x1

    goto :goto_4

    :cond_a
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_c

    .line 332
    invoke-virtual {p1}, Lgnu/expr/Expression;->side_effects()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v1}, Lgnu/expr/Expression;->side_effects()Z

    move-result v8

    if-nez v8, :cond_c

    :cond_b
    move-object v2, p1

    move-object/from16 v5, p5

    move v4, v0

    move v3, v7

    move-object v0, p0

    goto :goto_5

    :cond_c
    move v8, v0

    move v9, v7

    move-object v0, p0

    move-object/from16 v7, p5

    goto :goto_6

    .line 333
    :goto_5
    invoke-virtual/range {v0 .. v5}, Lgnu/kawa/functions/CompileArith;->compileIntNum(Lgnu/expr/Expression;Lgnu/expr/Expression;IILgnu/expr/Compilation;)Z

    move-result v1

    return v1

    :goto_6
    if-ne v8, v3, :cond_d

    .line 334
    sget-object v8, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    goto :goto_7

    :cond_d
    sget-object v8, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    :goto_7
    if-ne v9, v3, :cond_e

    .line 335
    sget-object v9, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    goto :goto_8

    :cond_e
    sget-object v9, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    :goto_8
    move-object v10, v9

    move v9, v6

    move-object v6, v10

    move-object v10, p1

    .line 348
    :goto_9
    invoke-virtual {p1, v7, v8}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 349
    invoke-virtual {v1, v7, v6}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 350
    invoke-virtual {v7}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    if-eqz v9, :cond_f

    .line 353
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 354
    sget-object v8, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 355
    sget-object v6, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    .line 359
    :cond_f
    sget-object v7, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 360
    iget v9, v0, Lgnu/kawa/functions/CompileArith;->op:I

    const/4 v10, 0x0

    packed-switch v9, :pswitch_data_0

    .line 400
    :pswitch_0
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    throw v1

    :pswitch_1
    move-object v5, v10

    goto :goto_b

    :pswitch_2
    move-object v5, v10

    goto :goto_a

    .line 366
    :pswitch_3
    const-string v5, "and"

    :goto_a
    if-nez v5, :cond_10

    .line 370
    const-string v5, "ior"

    :cond_10
    :goto_b
    if-nez v5, :cond_11

    .line 374
    const-string v5, "xor"

    .line 375
    :cond_11
    const-string v7, "gnu.math.BitOps"

    invoke-static {v7}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v7

    goto :goto_e

    :pswitch_4
    const/16 v5, 0xa

    if-ne v9, v5, :cond_12

    .line 394
    const-string v5, "shiftLeft"

    goto :goto_c

    :cond_12
    const-string v5, "shiftRight"

    .line 395
    :goto_c
    const-string v7, "gnu.kawa.functions.BitwiseOp"

    invoke-static {v7}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v7

    goto :goto_e

    .line 399
    :pswitch_5
    const-string v5, "shift"

    goto :goto_e

    :pswitch_6
    const/16 v11, 0x8

    if-ne v9, v11, :cond_13

    .line 382
    const-string v12, "remainder"

    goto :goto_d

    :cond_13
    const-string v12, "quotient"

    .line 383
    :goto_d
    iget-object v13, v0, Lgnu/kawa/functions/CompileArith;->proc:Lgnu/mapping/Procedure;

    check-cast v13, Lgnu/kawa/functions/DivideOp;

    if-ne v9, v11, :cond_14

    .line 384
    iget v9, v13, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    if-ne v9, v3, :cond_14

    .line 385
    const-string v5, "modulo"

    goto :goto_e

    .line 386
    :cond_14
    iget v9, v13, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    if-eq v9, v5, :cond_15

    .line 388
    invoke-virtual {v1, v9}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 389
    new-array v10, v5, [Lgnu/bytecode/Type;

    aput-object v8, v10, v2

    aput-object v6, v10, v3

    sget-object v5, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v5, v10, v4

    :cond_15
    move-object v5, v12

    goto :goto_e

    .line 364
    :pswitch_7
    const-string v5, "times"

    goto :goto_e

    .line 363
    :pswitch_8
    const-string v5, "sub"

    goto :goto_e

    .line 362
    :pswitch_9
    const-string v5, "add"

    :goto_e
    if-nez v10, :cond_16

    .line 403
    new-array v10, v4, [Lgnu/bytecode/Type;

    aput-object v8, v10, v2

    aput-object v6, v10, v3

    .line 404
    :cond_16
    invoke-virtual {v7, v5, v10}, Lgnu/bytecode/ObjectType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v2

    .line 405
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getReturnKind([Lgnu/expr/Expression;)I
    .locals 4

    .line 421
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x4

    return p1

    .line 424
    :cond_0
    sget-object v1, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 428
    aget-object v3, p1, v1

    .line 429
    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v3

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    if-le v3, v2, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1

    .line 440
    invoke-virtual {p0, p1}, Lgnu/kawa/functions/CompileArith;->getReturnKind([Lgnu/expr/Expression;)I

    move-result p1

    iget v0, p0, Lgnu/kawa/functions/CompileArith;->op:I

    invoke-static {p1, v0}, Lgnu/kawa/functions/CompileArith;->adjustReturnKind(II)I

    move-result p1

    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->kindType(I)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1
.end method

.method public primitiveOpcode()I
    .locals 1

    .line 561
    iget v0, p0, Lgnu/kawa/functions/CompileArith;->op:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    return v0

    :pswitch_1
    const/16 v0, 0x82

    return v0

    :pswitch_2
    const/16 v0, 0x80

    return v0

    :pswitch_3
    const/16 v0, 0x7e

    return v0

    :pswitch_4
    const/16 v0, 0x7c

    return v0

    :pswitch_5
    const/16 v0, 0x7a

    return v0

    :pswitch_6
    const/16 v0, 0x78

    return v0

    :pswitch_7
    const/16 v0, 0x70

    return v0

    :pswitch_8
    const/16 v0, 0x6c

    return v0

    :pswitch_9
    const/16 v0, 0x68

    return v0

    :pswitch_a
    const/16 v0, 0x64

    return v0

    :pswitch_b
    const/16 v0, 0x60

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
