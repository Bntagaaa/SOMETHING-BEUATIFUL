.class public Lkawa/lib/rnrs/unicode;
.super Lgnu/expr/ModuleBody;
.source "SourceFile"


# static fields
.field public static final $instance:Lkawa/lib/rnrs/unicode;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit27:Lgnu/mapping/SimpleSymbol;

.field static final Lit28:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final char$Mnalphabetic$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mnci$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mnci$Gr$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mnci$Gr$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mnci$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mnci$Ls$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mndowncase:Lgnu/expr/ModuleMethod;

.field public static final char$Mnfoldcase:Lgnu/expr/ModuleMethod;

.field public static final char$Mngeneral$Mncategory:Lgnu/expr/ModuleMethod;

.field public static final char$Mnlower$Mncase$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mnnumeric$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mntitle$Mncase$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mntitlecase:Lgnu/expr/ModuleMethod;

.field public static final char$Mnupcase:Lgnu/expr/ModuleMethod;

.field public static final char$Mnupper$Mncase$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mnwhitespace$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Mnci$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Mnci$Gr$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Mnci$Gr$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Mnci$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Mnci$Ls$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Mndowncase:Lgnu/expr/ModuleMethod;

.field public static final string$Mnfoldcase:Lgnu/expr/ModuleMethod;

.field public static final string$Mnnormalize$Mnnfc:Lgnu/expr/ModuleMethod;

.field public static final string$Mnnormalize$Mnnfd:Lgnu/expr/ModuleMethod;

.field public static final string$Mnnormalize$Mnnfkc:Lgnu/expr/ModuleMethod;

.field public static final string$Mnnormalize$Mnnfkd:Lgnu/expr/ModuleMethod;

.field public static final string$Mntitlecase:Lgnu/expr/ModuleMethod;

