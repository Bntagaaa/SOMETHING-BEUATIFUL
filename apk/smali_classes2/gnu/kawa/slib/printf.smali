.class public Lgnu/kawa/slib/printf;
.super Lgnu/expr/ModuleBody;
.source "SourceFile"


# static fields
.field public static final $instance:Lgnu/kawa/slib/printf;

.field static final Lit0:Lgnu/math/IntNum;

.field static final Lit1:Lgnu/math/IntNum;

.field static final Lit10:Lgnu/lists/PairWithPosition;

.field static final Lit11:Lgnu/text/Char;

.field static final Lit12:Lgnu/text/Char;

.field static final Lit13:Lgnu/text/Char;

.field static final Lit14:Lgnu/math/IntNum;

.field static final Lit15:Lgnu/math/IntNum;

.field static final Lit16:Lgnu/math/IntNum;

.field static final Lit17:Lgnu/math/IntNum;

.field static final Lit18:Lgnu/text/Char;

.field static final Lit19:Lgnu/text/Char;

.field static final Lit2:Lgnu/lists/PairWithPosition;

.field static final Lit20:Lgnu/text/Char;

.field static final Lit21:Lgnu/text/Char;

.field static final Lit22:Lgnu/text/Char;

.field static final Lit23:Lgnu/text/Char;

.field static final Lit24:Lgnu/text/Char;

.field static final Lit25:Lgnu/text/Char;

.field static final Lit26:Lgnu/text/Char;

.field static final Lit27:Lgnu/text/Char;

.field static final Lit28:Lgnu/text/Char;

.field static final Lit29:Lgnu/text/Char;

.field static final Lit3:Lgnu/text/Char;

.field static final Lit30:Lgnu/text/Char;

.field static final Lit31:Lgnu/text/Char;

.field static final Lit32:Lgnu/text/Char;

.field static final Lit33:Lgnu/lists/PairWithPosition;

.field static final Lit34:Lgnu/mapping/SimpleSymbol;

.field static final Lit35:Lgnu/text/Char;

.field static final Lit36:Lgnu/text/Char;

.field static final Lit37:Lgnu/text/Char;

.field static final Lit38:Lgnu/text/Char;

.field static final Lit39:Lgnu/text/Char;

.field static final Lit4:Lgnu/text/Char;

.field static final Lit40:Lgnu/text/Char;

.field static final Lit41:Lgnu/text/Char;

.field static final Lit42:Lgnu/text/Char;

.field static final Lit43:Lgnu/text/Char;

.field static final Lit44:Lgnu/text/Char;

.field static final Lit45:Lgnu/math/IntNum;

.field static final Lit46:Lgnu/text/Char;

.field static final Lit47:Lgnu/text/Char;

.field static final Lit48:Lgnu/math/IntNum;

.field static final Lit49:Lgnu/text/Char;

.field static final Lit5:Lgnu/text/Char;

.field static final Lit50:Lgnu/math/IntNum;

.field static final Lit51:Lgnu/text/Char;

.field static final Lit52:Lgnu/text/Char;

.field static final Lit53:Lgnu/text/Char;

.field static final Lit54:Lgnu/text/Char;

.field static final Lit55:Lgnu/text/Char;

.field static final Lit56:Lgnu/text/Char;

.field static final Lit57:Lgnu/text/Char;

.field static final Lit58:Lgnu/text/Char;

.field static final Lit59:Lgnu/math/IntNum;

.field static final Lit6:Lgnu/text/Char;

.field static final Lit60:Lgnu/math/IntNum;

.field static final Lit61:Lgnu/math/IntNum;

.field static final Lit62:Lgnu/lists/FVector;

.field static final Lit63:Lgnu/lists/PairWithPosition;

.field static final Lit64:Lgnu/mapping/SimpleSymbol;

.field static final Lit65:Lgnu/text/Char;

.field static final Lit66:Lgnu/text/Char;

.field static final Lit67:Lgnu/mapping/SimpleSymbol;

.field static final Lit68:Lgnu/mapping/SimpleSymbol;

.field static final Lit69:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/math/IntNum;

.field static final Lit70:Lgnu/mapping/SimpleSymbol;

.field static final Lit71:Lgnu/mapping/SimpleSymbol;

.field static final Lit72:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/text/Char;

.field static final Lit9:Lgnu/text/Char;

.field public static final fprintf:Lgnu/expr/ModuleMethod;

.field public static final printf:Lgnu/expr/ModuleMethod;

.field public static final sprintf:Lgnu/expr/ModuleMethod;

.field public static final stdio$Clhex$Mnupper$Mncase$Qu:Z

.field public static final stdio$Cliprintf:Lgnu/expr/ModuleMethod;

.field public static final stdio$Clparse$Mnfloat:Lgnu/expr/ModuleMethod;

