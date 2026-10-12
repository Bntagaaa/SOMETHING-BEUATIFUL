.class public Lkawa/lib/trace;
.super Lgnu/expr/ModuleBody;
.source "SourceFile"


# static fields
.field public static final $Pcdo$Mntrace:Lkawa/lang/Macro;

.field public static final $instance:Lkawa/lib/trace;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxRules;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lkawa/lang/SyntaxRules;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field public static final disassemble:Lgnu/expr/ModuleMethod;

.field public static final trace:Lkawa/lang/Macro;

.field public static final untrace:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 27

    const-string v0, "begin"

    .line 0
    invoke-static {v0}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/trace;->Lit7:Lgnu/mapping/SimpleSymbol;

    const-string v1, "disassemble"

    .line 0
    invoke-static {v1}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 0
    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/trace;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lkawa/lang/SyntaxRules;

    const-string v3, "untrace"

    .line 0
    invoke-static {v3}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 0
    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/trace;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    new-instance v7, Lkawa/lang/SyntaxRule;

    new-instance v8, Lkawa/lang/SyntaxPattern;

    new-array v9, v6, [Ljava/lang/Object;

    const-string v13, "\u000c\u0018\r\u0007\u0000\u0008\u0008"

    invoke-direct {v8, v13, v9, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v9, "%do-trace"

    .line 0
    invoke-static {v9}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 0
    move-object v14, v9

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    sput-object v14, Lkawa/lib/trace;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v10, 0x1301b

    const-string v11, "/u2/home/jis/ai2-kawa/kawa/lib/trace.scm"

    invoke-static {v9, v15, v11, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const/4 v10, 0x3

    move-object v12, v11

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v0, v11, v6

    aput-object v14, v11, v4

    const/16 v16, 0x0

    const/4 v6, 0x2

    aput-object v9, v11, v6

    move-object v9, v12

    const/4 v12, 0x1

    move-object/from16 v17, v9

    const-string v9, "\u0003"

    const/16 v18, 0x3

    const-string v10, "\u0011\u0018\u0004\u0008\u0005\u0011\u0018\u000c\t\u0003\u0018\u0014"

    move-object/from16 v6, v17

    const/16 v19, 0x2

    move-object/from16 v17, v0

    const/4 v0, 0x3

    invoke-direct/range {v7 .. v12}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v8, v4, [Lkawa/lang/SyntaxRule;

    aput-object v7, v8, v16

    invoke-direct {v2, v5, v8, v4}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v2, Lkawa/lib/trace;->Lit5:Lkawa/lang/SyntaxRules;

    new-instance v5, Lkawa/lang/SyntaxRules;

    const-string v7, "trace"

    .line 0
    invoke-static {v7}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 0
    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lkawa/lib/trace;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v7, v8, v16

    new-instance v20, Lkawa/lang/SyntaxRule;

    new-instance v9, Lkawa/lang/SyntaxPattern;

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    invoke-direct {v9, v13, v11, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v12, 0xe01b

    invoke-static {v11, v15, v6, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v11

    new-array v12, v0, [Ljava/lang/Object;

    aput-object v17, v12, v10

    aput-object v14, v12, v4

    aput-object v11, v12, v19

    const/16 v25, 0x1

    const-string v22, "\u0003"

    const-string v23, "\u0011\u0018\u0004\u0008\u0005\u0011\u0018\u000c\t\u0003\u0018\u0014"

    move-object/from16 v21, v9

    move-object/from16 v24, v12

    invoke-direct/range {v20 .. v25}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v9, v4, [Lkawa/lang/SyntaxRule;

    aput-object v20, v9, v10

    invoke-direct {v5, v8, v9, v4}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v5, Lkawa/lib/trace;->Lit3:Lkawa/lang/SyntaxRules;

    new-instance v8, Lkawa/lang/SyntaxRules;

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v14, v9, v10

    new-instance v20, Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxPattern;

    new-array v12, v10, [Ljava/lang/Object;

    const-string v10, "\u000c\u0018\u000c\u0007\u000c\u000f\u0008"

    const/4 v13, 0x2

    invoke-direct {v11, v10, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v10, "set!"

    .line 0
    invoke-static {v10}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 0
    check-cast v10, Lgnu/mapping/SimpleSymbol;

    const-string v12, "invoke-static"

    .line 0
    invoke-static {v12}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 0
    check-cast v12, Lgnu/mapping/SimpleSymbol;

    const-string v13, "<kawa.standard.TracedProcedure>"

    .line 0
    invoke-static {v13}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 0
    check-cast v13, Lgnu/mapping/SimpleSymbol;

    const-string v17, "quote"

    .line 0
    invoke-static/range {v17 .. v17}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    const/16 v18, 0x3

    .line 0
    move-object/from16 v0, v17

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    const-string v17, "doTrace"

    .line 0
    invoke-static/range {v17 .. v17}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    const/16 v26, 0x1

    .line 0
    move-object/from16 v4, v17

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v17, v10

    const v10, 0x8026

    invoke-static {v4, v15, v6, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    invoke-static {v0, v4, v6, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v17, v4, v16

    aput-object v12, v4, v26

    const/4 v6, 0x2

    aput-object v13, v4, v6

    aput-object v0, v4, v18

    const/16 v25, 0x0

    const-string v22, "\u0001\u0001"

    const-string v23, "\u0011\u0018\u0004\t\u0003\u0008\u0011\u0018\u000c\u0011\u0018\u0014\u0011\u0018\u001c\t\u0003\u0008\u000b"

    move-object/from16 v24, v4

    move-object/from16 v21, v11

    invoke-direct/range {v20 .. v25}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v0, 0x1

    new-array v4, v0, [Lkawa/lang/SyntaxRule;

    aput-object v20, v4, v16

    invoke-direct {v8, v9, v4, v6}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v8, Lkawa/lib/trace;->Lit1:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lib/trace;

    invoke-direct {v0}, Lkawa/lib/trace;-><init>()V

    sput-object v0, Lkawa/lib/trace;->$instance:Lkawa/lib/trace;

    invoke-static {v14, v8, v0}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v4

    sput-object v4, Lkawa/lib/trace;->$Pcdo$Mntrace:Lkawa/lang/Macro;

    invoke-static {v7, v5, v0}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v4

    sput-object v4, Lkawa/lib/trace;->trace:Lkawa/lang/Macro;

    invoke-static {v3, v2, v0}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v2

    sput-object v2, Lkawa/lib/trace;->untrace:Lkawa/lang/Macro;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/16 v3, 0x1001

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4, v1, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lkawa/lib/trace;->disassemble:Lgnu/expr/ModuleMethod;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static disassemble(Lgnu/mapping/Procedure;)Ljava/lang/Object;
    .locals 2

    .line 22
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v1

    :try_start_0
    invoke-static {p0, v0}, Lgnu/expr/PrimProcedure;->disassemble$X(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    throw p0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 21
    :try_start_0
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lkawa/lib/trace;->disassemble(Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "disassemble"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 21
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_0

    const p1, -0xbffff

    return p1

    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method
