.class public Lgnu/kawa/slib/DefineRecordType;
.super Lgnu/expr/ModuleBody;
.source "SourceFile"


# static fields
.field public static final $Prvt$$Pcdefine$Mnrecord$Mnfield:Lkawa/lang/Macro;

.field public static final $instance:Lgnu/kawa/slib/DefineRecordType;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxRules;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final define$Mnrecord$Mntype:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 39

    const-string v0, "tmp"

    .line 0
    invoke-static {v0}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit12:Lgnu/mapping/SimpleSymbol;

    const-string v1, "slot-set!"

    .line 0
    invoke-static {v1}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 0
    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/DefineRecordType;->Lit11:Lgnu/mapping/SimpleSymbol;

    const-string v2, "begin"

    .line 0
    invoke-static {v2}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 0
    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/DefineRecordType;->Lit10:Lgnu/mapping/SimpleSymbol;

    const-string v3, "value"

    .line 0
    invoke-static {v3}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 0
    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/DefineRecordType;->Lit9:Lgnu/mapping/SimpleSymbol;

    const-string v4, "quote"

    .line 0
    invoke-static {v4}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 0
    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/DefineRecordType;->Lit8:Lgnu/mapping/SimpleSymbol;

    const-string v5, "slot-ref"

    .line 0
    invoke-static {v5}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 0
    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/DefineRecordType;->Lit7:Lgnu/mapping/SimpleSymbol;

    const-string v6, "::"

    .line 0
    invoke-static {v6}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 0
    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lgnu/kawa/slib/DefineRecordType;->Lit6:Lgnu/mapping/SimpleSymbol;

    const-string v7, "obj"

    .line 0
    invoke-static {v7}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 0
    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lgnu/kawa/slib/DefineRecordType;->Lit5:Lgnu/mapping/SimpleSymbol;

    const-string v8, "define"

    .line 0
    invoke-static {v8}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 0
    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lgnu/kawa/slib/DefineRecordType;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lkawa/lang/SyntaxRules;

    const-string v10, "%define-record-field"

    .line 0
    invoke-static {v10}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 0
    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sput-object v10, Lgnu/kawa/slib/DefineRecordType;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    new-instance v14, Lkawa/lang/SyntaxRule;

    new-instance v15, Lkawa/lang/SyntaxPattern;

    const/16 v20, 0x1

    new-array v11, v13, [Ljava/lang/Object;

    const/16 v21, 0x0

    const/4 v13, 0x3

    move-object/from16 v22, v1

    const-string v1, "\u000c\u0018\u000c\u0007\u000c\u000f\u000c\u0017\u0008"

    invoke-direct {v15, v1, v11, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v1, 0x5

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v8, v11, v21

    aput-object v7, v11, v20

    const/16 v23, 0x5

    const/4 v1, 0x2

    aput-object v6, v11, v1

    aput-object v5, v11, v13

    const/16 v24, 0x3

    const/4 v13, 0x4

    aput-object v4, v11, v13

    const-string v16, "\u0001\u0001\u0001"

    const-string v17, "\u0011\u0018\u0004Y\t\u0013\u0008\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u0003\u0008\u0011\u0018\u001c\u0011\u0018\u000c\u0008\u0011\u0018$\u0008\u000b"

    const/16 v19, 0x0

    move-object/from16 v18, v11

    invoke-direct/range {v14 .. v19}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    new-instance v25, Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxPattern;

    const/4 v15, 0x0

    const/16 v16, 0x2

    new-array v1, v15, [Ljava/lang/Object;

    const-string v15, "\u000c\u0018\u000c\u0007\u000c\u000f\u000c\u0017\u000c\u001f\u0008"

    invoke-direct {v11, v15, v1, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/DefineRecordType.scm"

    const/16 v17, 0x4

    const v13, 0x33028

    invoke-static {v3, v1, v15, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    const-string v18, "<void>"

    .line 0
    invoke-static/range {v18 .. v18}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .line 0
    check-cast v18, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v2

    const v2, 0x3401d

    invoke-static {v3, v1, v15, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const/16 v3, 0xa

    move-object/from16 v26, v2

    new-array v2, v3, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v19, v2, v21

    aput-object v8, v2, v20

    aput-object v7, v2, v16

    aput-object v6, v2, v24

    aput-object v5, v2, v17

    aput-object v4, v2, v23

    const/4 v5, 0x6

    aput-object v13, v2, v5

    const/4 v13, 0x7

    aput-object v18, v2, v13

    const/16 v18, 0x8

    aput-object v22, v2, v18

    const/16 v31, 0x9

    aput-object v26, v2, v31

    const-string v27, "\u0001\u0001\u0001\u0001"

    const-string v28, "\u0011\u0018\u0004\u00e1\u0011\u0018\u000cY\t\u0013\u0008\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0003\u0008\u0011\u0018$\u0011\u0018\u0014\u0008\u0011\u0018,\u0008\u000b\u0008\u0011\u0018\u000ci\t\u001bA\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0003\u00184\u0011\u0018\u001c\u0011\u0018<\u0008\u0011\u0018D\u0011\u0018\u0014)\u0011\u0018,\u0008\u000b\u0018L"

    const/16 v30, 0x0

    move-object/from16 v29, v2

    move-object/from16 v26, v11

    invoke-direct/range {v25 .. v30}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v2, 0x2

    new-array v11, v2, [Lkawa/lang/SyntaxRule;

    const/4 v2, 0x0

    aput-object v14, v11, v2

    aput-object v25, v11, v20

    const/4 v14, 0x4

    invoke-direct {v9, v12, v11, v14}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v9, Lgnu/kawa/slib/DefineRecordType;->Lit3:Lkawa/lang/SyntaxRules;

    new-instance v11, Lkawa/lang/SyntaxRules;

    const-string v12, "define-record-type"

    .line 0
    invoke-static {v12}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 0
    check-cast v12, Lgnu/mapping/SimpleSymbol;

    sput-object v12, Lgnu/kawa/slib/DefineRecordType;->Lit0:Lgnu/mapping/SimpleSymbol;

    const/4 v14, 0x1

    const/16 v25, 0xa

    new-array v3, v14, [Ljava/lang/Object;

    aput-object v12, v3, v2

    new-instance v32, Lkawa/lang/SyntaxRule;

    new-instance v14, Lkawa/lang/SyntaxPattern;

    const/16 v26, 0x6

    new-array v5, v2, [Ljava/lang/Object;

    const-string v2, "\u000c\u0018\u000c\u0007<\u000c\u000f\r\u0017\u0010\u0008\u0008\u000c\u001f-\u000c\'\u000c/3 \u0018\u0008"

    invoke-direct {v14, v2, v5, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "define-simple-class"

    .line 0
    invoke-static {v2}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 0
    check-cast v2, Lgnu/mapping/SimpleSymbol;

    const v5, 0x1e01b

    invoke-static {v7, v1, v15, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const-string v27, "<boolean>"

    .line 0
    invoke-static/range {v27 .. v27}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    .line 0
    check-cast v27, Lgnu/mapping/SimpleSymbol;

    const-string v28, "instance?"

    .line 0
    invoke-static/range {v28 .. v28}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    .line 0
    check-cast v28, Lgnu/mapping/SimpleSymbol;

    const-string v29, "let"

    .line 0
    invoke-static/range {v29 .. v29}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    .line 0
    check-cast v29, Lgnu/mapping/SimpleSymbol;

    const-string v30, "make"

    .line 0
    invoke-static/range {v30 .. v30}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    .line 0
    check-cast v30, Lgnu/mapping/SimpleSymbol;

    const/16 v38, 0x7

    const v13, 0x23005

    invoke-static {v0, v1, v15, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const/16 v13, 0xf

    new-array v13, v13, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v19, v13, v21

    const/16 v20, 0x1

    aput-object v2, v13, v20

    const/16 v16, 0x2

    aput-object v8, v13, v16

    aput-object v5, v13, v24

    const/16 v17, 0x4

    aput-object v6, v13, v17

    aput-object v27, v13, v23

    aput-object v28, v13, v26

    aput-object v7, v13, v38

    aput-object v29, v13, v18

    aput-object v0, v13, v31

    aput-object v30, v13, v25

    const/16 v0, 0xb

    aput-object v22, v13, v0

    const/16 v0, 0xc

    aput-object v4, v13, v0

    const/16 v0, 0xd

    aput-object v1, v13, v0

    const/16 v0, 0xe

    aput-object v10, v13, v0

    const-string v34, "\u0001\u0001\u0003\u0001\u0003\u0003\u0002"

    const-string v35, "\u0011\u0018\u0004Y\u0011\u0018\u000c\t\u0003\t\u0010\u0008%\u0008#\u00b9\u0011\u0018\u0014!\t\u001b\u0018\u001c\u0011\u0018$\u0011\u0018,\u0008\u0011\u00184\u0011\u0018<\u0008\u0003\u01c1\u0011\u0018\u0014)\t\u000b\u0008\u0015\u0013\u0011\u0018$\t\u0003\u0008\u0011\u0018Dy\u0008\u0011\u0018L\u0011\u0018$\t\u0003\u0008\u0011\u0018T\u0008\u0003\u0099\u0011\u0018\u0004\u0008\u0015\u0011\u0018\\\u0011\u0018L)\u0011\u0018d\u0008\u0013\u0008\u0013\u0018l\u0008%\u0011\u0018t\t\u0003\t#\t+2"

    const/16 v37, 0x1

    move-object/from16 v36, v13

    move-object/from16 v33, v14

    invoke-direct/range {v32 .. v37}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v14, 0x1

    new-array v0, v14, [Lkawa/lang/SyntaxRule;

    const/16 v21, 0x0

    aput-object v32, v0, v21

    const/4 v1, 0x7

    invoke-direct {v11, v3, v0, v1}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v11, Lgnu/kawa/slib/DefineRecordType;->Lit1:Lkawa/lang/SyntaxRules;

    new-instance v0, Lgnu/kawa/slib/DefineRecordType;

    invoke-direct {v0}, Lgnu/kawa/slib/DefineRecordType;-><init>()V

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->$instance:Lgnu/kawa/slib/DefineRecordType;

    .line 19
    invoke-static {v12, v11, v0}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/DefineRecordType;->define$Mnrecord$Mntype:Lkawa/lang/Macro;

    invoke-static {v10, v9, v0}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/DefineRecordType;->$Prvt$$Pcdefine$Mnrecord$Mnfield:Lkawa/lang/Macro;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final run(Lgnu/mapping/CallContext;)V
    .locals 0

    .line 19
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method
