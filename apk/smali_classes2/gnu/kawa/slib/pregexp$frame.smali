.class public Lgnu/kawa/slib/pregexp$frame;
.super Lgnu/expr/ModuleBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/pregexp;->pregexpMatchPositionsAux(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field backrefs:Ljava/lang/Object;

.field case$Mnsensitive$Qu:Ljava/lang/Object;

.field identity:Lgnu/mapping/Procedure;

.field n:Ljava/lang/Object;

.field s:Ljava/lang/Object;

.field sn:Ljava/lang/Object;

.field start:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/pregexp;->Lit112:Lgnu/mapping/SimpleSymbol;

    const/16 v2, 0x1001

    const/16 v3, 0xf

    invoke-direct {v0, p0, v3, v1, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:460"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    return-void
.end method

.method public static lambda2identity(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static lambda4()Ljava/lang/Boolean;
    .locals 1

    .line 463
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 460
    invoke-static {p2}, Lgnu/kawa/slib/pregexp$frame;->lambda2identity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    const-string v4, "substring"

    new-instance v5, Lgnu/kawa/slib/pregexp$frame0;

    invoke-direct {v5}, Lgnu/kawa/slib/pregexp$frame0;-><init>()V

    iput-object p0, v5, Lgnu/kawa/slib/pregexp$frame0;->staticLink:Lgnu/kawa/slib/pregexp$frame;

    iput-object p1, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    iput-object p2, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object/from16 v6, p3

    iput-object v6, v5, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    move-object/from16 v6, p4

    iput-object v6, v5, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    .line 465
    sget-object v6, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v7, Lgnu/kawa/slib/pregexp;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, p1, v7}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, v7, :cond_1

    .line 467
    sget-object p1, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame;->start:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lgnu/kawa/functions/NumberCompare;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v7, :cond_0

    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 469
    :cond_1
    iget-object p1, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    sget-object v8, Lgnu/kawa/slib/pregexp;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, p1, v8}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v7, :cond_3

    .line 471
    sget-object p1, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lgnu/kawa/functions/NumberCompare;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v7, :cond_2

    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 473
    :cond_3
    iget-object p1, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    sget-object v9, Lgnu/kawa/slib/pregexp;->Lit23:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, p1, v9}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v7, :cond_4

    .line 474
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 475
    :cond_4
    iget-object p1, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    sget-object v9, Lgnu/kawa/slib/pregexp;->Lit26:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, p1, v9}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v7, :cond_6

    .line 476
    iget-object p1, p0, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lgnu/kawa/slib/pregexp;->isPregexpAtWordBoundary(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v7, :cond_5

    .line 477
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 478
    :cond_5
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 479
    :cond_6
    iget-object p1, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    sget-object v9, Lgnu/kawa/slib/pregexp;->Lit28:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, p1, v9}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v7, :cond_8

    .line 480
    iget-object p1, p0, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lgnu/kawa/slib/pregexp;->isPregexpAtWordBoundary(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v7, :cond_7

    .line 481
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 482
    :cond_7
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 483
    :cond_8
    iget-object p1, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-static {p1}, Lkawa/lib/characters;->isChar(Ljava/lang/Object;)Z

    move-result p1

    const-string v9, "string-ref"

    if-eqz p1, :cond_9

    sget-object p1, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    iget-object v10, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v11, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {p1, v10, v11}, Lgnu/kawa/functions/NumberCompare;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v7, :cond_c

    goto :goto_0

    :cond_9
    if-eqz p1, :cond_c

    .line 485
    :goto_0
    iget-object p1, p0, Lgnu/kawa/slib/pregexp$frame;->case$Mnsensitive$Qu:Ljava/lang/Object;

    if-eq p1, v7, :cond_a

    sget-object p1, Lkawa/lib/characters;->char$Eq$Qu:Lgnu/expr/ModuleMethod;

    goto :goto_1

    :cond_a
    sget-object p1, Lkawa/lib/rnrs/unicode;->char$Mnci$Eq$Qu:Lgnu/expr/ModuleMethod;

    .line 486
    :goto_1
    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    :try_start_0
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v3, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    :try_start_1
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v1, v0}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v0

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    iget-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lgnu/expr/ModuleMethod;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v7, :cond_b

    .line 487
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v2, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/pregexp;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 486
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v9, v2, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_1
    move-exception v0

    move-object p1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v9, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 488
    :cond_c
    iget-object p1, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result p1

    add-int/2addr p1, v3

    and-int/2addr p1, v3

    if-eqz p1, :cond_d

    sget-object p1, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    iget-object v10, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v11, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {p1, v10, v11}, Lgnu/kawa/functions/NumberCompare;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v7, :cond_f

    goto :goto_2

    :cond_d
    if-eqz p1, :cond_f

    .line 489
    :goto_2
    iget-object p1, p0, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    :try_start_2
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3

    iget-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    :try_start_3
    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    invoke-static {p1, v0}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result p1

    invoke-static {p1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p1

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-static {p1, v0}, Lgnu/kawa/slib/pregexp;->isPregexpCheckIfInCharClass(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v7, :cond_e

    .line 491
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v2, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/pregexp;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_e
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception v0

    move-object p1, v0

    .line 490
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v9, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_3
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v9, v3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 492
    :cond_f
    iget-object p1, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    sget-object p1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v10, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, v10}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v10, Lgnu/kawa/slib/pregexp;->Lit83:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, p1, v10}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v7, :cond_10

    sget-object p1, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    iget-object v10, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v11, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {p1, v10, v11}, Lgnu/kawa/functions/NumberCompare;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v7, :cond_15

    goto :goto_3

    :cond_10
    if-eq p1, v7, :cond_15

    goto :goto_3

    :cond_11
    if-eqz p1, :cond_15

    .line 493
    :goto_3
    iget-object p1, p0, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    :try_start_4
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_5

    iget-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    :try_start_5
    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_4

    invoke-static {p1, v0}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result p1

    .line 494
    iget-object v0, p0, Lgnu/kawa/slib/pregexp$frame;->case$Mnsensitive$Qu:Ljava/lang/Object;

    if-eq v0, v7, :cond_12

    sget-object v0, Lkawa/lib/characters;->char$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

    goto :goto_4

    :cond_12
    sget-object v0, Lkawa/lib/rnrs/unicode;->char$Mnci$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

    .line 495
    :goto_4
    sget-object v1, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object v2, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgnu/expr/ModuleMethod;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v7, :cond_13

    .line 496
    invoke-static {p1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p1

    sget-object v1, Lkawa/lib/lists;->caddr:Lgnu/expr/GenericProc;

    iget-object v2, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lgnu/expr/ModuleMethod;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v7, :cond_14

    goto :goto_5

    :cond_13
    if-eq v1, v7, :cond_14

    .line 497
    :goto_5
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v2, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/pregexp;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_14
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_4
    move-exception v0

    move-object p1, v0

    .line 493
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v9, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_5
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v9, v3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 497
    :cond_15
    iget-object p1, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 499
    sget-object p1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v9, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, v9}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lgnu/kawa/slib/pregexp;->Lit83:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, v9, v10}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eq v10, v7, :cond_17

    .line 501
    sget-object p1, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lgnu/kawa/functions/NumberCompare;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v7, :cond_16

    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 502
    :cond_16
    new-array p1, v3, [Ljava/lang/Object;

    sget-object v1, Lgnu/kawa/slib/pregexp;->Lit101:Lgnu/mapping/SimpleSymbol;

    aput-object v1, p1, v0

    invoke-static {p1}, Lgnu/kawa/slib/pregexp;->pregexpError$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 499
    :cond_17
    sget-object v10, Lgnu/kawa/slib/pregexp;->Lit82:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, v9, v10}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eq v10, v7, :cond_19

    .line 504
    sget-object p1, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lgnu/kawa/functions/NumberCompare;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v7, :cond_18

    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 505
    :cond_18
    sget-object p1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, p1}, Lgnu/kawa/slib/pregexp$frame0;->lambda5loupOneOfChars(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 499
    :cond_19
    sget-object v10, Lgnu/kawa/slib/pregexp;->Lit17:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, v9, v10}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eq v10, v7, :cond_1b

    .line 511
    sget-object p1, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lgnu/kawa/functions/NumberCompare;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v7, :cond_1a

    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 512
    :cond_1a
    sget-object p1, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    iget-object v2, v5, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    invoke-virtual {p0, p1, v0, v1, v2}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 499
    :cond_1b
    sget-object v10, Lgnu/kawa/slib/pregexp;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, v9, v10}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eq v11, v7, :cond_1c

    .line 516
    sget-object p1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v5, p1, v0}, Lgnu/kawa/slib/pregexp$frame0;->lambda6loupSeq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 499
    :cond_1c
    sget-object v11, Lgnu/kawa/slib/pregexp;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, v9, v11}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eq v11, v7, :cond_1d

    .line 523
    sget-object p1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, p1}, Lgnu/kawa/slib/pregexp$frame0;->lambda7loupOr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 499
    :cond_1d
    sget-object v11, Lgnu/kawa/slib/pregexp;->Lit20:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, v9, v11}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eq v11, v7, :cond_20

    .line 531
    iget-object v6, p0, Lgnu/kawa/slib/pregexp$frame;->backrefs:Ljava/lang/Object;

    sget-object v8, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object v9, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v8}, Lgnu/kawa/slib/pregexp;->pregexpListRef(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v7, :cond_1e

    .line 533
    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v0, v6}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    .line 535
    :cond_1e
    iget-object v6, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    new-array v8, v1, [Ljava/lang/Object;

    sget-object v9, Lgnu/kawa/slib/pregexp;->Lit101:Lgnu/mapping/SimpleSymbol;

    aput-object v9, v8, v0

    sget-object v0, Lgnu/kawa/slib/pregexp;->Lit102:Lgnu/mapping/SimpleSymbol;

    aput-object v0, v8, v3

    aput-object v6, v8, v2

    invoke-static {v8}, Lgnu/kawa/slib/pregexp;->pregexpError$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v7

    :goto_6
    if-eq v0, v7, :cond_1f

    .line 539
    iget-object v6, p0, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    :try_start_6
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_8

    .line 540
    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_start_7
    move-object v3, p1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :try_start_8
    move-object v0, v2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_6

    invoke-static {v6, p1, v0}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    iget-object v9, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v10, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    iget-object v11, v5, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    iget-object v12, v5, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-static/range {v7 .. v12}, Lgnu/kawa/slib/pregexp;->pregexpStringMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_6
    move-exception v0

    move-object p1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v4, v1, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_7
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v4, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_8
    move-exception v0

    move-object p1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v4, v3, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 542
    :cond_1f
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 499
    :cond_20
    sget-object v1, Lgnu/kawa/slib/pregexp;->Lit100:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, v9, v1}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v7, :cond_21

    .line 544
    sget-object p1, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    iget-object v2, v5, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1, v2}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 499
    :cond_21
    sget-object v1, Lgnu/kawa/slib/pregexp;->Lit103:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, v9, v1}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v7, :cond_23

    .line 550
    sget-object p1, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    sget-object v2, Lgnu/kawa/slib/pregexp;->lambda$Fn6:Lgnu/expr/ModuleMethod;

    invoke-virtual {p0, p1, v0, v1, v2}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v7, :cond_22

    .line 552
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_22
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 499
    :cond_23
    sget-object v1, Lgnu/kawa/slib/pregexp;->Lit104:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, v9, v1}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v7, :cond_25

    .line 555
    sget-object p1, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    sget-object v2, Lgnu/kawa/slib/pregexp;->lambda$Fn7:Lgnu/expr/ModuleMethod;

    invoke-virtual {p0, p1, v0, v1, v2}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v7, :cond_24

    .line 557
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_24
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 499
    :cond_25
    sget-object v1, Lgnu/kawa/slib/pregexp;->Lit105:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, v9, v1}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v7, :cond_27

    .line 559
    iget-object p1, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    iget-object v0, p0, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    .line 560
    iget-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iput-object v1, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    iput-object v1, p0, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    .line 562
    sget-object v1, Lgnu/kawa/slib/pregexp;->Lit106:Lgnu/lists/PairWithPosition;

    sget-object v2, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    .line 563
    iget-object v3, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v10, v1, v2, v8}, Lgnu/lists/LList;->list4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/pregexp;->Lit73:Lgnu/math/IntNum;

    iget-object v3, p0, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    sget-object v4, Lgnu/kawa/slib/pregexp;->lambda$Fn8:Lgnu/expr/ModuleMethod;

    invoke-virtual {p0, v1, v2, v3, v4}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 565
    iput-object p1, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    iput-object v0, p0, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    if-eq v1, v7, :cond_26

    .line 566
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_26
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 499
    :cond_27
    sget-object v1, Lgnu/kawa/slib/pregexp;->Lit107:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, v9, v1}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v7, :cond_29

    .line 568
    iget-object p1, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    iget-object v0, p0, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    .line 569
    iget-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iput-object v1, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    iput-object v1, p0, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    .line 571
    sget-object v1, Lgnu/kawa/slib/pregexp;->Lit108:Lgnu/lists/PairWithPosition;

    sget-object v2, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    .line 572
    iget-object v3, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v10, v1, v2, v8}, Lgnu/lists/LList;->list4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/pregexp;->Lit73:Lgnu/math/IntNum;

    iget-object v3, p0, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    sget-object v4, Lgnu/kawa/slib/pregexp;->lambda$Fn9:Lgnu/expr/ModuleMethod;

    invoke-virtual {p0, v1, v2, v3, v4}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 574
    iput-object p1, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    iput-object v0, p0, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    if-eq v1, v7, :cond_28

    .line 575
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_28
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 499
    :cond_29
    sget-object v1, Lgnu/kawa/slib/pregexp;->Lit109:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, v9, v1}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v7, :cond_2b

    .line 577
    sget-object p1, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    sget-object v2, Lgnu/kawa/slib/pregexp;->lambda$Fn10:Lgnu/expr/ModuleMethod;

    invoke-virtual {p0, p1, v0, v1, v2}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v7, :cond_2a

    .line 580
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 581
    :cond_2a
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 499
    :cond_2b
    sget-object v1, Lgnu/kawa/slib/pregexp;->Lit60:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, v9, v1}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v7, :cond_2c

    if-eq v2, v7, :cond_2d

    goto :goto_7

    :cond_2c
    sget-object v2, Lgnu/kawa/slib/pregexp;->Lit61:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, v9, v2}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v7, :cond_2d

    .line 583
    :goto_7
    iget-object v0, p0, Lgnu/kawa/slib/pregexp$frame;->case$Mnsensitive$Qu:Ljava/lang/Object;

    iput-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->old:Ljava/lang/Object;

    .line 585
    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v6, p1, v1}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lgnu/kawa/slib/pregexp$frame;->case$Mnsensitive$Qu:Ljava/lang/Object;

    .line 586
    sget-object p1, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn11:Lgnu/expr/ModuleMethod;

    iget-object v2, v5, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn12:Lgnu/expr/ModuleMethod;

    invoke-virtual {p0, p1, v0, v1, v2}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 499
    :cond_2d
    sget-object v1, Lgnu/kawa/slib/pregexp;->Lit68:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, v9, v1}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v7, :cond_31

    .line 594
    sget-object v1, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object v2, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v7, :cond_2e

    const/4 v1, 0x1

    goto :goto_8

    :cond_2e
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v1, v3

    and-int/2addr v1, v3

    iput-boolean v1, v5, Lgnu/kawa/slib/pregexp$frame0;->maximal$Qu:Z

    .line 595
    sget-object v1, Lkawa/lib/lists;->caddr:Lgnu/expr/GenericProc;

    iget-object v2, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->p:Ljava/lang/Object;

    .line 596
    sget-object v1, Lkawa/lib/lists;->cadddr:Lgnu/expr/GenericProc;

    iget-object v2, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->q:Ljava/lang/Object;

    .line 597
    iget-boolean v2, v5, Lgnu/kawa/slib/pregexp$frame0;->maximal$Qu:Z

    if-eqz v2, :cond_30

    if-eq v1, v7, :cond_2f

    const/4 v0, 0x1

    :cond_2f
    add-int/2addr v0, v3

    and-int/lit8 v2, v0, 0x1

    :cond_30
    iput-boolean v2, v5, Lgnu/kawa/slib/pregexp$frame0;->could$Mnloop$Mninfinitely$Qu:Z

    .line 598
    sget-object v0, Lkawa/lib/lists;->cddddr:Lgnu/expr/GenericProc;

    iget-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v5, Lgnu/kawa/slib/pregexp$frame0;->re:Ljava/lang/Object;

    .line 599
    sget-object p1, Lgnu/kawa/slib/pregexp;->Lit73:Lgnu/math/IntNum;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v5, p1, v0}, Lgnu/kawa/slib/pregexp$frame0;->lambda8loupP(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 631
    :cond_31
    new-array p1, v3, [Ljava/lang/Object;

    sget-object v1, Lgnu/kawa/slib/pregexp;->Lit101:Lgnu/mapping/SimpleSymbol;

    aput-object v1, p1, v0

    invoke-static {p1}, Lgnu/kawa/slib/pregexp;->pregexpError$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_32
    sget-object p1, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 632
    iget-object v1, v5, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lgnu/kawa/functions/NumberCompare;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v7, :cond_33

    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v0, v5, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 633
    :cond_33
    new-array p1, v3, [Ljava/lang/Object;

    sget-object v1, Lgnu/kawa/slib/pregexp;->Lit101:Lgnu/mapping/SimpleSymbol;

    aput-object v1, p1, v0

    invoke-static {p1}, Lgnu/kawa/slib/pregexp;->pregexpError$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 460
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x1

    iput p1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method