.field public static final stdio$Clround$Mnstring:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 32

    const-string v0, "fprintf"

    .line 0
    invoke-static {v0}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/printf;->Lit72:Lgnu/mapping/SimpleSymbol;

    const-string v1, "stdio:iprintf"

    .line 0
    invoke-static {v1}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 0
    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/printf;->Lit71:Lgnu/mapping/SimpleSymbol;

    const-string v2, "stdio:round-string"

    .line 0
    invoke-static {v2}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 0
    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/printf;->Lit70:Lgnu/mapping/SimpleSymbol;

    const-string v3, "stdio:parse-float"

    .line 0
    invoke-static {v3}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 0
    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/printf;->Lit69:Lgnu/mapping/SimpleSymbol;

    const-string v4, "sprintf"

    .line 0
    invoke-static {v4}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 0
    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/printf;->Lit68:Lgnu/mapping/SimpleSymbol;

    const-string v5, "pad"

    .line 0
    invoke-static {v5}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 0
    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/printf;->Lit67:Lgnu/mapping/SimpleSymbol;

    const/16 v5, 0x2a

    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    sput-object v5, Lgnu/kawa/slib/printf;->Lit66:Lgnu/text/Char;

    const/16 v5, 0x3f

    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    sput-object v5, Lgnu/kawa/slib/printf;->Lit65:Lgnu/text/Char;

    const-string v5, "format-real"

    .line 0
    invoke-static {v5}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 0
    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/printf;->Lit64:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v6, 0x18f00b

    const-string v7, "i"

    const-string v8, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    invoke-static {v7, v5, v8, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit63:Lgnu/lists/PairWithPosition;

    const/16 v6, 0x11

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "y"

    const/4 v9, 0x0

    aput-object v7, v6, v9

    const-string v7, "z"

    const/4 v10, 0x1

    aput-object v7, v6, v10

    const-string v7, "a"

    const/4 v11, 0x2

    aput-object v7, v6, v11

    const-string v7, "f"

    const/4 v12, 0x3

    aput-object v7, v6, v12

    const-string v7, "p"

    const/4 v13, 0x4

    aput-object v7, v6, v13

    const-string v7, "n"

    const/4 v13, 0x5

    aput-object v7, v6, v13

    const-string v7, "u"

    const/4 v14, 0x6

    aput-object v7, v6, v14

    const-string v7, "m"

    const/4 v15, 0x7

    aput-object v7, v6, v15

    const-string v7, ""

    const/16 v15, 0x8

    aput-object v7, v6, v15

    const-string v7, "k"

    const/16 v16, 0x9

    aput-object v7, v6, v16

    const-string v7, "M"

    const/16 v17, 0xa

    aput-object v7, v6, v17

    const-string v7, "G"

    const/16 v18, 0xb

    aput-object v7, v6, v18

    const-string v7, "T"

    const/16 v18, 0xc

    aput-object v7, v6, v18

    const-string v7, "P"

    const/16 v19, 0xd

    aput-object v7, v6, v19

    const-string v7, "E"

    const/16 v19, 0xe

    aput-object v7, v6, v19

    const-string v7, "Z"

    const/16 v19, 0xf

    aput-object v7, v6, v19

    const-string v7, "Y"

    const/16 v19, 0x10

    aput-object v7, v6, v19

    invoke-static {v6}, Lgnu/lists/FVector;->make([Ljava/lang/Object;)Lgnu/lists/FVector;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit62:Lgnu/lists/FVector;

    invoke-static {v12}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit61:Lgnu/math/IntNum;

    const/16 v6, -0xa

    invoke-static {v6}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit60:Lgnu/math/IntNum;

    invoke-static {v14}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit59:Lgnu/math/IntNum;

    const/16 v6, 0x4b

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit58:Lgnu/text/Char;

    const/16 v6, 0x6b

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit57:Lgnu/text/Char;

    const/16 v7, 0x47

    invoke-static {v7}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v7

    sput-object v7, Lgnu/kawa/slib/printf;->Lit56:Lgnu/text/Char;

    const/16 v7, 0x67

    invoke-static {v7}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v7

    sput-object v7, Lgnu/kawa/slib/printf;->Lit55:Lgnu/text/Char;

    const/16 v12, 0x45

    invoke-static {v12}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v12

    sput-object v12, Lgnu/kawa/slib/printf;->Lit54:Lgnu/text/Char;

    const/16 v14, 0x42

    invoke-static {v14}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v14

    sput-object v14, Lgnu/kawa/slib/printf;->Lit53:Lgnu/text/Char;

    const/16 v14, 0x62

    invoke-static {v14}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v14

    sput-object v14, Lgnu/kawa/slib/printf;->Lit52:Lgnu/text/Char;

    const/16 v20, 0x58

    invoke-static/range {v20 .. v20}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v20

    sput-object v20, Lgnu/kawa/slib/printf;->Lit51:Lgnu/text/Char;

    invoke-static/range {v19 .. v19}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v19

    sput-object v19, Lgnu/kawa/slib/printf;->Lit50:Lgnu/math/IntNum;

    const/16 v19, 0x78

    const/16 v20, 0x0

    invoke-static/range {v19 .. v19}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v9

    sput-object v9, Lgnu/kawa/slib/printf;->Lit49:Lgnu/text/Char;

    invoke-static {v15}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v15

    sput-object v15, Lgnu/kawa/slib/printf;->Lit48:Lgnu/math/IntNum;

    const/16 v15, 0x4f

    invoke-static {v15}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v15

    sput-object v15, Lgnu/kawa/slib/printf;->Lit47:Lgnu/text/Char;

    const/16 v15, 0x6f

    invoke-static {v15}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v15

    sput-object v15, Lgnu/kawa/slib/printf;->Lit46:Lgnu/text/Char;

    invoke-static/range {v17 .. v17}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v19

    sput-object v19, Lgnu/kawa/slib/printf;->Lit45:Lgnu/math/IntNum;

    const/16 v19, 0x55

    invoke-static/range {v19 .. v19}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v19

    sput-object v19, Lgnu/kawa/slib/printf;->Lit44:Lgnu/text/Char;

    const/16 v19, 0x75

    const/16 v21, 0x1

    invoke-static/range {v19 .. v19}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v10

    sput-object v10, Lgnu/kawa/slib/printf;->Lit43:Lgnu/text/Char;

    const/16 v19, 0x49

    invoke-static/range {v19 .. v19}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v19

    sput-object v19, Lgnu/kawa/slib/printf;->Lit42:Lgnu/text/Char;

    const/16 v19, 0x44

    const/16 v22, 0x2

    invoke-static/range {v19 .. v19}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v11

    sput-object v11, Lgnu/kawa/slib/printf;->Lit41:Lgnu/text/Char;

    const/16 v19, 0x41

    invoke-static/range {v19 .. v19}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v19

    sput-object v19, Lgnu/kawa/slib/printf;->Lit40:Lgnu/text/Char;

    const/16 v19, 0x61

    const/16 v23, 0x5

    invoke-static/range {v19 .. v19}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v13

    sput-object v13, Lgnu/kawa/slib/printf;->Lit39:Lgnu/text/Char;

    const/16 v19, 0x53

    move-object/from16 v24, v4

    invoke-static/range {v19 .. v19}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    sput-object v4, Lgnu/kawa/slib/printf;->Lit38:Lgnu/text/Char;

    const/16 v19, 0x73

    move-object/from16 v25, v0

    invoke-static/range {v19 .. v19}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/printf;->Lit37:Lgnu/text/Char;

    const/16 v19, 0x43

    invoke-static/range {v19 .. v19}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v19

    sput-object v19, Lgnu/kawa/slib/printf;->Lit36:Lgnu/text/Char;

    const/16 v19, 0x63

    move-object/from16 v26, v1

    invoke-static/range {v19 .. v19}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit35:Lgnu/text/Char;

    const-string v19, "printf"

    .line 0
    invoke-static/range {v19 .. v19}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v27, v2

    .line 0
    move-object/from16 v2, v19

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/printf;->Lit34:Lgnu/mapping/SimpleSymbol;

    const/16 v19, 0x64

    move-object/from16 v28, v2

    invoke-static/range {v19 .. v19}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/printf;->Lit12:Lgnu/text/Char;

    const/16 v19, 0x69

    move-object/from16 v29, v3

    invoke-static/range {v19 .. v19}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v3

    sput-object v3, Lgnu/kawa/slib/printf;->Lit3:Lgnu/text/Char;

    const/16 v19, 0x66

    move-object/from16 v30, v12

    invoke-static/range {v19 .. v19}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v12

    sput-object v12, Lgnu/kawa/slib/printf;->Lit25:Lgnu/text/Char;

    const/16 v19, 0x65

    move-object/from16 v31, v4

    invoke-static/range {v19 .. v19}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    sput-object v4, Lgnu/kawa/slib/printf;->Lit13:Lgnu/text/Char;

    move-object/from16 v19, v11

    const v11, 0x1b3014

    invoke-static {v6, v5, v8, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const v11, 0x1b3010

    invoke-static {v7, v6, v8, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const v7, 0x1b300c

    invoke-static {v4, v6, v8, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const v7, 0x1b3008

    invoke-static {v12, v6, v8, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const v7, 0x1b2028

    invoke-static {v14, v6, v8, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const v7, 0x1b2024

    invoke-static {v9, v6, v8, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const v7, 0x1b2020

    invoke-static {v15, v6, v8, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const v7, 0x1b201c

    invoke-static {v10, v6, v8, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const v7, 0x1b2018

    invoke-static {v3, v6, v8, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    const v6, 0x1b2014

    invoke-static {v2, v3, v8, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    const v6, 0x1b2010

    invoke-static {v13, v3, v8, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    const v6, 0x1b200c

    invoke-static {v0, v3, v8, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    const v6, 0x1b2007

    invoke-static {v1, v3, v8, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit33:Lgnu/lists/PairWithPosition;

    const/16 v1, 0x68

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit32:Lgnu/text/Char;

    const/16 v1, 0x4c

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit31:Lgnu/text/Char;

    const/16 v3, 0x6c

    invoke-static {v3}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v3

    sput-object v3, Lgnu/kawa/slib/printf;->Lit30:Lgnu/text/Char;

    const/16 v6, 0x20

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit29:Lgnu/text/Char;

    const/16 v6, 0x25

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit28:Lgnu/text/Char;

    invoke-static/range {v18 .. v18}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit27:Lgnu/text/Char;

    const/16 v6, 0x46

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit26:Lgnu/text/Char;

    invoke-static/range {v16 .. v16}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v7

    sput-object v7, Lgnu/kawa/slib/printf;->Lit24:Lgnu/text/Char;

    const/16 v7, 0x54

    invoke-static {v7}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v7

    sput-object v7, Lgnu/kawa/slib/printf;->Lit23:Lgnu/text/Char;

    const/16 v7, 0x74

    invoke-static {v7}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v7

    sput-object v7, Lgnu/kawa/slib/printf;->Lit22:Lgnu/text/Char;

    invoke-static/range {v17 .. v17}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v7

    sput-object v7, Lgnu/kawa/slib/printf;->Lit21:Lgnu/text/Char;

    const/16 v7, 0x4e

    invoke-static {v7}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v7

    sput-object v7, Lgnu/kawa/slib/printf;->Lit20:Lgnu/text/Char;

    const/16 v7, 0x6e

    invoke-static {v7}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v7

    sput-object v7, Lgnu/kawa/slib/printf;->Lit19:Lgnu/text/Char;

    const/16 v7, 0x5c

    invoke-static {v7}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v7

    sput-object v7, Lgnu/kawa/slib/printf;->Lit18:Lgnu/text/Char;

    const/4 v7, -0x1

    invoke-static {v7}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v7

    sput-object v7, Lgnu/kawa/slib/printf;->Lit17:Lgnu/math/IntNum;

    invoke-static/range {v16 .. v16}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v7

    sput-object v7, Lgnu/kawa/slib/printf;->Lit16:Lgnu/math/IntNum;

    invoke-static/range {v23 .. v23}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v7

    sput-object v7, Lgnu/kawa/slib/printf;->Lit15:Lgnu/math/IntNum;

    invoke-static/range {v22 .. v22}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v7

    sput-object v7, Lgnu/kawa/slib/printf;->Lit14:Lgnu/math/IntNum;

    const/16 v7, 0x2e

    invoke-static {v7}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v7

    sput-object v7, Lgnu/kawa/slib/printf;->Lit11:Lgnu/text/Char;

    const v7, 0x4102c

    invoke-static {v1, v5, v8, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v7, 0x41028

    move-object/from16 v9, v19

    invoke-static {v9, v1, v8, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v7, 0x41024

    invoke-static {v6, v1, v8, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v6, 0x41020

    move-object/from16 v7, v31

    invoke-static {v7, v1, v8, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v6, 0x4101c

    move-object/from16 v7, v30

    invoke-static {v7, v1, v8, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v6, 0x41018

    invoke-static {v3, v1, v8, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v3, 0x41014

    invoke-static {v2, v1, v8, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v2, 0x41010

    invoke-static {v12, v1, v8, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v2, 0x4100c

    invoke-static {v0, v1, v8, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0x41007

    invoke-static {v4, v0, v8, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/printf;->Lit10:Lgnu/lists/PairWithPosition;

    const/16 v0, 0x30

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    const/16 v0, 0x23

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/printf;->Lit8:Lgnu/text/Char;

    invoke-static/range {v21 .. v21}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    const/16 v0, 0x2b

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/printf;->Lit6:Lgnu/text/Char;

    const/16 v1, 0x2d

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit5:Lgnu/text/Char;

    const/16 v2, 0x40

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/printf;->Lit4:Lgnu/text/Char;

    const v2, 0x6d027

    invoke-static {v1, v5, v8, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v2, 0x6d022

    invoke-static {v0, v1, v8, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/printf;->Lit2:Lgnu/lists/PairWithPosition;

    invoke-static/range {v20 .. v20}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    const/16 v0, -0xf

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/printf;->Lit0:Lgnu/math/IntNum;

    new-instance v0, Lgnu/kawa/slib/printf;

    invoke-direct {v0}, Lgnu/kawa/slib/printf;-><init>()V

    sput-object v0, Lgnu/kawa/slib/printf;->$instance:Lgnu/kawa/slib/printf;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x16

    const/16 v3, 0x2002

    move-object/from16 v4, v29

    invoke-direct {v1, v0, v2, v4, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/printf;->stdio$Clparse$Mnfloat:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x17

    const/16 v3, 0x3003

    move-object/from16 v4, v27

    invoke-direct {v1, v0, v2, v4, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/printf;->stdio$Clround$Mnstring:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x18

    const/16 v3, -0xffe

    move-object/from16 v4, v26

    invoke-direct {v1, v0, v2, v4, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/printf;->stdio$Cliprintf:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x19

    move-object/from16 v4, v25

    invoke-direct {v1, v0, v2, v4, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/printf;->fprintf:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1a

    const/16 v4, -0xfff

    move-object/from16 v5, v28

    invoke-direct {v1, v0, v2, v5, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/printf;->printf:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1b

    move-object/from16 v4, v24

    invoke-direct {v1, v0, v2, v4, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/printf;->sprintf:Lgnu/expr/ModuleMethod;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static fprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 543
    new-instance v0, Lgnu/kawa/slib/printf$frame12;

    invoke-direct {v0}, Lgnu/kawa/slib/printf$frame12;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/printf$frame12;->port:Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-static {p2, p0}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object p0

    .line 544
    sget-object p2, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    iput-object p2, v0, Lgnu/kawa/slib/printf$frame12;->cnt:Ljava/lang/Object;

    .line 545
    sget-object p2, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v1, Lgnu/kawa/slib/printf;->stdio$Cliprintf:Lgnu/expr/ModuleMethod;

    .line 546
    iget-object v2, v0, Lgnu/kawa/slib/printf$frame12;->lambda$Fn18:Lgnu/expr/ModuleMethod;

    .line 550
    invoke-virtual {p2, v1, v2, p1, p0}, Lgnu/mapping/ProcedureN;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    iget-object p0, v0, Lgnu/kawa/slib/printf$frame12;->cnt:Ljava/lang/Object;

    return-object p0
.end method

.method public static printf$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    .line 553
    invoke-static {p1, v0}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object p1

    .line 554
    sget-object v0, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v1, Lgnu/kawa/slib/printf;->fprintf:Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/ports;->current$Mnoutput$Mnport:Lgnu/mapping/LocationProc;

    invoke-virtual {v2}, Lgnu/mapping/LocationProc;->apply0()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0, p1}, Lgnu/mapping/ProcedureN;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static sprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 556
    const-string v0, "substring"

    new-instance v1, Lgnu/kawa/slib/printf$frame13;

    invoke-direct {v1}, Lgnu/kawa/slib/printf$frame13;-><init>()V

    iput-object p0, v1, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-static {p2, p0}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object p2

    .line 557
    sget-object v2, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    iput-object v2, v1, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    .line 558
    iget-object v2, v1, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    invoke-static {v2}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v1, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    invoke-static {v2}, Lkawa/lib/numbers;->isNumber(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 559
    iget-object v2, v1, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    :try_start_0
    move-object v4, v2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const-string p2, "make-string"

    invoke-direct {p1, p0, p2, v3, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    :cond_1
    iget-object v2, v1, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v4, :cond_2

    const/16 v2, 0x64

    .line 560
    invoke-static {v2}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 561
    :cond_2
    sget-object v4, Lgnu/kawa/slib/printf;->Lit68:Lgnu/mapping/SimpleSymbol;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "first argument not understood"

    aput-object v6, v5, p0

    aput-object v2, v5, v3

    invoke-static {v4, v5}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    iput-object v2, v1, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    .line 562
    :try_start_1
    check-cast v2, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    invoke-static {v2}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    .line 563
    sget-object v2, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v4, Lgnu/kawa/slib/printf;->stdio$Cliprintf:Lgnu/expr/ModuleMethod;

    .line 564
    iget-object v5, v1, Lgnu/kawa/slib/printf$frame13;->lambda$Fn19:Lgnu/expr/ModuleMethod;

    .line 584
    invoke-virtual {v2, v4, v5, p1, p2}, Lgnu/mapping/ProcedureN;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v1, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    invoke-static {p1}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 585
    iget-object p0, v1, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    return-object p0

    :cond_3
    sget-object p1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 586
    iget-object p2, v1, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    iget-object v2, v1, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    invoke-virtual {p1, p2, v2}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_4

    iget-object p0, v1, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    return-object p0

    .line 587
    :cond_4
    iget-object p1, v1, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    :try_start_2
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    iget-object p2, v1, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    :try_start_3
    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p2
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1

    invoke-static {p1, p0, p2}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v0, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p0, v0, v3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_3
    move-exception p0

    .line 562
    new-instance p1, Lgnu/mapping/WrongType;

    const-string p2, "string-length"

    invoke-direct {p1, p0, p2, v3, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1
.end method

.method public static stdio$ClIprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    const/4 v2, 0x3

    .line 186
    const-string v4, "substring"

    const-string v5, "string-ref"

    const-string v6, "negative?"

    const-string v7, "string-length"

    new-instance v0, Lgnu/kawa/slib/printf$frame9;

    invoke-direct {v0}, Lgnu/kawa/slib/printf$frame9;-><init>()V

    move-object/from16 v8, p0

    iput-object v8, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object/from16 v8, p1

    iput-object v8, v0, Lgnu/kawa/slib/printf$frame9;->format$Mnstring:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v9, p2

    invoke-static {v9, v8}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v9

    iput-object v9, v0, Lgnu/kawa/slib/printf$frame9;->args:Lgnu/lists/LList;

    .line 187
    iget-object v9, v0, Lgnu/kawa/slib/printf$frame9;->format$Mnstring:Ljava/lang/Object;

    const-string v10, ""

    invoke-static {v10, v9}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_61

    .line 189
    sget-object v9, Lgnu/kawa/slib/printf;->Lit17:Lgnu/math/IntNum;

    .line 190
    iget-object v11, v0, Lgnu/kawa/slib/printf$frame9;->format$Mnstring:Ljava/lang/Object;

    :try_start_0
    check-cast v11, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1c

    invoke-static {v11}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v11

    .line 191
    iget-object v12, v0, Lgnu/kawa/slib/printf$frame9;->format$Mnstring:Ljava/lang/Object;

    :try_start_1
    check-cast v12, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1b

    invoke-static {v12, v8}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v12

    invoke-static {v12}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v12

    iput-object v12, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    iput v11, v0, Lgnu/kawa/slib/printf$frame9;->fl:I

    iput-object v9, v0, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    .line 216
    iget-object v9, v0, Lgnu/kawa/slib/printf$frame9;->args:Lgnu/lists/LList;

    :goto_0
    new-instance v11, Lgnu/kawa/slib/printf$frame10;

    invoke-direct {v11}, Lgnu/kawa/slib/printf$frame10;-><init>()V

    iput-object v0, v11, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iput-object v9, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    .line 194
    sget-object v9, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v12, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    iget-object v13, v0, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    invoke-virtual {v9, v12, v13}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    sget-object v12, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 195
    iget v13, v0, Lgnu/kawa/slib/printf$frame9;->fl:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Lgnu/kawa/functions/NumberCompare;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v9, v12, :cond_0

    iput-object v12, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    goto :goto_1

    .line 196
    :cond_0
    iget-object v9, v0, Lgnu/kawa/slib/printf$frame9;->format$Mnstring:Ljava/lang/Object;

    :try_start_2
    check-cast v9, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1a

    iget-object v13, v0, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    :try_start_3
    move-object v14, v13

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v13
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_19

    invoke-static {v9, v13}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v9

    invoke-static {v9}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v9

    iput-object v9, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    .line 219
    :goto_1
    invoke-virtual {v0}, Lgnu/kawa/slib/printf$frame9;->lambda19isEndOfFormat()Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v9, :cond_1

    .line 218
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_1
    return-object v12

    :cond_2
    sget-object v9, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 222
    sget-object v13, Lgnu/kawa/slib/printf;->Lit18:Lgnu/text/Char;

    iget-object v14, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    invoke-virtual {v9, v13, v14}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eq v13, v12, :cond_b

    .line 223
    invoke-virtual {v0}, Lgnu/kawa/slib/printf$frame9;->lambda18mustAdvance()Ljava/lang/Object;

    .line 224
    iget-object v13, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    sget-object v14, Lgnu/kawa/slib/printf;->Lit19:Lgnu/text/Char;

    invoke-virtual {v9, v13, v14}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eq v14, v12, :cond_3

    if-eq v14, v12, :cond_4

    goto :goto_2

    :cond_3
    sget-object v14, Lgnu/kawa/slib/printf;->Lit20:Lgnu/text/Char;

    invoke-virtual {v9, v13, v14}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eq v14, v12, :cond_4

    .line 225
    :goto_2
    sget-object v9, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v13, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    sget-object v14, Lgnu/kawa/slib/printf;->Lit21:Lgnu/text/Char;

    invoke-virtual {v9, v13, v14}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_5

    .line 224
    :cond_4
    sget-object v14, Lgnu/kawa/slib/printf;->Lit22:Lgnu/text/Char;

    invoke-virtual {v9, v13, v14}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eq v14, v12, :cond_5

    if-eq v14, v12, :cond_6

    goto :goto_3

    :cond_5
    sget-object v14, Lgnu/kawa/slib/printf;->Lit23:Lgnu/text/Char;

    invoke-virtual {v9, v13, v14}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eq v14, v12, :cond_6

    .line 226
    :goto_3
    sget-object v9, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v13, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    sget-object v14, Lgnu/kawa/slib/printf;->Lit24:Lgnu/text/Char;

    invoke-virtual {v9, v13, v14}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_5

    .line 224
    :cond_6
    sget-object v14, Lgnu/kawa/slib/printf;->Lit25:Lgnu/text/Char;

    invoke-virtual {v9, v13, v14}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eq v14, v12, :cond_7

    if-eq v14, v12, :cond_8

    goto :goto_4

    :cond_7
    sget-object v14, Lgnu/kawa/slib/printf;->Lit26:Lgnu/text/Char;

    invoke-virtual {v9, v13, v14}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eq v14, v12, :cond_8

    .line 228
    :goto_4
    sget-object v9, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v13, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    sget-object v14, Lgnu/kawa/slib/printf;->Lit27:Lgnu/text/Char;

    invoke-virtual {v9, v13, v14}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_5

    .line 224
    :cond_8
    sget-object v14, Lgnu/kawa/slib/printf;->Lit21:Lgnu/text/Char;

    invoke-virtual {v9, v13, v14}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v9, v12, :cond_9

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    .line 230
    :cond_9
    sget-object v9, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v13, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    iget-object v14, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    invoke-virtual {v9, v13, v14}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    :goto_5
    if-eq v9, v12, :cond_a

    .line 231
    iget-object v9, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    return-object v9

    .line 232
    :cond_b
    sget-object v13, Lgnu/kawa/slib/printf;->Lit28:Lgnu/text/Char;

    iget-object v14, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    invoke-virtual {v9, v13, v14}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v9, v12, :cond_5f

    .line 233
    invoke-virtual {v0}, Lgnu/kawa/slib/printf$frame9;->lambda18mustAdvance()Ljava/lang/Object;

    .line 239
    sget-object v9, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    .line 240
    sget-object v13, Lgnu/kawa/slib/printf;->Lit17:Lgnu/math/IntNum;

    .line 243
    iput-object v13, v11, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    iput-object v9, v11, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    iput-object v12, v11, Lgnu/kawa/slib/printf$frame10;->leading$Mn0s:Ljava/lang/Object;

    iput-object v12, v11, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    iput-object v12, v11, Lgnu/kawa/slib/printf$frame10;->blank:Ljava/lang/Object;

    iput-object v12, v11, Lgnu/kawa/slib/printf$frame10;->signed:Ljava/lang/Object;

    iput-object v12, v11, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    .line 256
    iget-object v9, v11, Lgnu/kawa/slib/printf$frame10;->pad:Lgnu/mapping/Procedure;

    .line 306
    iput-object v9, v11, Lgnu/kawa/slib/printf$frame10;->pad:Lgnu/mapping/Procedure;

    .line 408
    :goto_6
    iget-object v9, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    sget-object v12, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v13, Lgnu/kawa/slib/printf;->Lit5:Lgnu/text/Char;

    invoke-virtual {v12, v9, v13}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v13, v14, :cond_c

    .line 409
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v9, v11, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    goto :goto_7

    .line 408
    :cond_c
    sget-object v13, Lgnu/kawa/slib/printf;->Lit6:Lgnu/text/Char;

    invoke-virtual {v12, v9, v13}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eq v13, v14, :cond_d

    .line 410
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v9, v11, Lgnu/kawa/slib/printf$frame10;->signed:Ljava/lang/Object;

    goto :goto_7

    .line 408
    :cond_d
    sget-object v13, Lgnu/kawa/slib/printf;->Lit29:Lgnu/text/Char;

    invoke-virtual {v12, v9, v13}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eq v15, v14, :cond_e

    .line 411
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v9, v11, Lgnu/kawa/slib/printf$frame10;->blank:Ljava/lang/Object;

    goto :goto_7

    .line 408
    :cond_e
    sget-object v15, Lgnu/kawa/slib/printf;->Lit8:Lgnu/text/Char;

    invoke-virtual {v12, v9, v15}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eq v15, v14, :cond_f

    .line 412
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v9, v11, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    goto :goto_7

    .line 408
    :cond_f
    sget-object v15, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    invoke-virtual {v12, v9, v15}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v9, v14, :cond_10

    .line 413
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v9, v11, Lgnu/kawa/slib/printf$frame10;->leading$Mn0s:Ljava/lang/Object;

    .line 415
    :goto_7
    invoke-virtual {v0}, Lgnu/kawa/slib/printf$frame9;->lambda18mustAdvance()Ljava/lang/Object;

    goto :goto_6

    :cond_10
    iget-object v9, v11, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    if-eq v9, v14, :cond_11

    .line 416
    iput-object v14, v11, Lgnu/kawa/slib/printf$frame10;->leading$Mn0s:Ljava/lang/Object;

    :cond_11
    iget-object v9, v11, Lgnu/kawa/slib/printf$frame10;->signed:Ljava/lang/Object;

    if-eq v9, v14, :cond_12

    .line 417
    iput-object v14, v11, Lgnu/kawa/slib/printf$frame10;->blank:Ljava/lang/Object;

    .line 419
    :cond_12
    invoke-virtual {v11}, Lgnu/kawa/slib/printf$frame10;->lambda22readFormatNumber()Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v11, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    :try_start_4
    invoke-static {v9}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_18

    invoke-static {v9}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 421
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v9, v11, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    .line 422
    sget-object v9, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    const/16 v16, 0x2

    iget-object v1, v11, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    invoke-virtual {v9, v1}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v11, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    goto :goto_8

    :cond_13
    const/16 v16, 0x2

    .line 423
    :goto_8
    sget-object v1, Lgnu/kawa/slib/printf;->Lit11:Lgnu/text/Char;

    iget-object v9, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v14, :cond_14

    .line 424
    invoke-virtual {v0}, Lgnu/kawa/slib/printf$frame9;->lambda18mustAdvance()Ljava/lang/Object;

    .line 425
    invoke-virtual {v11}, Lgnu/kawa/slib/printf$frame10;->lambda22readFormatNumber()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v11, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    .line 426
    :cond_14
    iget-object v1, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    sget-object v9, Lgnu/kawa/slib/printf;->Lit30:Lgnu/text/Char;

    invoke-virtual {v12, v1, v9}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v9, v14, :cond_15

    if-eq v9, v14, :cond_17

    goto :goto_9

    :cond_15
    sget-object v9, Lgnu/kawa/slib/printf;->Lit31:Lgnu/text/Char;

    invoke-virtual {v12, v1, v9}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v9, v14, :cond_16

    if-eq v9, v14, :cond_17

    goto :goto_9

    :cond_16
    sget-object v9, Lgnu/kawa/slib/printf;->Lit32:Lgnu/text/Char;

    invoke-virtual {v12, v1, v9}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v14, :cond_17

    .line 429
    :goto_9
    invoke-virtual {v0}, Lgnu/kawa/slib/printf$frame9;->lambda18mustAdvance()Ljava/lang/Object;

    :cond_17
    iget-object v1, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 433
    iget-object v1, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    :try_start_5
    check-cast v1, Lgnu/text/Char;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_0

    invoke-static {v1}, Lkawa/lib/rnrs/unicode;->charDowncase(Lgnu/text/Char;)Lgnu/text/Char;

    move-result-object v1

    sget-object v9, Lgnu/kawa/slib/printf;->Lit33:Lgnu/lists/PairWithPosition;

    invoke-static {v1, v9}, Lkawa/lib/lists;->memv(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v14, :cond_18

    .line 207
    sget-object v1, Lgnu/kawa/slib/printf;->Lit34:Lgnu/mapping/SimpleSymbol;

    iget-object v9, v0, Lgnu/kawa/slib/printf$frame9;->args:Lgnu/lists/LList;

    invoke-static {v9}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 p0, 0x0

    iget-object v8, v0, Lgnu/kawa/slib/printf$frame9;->format$Mnstring:Ljava/lang/Object;

    const/16 v17, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v18, "wrong number of arguments"

    aput-object v18, v3, p0

    aput-object v9, v3, v17

    aput-object v8, v3, v16

    invoke-static {v1, v3}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_18
    const/16 p0, 0x0

    const/16 v17, 0x1

    goto :goto_a

    :catch_0
    move-exception v0

    const/16 v17, 0x1

    .line 433
    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "char-downcase"

    const/4 v4, 0x1

    invoke-direct {v2, v0, v3, v4, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :cond_19
    const/16 p0, 0x0

    .line 438
    :goto_a
    iget-object v1, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/printf;->Lit35:Lgnu/text/Char;

    invoke-virtual {v12, v1, v3}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v14, :cond_1a

    if-eq v3, v14, :cond_1d

    goto :goto_b

    :cond_1a
    sget-object v3, Lgnu/kawa/slib/printf;->Lit36:Lgnu/text/Char;

    invoke-virtual {v12, v1, v3}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v14, :cond_1d

    .line 441
    :goto_b
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v3, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    sget-object v8, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v9, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, [Ljava/lang/Object;

    if-eqz v9, :cond_1b

    check-cast v8, [Ljava/lang/Object;

    goto :goto_c

    :cond_1b
    const/4 v9, 0x1

    new-array v12, v9, [Ljava/lang/Object;

    aput-object v8, v12, p0

    move-object v8, v12

    :goto_c
    invoke-static {v8}, Lkawa/lib/strings;->$make$string$([Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v14, :cond_1c

    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    :goto_d
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_1c
    return-object v1

    .line 438
    :cond_1d
    sget-object v3, Lgnu/kawa/slib/printf;->Lit37:Lgnu/text/Char;

    invoke-virtual {v12, v1, v3}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v8, "symbol->string"

    const-string v9, "make-string"

    if-eq v3, v14, :cond_1e

    if-eq v3, v14, :cond_27

    goto :goto_e

    :cond_1e
    sget-object v3, Lgnu/kawa/slib/printf;->Lit38:Lgnu/text/Char;

    invoke-virtual {v12, v1, v3}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v14, :cond_27

    .line 445
    :goto_e
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 446
    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkawa/lib/misc;->isSymbol(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_6
    check-cast v1, Lgnu/mapping/Symbol;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_1

    invoke-static {v1}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :catch_1
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v8, v4, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 447
    :cond_1f
    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v14, :cond_20

    const-string v1, "(NULL)"

    goto :goto_f

    .line 448
    :cond_20
    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 449
    :goto_f
    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    :try_start_7
    invoke-static {v3}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_a

    invoke-static {v3}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v3

    if-eqz v3, :cond_21

    if-nez v3, :cond_22

    goto :goto_10

    :cond_21
    sget-object v3, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 450
    iget-object v8, v11, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    :try_start_8
    move-object v12, v1

    check-cast v12, Ljava/lang/CharSequence;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_9

    invoke-static {v12}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v8, v12}, Lgnu/kawa/functions/NumberCompare;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v14, :cond_22

    .line 451
    :goto_10
    :try_start_9
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_3

    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    :try_start_a
    move-object v8, v3

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v3
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_2

    const/4 v8, 0x0

    invoke-static {v1, v8, v3}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_11

    :catch_2
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v4, v2, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v9, 0x1

    invoke-direct {v2, v0, v4, v9, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 453
    :cond_22
    :goto_11
    sget-object v3, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 454
    iget-object v8, v11, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    :try_start_b
    move-object v12, v1

    check-cast v12, Ljava/lang/CharSequence;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_8

    invoke-static {v12}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v8, v12}, Lgnu/kawa/functions/NumberCompare;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v14, :cond_23

    goto :goto_12

    :cond_23
    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    if-eq v3, v14, :cond_24

    sget-object v3, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 457
    iget-object v8, v11, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    :try_start_c
    move-object v12, v1

    check-cast v12, Ljava/lang/CharSequence;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_5

    invoke-static {v12}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v8, v12}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_start_d
    move-object v8, v3

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v3
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_4

    invoke-static {v3, v13}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v3}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    goto :goto_12

    :catch_4
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v9, v4, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_5
    move-exception v0

    const/4 v4, 0x1

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v0, v7, v4, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :cond_24
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 460
    iget-object v8, v11, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    :try_start_e
    move-object v12, v1

    check-cast v12, Ljava/lang/CharSequence;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_7

    invoke-static {v12}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v8, v12}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_start_f
    move-object v8, v3

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v3
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_6

    iget-object v8, v11, Lgnu/kawa/slib/printf$frame10;->leading$Mn0s:Ljava/lang/Object;

    if-eq v8, v14, :cond_25

    move-object v13, v15

    .line 461
    :cond_25
    invoke-static {v3, v13}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v1}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    :goto_12
    invoke-virtual {v0, v1}, Lgnu/kawa/slib/printf$frame9;->lambda21out$St(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v14, :cond_26

    .line 463
    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_d

    :cond_26
    return-object v1

    :catch_6
    move-exception v0

    .line 460
    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v9, v4, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_7
    move-exception v0

    const/4 v4, 0x1

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v0, v7, v4, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_8
    move-exception v0

    const/4 v4, 0x1

    .line 454
    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v0, v7, v4, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_9
    move-exception v0

    const/4 v4, 0x1

    .line 450
    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v0, v7, v4, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_a
    move-exception v0

    const/4 v4, 0x1

    .line 449
    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v6, v4, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 438
    :cond_27
    sget-object v3, Lgnu/kawa/slib/printf;->Lit39:Lgnu/text/Char;

    invoke-virtual {v12, v1, v3}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v14, :cond_28

    if-eq v3, v14, :cond_36

    goto :goto_13

    :cond_28
    sget-object v3, Lgnu/kawa/slib/printf;->Lit40:Lgnu/text/Char;

    invoke-virtual {v12, v1, v3}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v14, :cond_36

    .line 467
    :goto_13
    iget-object v1, v11, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    iput-object v1, v11, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    iput-object v10, v11, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    .line 468
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 469
    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    if-eq v3, v14, :cond_29

    move-object v3, v14

    goto :goto_14

    :cond_29
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 470
    :goto_14
    iget-object v8, v11, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    if-eq v8, v14, :cond_2a

    iget-object v8, v11, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    :try_start_10
    invoke-static {v8}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v8
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_10} :catch_b

    invoke-static {v8}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v8

    if-eqz v8, :cond_2b

    goto :goto_15

    :catch_b
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v6, v4, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_2a
    if-eq v8, v14, :cond_2b

    .line 471
    :goto_15
    sget-object v8, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    iput-object v8, v11, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    .line 472
    iget-object v8, v11, Lgnu/kawa/slib/printf$frame10;->lambda$Fn13:Lgnu/expr/ModuleMethod;

    goto :goto_16

    :cond_2b
    iget-object v8, v11, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    if-eq v8, v14, :cond_2c

    .line 476
    iget-object v8, v11, Lgnu/kawa/slib/printf$frame10;->lambda$Fn14:Lgnu/expr/ModuleMethod;

    goto :goto_16

    :cond_2c
    iget-object v8, v11, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    :try_start_11
    invoke-static {v8}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v8
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_11} :catch_12

    invoke-static {v8}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 483
    iget-object v8, v11, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    iput-object v8, v11, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    .line 484
    iget-object v8, v11, Lgnu/kawa/slib/printf$frame10;->lambda$Fn15:Lgnu/expr/ModuleMethod;

    goto :goto_16

    .line 494
    :cond_2d
    iget-object v8, v11, Lgnu/kawa/slib/printf$frame10;->lambda$Fn16:Lgnu/expr/ModuleMethod;

    :goto_16
    invoke-static {v1, v3, v14, v8}, Lgnu/kawa/slib/genwrite;->genericWrite(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v1, v11, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    if-eq v1, v14, :cond_2e

    iget-object v1, v11, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    :try_start_12
    invoke-static {v1}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_12} :catch_c

    invoke-static {v1}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_17

    :catch_c
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v6, v4, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :cond_2e
    if-eq v1, v14, :cond_2f

    .line 503
    :goto_17
    sget-object v1, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    .line 504
    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    iget-object v8, v11, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    invoke-virtual {v1, v3, v8}, Lgnu/kawa/functions/NumberCompare;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v14, :cond_35

    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v3, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    sget-object v8, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v12, v11, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    iget-object v14, v11, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    invoke-virtual {v8, v12, v14}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :try_start_13
    move-object v12, v8

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v8
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_13} :catch_d

    invoke-static {v8, v13}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_19

    :catch_d
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v9, v4, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_2f
    iget-object v1, v11, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    if-eq v1, v14, :cond_31

    .line 506
    sget-object v1, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    .line 507
    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    sget-object v8, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v12, v11, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    iget-object v15, v11, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    invoke-virtual {v8, v12, v15}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v1, v3, v12}, Lgnu/kawa/functions/NumberCompare;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v14, :cond_30

    .line 508
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v3, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    iget-object v12, v11, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    iget-object v14, v11, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    iget-object v15, v11, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    invoke-virtual {v8, v14, v15}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v8, v12, v14}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :try_start_14
    move-object v12, v8

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v8
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_14 .. :try_end_14} :catch_e

    invoke-static {v8, v13}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    const/4 v3, 0x1

    goto :goto_19

    :catch_e
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v9, v3, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_31
    const/4 v3, 0x1

    .line 509
    iget-object v1, v11, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    if-eq v1, v14, :cond_32

    const/16 v17, 0x1

    goto :goto_18

    :cond_32
    const/16 v17, 0x0

    :goto_18
    add-int/lit8 v17, v17, 0x1

    and-int/lit8 v8, v17, 0x1

    if-eqz v8, :cond_33

    goto :goto_19

    .line 502
    :cond_33
    sget-object v3, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 510
    iget-object v8, v11, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    :try_start_15
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_15} :catch_11

    invoke-static {v1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v8, v1}, Lgnu/kawa/functions/NumberCompare;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v14, :cond_34

    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v3, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    iget-object v8, v11, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    invoke-virtual {v1, v3, v8}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 511
    :cond_34
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v3, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    sget-object v8, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 512
    iget-object v12, v11, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    iget-object v15, v11, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    :try_start_16
    check-cast v15, Ljava/lang/CharSequence;
    :try_end_16
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_16} :catch_10

    invoke-static {v15}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v12, v15}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :try_start_17
    move-object v12, v8

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v8
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_17} :catch_f

    invoke-static {v8, v13}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v14, :cond_35

    .line 513
    iget-object v3, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    iget-object v8, v11, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    invoke-virtual {v1, v3, v8}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    :cond_35
    :goto_19
    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_d

    :catch_f
    move-exception v0

    .line 512
    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v9, v4, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_10
    move-exception v0

    const/4 v4, 0x1

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v7, v4, v15}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_11
    move-exception v0

    const/4 v4, 0x1

    .line 510
    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v0, v7, v4, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_12
    move-exception v0

    const/4 v4, 0x1

    .line 482
    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v6, v4, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 438
    :cond_36
    sget-object v3, Lgnu/kawa/slib/printf;->Lit12:Lgnu/text/Char;

    invoke-virtual {v12, v1, v3}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v14, :cond_37

    if-eq v3, v14, :cond_3d

    goto :goto_1a

    :cond_37
    sget-object v3, Lgnu/kawa/slib/printf;->Lit41:Lgnu/text/Char;

    invoke-virtual {v12, v1, v3}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v14, :cond_38

    if-eq v3, v14, :cond_3d

    goto :goto_1a

    :cond_38
    sget-object v3, Lgnu/kawa/slib/printf;->Lit3:Lgnu/text/Char;

    invoke-virtual {v12, v1, v3}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v14, :cond_39

    if-eq v3, v14, :cond_3d

    goto :goto_1a

    :cond_39
    sget-object v3, Lgnu/kawa/slib/printf;->Lit42:Lgnu/text/Char;

    invoke-virtual {v12, v1, v3}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v14, :cond_3a

    if-eq v3, v14, :cond_3d

    goto :goto_1a

    :cond_3a
    sget-object v3, Lgnu/kawa/slib/printf;->Lit43:Lgnu/text/Char;

    invoke-virtual {v12, v1, v3}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v14, :cond_3b

    if-eq v3, v14, :cond_3d

    goto :goto_1a

    :cond_3b
    sget-object v3, Lgnu/kawa/slib/printf;->Lit44:Lgnu/text/Char;

    invoke-virtual {v12, v1, v3}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v14, :cond_3d

    .line 516
    :goto_1a
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lgnu/kawa/slib/printf;->Lit45:Lgnu/math/IntNum;

    invoke-virtual {v11, v1, v3, v14}, Lgnu/kawa/slib/printf$frame10;->lambda24integerConvert(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/kawa/slib/printf$frame9;->lambda21out$St(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v14, :cond_3c

    .line 517
    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_d

    :cond_3c
    return-object v1

    .line 438
    :cond_3d
    sget-object v3, Lgnu/kawa/slib/printf;->Lit46:Lgnu/text/Char;

    invoke-virtual {v12, v1, v3}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v14, :cond_3e

    if-eq v3, v14, :cond_40

    goto :goto_1b

    :cond_3e
    sget-object v3, Lgnu/kawa/slib/printf;->Lit47:Lgnu/text/Char;

    invoke-virtual {v12, v1, v3}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v14, :cond_40

    .line 519
    :goto_1b
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lgnu/kawa/slib/printf;->Lit48:Lgnu/math/IntNum;

    invoke-virtual {v11, v1, v3, v14}, Lgnu/kawa/slib/printf$frame10;->lambda24integerConvert(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/kawa/slib/printf$frame9;->lambda21out$St(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v14, :cond_3f

    .line 520
    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_d

    :cond_3f
    return-object v1

    .line 438
    :cond_40
    sget-object v3, Lgnu/kawa/slib/printf;->Lit49:Lgnu/text/Char;

    invoke-virtual {v12, v1, v3}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v14, :cond_43

    .line 522
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 523
    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lgnu/kawa/slib/printf;->Lit50:Lgnu/math/IntNum;

    sget-boolean v8, Lgnu/kawa/slib/printf;->stdio$Clhex$Mnupper$Mncase$Qu:Z

    if-eqz v8, :cond_41

    .line 524
    sget-object v8, Lkawa/lib/rnrs/unicode;->string$Mndowncase:Lgnu/expr/ModuleMethod;

    goto :goto_1c

    :cond_41
    move-object v8, v14

    :goto_1c
    invoke-virtual {v11, v1, v3, v8}, Lgnu/kawa/slib/printf$frame10;->lambda24integerConvert(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/kawa/slib/printf$frame9;->lambda21out$St(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v14, :cond_42

    .line 525
    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_d

    :cond_42
    return-object v1

    .line 438
    :cond_43
    sget-object v3, Lgnu/kawa/slib/printf;->Lit51:Lgnu/text/Char;

    invoke-virtual {v12, v1, v3}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v14, :cond_46

    .line 527
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 528
    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lgnu/kawa/slib/printf;->Lit50:Lgnu/math/IntNum;

    sget-boolean v8, Lgnu/kawa/slib/printf;->stdio$Clhex$Mnupper$Mncase$Qu:Z

    if-eqz v8, :cond_44

    move-object v8, v14

    goto :goto_1d

    .line 529
    :cond_44
    sget-object v8, Lkawa/lib/rnrs/unicode;->string$Mnupcase:Lgnu/expr/ModuleMethod;

    :goto_1d
    invoke-virtual {v11, v1, v3, v8}, Lgnu/kawa/slib/printf$frame10;->lambda24integerConvert(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/kawa/slib/printf$frame9;->lambda21out$St(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v14, :cond_45

    .line 530
    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_d

    :cond_45
    return-object v1

    .line 438
    :cond_46
    sget-object v3, Lgnu/kawa/slib/printf;->Lit52:Lgnu/text/Char;

    invoke-virtual {v12, v1, v3}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v14, :cond_47

    if-eq v3, v14, :cond_49

    goto :goto_1e

    :cond_47
    sget-object v3, Lgnu/kawa/slib/printf;->Lit53:Lgnu/text/Char;

    invoke-virtual {v12, v1, v3}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v14, :cond_49

    .line 532
    :goto_1e
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lgnu/kawa/slib/printf;->Lit14:Lgnu/math/IntNum;

    invoke-virtual {v11, v1, v3, v14}, Lgnu/kawa/slib/printf$frame10;->lambda24integerConvert(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/kawa/slib/printf$frame9;->lambda21out$St(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v14, :cond_48

    .line 533
    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_d

    :cond_48
    return-object v1

    .line 438
    :cond_49
    sget-object v3, Lgnu/kawa/slib/printf;->Lit28:Lgnu/text/Char;

    invoke-virtual {v12, v1, v3}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v9, v14, :cond_4b

    .line 534
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v8, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    invoke-virtual {v1, v8, v3}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v14, :cond_4a

    iget-object v9, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    goto/16 :goto_d

    :cond_4a
    return-object v1

    .line 438
    :cond_4b
    sget-object v9, Lgnu/kawa/slib/printf;->Lit25:Lgnu/text/Char;

    invoke-virtual {v12, v1, v9}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v9, v14, :cond_4d

    if-eq v9, v14, :cond_4c

    goto :goto_1f

    :cond_4c
    const/4 v8, 0x0

    goto/16 :goto_24

    :cond_4d
    sget-object v9, Lgnu/kawa/slib/printf;->Lit26:Lgnu/text/Char;

    invoke-virtual {v12, v1, v9}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v9, v14, :cond_4e

    if-eq v9, v14, :cond_4c

    goto :goto_1f

    :cond_4e
    sget-object v9, Lgnu/kawa/slib/printf;->Lit13:Lgnu/text/Char;

    invoke-virtual {v12, v1, v9}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v9, v14, :cond_4f

    if-eq v9, v14, :cond_4c

    goto :goto_1f

    :cond_4f
    sget-object v9, Lgnu/kawa/slib/printf;->Lit54:Lgnu/text/Char;

    invoke-virtual {v12, v1, v9}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v9, v14, :cond_50

    if-eq v9, v14, :cond_4c

    goto :goto_1f

    :cond_50
    sget-object v9, Lgnu/kawa/slib/printf;->Lit55:Lgnu/text/Char;

    invoke-virtual {v12, v1, v9}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v9, v14, :cond_51

    if-eq v9, v14, :cond_4c

    goto :goto_1f

    :cond_51
    sget-object v9, Lgnu/kawa/slib/printf;->Lit56:Lgnu/text/Char;

    invoke-virtual {v12, v1, v9}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v9, v14, :cond_52

    if-eq v9, v14, :cond_4c

    goto :goto_1f

    :cond_52
    sget-object v9, Lgnu/kawa/slib/printf;->Lit57:Lgnu/text/Char;

    invoke-virtual {v12, v1, v9}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v9, v14, :cond_53

    if-eq v9, v14, :cond_4c

    goto :goto_1f

    :cond_53
    sget-object v9, Lgnu/kawa/slib/printf;->Lit58:Lgnu/text/Char;

    invoke-virtual {v12, v1, v9}, Lgnu/kawa/functions/IsEqv;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v14, :cond_4c

    .line 536
    :goto_1f
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    .line 306
    new-instance v9, Lgnu/kawa/slib/printf$frame11;

    invoke-direct {v9}, Lgnu/kawa/slib/printf$frame11;-><init>()V

    iput-object v11, v9, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iput-object v3, v9, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    .line 307
    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    :try_start_18
    invoke-static {v3}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v3
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_18} :catch_17

    invoke-static {v3}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 376
    sget-object v3, Lgnu/kawa/slib/printf;->Lit59:Lgnu/math/IntNum;

    iput-object v3, v11, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    goto :goto_21

    .line 377
    :cond_54
    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    :try_start_19
    check-cast v3, Ljava/lang/Number;
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_19 .. :try_end_19} :catch_16

    invoke-static {v3}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v3

    if-eqz v3, :cond_55

    iget-object v3, v9, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    :try_start_1a
    check-cast v3, Lgnu/text/Char;
    :try_end_1a
    .catch Ljava/lang/ClassCastException; {:try_start_1a .. :try_end_1a} :catch_13

    sget-object v12, Lgnu/kawa/slib/printf;->Lit55:Lgnu/text/Char;

    invoke-static {v3, v12}, Lkawa/lib/rnrs/unicode;->isCharCi$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v3

    if-eqz v3, :cond_56

    goto :goto_20

    :catch_13
    move-exception v0

    .line 378
    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "char-ci=?"

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v4, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_55
    if-eqz v3, :cond_56

    .line 379
    :goto_20
    sget-object v3, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    iput-object v3, v11, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    .line 381
    :cond_56
    :goto_21
    invoke-static {v1}, Lkawa/lib/numbers;->isNumber(Ljava/lang/Object;)Z

    move-result v3

    const-string v12, "???"

    if-eqz v3, :cond_57

    .line 382
    :try_start_1b
    check-cast v1, Ljava/lang/Number;
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_1b} :catch_14

    invoke-static {v1}, Lkawa/lib/numbers;->exact$To$Inexact(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    invoke-static {v1}, Lkawa/lib/numbers;->number$To$String(Ljava/lang/Number;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_22

    :catch_14
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "exact->inexact"

    const/4 v4, 0x1

    invoke-direct {v2, v0, v3, v4, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :cond_57
    invoke-static {v1}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    goto :goto_22

    .line 383
    :cond_58
    invoke-static {v1}, Lkawa/lib/misc;->isSymbol(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 384
    :try_start_1c
    check-cast v1, Lgnu/mapping/Symbol;
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_1c .. :try_end_1c} :catch_15

    invoke-static {v1}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :catch_15
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v8, v4, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :cond_59
    move-object v1, v12

    .line 386
    :goto_22
    iget-object v3, v9, Lgnu/kawa/slib/printf$frame11;->format$Mnreal:Lgnu/mapping/Procedure;

    iput-object v3, v9, Lgnu/kawa/slib/printf$frame11;->format$Mnreal:Lgnu/mapping/Procedure;

    .line 400
    iget-object v3, v9, Lgnu/kawa/slib/printf$frame11;->lambda$Fn17:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v3}, Lgnu/kawa/slib/printf;->stdio$ClParseFloat(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v8, 0x0

    if-eq v1, v14, :cond_5a

    goto :goto_23

    :cond_5a
    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v1}, Lgnu/kawa/slib/printf$frame10;->lambda23pad$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_23
    invoke-virtual {v0, v1}, Lgnu/kawa/slib/printf$frame9;->lambda21out$St(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v14, :cond_5b

    .line 536
    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v3, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lgnu/mapping/ProcedureN;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_0

    :cond_5b
    return-object v1

    :catch_16
    move-exception v0

    .line 377
    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "zero?"

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v4, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_17
    move-exception v0

    const/4 v4, 0x1

    .line 375
    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v6, v4, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 538
    :goto_24
    invoke-virtual {v0}, Lgnu/kawa/slib/printf$frame9;->lambda19isEndOfFormat()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 539
    invoke-virtual {v0}, Lgnu/kawa/slib/printf$frame9;->lambda20incomplete()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 540
    :cond_5c
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v9, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    invoke-virtual {v1, v9, v3}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v14, :cond_5e

    iget-object v3, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    iget-object v9, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    invoke-virtual {v1, v3, v9}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v14, :cond_5e

    iget-object v3, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    sget-object v9, Lgnu/kawa/slib/printf;->Lit65:Lgnu/text/Char;

    invoke-virtual {v1, v3, v9}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v14, :cond_5d

    iget-object v9, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5d
    return-object v1

    :cond_5e
    return-object v3

    :catch_18
    move-exception v0

    .line 420
    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v6, v4, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_5f
    const/16 v16, 0x2

    .line 541
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v3, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    iget-object v9, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    invoke-virtual {v1, v3, v9}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v12, :cond_60

    iget-object v9, v11, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_60
    return-object v1

    :catch_19
    move-exception v0

    const/16 v16, 0x2

    .line 196
    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v5, v2, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_1a
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v5, v4, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_1b
    move-exception v0

    const/4 v4, 0x1

    .line 191
    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v5, v4, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_1c
    move-exception v0

    const/4 v4, 0x1

    .line 190
    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v7, v4, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 541
    :cond_61
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method

.method public static stdio$ClParseFloat(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 34
    new-instance v0, Lgnu/kawa/slib/printf$frame;

    invoke-direct {v0}, Lgnu/kawa/slib/printf$frame;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    iput-object p1, v0, Lgnu/kawa/slib/printf$frame;->proc:Ljava/lang/Object;

    .line 35
    :try_start_0
    check-cast p0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result p0

    iput p0, v0, Lgnu/kawa/slib/printf$frame;->n:I

    .line 105
    sget-object p0, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    iget-object p1, v0, Lgnu/kawa/slib/printf$frame;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    invoke-virtual {v0, p0, p1}, Lgnu/kawa/slib/printf$frame;->lambda4real(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    .line 35
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "string-length"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0
.end method

.method public static stdio$ClRoundString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 138
    new-instance v2, Lgnu/kawa/slib/printf$frame8;

    invoke-direct {v2}, Lgnu/kawa/slib/printf$frame8;-><init>()V

    move-object/from16 v3, p0

    iput-object v3, v2, Lgnu/kawa/slib/printf$frame8;->str:Ljava/lang/CharSequence;

    .line 139
    invoke-static {v3}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 141
    sget-object v5, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    sget-object v6, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v5, v0, v6}, Lgnu/kawa/functions/NumberCompare;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v10, "substring"

    const-string v12, "x"

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-eq v7, v8, :cond_0

    const-string v0, ""

    goto/16 :goto_5

    :cond_0
    sget-object v7, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 142
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15, v0}, Lgnu/kawa/functions/NumberCompare;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eq v15, v8, :cond_1

    iget-object v0, v2, Lgnu/kawa/slib/printf$frame8;->str:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 143
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v15, v0}, Lgnu/kawa/functions/NumberCompare;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v15, "zero?"

    if-eq v5, v8, :cond_5

    .line 144
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    if-eq v1, v8, :cond_2

    move-object v0, v1

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v5, v13, [Ljava/lang/Object;

    aput-object v6, v5, v14

    aput-object v0, v5, v4

    invoke-static {v5}, Lkawa/lib/numbers;->max([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 145
    :try_start_0
    move-object v0, v5

    check-cast v0, Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {v0}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v2, Lgnu/kawa/slib/printf$frame8;->str:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 147
    :cond_3
    iget-object v0, v2, Lgnu/kawa/slib/printf$frame8;->str:Ljava/lang/CharSequence;

    :try_start_1
    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v2, v2, Lgnu/kawa/slib/printf$frame8;->str:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v2

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    invoke-static {v2}, Lkawa/lib/rnrs/unicode;->isCharNumeric(Lgnu/text/Char;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 149
    sget-object v2, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    goto :goto_0

    :cond_4
    sget-object v2, Lgnu/kawa/slib/printf;->Lit8:Lgnu/text/Char;

    :goto_0
    invoke-static {v5, v2}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v0, v3, v14

    aput-object v2, v3, v4

    invoke-static {v3}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    .line 148
    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "make-string"

    invoke-direct {v1, v0, v2, v4, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v0

    .line 145
    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v15, v4, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 153
    :cond_5
    iget-object v5, v2, Lgnu/kawa/slib/printf$frame8;->str:Ljava/lang/CharSequence;

    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v8, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v6, v0, v8}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    :try_start_2
    move-object/from16 v16, v11

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v11
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_d

    invoke-static {v5, v14, v11}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 159
    invoke-virtual {v6, v8, v0}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Lgnu/kawa/slib/printf$frame8;->lambda17dig(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 160
    sget-object v11, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    sget-object v9, Lgnu/kawa/slib/printf;->Lit15:Lgnu/math/IntNum;

    invoke-virtual {v11, v8, v9}, Lgnu/kawa/functions/NumberCompare;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    :try_start_3
    move-object/from16 v17, v11

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_c

    if-eqz v11, :cond_6

    if-eqz v11, :cond_b

    goto :goto_2

    .line 161
    :cond_6
    invoke-virtual {v7, v8, v9}, Lgnu/kawa/functions/NumberCompare;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :try_start_4
    move-object v8, v7

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_b

    if-eqz v7, :cond_8

    .line 162
    sget-object v7, Lgnu/kawa/slib/printf;->Lit14:Lgnu/math/IntNum;

    invoke-virtual {v6, v7, v0}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 163
    :goto_1
    sget-object v7, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lgnu/kawa/functions/NumberCompare;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_7

    .line 164
    invoke-virtual {v2, v0}, Lgnu/kawa/slib/printf$frame8;->lambda17dig(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    and-int/2addr v3, v4

    if-eqz v3, :cond_b

    goto :goto_2

    .line 165
    :cond_7
    invoke-virtual {v2, v6}, Lgnu/kawa/slib/printf$frame8;->lambda17dig(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :try_start_5
    check-cast v7, Ljava/lang/Number;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_2

    invoke-static {v7}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 166
    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v8, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v7, v6, v8}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    :catch_2
    move-exception v0

    .line 165
    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v15, v4, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_8
    if-eqz v7, :cond_b

    :cond_9
    :goto_2
    move-object v3, v0

    .line 169
    :goto_3
    invoke-virtual {v2, v3}, Lgnu/kawa/slib/printf$frame8;->lambda17dig(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 170
    sget-object v6, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    sget-object v7, Lgnu/kawa/slib/printf;->Lit16:Lgnu/math/IntNum;

    invoke-virtual {v6, v0, v7}, Lgnu/kawa/functions/NumberCompare;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v8, "string-set!"

    if-eq v6, v7, :cond_a

    .line 171
    :try_start_6
    move-object v2, v5

    check-cast v2, Lgnu/lists/CharSeq;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_5

    :try_start_7
    move-object v6, v3

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v3
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_4

    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 173
    sget-object v7, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v6, v0, v7}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :try_start_8
    check-cast v6, Ljava/lang/Number;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_3

    invoke-static {v6}, Lkawa/lib/numbers;->number$To$String(Ljava/lang/Number;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v14}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v0

    invoke-static {v2, v3, v0}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    goto :goto_4

    :catch_3
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "number->string"

    invoke-direct {v1, v0, v2, v4, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_4
    move-exception v0

    .line 171
    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v8, v13, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v8, v4, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 175
    :cond_a
    :try_start_9
    move-object v0, v5

    check-cast v0, Lgnu/lists/CharSeq;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_7

    :try_start_a
    move-object v6, v3

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_6

    const/16 v7, 0x30

    invoke-static {v0, v6, v7}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    .line 176
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v6, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v0, v3, v6}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    :catch_6
    move-exception v0

    .line 175
    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v8, v13, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_7
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v8, v4, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_b
    :goto_4
    move-object v0, v5

    .line 178
    :goto_5
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_e

    .line 179
    invoke-static {v0}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v2

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 180
    :goto_6
    sget-object v3, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v3, v2, v1}, Lgnu/kawa/functions/NumberCompare;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_start_b
    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_a

    if-eqz v3, :cond_c

    if-eqz v3, :cond_d

    goto :goto_7

    :cond_c
    sget-object v3, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    :try_start_c
    move-object v4, v2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_9

    .line 0
    invoke-static {v0, v4, v3}, Lcom/google/youngandroid/a;->l(Ljava/lang/CharSequence;ILgnu/text/Char;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 182
    :goto_7
    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v3, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_d
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_8

    invoke-static {v0, v14, v1}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :catch_8
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v10, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 183
    :cond_d
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v3, v2, v4}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_6

    :catch_9
    move-exception v0

    .line 181
    new-instance v1, Lgnu/mapping/WrongType;

    const-string v3, "string-ref"

    invoke-direct {v1, v0, v3, v13, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_a
    move-exception v0

    .line 180
    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v12, v2, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_e
    return-object v0

    :catch_b
    move-exception v0

    const/4 v2, -0x2

    .line 161
    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v12, v2, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_c
    move-exception v0

    const/4 v2, -0x2

    .line 160
    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v12, v2, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_d
    move-exception v0

    .line 153
    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v3, 0x3

    invoke-direct {v1, v0, v10, v3, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 34
    invoke-static {p2, p3}, Lgnu/kawa/slib/printf;->stdio$ClParseFloat(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 138
    :try_start_0
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/printf;->stdio$ClRoundString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "stdio:round-string"

    const/4 v0, 0x1

    invoke-direct {p3, p1, p4, v0, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 556
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    aget-object p1, p2, v1

    aget-object v0, p2, v2

    array-length v1, p2

    add-int/lit8 v1, v1, -0x2

    new-array v3, v1, [Ljava/lang/Object;

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-gez v2, :cond_0

    invoke-static {p1, v0, v3}, Lgnu/kawa/slib/printf;->sprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    aget-object v1, p2, v1

    aput-object v1, v3, v2

    move v1, v2

    goto :goto_0

    .line 553
    :pswitch_1
    aget-object p1, p2, v1

    array-length v0, p2

    sub-int/2addr v0, v2

    new-array v3, v0, [Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-gez v1, :cond_1

    invoke-static {p1, v3}, Lgnu/kawa/slib/printf;->printf$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    aget-object v0, p2, v0

    aput-object v0, v3, v1

    move v0, v1

    goto :goto_1

    .line 543
    :pswitch_2
    aget-object p1, p2, v1

    aget-object v0, p2, v2

    array-length v1, p2

    add-int/lit8 v1, v1, -0x2

    new-array v3, v1, [Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v1, -0x1

    if-gez v2, :cond_2

    invoke-static {p1, v0, v3}, Lgnu/kawa/slib/printf;->fprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    aget-object v1, p2, v1

    aput-object v1, v3, v2

    move v1, v2

    goto :goto_2

    .line 186
    :pswitch_3
    aget-object p1, p2, v1

    aget-object v0, p2, v2

    array-length v1, p2

    add-int/lit8 v1, v1, -0x2

    new-array v2, v1, [Ljava/lang/Object;

    :goto_3
    add-int/lit8 v3, v1, -0x1

    if-gez v3, :cond_3

    invoke-static {p1, v0, v2}, Lgnu/kawa/slib/printf;->stdio$ClIprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    aget-object v1, p2, v1

    aput-object v1, v2, v3

    move v1, v3

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 34
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x2

    iput p1, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    .line 138
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x3

    iput p1, p5, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    const p1, -0xbffff

    return p1

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    packed-switch v0, :pswitch_data_0

    .line 186
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 556
    :pswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 553
    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 543
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 186
    :pswitch_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1

    .line 21
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 24
    sget-object p1, Lgnu/kawa/slib/printf;->Lit0:Lgnu/math/IntNum;

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lkawa/lib/numbers;->number$To$String(Ljava/lang/Number;I)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "-F"

    invoke-static {v0, p1}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lgnu/kawa/slib/printf;->stdio$Clhex$Mnupper$Mncase$Qu:Z

    return-void
.end method
