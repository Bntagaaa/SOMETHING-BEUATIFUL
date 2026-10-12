.class public Lkawa/standard/require;
.super Lkawa/lang/Syntax;
.source "SourceFile"


# static fields
.field private static final SLIB_PREFIX:Ljava/lang/String; = "gnu.kawa.slib."

.field static featureMap:Ljava/util/Hashtable;

.field public static final require:Lkawa/standard/require;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lkawa/standard/require;

    invoke-direct {v0}, Lkawa/standard/require;-><init>()V

    sput-object v0, Lkawa/standard/require;->require:Lkawa/standard/require;

    .line 19
    const-string v1, "require"

    invoke-virtual {v0, v1}, Lkawa/lang/Syntax;->setName(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lkawa/standard/require;->featureMap:Ljava/util/Hashtable;

    .line 70
    const-string v0, "generic-write"

    const-string v1, "gnu.kawa.slib.genwrite"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "pretty-print"

    const-string v1, "gnu.kawa.slib.pp"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "pprint-file"

    const-string v1, "gnu.kawa.slib.ppfile"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "printf"

    const-string v1, "gnu.kawa.slib.printf"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "xml"

    const-string v1, "gnu.kawa.slib.XML"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "readtable"

    const-string v1, "gnu.kawa.slib.readtable"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "srfi-10"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "http"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "servlets"

    const-string v1, "gnu.kawa.servlet.servlets"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "srfi-1"

    const-string v1, "gnu.kawa.slib.srfi1"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "list-lib"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "srfi-2"

    const-string v1, "gnu.kawa.slib.srfi2"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "and-let*"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "srfi-13"

    const-string v1, "gnu.kawa.slib.srfi13"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "string-lib"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "srfi-34"

    const-string v1, "gnu.kawa.slib.srfi34"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "srfi-35"

    const-string v1, "gnu.kawa.slib.conditions"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "condition"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "conditions"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "srfi-37"

    const-string v1, "gnu.kawa.slib.srfi37"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "args-fold"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "srfi-64"

    const-string v1, "gnu.kawa.slib.testing"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "testing"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "srfi-69"

    const-string v1, "gnu.kawa.slib.srfi69"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "hash-table"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "basic-hash-tables"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "srfi-95"

    const-string v1, "kawa.lib.srfi95"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "sorting-and-merging"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "regex"

    const-string v1, "kawa.lib.kawa.regex"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "pregexp"

    const-string v1, "gnu.kawa.slib.pregexp"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "gui"

    const-string v1, "gnu.kawa.slib.gui"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "swing-gui"

    const-string v1, "gnu.kawa.slib.swing"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "android-defs"

    const-string v1, "gnu.kawa.android.defs"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "syntax-utils"

    const-string v1, "gnu.kawa.slib.syntaxutils"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method public static find(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 113
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/expr/ModuleManager;->findWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getInstance()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 229
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v6

    .line 231
    invoke-virtual {v0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v7

    const/4 v8, 0x1

    and-int/2addr v7, v8

    const/16 v9, 0x65

    const/4 v10, 0x0

    if-nez v7, :cond_2

    invoke-virtual {v0}, Lgnu/expr/ModuleInfo;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v0, v6, v11, v12}, Lgnu/expr/ModuleInfo;->checkCurrent(Lgnu/expr/ModuleManager;J)Z

    move-result v6

    if-nez v6, :cond_2

    .line 235
    invoke-virtual {v4}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v6

    .line 236
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v7

    .line 240
    :try_start_0
    invoke-virtual {v0}, Lgnu/expr/ModuleInfo;->getSourceAbsPath()Lgnu/text/Path;

    move-result-object v11

    invoke-static {v11}, Lgnu/mapping/InPort;->openFile(Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v11

    .line 241
    invoke-virtual {v0}, Lgnu/expr/ModuleInfo;->clearClass()V

    move-object/from16 v12, p0

    .line 242
    invoke-virtual {v0, v12}, Lgnu/expr/ModuleInfo;->setClassName(Ljava/lang/String;)V

    .line 244
    iget-boolean v12, v4, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v12, :cond_0

    const/16 v12, 0x9

    goto :goto_0

    :cond_0
    const/16 v12, 0x8

    .line 246
    :goto_0
    invoke-virtual {v7, v11, v6, v12, v0}, Lgnu/expr/Language;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lgnu/text/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    invoke-virtual {v6}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v7

    invoke-virtual {v7, v6}, Lgnu/expr/ModuleExp;->classFor(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lgnu/expr/ModuleInfo;->setClassName(Ljava/lang/String;)V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    .line 260
    :goto_1
    invoke-virtual {v0}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v1

    if-ne v1, v6, :cond_1

    return v10

    .line 261
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "confussing syntax error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "caught "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v9, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    return v10

    .line 250
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v9, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    return v10

    .line 268
    :cond_2
    :goto_4
    iget-object v6, v4, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    const/4 v7, 0x6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Lgnu/expr/Compilation;->getState()I

    move-result v6

    const/4 v11, 0x4

    if-ge v6, v11, :cond_3

    .line 270
    iget-object v6, v4, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    invoke-virtual {v6, v0}, Lgnu/expr/ModuleInfo;->addDependency(Lgnu/expr/ModuleInfo;)V

    const/16 v6, 0xc

    .line 272
    invoke-virtual {v0, v6}, Lgnu/expr/ModuleInfo;->loadEager(I)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v6

    if-ge v6, v7, :cond_3

    .line 276
    invoke-virtual/range {p3 .. p3}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v4, v0, v3, v1}, Lgnu/expr/Compilation;->pushPendingImport(Lgnu/expr/ModuleInfo;Lgnu/expr/ScopeExp;I)V

    return v8

    .line 281
    :cond_3
    invoke-virtual {v0}, Lgnu/expr/ModuleInfo;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object v6

    .line 282
    invoke-virtual {v6}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v11

    .line 283
    invoke-virtual {v4}, Lgnu/expr/Compilation;->sharedModuleDefs()Z

    move-result v12

    .line 284
    invoke-virtual {v0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v13

    if-ge v13, v7, :cond_4

    invoke-virtual {v0}, Lgnu/expr/ModuleInfo;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v7

    invoke-virtual {v7}, Lgnu/expr/Compilation;->makeRunnable()Z

    move-result v7

    goto :goto_5

    :cond_4
    sget-object v7, Lgnu/expr/Compilation;->typeRunnable:Lgnu/bytecode/ClassType;

    invoke-virtual {v6, v7}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v7

    .line 288
    :goto_5
    const-string v13, "kawa.standard.require"

    invoke-static {v13}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v13

    .line 289
    new-instance v14, Lgnu/expr/QuoteExp;

    invoke-direct {v14, v11}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    new-array v15, v8, [Lgnu/expr/Expression;

    aput-object v14, v15, v10

    .line 290
    const-string v14, "find"

    invoke-static {v13, v14, v15}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v13

    .line 292
    invoke-virtual {v4}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v14

    .line 293
    invoke-virtual {v13, v4}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Compilation;)V

    .line 294
    invoke-virtual/range {p3 .. p3}, Ljava/util/Vector;->size()I

    move-result v15

    .line 296
    invoke-virtual {v0}, Lgnu/expr/ModuleInfo;->setupModuleExp()Lgnu/expr/ModuleExp;

    move-result-object v0

    const/16 v16, 0x2

    .line 298
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 299
    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    const/16 v17, 0x0

    move-object/from16 v10, v17

    move-object/from16 v18, v10

    move/from16 v17, v15

    move-object v15, v0

    .line 300
    :goto_6
    const-string v8, "$instance"

    if-eqz v15, :cond_17

    .line 302
    invoke-virtual {v15}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_8

    .line 305
    :cond_5
    invoke-virtual {v15}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_8

    .line 311
    :try_start_1
    invoke-virtual {v1, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    :goto_7
    if-nez v0, :cond_6

    goto :goto_8

    .line 319
    :cond_6
    instance-of v9, v0, Lgnu/mapping/Symbol;

    if-nez v9, :cond_7

    .line 321
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v8, "internal error - import name mapper returned non-symbol: "

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v9, 0x65

    invoke-virtual {v4, v9, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    :goto_8
    move-object/from16 v2, p3

    move-object/from16 v22, v11

    move v1, v12

    move/from16 v11, v17

    move/from16 v17, v7

    goto/16 :goto_13

    :cond_7
    const/16 v9, 0x65

    .line 324
    check-cast v0, Lgnu/mapping/Symbol;

    :cond_8
    move-object/from16 v20, v10

    const-wide/16 v9, 0x800

    .line 326
    invoke-virtual {v15, v9, v10}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v21

    if-nez v21, :cond_a

    if-nez v20, :cond_a

    .line 329
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    const/16 v10, 0x24

    invoke-virtual {v11, v1, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    new-instance v10, Lgnu/expr/Declaration;

    invoke-static {v1}, Lgnu/mapping/Symbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v1

    invoke-direct {v10, v1, v6}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    const/4 v1, 0x1

    .line 331
    invoke-virtual {v10, v1}, Lgnu/expr/Declaration;->setPrivate(Z)V

    const-wide/32 v1, 0x40004000

    .line 332
    invoke-virtual {v10, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 334
    invoke-virtual {v3, v10}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 336
    invoke-virtual {v10, v13}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 337
    new-instance v1, Lgnu/expr/SetExp;

    invoke-direct {v1, v10, v13}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 338
    invoke-virtual {v1, v4}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Compilation;)V

    const/4 v2, 0x1

    .line 339
    invoke-virtual {v1, v2}, Lgnu/expr/SetExp;->setDefining(Z)V

    move-object/from16 v2, p3

    .line 340
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 341
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v17

    move-object v1, v11

    move v9, v12

    const-wide/32 v11, 0x20000000

    .line 342
    invoke-virtual {v10, v11, v12}, Lgnu/expr/Declaration;->setFlag(J)V

    if-eqz v7, :cond_9

    const/4 v11, 0x0

    .line 346
    invoke-virtual {v10, v11}, Lgnu/expr/Declaration;->setSimple(Z)V

    :cond_9
    const-wide/16 v11, 0x2000

    .line 348
    invoke-virtual {v10, v11, v12}, Lgnu/expr/Declaration;->setFlag(J)V

    :goto_9
    move/from16 v11, v17

    goto :goto_a

    :cond_a
    move-object/from16 v2, p3

    move-object v1, v11

    move v9, v12

    move-object/from16 v10, v20

    goto :goto_9

    .line 351
    :goto_a
    iget-object v12, v15, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v12, :cond_b

    .line 353
    invoke-virtual {v12}, Lgnu/bytecode/Location;->getName()Ljava/lang/String;

    move-result-object v12

    .line 354
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 356
    iget-object v0, v15, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v18, v0

    move-object/from16 v22, v1

    move/from16 v17, v7

    :goto_b
    move v1, v9

    goto/16 :goto_13

    .line 368
    :cond_b
    iget-object v12, v15, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v12, :cond_c

    invoke-virtual {v12}, Lgnu/bytecode/Location;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    goto :goto_c

    :cond_c
    const/4 v8, 0x0

    .line 372
    :goto_c
    invoke-virtual {v14, v15}, Lgnu/expr/Language;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v12

    invoke-virtual {v3, v0, v14, v12}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;Lgnu/expr/Language;I)Lgnu/expr/Declaration;

    move-result-object v12

    if-eqz v8, :cond_e

    if-eqz v12, :cond_d

    move/from16 v17, v7

    goto :goto_d

    .line 377
    :cond_d
    invoke-virtual {v3, v0}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    move/from16 v17, v7

    move/from16 p0, v8

    const-wide/32 v7, 0x40004000

    .line 378
    invoke-virtual {v0, v7, v8}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 380
    invoke-virtual {v15}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    invoke-virtual {v0, v7}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    const-wide/16 v7, 0x2000

    .line 381
    invoke-virtual {v0, v7, v8}, Lgnu/expr/Declaration;->setFlag(J)V

    move-object/from16 v22, v1

    const/4 v1, 0x1

    goto :goto_10

    :cond_e
    move/from16 v17, v7

    move/from16 p0, v8

    if-eqz v12, :cond_f

    const-wide/16 v7, 0x200

    .line 383
    invoke-virtual {v12, v7, v8}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-static {v12}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v7

    invoke-static {v15}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v8

    if-ne v7, v8, :cond_f

    :goto_d
    move-object/from16 v22, v1

    goto :goto_b

    :cond_f
    if-eqz v12, :cond_10

    const-wide/32 v7, 0x10200

    .line 390
    invoke-virtual {v12, v7, v8}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v20

    if-eqz v20, :cond_10

    move-object/from16 v22, v1

    const/4 v1, 0x0

    .line 393
    invoke-virtual {v12, v1, v7, v8}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    :goto_e
    const/4 v1, 0x1

    goto :goto_f

    :cond_10
    move-object/from16 v22, v1

    .line 398
    invoke-virtual {v3, v0}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    if-eqz v12, :cond_11

    .line 400
    invoke-static {v12, v0, v4}, Lgnu/expr/ScopeExp;->duplicateDeclarationError(Lgnu/expr/Declaration;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    :cond_11
    move-object v12, v0

    goto :goto_e

    .line 402
    :goto_f
    invoke-virtual {v12, v1}, Lgnu/expr/Declaration;->setAlias(Z)V

    .line 403
    invoke-virtual {v12, v1}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    move-object v0, v12

    .line 405
    :goto_10
    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->setLocation(Lgnu/text/SourceLocator;)V

    .line 406
    new-instance v7, Lgnu/expr/ReferenceExp;

    invoke-direct {v7, v15}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 407
    invoke-virtual {v7, v10}, Lgnu/expr/AccessExp;->setContextDecl(Lgnu/expr/Declaration;)V

    if-nez p0, :cond_12

    .line 410
    invoke-virtual {v7, v1}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    if-nez v9, :cond_12

    .line 412
    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setPrivate(Z)V

    :cond_12
    move v1, v9

    const-wide/16 v8, 0x4000

    .line 415
    invoke-virtual {v0, v8, v9}, Lgnu/expr/Declaration;->setFlag(J)V

    const-wide/32 v8, 0x8000

    .line 416
    invoke-virtual {v15, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 417
    invoke-virtual {v0, v8, v9}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 418
    :cond_13
    invoke-virtual {v15}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v8

    if-eqz v8, :cond_14

    const/4 v8, 0x1

    .line 419
    invoke-virtual {v0, v8}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    goto :goto_11

    :cond_14
    const/4 v8, 0x1

    :goto_11
    if-eqz v21, :cond_15

    const-wide/16 v8, 0x800

    .line 421
    invoke-virtual {v0, v8, v9}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 423
    :cond_15
    new-instance v8, Lgnu/expr/SetExp;

    invoke-direct {v8, v0, v7}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    move-object v12, v10

    const-wide/32 v9, 0x20000000

    .line 424
    invoke-virtual {v0, v9, v10}, Lgnu/expr/Declaration;->setFlag(J)V

    const/4 v9, 0x1

    .line 425
    invoke-virtual {v8, v9}, Lgnu/expr/SetExp;->setDefining(Z)V

    if-eqz p0, :cond_16

    .line 432
    invoke-virtual {v2, v8, v11}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    add-int/2addr v11, v9

    goto :goto_12

    .line 436
    :cond_16
    invoke-virtual {v2, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 438
    :goto_12
    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-virtual {v5, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-virtual {v0, v7}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    const-wide/32 v7, 0x20000

    .line 442
    invoke-virtual {v0, v7, v8}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 443
    invoke-virtual {v4, v0}, Lgnu/expr/Compilation;->push(Lgnu/expr/Declaration;)V

    move-object v10, v12

    .line 300
    :goto_13
    invoke-virtual {v15}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v15

    move v12, v1

    move/from16 v7, v17

    const/16 v9, 0x65

    move-object/from16 v1, p2

    move/from16 v17, v11

    move-object/from16 v11, v22

    goto/16 :goto_6

    :cond_17
    move-object/from16 v2, p3

    move/from16 v17, v7

    move-object/from16 v20, v10

    .line 448
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v11, 0x0

    :goto_14
    if-ge v11, v0, :cond_19

    .line 451
    invoke-virtual {v5, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Declaration;

    const/16 v19, 0x1

    add-int/lit8 v7, v11, 0x1

    .line 452
    invoke-virtual {v5, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/expr/Declaration;

    .line 453
    invoke-virtual {v7}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v9

    .line 454
    invoke-virtual {v7}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v7

    if-eqz v7, :cond_18

    instance-of v7, v9, Lgnu/expr/ReferenceExp;

    if-eqz v7, :cond_18

    .line 456
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v1

    check-cast v1, Lgnu/expr/ReferenceExp;

    .line 457
    check-cast v9, Lgnu/expr/ReferenceExp;

    invoke-virtual {v9}, Lgnu/expr/AccessExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v7

    .line 458
    invoke-virtual {v1, v7}, Lgnu/expr/AccessExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 459
    invoke-virtual {v7}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 461
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v7, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v7}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v7

    invoke-virtual {v7}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x24

    const/16 v12, 0x2e

    invoke-virtual {v7, v12, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 464
    invoke-static {v7}, Lgnu/mapping/Symbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v7

    invoke-virtual {v3, v7}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v7

    const-wide/16 v14, 0x400

    .line 465
    invoke-virtual {v7, v14, v15}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 466
    invoke-virtual {v1, v7}, Lgnu/expr/AccessExp;->setContextDecl(Lgnu/expr/Declaration;)V

    goto :goto_15

    :cond_18
    const/16 v10, 0x24

    const/16 v12, 0x2e

    :goto_15
    add-int/lit8 v11, v11, 0x2

    goto :goto_14

    :cond_19
    if-eqz v17, :cond_1c

    .line 473
    sget-object v0, Lgnu/expr/Compilation;->typeRunnable:Lgnu/bytecode/ClassType;

    const-string v1, "run"

    const/4 v11, 0x0

    invoke-virtual {v0, v1, v11}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    if-eqz v20, :cond_1b

    .line 475
    new-instance v13, Lgnu/expr/ReferenceExp;

    move-object/from16 v10, v20

    invoke-direct {v13, v10}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    :cond_1a
    const/4 v1, 0x1

    goto :goto_16

    :cond_1b
    if-eqz v18, :cond_1a

    .line 480
    new-instance v1, Lgnu/expr/QuoteExp;

    invoke-direct {v1, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v8}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x2

    new-array v5, v5, [Lgnu/expr/Expression;

    aput-object v1, v5, v11

    const/4 v1, 0x1

    aput-object v3, v5, v1

    .line 482
    new-instance v13, Lgnu/expr/ApplyExp;

    sget-object v3, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    invoke-direct {v13, v3, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 485
    :goto_16
    new-instance v3, Lgnu/expr/ApplyExp;

    new-array v5, v1, [Lgnu/expr/Expression;

    aput-object v13, v5, v11

    invoke-direct {v3, v0, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 486
    invoke-virtual {v3, v4}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Compilation;)V

    .line 487
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_17

    :cond_1c
    const/4 v1, 0x1

    :goto_17
    return v1
.end method

.method public static lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;
    .locals 1

    .line 214
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v0

    .line 215
    invoke-virtual {p1}, Lgnu/expr/Expression;->getFileName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 217
    invoke-static {p1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1

    invoke-virtual {p1, p0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 218
    :cond_0
    invoke-virtual {v0, p0}, Lgnu/expr/ModuleManager;->findWithSourcePath(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object p0

    return-object p0
.end method

.method public static map(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 63
    sget-object v0, Lkawa/standard/require;->featureMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static mapFeature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 108
    sget-object v0, Lkawa/standard/require;->featureMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 10

    .line 120
    invoke-virtual {p4}, Lgnu/expr/Compilation;->getState()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    const/4 v0, 0x2

    .line 122
    invoke-virtual {p4, v0}, Lgnu/expr/Compilation;->setState(I)V

    .line 123
    iput-object p1, p4, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    return v6

    .line 128
    :cond_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    .line 129
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 132
    instance-of v2, v1, Lgnu/lists/Pair;

    const/16 v3, 0x65

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    const-string v9, "quote"

    invoke-virtual {p4, v8, v9}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 135
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 136
    instance-of v1, v0, Lgnu/lists/Pair;

    if-eqz v1, :cond_3

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lgnu/mapping/Symbol;

    if-nez v1, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkawa/standard/require;->mapFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown feature name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' for \'require\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v3, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    return v7

    .line 149
    :cond_2
    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    goto/16 :goto_1

    .line 140
    :cond_3
    :goto_0
    const-string v0, "invalid quoted symbol for \'require\'"

    invoke-virtual {p4, v3, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    return v7

    .line 151
    :cond_4
    instance-of v2, v1, Ljava/lang/CharSequence;

    const-string v8, "malformed URL: "

    if-eqz v2, :cond_6

    .line 158
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0, p3}, Lkawa/standard/require;->lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;

    move-result-object v1

    if-nez v1, :cond_5

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v3, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    return v7

    :cond_5
    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 165
    invoke-static/range {v0 .. v5}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    move-result v0

    return v0

    .line 167
    :cond_6
    instance-of v2, v1, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_9

    invoke-virtual {p4, v1}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 169
    invoke-virtual {p4}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    invoke-virtual {p4, v1, v7}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v1

    invoke-virtual {v2, v1}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v1

    .line 170
    instance-of v2, v1, Lgnu/bytecode/ClassType;

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lgnu/lists/Pair;

    if-eqz v2, :cond_8

    .line 172
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 173
    instance-of v2, v0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    .line 180
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    .line 181
    invoke-static {v0, p3}, Lkawa/standard/require;->lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;

    move-result-object v1

    if-nez v1, :cond_7

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v3, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    return v7

    .line 187
    :cond_7
    invoke-virtual {v2}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    move-result v0

    return v0

    :cond_8
    move-object v2, v1

    move-object v0, v2

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    .line 192
    :goto_1
    instance-of v1, v0, Lgnu/bytecode/ClassType;

    if-nez v1, :cond_a

    .line 194
    const-string v0, "invalid specifier for \'require\'"

    invoke-virtual {p4, v3, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    return v7

    .line 200
    :cond_a
    :try_start_0
    move-object v1, v0

    check-cast v1, Lgnu/bytecode/ClassType;

    invoke-static {v1}, Lgnu/expr/ModuleInfo;->find(Lgnu/bytecode/ClassType;)Lgnu/expr/ModuleInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 207
    invoke-static/range {v0 .. v5}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    return v6

    .line 204
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v3, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    return v7
.end method