.field public static final string$Mnupcase:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 33

    const-string v0, "string-normalize-nfkc"

    .line 0
    invoke-static {v0}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit28:Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-normalize-nfc"

    .line 0
    invoke-static {v1}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 0
    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/rnrs/unicode;->Lit27:Lgnu/mapping/SimpleSymbol;

    const-string v2, "string-normalize-nfkd"

    .line 0
    invoke-static {v2}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 0
    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lkawa/lib/rnrs/unicode;->Lit26:Lgnu/mapping/SimpleSymbol;

    const-string v3, "string-normalize-nfd"

    .line 0
    invoke-static {v3}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 0
    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/rnrs/unicode;->Lit25:Lgnu/mapping/SimpleSymbol;

    const-string v4, "string-ci>=?"

    .line 0
    invoke-static {v4}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 0
    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lkawa/lib/rnrs/unicode;->Lit24:Lgnu/mapping/SimpleSymbol;

    const-string v5, "string-ci<=?"

    .line 0
    invoke-static {v5}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 0
    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lkawa/lib/rnrs/unicode;->Lit23:Lgnu/mapping/SimpleSymbol;

    const-string v6, "string-ci>?"

    .line 0
    invoke-static {v6}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 0
    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lkawa/lib/rnrs/unicode;->Lit22:Lgnu/mapping/SimpleSymbol;

    const-string v7, "string-ci<?"

    .line 0
    invoke-static {v7}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 0
    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lkawa/lib/rnrs/unicode;->Lit21:Lgnu/mapping/SimpleSymbol;

    const-string v8, "string-ci=?"

    .line 0
    invoke-static {v8}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 0
    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lkawa/lib/rnrs/unicode;->Lit20:Lgnu/mapping/SimpleSymbol;

    const-string v9, "string-foldcase"

    .line 0
    invoke-static {v9}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 0
    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sput-object v9, Lkawa/lib/rnrs/unicode;->Lit19:Lgnu/mapping/SimpleSymbol;

    const-string v10, "string-titlecase"

    .line 0
    invoke-static {v10}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 0
    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sput-object v10, Lkawa/lib/rnrs/unicode;->Lit18:Lgnu/mapping/SimpleSymbol;

    const-string v11, "string-downcase"

    .line 0
    invoke-static {v11}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 0
    check-cast v11, Lgnu/mapping/SimpleSymbol;

    sput-object v11, Lkawa/lib/rnrs/unicode;->Lit17:Lgnu/mapping/SimpleSymbol;

    const-string v12, "string-upcase"

    .line 0
    invoke-static {v12}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 0
    check-cast v12, Lgnu/mapping/SimpleSymbol;

    sput-object v12, Lkawa/lib/rnrs/unicode;->Lit16:Lgnu/mapping/SimpleSymbol;

    const-string v13, "char-general-category"

    .line 0
    invoke-static {v13}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 0
    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sput-object v13, Lkawa/lib/rnrs/unicode;->Lit15:Lgnu/mapping/SimpleSymbol;

    const-string v14, "char-ci>=?"

    .line 0
    invoke-static {v14}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 0
    check-cast v14, Lgnu/mapping/SimpleSymbol;

    sput-object v14, Lkawa/lib/rnrs/unicode;->Lit14:Lgnu/mapping/SimpleSymbol;

    const-string v15, "char-ci<=?"

    .line 0
    invoke-static {v15}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 0
    check-cast v15, Lgnu/mapping/SimpleSymbol;

    sput-object v15, Lkawa/lib/rnrs/unicode;->Lit13:Lgnu/mapping/SimpleSymbol;

    const-string v16, "char-ci>?"

    .line 0
    invoke-static/range {v16 .. v16}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v0

    .line 0
    move-object/from16 v0, v16

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit12:Lgnu/mapping/SimpleSymbol;

    const-string v16, "char-ci<?"

    .line 0
    invoke-static/range {v16 .. v16}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v18, v1

    .line 0
    move-object/from16 v1, v16

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/rnrs/unicode;->Lit11:Lgnu/mapping/SimpleSymbol;

    const-string v16, "char-ci=?"

    .line 0
    invoke-static/range {v16 .. v16}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v2

    .line 0
    move-object/from16 v2, v16

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lkawa/lib/rnrs/unicode;->Lit10:Lgnu/mapping/SimpleSymbol;

    const-string v16, "char-foldcase"

    .line 0
    invoke-static/range {v16 .. v16}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v20, v3

    .line 0
    move-object/from16 v3, v16

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/rnrs/unicode;->Lit9:Lgnu/mapping/SimpleSymbol;

    const-string v16, "char-title-case?"

    .line 0
    invoke-static/range {v16 .. v16}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v21, v4

    .line 0
    move-object/from16 v4, v16

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lkawa/lib/rnrs/unicode;->Lit8:Lgnu/mapping/SimpleSymbol;

    const-string v16, "char-lower-case?"

    .line 0
    invoke-static/range {v16 .. v16}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v22, v5

    .line 0
    move-object/from16 v5, v16

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lkawa/lib/rnrs/unicode;->Lit7:Lgnu/mapping/SimpleSymbol;

    const-string v16, "char-upper-case?"

    .line 0
    invoke-static/range {v16 .. v16}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v23, v6

    .line 0
    move-object/from16 v6, v16

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lkawa/lib/rnrs/unicode;->Lit6:Lgnu/mapping/SimpleSymbol;

    const-string v16, "char-whitespace?"

    .line 0
    invoke-static/range {v16 .. v16}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v24, v7

    .line 0
    move-object/from16 v7, v16

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lkawa/lib/rnrs/unicode;->Lit5:Lgnu/mapping/SimpleSymbol;

    const-string v16, "char-numeric?"

    .line 0
    invoke-static/range {v16 .. v16}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v25, v8

    .line 0
    move-object/from16 v8, v16

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lkawa/lib/rnrs/unicode;->Lit4:Lgnu/mapping/SimpleSymbol;

    const-string v16, "char-alphabetic?"

    .line 0
    invoke-static/range {v16 .. v16}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v26, v9

    .line 0
    move-object/from16 v9, v16

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sput-object v9, Lkawa/lib/rnrs/unicode;->Lit3:Lgnu/mapping/SimpleSymbol;

    const-string v16, "char-titlecase"

    .line 0
    invoke-static/range {v16 .. v16}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v27, v10

    .line 0
    move-object/from16 v10, v16

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sput-object v10, Lkawa/lib/rnrs/unicode;->Lit2:Lgnu/mapping/SimpleSymbol;

    const-string v16, "char-downcase"

    .line 0
    invoke-static/range {v16 .. v16}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v28, v11

    .line 0
    move-object/from16 v11, v16

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    sput-object v11, Lkawa/lib/rnrs/unicode;->Lit1:Lgnu/mapping/SimpleSymbol;

    const-string v16, "char-upcase"

    .line 0
    invoke-static/range {v16 .. v16}, Lcom/google/youngandroid/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v29, v12

    .line 0
    move-object/from16 v12, v16

    check-cast v12, Lgnu/mapping/SimpleSymbol;

    sput-object v12, Lkawa/lib/rnrs/unicode;->Lit0:Lgnu/mapping/SimpleSymbol;

    move-object/from16 v16, v13

    new-instance v13, Lkawa/lib/rnrs/unicode;

    invoke-direct {v13}, Lkawa/lib/rnrs/unicode;-><init>()V

    sput-object v13, Lkawa/lib/rnrs/unicode;->$instance:Lkawa/lib/rnrs/unicode;

    move-object/from16 v30, v14

    new-instance v14, Lgnu/expr/ModuleMethod;

    move-object/from16 v31, v15

    const/4 v15, 0x1

    move-object/from16 v32, v0

    const/16 v0, 0x1001

    invoke-direct {v14, v13, v15, v12, v0}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v14, Lkawa/lib/rnrs/unicode;->char$Mnupcase:Lgnu/expr/ModuleMethod;

    new-instance v12, Lgnu/expr/ModuleMethod;

    const/4 v14, 0x2

    invoke-direct {v12, v13, v14, v11, v0}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v12, Lkawa/lib/rnrs/unicode;->char$Mndowncase:Lgnu/expr/ModuleMethod;

    new-instance v11, Lgnu/expr/ModuleMethod;

    const/4 v12, 0x3

    invoke-direct {v11, v13, v12, v10, v0}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v11, Lkawa/lib/rnrs/unicode;->char$Mntitlecase:Lgnu/expr/ModuleMethod;

    new-instance v10, Lgnu/expr/ModuleMethod;

    const/4 v11, 0x4

    invoke-direct {v10, v13, v11, v9, v0}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v10, Lkawa/lib/rnrs/unicode;->char$Mnalphabetic$Qu:Lgnu/expr/ModuleMethod;

    new-instance v9, Lgnu/expr/ModuleMethod;

    const/4 v10, 0x5

    invoke-direct {v9, v13, v10, v8, v0}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v9, Lkawa/lib/rnrs/unicode;->char$Mnnumeric$Qu:Lgnu/expr/ModuleMethod;

    new-instance v8, Lgnu/expr/ModuleMethod;

    const/4 v9, 0x6

    invoke-direct {v8, v13, v9, v7, v0}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v8, Lkawa/lib/rnrs/unicode;->char$Mnwhitespace$Qu:Lgnu/expr/ModuleMethod;

    new-instance v7, Lgnu/expr/ModuleMethod;

    const/4 v8, 0x7

    invoke-direct {v7, v13, v8, v6, v0}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v7, Lkawa/lib/rnrs/unicode;->char$Mnupper$Mncase$Qu:Lgnu/expr/ModuleMethod;

    new-instance v6, Lgnu/expr/ModuleMethod;

    const/16 v7, 0x8

    invoke-direct {v6, v13, v7, v5, v0}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v6, Lkawa/lib/rnrs/unicode;->char$Mnlower$Mncase$Qu:Lgnu/expr/ModuleMethod;

    new-instance v5, Lgnu/expr/ModuleMethod;

    const/16 v6, 0x9

    invoke-direct {v5, v13, v6, v4, v0}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v5, Lkawa/lib/rnrs/unicode;->char$Mntitle$Mncase$Qu:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/16 v5, 0xa

    invoke-direct {v4, v13, v5, v3, v0}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lkawa/lib/rnrs/unicode;->char$Mnfoldcase:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/16 v4, 0xb

    const/16 v5, 0x2002

    invoke-direct {v3, v13, v4, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lkawa/lib/rnrs/unicode;->char$Mnci$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/16 v3, 0xc

    invoke-direct {v2, v13, v3, v1, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lkawa/lib/rnrs/unicode;->char$Mnci$Ls$Qu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xd

    move-object/from16 v3, v32

    invoke-direct {v1, v13, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/rnrs/unicode;->char$Mnci$Gr$Qu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xe

    move-object/from16 v15, v31

    invoke-direct {v1, v13, v2, v15, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/rnrs/unicode;->char$Mnci$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xf

    move-object/from16 v14, v30

    invoke-direct {v1, v13, v2, v14, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/rnrs/unicode;->char$Mnci$Gr$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x10

    move-object/from16 v3, v16

    invoke-direct {v1, v13, v2, v3, v0}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/rnrs/unicode;->char$Mngeneral$Mncategory:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x11

    move-object/from16 v12, v29

    invoke-direct {v1, v13, v2, v12, v0}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/rnrs/unicode;->string$Mnupcase:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x12

    move-object/from16 v11, v28

    invoke-direct {v1, v13, v2, v11, v0}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/rnrs/unicode;->string$Mndowncase:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x13

    move-object/from16 v10, v27

    invoke-direct {v1, v13, v2, v10, v0}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/rnrs/unicode;->string$Mntitlecase:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x14

    move-object/from16 v9, v26

    invoke-direct {v1, v13, v2, v9, v0}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/rnrs/unicode;->string$Mnfoldcase:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x15

    move-object/from16 v8, v25

    invoke-direct {v1, v13, v2, v8, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/rnrs/unicode;->string$Mnci$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x16

    move-object/from16 v7, v24

    invoke-direct {v1, v13, v2, v7, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/rnrs/unicode;->string$Mnci$Ls$Qu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x17

    move-object/from16 v6, v23

    invoke-direct {v1, v13, v2, v6, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/rnrs/unicode;->string$Mnci$Gr$Qu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x18

    move-object/from16 v3, v22

    invoke-direct {v1, v13, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/rnrs/unicode;->string$Mnci$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x19

    move-object/from16 v4, v21

    invoke-direct {v1, v13, v2, v4, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/rnrs/unicode;->string$Mnci$Gr$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1a

    move-object/from16 v3, v20

    invoke-direct {v1, v13, v2, v3, v0}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/rnrs/unicode;->string$Mnnormalize$Mnnfd:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1b

    move-object/from16 v3, v19

    invoke-direct {v1, v13, v2, v3, v0}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/rnrs/unicode;->string$Mnnormalize$Mnnfkd:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1c

    move-object/from16 v3, v18

    invoke-direct {v1, v13, v2, v3, v0}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/rnrs/unicode;->string$Mnnormalize$Mnnfc:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1d

    move-object/from16 v3, v17

    invoke-direct {v1, v13, v2, v3, v0}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/rnrs/unicode;->string$Mnnormalize$Mnnfkc:Lgnu/expr/ModuleMethod;

    invoke-virtual {v13}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static charDowncase(Lgnu/text/Char;)Lgnu/text/Char;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p0

    invoke-static {p0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p0

    return-object p0
.end method

.method public static charFoldcase(Lgnu/text/Char;)Lgnu/text/Char;
    .locals 2

    .line 41
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_1
    const/16 v1, 0x131

    if-ne v0, v1, :cond_2

    :goto_1
    return-object p0

    .line 44
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p0

    invoke-static {p0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p0

    return-object p0
.end method

.method public static charGeneralCategory(Lgnu/text/Char;)Lgnu/mapping/Symbol;
    .locals 0

    .line 67
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result p0

    invoke-static {p0}, Lgnu/kawa/functions/UnicodeUtils;->generalCategory(I)Lgnu/mapping/Symbol;

    move-result-object p0

    return-object p0
.end method

.method public static charTitlecase(Lgnu/text/Char;)Lgnu/text/Char;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toTitleCase(I)I

    move-result p0

    invoke-static {p0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p0

    return-object p0
.end method

.method public static charUpcase(Lgnu/text/Char;)Lgnu/text/Char;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p0

    invoke-static {p0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p0

    return-object p0
.end method

.method public static isCharAlphabetic(Lgnu/text/Char;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result p0

    return p0
.end method

.method public static isCharCi$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z
    .locals 0

    .line 51
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isCharCi$Gr(Lgnu/text/Char;Lgnu/text/Char;)Z
    .locals 0

    .line 57
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isCharCi$Gr$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z
    .locals 0

    .line 63
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isCharCi$Ls(Lgnu/text/Char;Lgnu/text/Char;)Z
    .locals 0

    .line 54
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isCharCi$Ls$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z
    .locals 0

    .line 60
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isCharLowerCase(Lgnu/text/Char;)Z
    .locals 0

    .line 35
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result p0

    return p0
.end method

.method public static isCharNumeric(Lgnu/text/Char;)Z
    .locals 0

    .line 26
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(I)Z

    move-result p0

    return p0
.end method

.method public static isCharTitleCase(Lgnu/text/Char;)Z
    .locals 0

    .line 38
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isTitleCase(I)Z

    move-result p0

    return p0
.end method

.method public static isCharUpperCase(Lgnu/text/Char;)Z
    .locals 0

    .line 32
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result p0

    return p0
.end method

.method public static isCharWhitespace(Lgnu/text/Char;)Z
    .locals 0

    .line 29
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result p0

    invoke-static {p0}, Lgnu/kawa/functions/UnicodeUtils;->isWhitespace(I)Z

    move-result p0

    return p0
.end method

.method public static isStringCi$Eq(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 82
    invoke-static {p0}, Lgnu/kawa/functions/UnicodeUtils;->foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lgnu/kawa/functions/UnicodeUtils;->foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isStringCi$Gr(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 92
    invoke-static {p0}, Lgnu/kawa/functions/UnicodeUtils;->foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lgnu/kawa/functions/UnicodeUtils;->foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isStringCi$Gr$Eq(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 104
    invoke-static {p0}, Lgnu/kawa/functions/UnicodeUtils;->foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lgnu/kawa/functions/UnicodeUtils;->foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isStringCi$Ls(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 86
    invoke-static {p0}, Lgnu/kawa/functions/UnicodeUtils;->foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lgnu/kawa/functions/UnicodeUtils;->foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isStringCi$Ls$Eq(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 98
    invoke-static {p0}, Lgnu/kawa/functions/UnicodeUtils;->foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lgnu/kawa/functions/UnicodeUtils;->foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static stringDowncase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 73
    new-instance v0, Lgnu/lists/FString;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lgnu/lists/FString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static stringFoldcase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 79
    new-instance v0, Lgnu/lists/FString;

    invoke-static {p0}, Lgnu/kawa/functions/UnicodeUtils;->foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lgnu/lists/FString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static stringNormalizeNfc(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    const/4 p0, 0x0

    .line 126
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "unicode string normalization not available"

    invoke-static {v0, p0}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static stringNormalizeNfd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    const/4 p0, 0x0

    .line 120
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "unicode string normalization not available"

    invoke-static {v0, p0}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static stringNormalizeNfkc(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    const/4 p0, 0x0

    .line 129
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "unicode string normalization not available"

    invoke-static {v0, p0}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static stringNormalizeNfkd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    const/4 p0, 0x0

    .line 123
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "unicode string normalization not available"

    invoke-static {v0, p0}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static stringTitlecase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 76
    new-instance v0, Lgnu/lists/FString;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lgnu/kawa/functions/UnicodeUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lgnu/lists/FString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static stringUpcase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 70
    new-instance v0, Lgnu/lists/FString;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lgnu/lists/FString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 128
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    :try_start_0
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->stringNormalizeNfkc(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-normalize-nfkc"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 125
    :pswitch_1
    :try_start_1
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->stringNormalizeNfc(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-normalize-nfc"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 122
    :pswitch_2
    :try_start_2
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->stringNormalizeNfkd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-normalize-nfkd"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 119
    :pswitch_3
    :try_start_3
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->stringNormalizeNfd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-normalize-nfd"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 78
    :pswitch_4
    :try_start_4
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->stringFoldcase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_4
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-foldcase"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 75
    :pswitch_5
    :try_start_5
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->stringTitlecase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_5
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-titlecase"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 72
    :pswitch_6
    :try_start_6
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->stringDowncase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_6
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-downcase"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 69
    :pswitch_7
    :try_start_7
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->stringUpcase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_7
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-upcase"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 66
    :pswitch_8
    :try_start_8
    check-cast p2, Lgnu/text/Char;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->charGeneralCategory(Lgnu/text/Char;)Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1

    :catch_8
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-general-category"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 40
    :pswitch_9
    :try_start_9
    check-cast p2, Lgnu/text/Char;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->charFoldcase(Lgnu/text/Char;)Lgnu/text/Char;

    move-result-object p1

    return-object p1

    :catch_9
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-foldcase"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 37
    :pswitch_a
    :try_start_a
    check-cast p2, Lgnu/text/Char;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->isCharTitleCase(Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :catch_a
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-title-case?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 34
    :pswitch_b
    :try_start_b
    check-cast p2, Lgnu/text/Char;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_b

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->isCharLowerCase(Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :catch_b
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-lower-case?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 31
    :pswitch_c
    :try_start_c
    check-cast p2, Lgnu/text/Char;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_c

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->isCharUpperCase(Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :catch_c
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-upper-case?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 28
    :pswitch_d
    :try_start_d
    check-cast p2, Lgnu/text/Char;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_d

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->isCharWhitespace(Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :catch_d
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-whitespace?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 25
    :pswitch_e
    :try_start_e
    check-cast p2, Lgnu/text/Char;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_e

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->isCharNumeric(Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :catch_e
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-numeric?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 22
    :pswitch_f
    :try_start_f
    check-cast p2, Lgnu/text/Char;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_f

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->isCharAlphabetic(Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :catch_f
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-alphabetic?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 19
    :pswitch_10
    :try_start_10
    check-cast p2, Lgnu/text/Char;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_10} :catch_10

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->charTitlecase(Lgnu/text/Char;)Lgnu/text/Char;

    move-result-object p1

    return-object p1

    :catch_10
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-titlecase"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 16
    :pswitch_11
    :try_start_11
    check-cast p2, Lgnu/text/Char;
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_11} :catch_11

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->charDowncase(Lgnu/text/Char;)Lgnu/text/Char;

    move-result-object p1

    return-object p1

    :catch_11
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-downcase"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 13
    :pswitch_12
    :try_start_12
    check-cast p2, Lgnu/text/Char;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_12} :catch_12

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->charUpcase(Lgnu/text/Char;)Lgnu/text/Char;

    move-result-object p1

    return-object p1

    :catch_12
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-upcase"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "char-ci=?"

    const-string v4, "char-ci<?"

    const-string v5, "char-ci>?"

    const-string v6, "char-ci<=?"

    const-string v7, "char-ci>=?"

    const-string v8, "string-ci=?"

    const-string v9, "string-ci<?"

    const-string v10, "string-ci>?"

    const-string v11, "string-ci<=?"

    const-string v12, "string-ci>=?"

    move-object/from16 v0, p1

    iget v13, v0, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v14, 0x1

    const/4 v15, 0x2

    packed-switch v13, :pswitch_data_0

    packed-switch v13, :pswitch_data_1

    .line 103
    invoke-super/range {p0 .. p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_0
    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v0, v1}, Lkawa/lib/rnrs/unicode;->isStringCi$Gr$Eq(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v12, v15, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v0, v12, v14, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 97
    :pswitch_1
    :try_start_2
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    invoke-static {v0, v1}, Lkawa/lib/rnrs/unicode;->isStringCi$Ls$Eq(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :catch_2
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v11, v15, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v0, v11, v14, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 91
    :pswitch_2
    :try_start_4
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_4

    invoke-static {v0, v1}, Lkawa/lib/rnrs/unicode;->isStringCi$Gr(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :catch_4
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v10, v15, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v0, v10, v14, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 85
    :pswitch_3
    :try_start_6
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_7

    :try_start_7
    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_6

    invoke-static {v0, v1}, Lkawa/lib/rnrs/unicode;->isStringCi$Ls(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :catch_6
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v9, v15, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_7
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v0, v9, v14, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 81
    :pswitch_4
    :try_start_8
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_9

    :try_start_9
    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_8

    invoke-static {v0, v1}, Lkawa/lib/rnrs/unicode;->isStringCi$Eq(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :catch_8
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v8, v15, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_9
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v0, v8, v14, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 62
    :pswitch_5
    :try_start_a
    move-object v0, v1

    check-cast v0, Lgnu/text/Char;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_b

    :try_start_b
    move-object v1, v2

    check-cast v1, Lgnu/text/Char;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_a

    invoke-static {v0, v1}, Lkawa/lib/rnrs/unicode;->isCharCi$Gr$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :catch_a
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v7, v15, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_b
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v0, v7, v14, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 59
    :pswitch_6
    :try_start_c
    move-object v0, v1

    check-cast v0, Lgnu/text/Char;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_d

    :try_start_d
    move-object v1, v2

    check-cast v1, Lgnu/text/Char;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_c

    invoke-static {v0, v1}, Lkawa/lib/rnrs/unicode;->isCharCi$Ls$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :catch_c
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v6, v15, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_d
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v0, v6, v14, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 56
    :pswitch_7
    :try_start_e
    move-object v0, v1

    check-cast v0, Lgnu/text/Char;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_f

    :try_start_f
    move-object v1, v2

    check-cast v1, Lgnu/text/Char;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_e

    invoke-static {v0, v1}, Lkawa/lib/rnrs/unicode;->isCharCi$Gr(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :catch_e
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v5, v15, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_f
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v0, v5, v14, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 53
    :pswitch_8
    :try_start_10
    move-object v0, v1

    check-cast v0, Lgnu/text/Char;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_10} :catch_11

    :try_start_11
    move-object v1, v2

    check-cast v1, Lgnu/text/Char;
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_11} :catch_10

    invoke-static {v0, v1}, Lkawa/lib/rnrs/unicode;->isCharCi$Ls(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :catch_10
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v4, v15, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_11
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v0, v4, v14, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 50
    :pswitch_9
    :try_start_12
    move-object v0, v1

    check-cast v0, Lgnu/text/Char;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_12} :catch_13

    :try_start_13
    move-object v1, v2

    check-cast v1, Lgnu/text/Char;
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_13} :catch_12

    invoke-static {v0, v1}, Lkawa/lib/rnrs/unicode;->isCharCi$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :catch_12
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v3, v15, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_13
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v0, v3, v14, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 13
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 128
    :pswitch_0
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_0
    return v1

    .line 125
    :pswitch_1
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_1
    return v1

    .line 122
    :pswitch_2
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_2
    return v1

    .line 119
    :pswitch_3
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_3
    return v1

    .line 78
    :pswitch_4
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_4
    return v1

    .line 75
    :pswitch_5
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_5
    return v1

    .line 72
    :pswitch_6
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_6
    return v1

    .line 69
    :pswitch_7
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_7
    return v1

    .line 66
    :pswitch_8
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_8

    return v1

    :cond_8
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 40
    :pswitch_9
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_9

    return v1

    :cond_9
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 37
    :pswitch_a
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_a

    return v1

    :cond_a
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 34
    :pswitch_b
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_b

    return v1

    :cond_b
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 31
    :pswitch_c
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_c

    return v1

    :cond_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 28
    :pswitch_d
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_d

    return v1

    :cond_d
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 25
    :pswitch_e
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_e

    return v1

    :cond_e
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 22
    :pswitch_f
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_f

    return v1

    :cond_f
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 19
    :pswitch_10
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_10

    return v1

    :cond_10
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 16
    :pswitch_11
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_11

    return v1

    :cond_11
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 13
    :pswitch_12
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_12

    return v1

    :cond_12
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const v2, -0xbfffe

    const/4 v3, 0x0

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 103
    :pswitch_0
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_0
    return v2

    :cond_1
    return v1

    .line 97
    :pswitch_1
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_2

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_2
    return v2

    :cond_3
    return v1

    .line 91
    :pswitch_2
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_4

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_4
    return v2

    :cond_5
    return v1

    .line 85
    :pswitch_3
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_6

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_6
    return v2

    :cond_7
    return v1

    .line 81
    :pswitch_4
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_8

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_8
    return v2

    :cond_9
    return v1

    .line 62
    :pswitch_5
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_a

    return v1

    :cond_a
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-nez p2, :cond_b

    return v2

    :cond_b
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 59
    :pswitch_6
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_c

    return v1

    :cond_c
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-nez p2, :cond_d

    return v2

    :cond_d
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 56
    :pswitch_7
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_e

    return v1

    :cond_e
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-nez p2, :cond_f

    return v2

    :cond_f
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 53
    :pswitch_8
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_10

    return v1

    :cond_10
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-nez p2, :cond_11

    return v2

    :cond_11
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 50
    :pswitch_9
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_12

    return v1

    :cond_12
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-nez p2, :cond_13

    return v2

    :cond_13
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method
