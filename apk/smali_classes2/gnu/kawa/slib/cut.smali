.class public Lgnu/kawa/slib/cut;
.super Lgnu/expr/ModuleBody;
.source "SourceFile"


# static fields
.field public static final $Prvt$srfi$Mn26$Mninternal$Mncut:Lkawa/lang/Macro;

.field public static final $Prvt$srfi$Mn26$Mninternal$Mncute:Lkawa/lang/Macro;

.field public static final $instance:Lgnu/kawa/slib/cut;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxRules;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lkawa/lang/SyntaxRules;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lkawa/lang/SyntaxRules;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final cut:Lkawa/lang/Macro;

.field public static final cute:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 39

    const-string v0, "rest-slot"

    .line 0
    invoke-static {v0}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit14:Lgnu/mapping/SimpleSymbol;

    const-string v1, "apply"

    .line 0
    invoke-static {v1}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 0
    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/cut;->Lit13:Lgnu/mapping/SimpleSymbol;

    const-string v2, "<>"

    .line 0
    invoke-static {v2}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 0
    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/cut;->Lit12:Lgnu/mapping/SimpleSymbol;

    const-string v3, "x"

    .line 0
    invoke-static {v3}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 0
    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    const-string v4, "lambda"

    .line 0
    invoke-static {v4}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 0
    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/cut;->Lit10:Lgnu/mapping/SimpleSymbol;

    const-string v5, "let"

    .line 0
    invoke-static {v5}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 0
    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/cut;->Lit9:Lgnu/mapping/SimpleSymbol;

    const-string v6, "<...>"

    .line 0
    invoke-static {v6}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 0
    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lgnu/kawa/slib/cut;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lkawa/lang/SyntaxRules;

    const-string v8, "cute"

    .line 0
    invoke-static {v8}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 0
    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lgnu/kawa/slib/cut;->Lit6:Lgnu/mapping/SimpleSymbol;

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    new-instance v12, Lkawa/lang/SyntaxRule;

    new-instance v13, Lkawa/lang/SyntaxPattern;

    new-array v14, v11, [Ljava/lang/Object;

    const-string v15, "\u000c\u0018\u0003"

    invoke-direct {v13, v15, v14, v9}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v14, "srfi-26-internal-cute"

    .line 0
    invoke-static {v14}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 0
    check-cast v14, Lgnu/mapping/SimpleSymbol;

    sput-object v14, Lgnu/kawa/slib/cut;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/16 v18, 0x0

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v14, v11, v18

    move-object/from16 v16, v14

    const-string v14, "\u0000"

    move-object/from16 v17, v15

    const-string v15, "\u0011\u0018\u0004\t\u0010\t\u0010\t\u0010\u0002"

    move-object/from16 v19, v17

    const/16 v17, 0x0

    move-object/from16 v38, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v11

    move-object/from16 v11, v38

    invoke-direct/range {v12 .. v17}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v13, v9, [Lkawa/lang/SyntaxRule;

    aput-object v12, v13, v18

    invoke-direct {v7, v10, v13, v9}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v7, Lgnu/kawa/slib/cut;->Lit7:Lkawa/lang/SyntaxRules;

    new-instance v10, Lkawa/lang/SyntaxRules;

    const-string v12, "cut"

    .line 0
    invoke-static {v12}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 0
    check-cast v12, Lgnu/mapping/SimpleSymbol;

    sput-object v12, Lgnu/kawa/slib/cut;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-array v13, v9, [Ljava/lang/Object;

    aput-object v12, v13, v18

    new-instance v20, Lkawa/lang/SyntaxRule;

    new-instance v14, Lkawa/lang/SyntaxPattern;

    move-object/from16 v16, v2

    const/4 v15, 0x0

    new-array v2, v15, [Ljava/lang/Object;

    invoke-direct {v14, v11, v2, v9}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "srfi-26-internal-cut"

    .line 0
    invoke-static {v2}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 0
    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/cut;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v2, v11, v15

    const-string v22, "\u0000"

    const-string v23, "\u0011\u0018\u0004\t\u0010\t\u0010\u0002"

    const/16 v25, 0x0

    move-object/from16 v24, v11

    move-object/from16 v21, v14

    invoke-direct/range {v20 .. v25}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v11, v9, [Lkawa/lang/SyntaxRule;

    aput-object v20, v11, v15

    invoke-direct {v10, v13, v11, v9}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v10, Lgnu/kawa/slib/cut;->Lit5:Lkawa/lang/SyntaxRules;

    new-instance v11, Lkawa/lang/SyntaxRules;

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v1, v14, v15

    aput-object v16, v14, v9

    const/16 v17, 0x3

    const/4 v13, 0x2

    aput-object v6, v14, v13

    new-instance v20, Lkawa/lang/SyntaxRule;

    const/16 v26, 0x1

    new-instance v9, Lkawa/lang/SyntaxPattern;

    new-array v13, v15, [Ljava/lang/Object;

    const/16 v18, 0x0

    const-string v15, "\u000c\u0018,\r\u0007\u0000\u0008\u0008\u000c\u000f<\u000c\u0017\r\u001f\u0018\u0008\u0008\u0008"

    move-object/from16 v28, v4

    const/4 v4, 0x4

    invoke-direct {v9, v15, v13, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v13, 0x2

    new-array v15, v13, [Ljava/lang/Object;

    aput-object v5, v15, v18

    aput-object v28, v15, v26

    const-string v22, "\u0003\u0001\u0001\u0003"

    const-string v23, "\u0011\u0018\u0004\t\u000b\u0008\u0011\u0018\u000c\u0019\u0008\u0005\u0003\u0008\t\u0013\u0008\u001d\u001b"

    const/16 v25, 0x1

    move-object/from16 v21, v9

    move-object/from16 v24, v15

    invoke-direct/range {v20 .. v25}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    new-instance v29, Lkawa/lang/SyntaxRule;

    new-instance v9, Lkawa/lang/SyntaxPattern;

    const-string v13, "\u000c\u0018,\r\u0007\u0000\u0008\u0008\u000c\u000f<\u000c\u0017\r\u001f\u0018\u0008\u0008\u000c\u0002\u0008"

    move-object/from16 v21, v5

    const/4 v15, 0x1

    new-array v5, v15, [Ljava/lang/Object;

    aput-object v6, v5, v18

    invoke-direct {v9, v13, v5, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v13, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/cut.scm"

    const/16 v22, 0x4

    const v4, 0x57048

    invoke-static {v3, v5, v13, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    const/16 v26, 0x1

    const/4 v15, 0x5

    move-object/from16 v23, v4

    new-array v4, v15, [Ljava/lang/Object;

    aput-object v21, v4, v18

    aput-object v28, v4, v26

    const/16 v27, 0x2

    aput-object v3, v4, v27

    aput-object v19, v4, v17

    aput-object v23, v4, v22

    const-string v31, "\u0003\u0001\u0001\u0003"

    const-string v32, "\u0011\u0018\u0004\t\u000b\u0008\u0011\u0018\u000c)\u0011\u0005\u0003\u0018\u0014\u0008\u0011\u0018\u001c\t\u0013\u0011\u001d\u001b\u0018$"

    const/16 v34, 0x1

    move-object/from16 v33, v4

    move-object/from16 v30, v9

    invoke-direct/range {v29 .. v34}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    new-instance v30, Lkawa/lang/SyntaxRule;

    new-instance v4, Lkawa/lang/SyntaxPattern;

    const-string v9, "\u000c\u0018,\r\u0007\u0000\u0008\u0008\u000c\u000f,\r\u0017\u0010\u0008\u0008\u000c\u0002\u001b"

    move-object/from16 v23, v6

    const/4 v15, 0x1

    new-array v6, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v26, 0x1

    aput-object v16, v6, v15

    const/4 v15, 0x4

    const/16 v18, 0x0

    invoke-direct {v4, v9, v6, v15}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const v6, 0x5d016

    invoke-static {v3, v5, v13, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const v9, 0x5d03b

    invoke-static {v3, v5, v13, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    move-object/from16 v31, v4

    const/4 v15, 0x3

    new-array v4, v15, [Ljava/lang/Object;

    aput-object v1, v4, v18

    aput-object v6, v4, v26

    const/16 v27, 0x2

    aput-object v9, v4, v27

    const-string v32, "\u0003\u0001\u0003\u0000"

    const-string v33, "\u0011\u0018\u0004)\u0011\u0005\u0003\u0018\u000c\t\u000b)\u0011\u0015\u0013\u0018\u0014\u001a"

    const/16 v35, 0x1

    move-object/from16 v34, v4

    invoke-direct/range {v30 .. v35}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    new-instance v31, Lkawa/lang/SyntaxRule;

    new-instance v4, Lkawa/lang/SyntaxPattern;

    const/4 v15, 0x0

    new-array v6, v15, [Ljava/lang/Object;

    const-string v9, "\u000c\u0018\u000c\u0007\u000c\u000f,\r\u0017\u0010\u0008\u0008\u000c\u001f#"

    const/4 v15, 0x5

    const/16 v18, 0x0

    invoke-direct {v4, v9, v6, v15}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const v6, 0x62039

    invoke-static {v3, v5, v13, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const/4 v15, 0x3

    new-array v9, v15, [Ljava/lang/Object;

    aput-object v1, v9, v18

    const/16 v26, 0x1

    aput-object v3, v9, v26

    const/4 v15, 0x2

    aput-object v6, v9, v15

    const-string v33, "\u0001\u0001\u0003\u0001\u0000"

    const-string v34, "\u0011\u0018\u0004\t\u00039)\u0011\u0018\u000c\u0008\u001b\u000b)\u0011\u0015\u0013\u0018\u0014\""

    const/16 v36, 0x1

    move-object/from16 v32, v4

    move-object/from16 v35, v9

    invoke-direct/range {v31 .. v36}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v4, 0x4

    new-array v6, v4, [Lkawa/lang/SyntaxRule;

    aput-object v20, v6, v18

    aput-object v29, v6, v26

    aput-object v30, v6, v15

    const/4 v4, 0x3

    aput-object v31, v6, v4

    const/4 v9, 0x5

    invoke-direct {v11, v14, v6, v9}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v11, Lgnu/kawa/slib/cut;->Lit3:Lkawa/lang/SyntaxRules;

    new-instance v6, Lkawa/lang/SyntaxRules;

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v2, v9, v18

    aput-object v16, v9, v26

    aput-object v23, v9, v15

    new-instance v29, Lkawa/lang/SyntaxRule;

    new-instance v14, Lkawa/lang/SyntaxPattern;

    move-object/from16 v20, v7

    const/4 v15, 0x0

    new-array v7, v15, [Ljava/lang/Object;

    const/16 v18, 0x0

    const-string v15, "\u000c\u0018,\r\u0007\u0000\u0008\u0008<\u000c\u000f\r\u0017\u0010\u0008\u0008\u0008"

    invoke-direct {v14, v15, v7, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v4, "begin"

    .line 0
    invoke-static {v4}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 0
    check-cast v4, Lgnu/mapping/SimpleSymbol;

    const/4 v15, 0x2

    new-array v7, v15, [Ljava/lang/Object;

    aput-object v28, v7, v18

    const/4 v15, 0x1

    aput-object v4, v7, v15

    const-string v31, "\u0003\u0001\u0003"

    const-string v32, "\u0011\u0018\u0004\u0019\u0008\u0005\u0003\u0008)\u0011\u0018\u000c\u0008\u000b\u0008\u0015\u0013"

    const/16 v34, 0x1

    move-object/from16 v33, v7

    move-object/from16 v30, v14

    invoke-direct/range {v29 .. v34}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    new-instance v30, Lkawa/lang/SyntaxRule;

    new-instance v4, Lkawa/lang/SyntaxPattern;

    const-string v7, "\u000c\u0018,\r\u0007\u0000\u0008\u0008<\u000c\u000f\r\u0017\u0010\u0008\u0008\u000c\u0002\u0008"

    new-array v14, v15, [Ljava/lang/Object;

    aput-object v23, v14, v18

    const/4 v15, 0x3

    const/16 v26, 0x1

    invoke-direct {v4, v7, v14, v15}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const v7, 0x3d03e

    invoke-static {v0, v5, v13, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const/4 v14, 0x4

    const/16 v17, 0x3

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v28, v15, v18

    aput-object v0, v15, v26

    const/16 v27, 0x2

    aput-object v19, v15, v27

    aput-object v7, v15, v17

    const-string v32, "\u0003\u0001\u0003"

    const-string v33, "\u0011\u0018\u0004)\u0011\u0005\u0003\u0018\u000c\u0008\u0011\u0018\u0014\t\u000b\u0011\u0015\u0013\u0018\u001c"

    const/16 v35, 0x1

    move-object/from16 v31, v4

    move-object/from16 v34, v15

    invoke-direct/range {v30 .. v35}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    new-instance v31, Lkawa/lang/SyntaxRule;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v4, "\u000c\u0018,\r\u0007\u0000\u0008\u0008,\r\u000f\u0008\u0008\u0008\u000c\u0002\u0013"

    const/4 v15, 0x1

    new-array v7, v15, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v16, v7, v14

    const/4 v15, 0x3

    const/16 v26, 0x1

    invoke-direct {v0, v4, v7, v15}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const v4, 0x4102b

    invoke-static {v3, v5, v13, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    const v7, 0x4103c

    invoke-static {v3, v5, v13, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    new-array v5, v15, [Ljava/lang/Object;

    aput-object v2, v5, v14

    aput-object v4, v5, v26

    const/16 v27, 0x2

    aput-object v3, v5, v27

    const-string v33, "\u0003\u0003\u0000"

    const-string v34, "\u0011\u0018\u0004)\u0011\u0005\u0003\u0018\u000c)\u0011\r\u000b\u0018\u0014\u0012"

    move-object/from16 v32, v0

    move-object/from16 v35, v5

    invoke-direct/range {v31 .. v36}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    new-instance v32, Lkawa/lang/SyntaxRule;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v3, "\u000c\u0018,\r\u0007\u0000\u0008\u0008,\r\u000f\u0008\u0008\u0008\u000c\u0017\u001b"

    new-array v4, v14, [Ljava/lang/Object;

    const/4 v15, 0x4

    invoke-direct {v0, v3, v4, v15}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v2, v4, v14

    const-string v34, "\u0003\u0003\u0001\u0000"

    const-string v35, "\u0011\u0018\u0004\u0019\u0008\u0005\u0003)\u0011\r\u000b\u0008\u0013\u001a"

    const/16 v37, 0x1

    move-object/from16 v33, v0

    move-object/from16 v36, v4

    invoke-direct/range {v32 .. v37}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v0, v15, [Lkawa/lang/SyntaxRule;

    aput-object v29, v0, v14

    aput-object v30, v0, v3

    const/16 v27, 0x2

    aput-object v31, v0, v27

    const/16 v17, 0x3

    aput-object v32, v0, v17

    invoke-direct {v6, v9, v0, v15}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lgnu/kawa/slib/cut;->Lit1:Lkawa/lang/SyntaxRules;

    new-instance v0, Lgnu/kawa/slib/cut;

    invoke-direct {v0}, Lgnu/kawa/slib/cut;-><init>()V

    sput-object v0, Lgnu/kawa/slib/cut;->$instance:Lgnu/kawa/slib/cut;

    invoke-static {v2, v6, v0}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/cut;->$Prvt$srfi$Mn26$Mninternal$Mncut:Lkawa/lang/Macro;

    invoke-static {v1, v11, v0}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/cut;->$Prvt$srfi$Mn26$Mninternal$Mncute:Lkawa/lang/Macro;

    .line 51
    invoke-static {v12, v10, v0}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/cut;->cut:Lkawa/lang/Macro;

    move-object/from16 v1, v20

    invoke-static {v8, v1, v0}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/cut;->cute:Lkawa/lang/Macro;

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

    .line 51
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method
