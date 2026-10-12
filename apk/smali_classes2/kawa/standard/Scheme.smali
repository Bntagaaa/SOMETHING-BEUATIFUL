.class public Lkawa/standard/Scheme;
.super Lgnu/kawa/lispexpr/LispLanguage;
.source "SourceFile"


# static fields
.field public static final apply:Lgnu/kawa/functions/Apply;

.field static final applyFieldDecl:Lgnu/expr/Declaration;

.field public static final applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

.field public static booleanType:Lgnu/kawa/lispexpr/LangPrimType;

.field public static final displayFormat:Lgnu/lists/AbstractFormat;

.field public static final forEach:Lgnu/kawa/functions/Map;

.field public static final instance:Lkawa/standard/Scheme;

.field public static final instanceOf:Lgnu/kawa/reflect/InstanceOf;

.field public static final isEq:Lgnu/kawa/functions/IsEq;

.field public static final isEqual:Lgnu/kawa/functions/IsEqual;

.field public static final isEqv:Lgnu/kawa/functions/IsEqv;

.field public static final isEven:Lgnu/kawa/functions/NumberPredicate;

.field public static final isOdd:Lgnu/kawa/functions/NumberPredicate;

.field protected static final kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

.field public static final map:Lgnu/kawa/functions/Map;

.field public static final not:Lgnu/kawa/functions/Not;

.field public static final nullEnvironment:Lgnu/mapping/Environment;

.field public static final numEqu:Lgnu/kawa/functions/NumberCompare;

.field public static final numGEq:Lgnu/kawa/functions/NumberCompare;

.field public static final numGrt:Lgnu/kawa/functions/NumberCompare;

.field public static final numLEq:Lgnu/kawa/functions/NumberCompare;

.field public static final numLss:Lgnu/kawa/functions/NumberCompare;

.field public static final r4Environment:Lgnu/mapping/Environment;

.field public static final r5Environment:Lgnu/mapping/Environment;

.field static typeToStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lgnu/bytecode/Type;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static types:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lgnu/bytecode/Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final unitNamespace:Lgnu/mapping/Namespace;

.field public static final writeFormat:Lgnu/lists/AbstractFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 54
    const-string v0, "null-environment"

    invoke-static {v0}, Lgnu/mapping/Environment;->make(Ljava/lang/String;)Lgnu/mapping/SimpleEnvironment;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->nullEnvironment:Lgnu/mapping/Environment;

    .line 55
    const-string v1, "r4rs-environment"

    invoke-static {v1, v0}, Lgnu/mapping/Environment;->make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->r4Environment:Lgnu/mapping/Environment;

    .line 56
    const-string v1, "r5rs-environment"

    invoke-static {v1, v0}, Lgnu/mapping/Environment;->make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->r5Environment:Lgnu/mapping/Environment;

    .line 57
    const-string v1, "kawa-environment"

    invoke-static {v1, v0}, Lgnu/mapping/Environment;->make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    .line 59
    new-instance v1, Lkawa/standard/Scheme;

    invoke-direct {v1, v0}, Lkawa/standard/Scheme;-><init>(Lgnu/mapping/Environment;)V

    sput-object v1, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    .line 60
    new-instance v0, Lgnu/kawa/reflect/InstanceOf;

    const-string v2, "instance?"

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/InstanceOf;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v0, Lkawa/standard/Scheme;->instanceOf:Lgnu/kawa/reflect/InstanceOf;

    .line 61
    new-instance v0, Lgnu/kawa/functions/Not;

    const-string v2, "not"

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/Not;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v0, Lkawa/standard/Scheme;->not:Lgnu/kawa/functions/Not;

    .line 62
    new-instance v0, Lgnu/kawa/functions/ApplyToArgs;

    const-string v2, "apply-to-args"

    invoke-direct {v0, v2, v1}, Lgnu/kawa/functions/ApplyToArgs;-><init>(Ljava/lang/String;Lgnu/expr/Language;)V

    sput-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 63
    const-string v2, "kawa.standard.Scheme"

    const-string v3, "applyToArgs"

    invoke-static {v2, v3}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v2

    sput-object v2, Lkawa/standard/Scheme;->applyFieldDecl:Lgnu/expr/Declaration;

    .line 66
    new-instance v3, Lgnu/kawa/functions/Apply;

    const-string v4, "apply"

    invoke-direct {v3, v4, v0}, Lgnu/kawa/functions/Apply;-><init>(Ljava/lang/String;Lgnu/kawa/functions/ApplyToArgs;)V

    sput-object v3, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    .line 67
    new-instance v3, Lgnu/kawa/functions/IsEq;

    const-string v4, "eq?"

    invoke-direct {v3, v1, v4}, Lgnu/kawa/functions/IsEq;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v3, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    .line 68
    new-instance v4, Lgnu/kawa/functions/IsEqv;

    const-string v5, "eqv?"

    invoke-direct {v4, v1, v5, v3}, Lgnu/kawa/functions/IsEqv;-><init>(Lgnu/expr/Language;Ljava/lang/String;Lgnu/kawa/functions/IsEq;)V

    sput-object v4, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 69
    new-instance v4, Lgnu/kawa/functions/IsEqual;

    const-string v5, "equal?"

    invoke-direct {v4, v1, v5}, Lgnu/kawa/functions/IsEqual;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v4, Lkawa/standard/Scheme;->isEqual:Lgnu/kawa/functions/IsEqual;

    .line 70
    new-instance v4, Lgnu/kawa/functions/Map;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0, v2, v3}, Lgnu/kawa/functions/Map;-><init>(ZLgnu/kawa/functions/ApplyToArgs;Lgnu/expr/Declaration;Lgnu/kawa/functions/IsEq;)V

    sput-object v4, Lkawa/standard/Scheme;->map:Lgnu/kawa/functions/Map;

    .line 71
    new-instance v4, Lgnu/kawa/functions/Map;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v0, v2, v3}, Lgnu/kawa/functions/Map;-><init>(ZLgnu/kawa/functions/ApplyToArgs;Lgnu/expr/Declaration;Lgnu/kawa/functions/IsEq;)V

    sput-object v4, Lkawa/standard/Scheme;->forEach:Lgnu/kawa/functions/Map;

    .line 72
    const-string v0, "="

    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 74
    const-string v0, ">"

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    .line 76
    const-string v0, ">="

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 78
    const-string v0, "<"

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 80
    const-string v0, "<="

    const/16 v2, 0xc

    invoke-static {v1, v0, v2}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 82
    new-instance v0, Lgnu/kawa/functions/NumberPredicate;

    const-string v2, "odd?"

    invoke-direct {v0, v1, v2, v5}, Lgnu/kawa/functions/NumberPredicate;-><init>(Lgnu/expr/Language;Ljava/lang/String;I)V

    sput-object v0, Lkawa/standard/Scheme;->isOdd:Lgnu/kawa/functions/NumberPredicate;

    .line 83
    new-instance v0, Lgnu/kawa/functions/NumberPredicate;

    const-string v2, "even?"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/functions/NumberPredicate;-><init>(Lgnu/expr/Language;Ljava/lang/String;I)V

    sput-object v0, Lkawa/standard/Scheme;->isEven:Lgnu/kawa/functions/NumberPredicate;

    .line 85
    invoke-direct {v1}, Lkawa/standard/Scheme;->initScheme()V

    .line 87
    sget v0, Lgnu/kawa/servlet/HttpRequestContext;->importServletDefinitions:I

    if-lez v0, :cond_1

    if-le v0, v5, :cond_0

    .line 92
    :try_start_0
    const-string v0, "gnu.kawa.servlet.servlets"

    goto :goto_0

    :cond_0
    const-string v0, "gnu.kawa.servlet.HTTP"

    :goto_0
    invoke-virtual {v1, v0}, Lgnu/expr/Language;->loadClass(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    :catchall_0
    :cond_1
    new-instance v0, Lgnu/kawa/functions/DisplayFormat;

    const/16 v1, 0x53

    invoke-direct {v0, v5, v1}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    sput-object v0, Lkawa/standard/Scheme;->writeFormat:Lgnu/lists/AbstractFormat;

    .line 935
    new-instance v0, Lgnu/kawa/functions/DisplayFormat;

    invoke-direct {v0, v6, v1}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    sput-object v0, Lkawa/standard/Scheme;->displayFormat:Lgnu/lists/AbstractFormat;

    .line 1134
    const-string v0, "http://kawa.gnu.org/unit"

    const-string v1, "unit"

    invoke-static {v0, v1}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->unitNamespace:Lgnu/mapping/Namespace;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 844
    invoke-direct {p0}, Lgnu/kawa/lispexpr/LispLanguage;-><init>()V

    .line 845
    sget-object v0, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    iput-object v0, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    .line 846
    invoke-virtual {p0}, Lgnu/expr/Language;->getNewEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/Language;->userEnv:Lgnu/mapping/Environment;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Environment;)V
    .locals 0

    .line 850
    invoke-direct {p0}, Lgnu/kawa/lispexpr/LispLanguage;-><init>()V

    .line 851
    iput-object p1, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    return-void
.end method

.method public static builtin()Lgnu/mapping/Environment;
    .locals 1

    .line 108
    sget-object v0, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    return-object v0
.end method

.method public static eval(Lgnu/mapping/InPort;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 4

    .line 874
    new-instance v0, Lgnu/text/SourceMessages;

    invoke-direct {v0}, Lgnu/text/SourceMessages;-><init>()V

    .line 877
    :try_start_0
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object p0

    check-cast p0, Lgnu/kawa/lispexpr/LispReader;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 879
    invoke-static {p0, v3, v1, v2}, Lgnu/kawa/lispexpr/ReaderParens;->readList(Lgnu/kawa/lispexpr/LispReader;III)Ljava/lang/Object;

    move-result-object p0

    .line 880
    invoke-virtual {v0}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v1

    if-nez v1, :cond_0

    .line 882
    invoke-static {p0, p1, v0}, Lkawa/lang/Eval;->evalBody(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/text/SourceMessages;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 881
    :cond_0
    new-instance p0, Lgnu/text/SyntaxException;

    invoke-direct {p0, v0}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw p0
    :try_end_0
    .catch Lgnu/text/SyntaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    .line 906
    new-instance p1, Lgnu/mapping/WrappedException;

    invoke-direct {p1, p0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_0
    move-exception p0

    .line 902
    throw p0

    :catch_1
    move-exception p0

    .line 898
    throw p0

    :catch_2
    move-exception p0

    .line 893
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "eval: I/O exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    move-exception p0

    .line 888
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "eval: errors while compiling:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object p0

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static eval(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 0

    .line 918
    :try_start_0
    invoke-static {p0, p1}, Lkawa/lang/Eval;->eval(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 930
    new-instance p1, Lgnu/mapping/WrappedException;

    invoke-direct {p1, p0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_0
    move-exception p0

    .line 926
    throw p0

    :catch_1
    move-exception p0

    .line 922
    throw p0
.end method

.method public static eval(Ljava/lang/String;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 1

    .line 865
    new-instance v0, Lgnu/mapping/CharArrayInPort;

    invoke-direct {v0, p0}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lkawa/standard/Scheme;->eval(Lgnu/mapping/InPort;Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static exp2Type(Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1

    .line 1131
    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lkawa/standard/Scheme;
    .locals 1

    .line 103
    sget-object v0, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    return-object v0
.end method

.method public static getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 4

    .line 1024
    invoke-static {}, Lkawa/standard/Scheme;->getTypeMap()Ljava/util/HashMap;

    .line 1025
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/Type;

    if-nez v0, :cond_3

    .line 1026
    const-string v1, "elisp:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "clisp:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/16 v0, 0x3a

    .line 1029
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 1030
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 1031
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1032
    invoke-static {v0}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1037
    invoke-virtual {v2, v1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1039
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 1034
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown type \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' - unknown language \'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-object v0
.end method

.method public static declared-synchronized getTypeMap()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lgnu/bytecode/Type;",
            ">;"
        }
    .end annotation

    const-class v0, Lkawa/standard/Scheme;

    monitor-enter v0

    .line 957
    :try_start_0
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 959
    new-instance v1, Lgnu/kawa/lispexpr/LangPrimType;

    sget-object v2, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgnu/kawa/lispexpr/LangPrimType;-><init>(Lgnu/bytecode/PrimType;Lgnu/expr/Language;)V

    sput-object v1, Lkawa/standard/Scheme;->booleanType:Lgnu/kawa/lispexpr/LangPrimType;

    .line 961
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    .line 962
    const-string v2, "void"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->voidType:Lgnu/kawa/lispexpr/LangPrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "int"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "char"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->charType:Lgnu/kawa/lispexpr/LangPrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "boolean"

    sget-object v3, Lkawa/standard/Scheme;->booleanType:Lgnu/kawa/lispexpr/LangPrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "byte"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->byteType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "short"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->shortType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "long"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "float"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "double"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "never-returns"

    sget-object v3, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "Object"

    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "String"

    sget-object v4, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "object"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "number"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->numericType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "quantity"

    const-string v3, "gnu.math.Quantity"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "complex"

    const-string v3, "gnu.math.Complex"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "real"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->realType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "rational"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->rationalType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "integer"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "symbol"

    const-string v3, "gnu.mapping.Symbol"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "namespace"

    const-string v3, "gnu.mapping.Namespace"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "keyword"

    const-string v3, "gnu.expr.Keyword"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "pair"

    const-string v3, "gnu.lists.Pair"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "pair-with-position"

    const-string v3, "gnu.lists.PairWithPosition"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "constant-string"

    const-string v3, "java.lang.String"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "abstract-string"

    const-string v3, "gnu.lists.CharSeq"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "character"

    const-string v3, "gnu.text.Char"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "vector"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->vectorType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "string"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->stringType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "list"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "function"

    const-string v3, "gnu.mapping.Procedure"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "procedure"

    const-string v3, "gnu.mapping.Procedure"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "input-port"

    const-string v3, "gnu.mapping.InPort"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "output-port"

    const-string v3, "gnu.mapping.OutPort"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "string-output-port"

    const-string v3, "gnu.mapping.CharArrayOutPort"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "record"

    const-string v3, "kawa.lang.Record"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "type"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->typeType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "class-type"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "class"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "s8vector"

    const-string v3, "gnu.lists.S8Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "u8vector"

    const-string v3, "gnu.lists.U8Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "s16vector"

    const-string v3, "gnu.lists.S16Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "u16vector"

    const-string v3, "gnu.lists.U16Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "s32vector"

    const-string v3, "gnu.lists.S32Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "u32vector"

    const-string v3, "gnu.lists.U32Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "s64vector"

    const-string v3, "gnu.lists.S64Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "u64vector"

    const-string v3, "gnu.lists.U64Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "f32vector"

    const-string v3, "gnu.lists.F32Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "f64vector"

    const-string v3, "gnu.lists.F64Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "document"

    const-string v3, "gnu.kawa.xml.KDocument"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "readtable"

    const-string v3, "gnu.kawa.lispexpr.ReadTable"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1019
    :cond_0
    :goto_0
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getTypeValue(Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1

    .line 949
    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object p0

    return-object p0
.end method

.method private initScheme()V
    .locals 12

    .line 113
    sget-object v0, Lkawa/standard/Scheme;->nullEnvironment:Lgnu/mapping/Environment;

    iput-object v0, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    .line 115
    sget-object v1, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    const/4 v2, 0x0

    sget-object v3, Lgnu/kawa/lispexpr/LispLanguage;->getNamedPartLocation:Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    .line 117
    const-string v1, "kawa.standard.SchemeCompilation"

    const-string v2, "lambda"

    const-string v3, "lambda"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "kawa.lang.Quote"

    const-string v2, "plainQuote"

    const-string v3, "quote"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v1, "kawa.standard.define"

    const-string v2, "defineRaw"

    const-string v3, "%define"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v1, "define"

    const-string v2, "kawa.lib.prim_syntax"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "if"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "kawa.standard.set_b"

    const-string v3, "set"

    const-string v4, "set!"

    invoke-virtual {p0, v4, v1, v3}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "cond"

    const-string v3, "kawa.lib.std_syntax"

    invoke-virtual {p0, v1, v3}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "case"

    invoke-virtual {p0, v1, v3}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "and"

    invoke-virtual {p0, v1, v3}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "or"

    invoke-virtual {p0, v1, v3}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "kawa.standard.let"

    const-string v4, "let"

    const-string v5, "%let"

    invoke-virtual {p0, v5, v1, v4}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "let"

    invoke-virtual {p0, v1, v3}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "let*"

    invoke-virtual {p0, v1, v3}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "letrec"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "kawa.standard.begin"

    const-string v4, "begin"

    const-string v5, "begin"

    invoke-virtual {p0, v5, v1, v4}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "do"

    invoke-virtual {p0, v1, v3}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, "delay"

    invoke-virtual {p0, v1, v3}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v1, "%make-promise"

    invoke-virtual {p0, v1, v3}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v1, "kawa.lang.Quote"

    const-string v4, "quasiQuote"

    const-string v5, "quasiquote"

    invoke-virtual {p0, v5, v1, v4}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v1, "define-syntax"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "kawa.standard.let_syntax"

    const-string v4, "let_syntax"

    const-string v5, "let-syntax"

    invoke-virtual {p0, v5, v1, v4}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "kawa.standard.let_syntax"

    const-string v4, "letrec_syntax"

    const-string v5, "letrec-syntax"

    invoke-virtual {p0, v5, v1, v4}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "kawa.standard.syntax_rules"

    const-string v4, "syntax_rules"

    const-string v5, "syntax-rules"

    invoke-virtual {p0, v5, v1, v4}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Lgnu/mapping/Environment;->setLocked()V

    .line 154
    sget-object v0, Lkawa/standard/Scheme;->r4Environment:Lgnu/mapping/Environment;

    iput-object v0, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    .line 157
    const-string v1, "not"

    const-string v4, "kawa.standard.Scheme"

    invoke-virtual {p0, v1, v4}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "boolean?"

    const-string v5, "kawa.lib.misc"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "eq?"

    const-string v6, "isEq"

    invoke-virtual {p0, v1, v4, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "eqv?"

    const-string v6, "isEqv"

    invoke-virtual {p0, v1, v4, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "equal?"

    const-string v6, "isEqual"

    invoke-virtual {p0, v1, v4, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "pair?"

    const-string v6, "kawa.lib.lists"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "cons"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "car"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "cdr"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v1, "set-car!"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v1, "set-cdr!"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v1, "caar"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v1, "cadr"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v1, "cdar"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "cddr"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v1, "caaar"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v1, "caadr"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v1, "cadar"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v1, "caddr"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v1, "cdaar"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "cdadr"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v1, "cddar"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v1, "cdddr"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "caaaar"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v1, "caaadr"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v1, "caadar"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "caaddr"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "cadaar"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v1, "cadadr"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "caddar"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v1, "cadddr"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "cdaaar"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "cdaadr"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "cdadar"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "cdaddr"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "cddaar"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v1, "cddadr"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v1, "cdddar"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v1, "cddddr"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v1, "null?"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v1, "list?"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v1, "length"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v1, "kawa.standard.append"

    const-string v7, "append"

    const-string v8, "append"

    invoke-virtual {p0, v8, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "reverse"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v1, "reverse!"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v1, "list-tail"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v1, "list-ref"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v1, "memq"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "memv"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "member"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v1, "assq"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v1, "assv"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v1, "assoc"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "symbol?"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v1, "symbol->string"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v1, "string->symbol"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "symbol=?"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v1, "symbol-local-name"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v1, "symbol-namespace"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v1, "symbol-namespace-uri"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "symbol-prefix"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v1, "namespace-uri"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v1, "namespace-prefix"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v1, "number?"

    const-string v6, "kawa.lib.numbers"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v1, "quantity?"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v1, "complex?"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v1, "real?"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v1, "rational?"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v1, "integer?"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v1, "exact?"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v1, "inexact?"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v1, "="

    const-string v7, "numEqu"

    invoke-virtual {p0, v1, v4, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v1, "<"

    const-string v7, "numLss"

    invoke-virtual {p0, v1, v4, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v1, ">"

    const-string v7, "numGrt"

    invoke-virtual {p0, v1, v4, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v1, "<="

    const-string v7, "numLEq"

    invoke-virtual {p0, v1, v4, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, ">="

    const-string v7, "numGEq"

    invoke-virtual {p0, v1, v4, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "zero?"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v1, "positive?"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "negative?"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v1, "odd?"

    const-string v7, "isOdd"

    invoke-virtual {p0, v1, v4, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v1, "even?"

    const-string v7, "isEven"

    invoke-virtual {p0, v1, v4, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v1, "max"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v1, "min"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v1, "gnu.kawa.functions.AddOp"

    const-string v7, "$Pl"

    const-string v8, "+"

    invoke-virtual {p0, v8, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v1, "gnu.kawa.functions.AddOp"

    const-string v7, "$Mn"

    const-string v8, "-"

    invoke-virtual {p0, v8, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v1, "gnu.kawa.functions.MultiplyOp"

    const-string v7, "$St"

    const-string v8, "*"

    invoke-virtual {p0, v8, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v1, "$Sl"

    const-string v7, "/"

    const-string v8, "gnu.kawa.functions.DivideOp"

    invoke-virtual {p0, v7, v8, v1}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v1, "abs"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v1, "quotient"

    const-string v7, "quotient"

    invoke-virtual {p0, v1, v8, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v1, "remainder"

    const-string v7, "remainder"

    invoke-virtual {p0, v1, v8, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v1, "modulo"

    const-string v7, "modulo"

    invoke-virtual {p0, v1, v8, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v1, "div"

    const-string v7, "div"

    invoke-virtual {p0, v1, v8, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v1, "mod"

    const-string v7, "mod"

    invoke-virtual {p0, v1, v8, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v1, "div0"

    const-string v7, "div0"

    invoke-virtual {p0, v1, v8, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v1, "mod0"

    const-string v7, "mod0"

    invoke-virtual {p0, v1, v8, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "div-and-mod"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v1, "div0-and-mod0"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v1, "gcd"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v1, "lcm"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v1, "numerator"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v1, "denominator"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v1, "floor"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v1, "ceiling"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v1, "truncate"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v1, "round"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v1, "rationalize"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v1, "exp"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v1, "log"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v1, "sin"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v1, "cos"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v1, "tan"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v1, "asin"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v1, "acos"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v1, "atan"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v1, "sqrt"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v1, "expt"

    const-string v7, "kawa.standard.expt"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v1, "make-rectangular"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v1, "make-polar"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v1, "real-part"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v1, "imag-part"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v1, "magnitude"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v1, "angle"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v1, "inexact"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v1, "exact"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v1, "exact->inexact"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v1, "inexact->exact"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v1, "number->string"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v1, "string->number"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v1, "char?"

    const-string v7, "kawa.lib.characters"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v1, "char=?"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v1, "char<?"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v1, "char>?"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v1, "char<=?"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v1, "char>=?"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v1, "char-ci=?"

    const-string v8, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v1, "char-ci<?"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v1, "char-ci>?"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v1, "char-ci<=?"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v1, "char-ci>=?"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v1, "char-alphabetic?"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v1, "char-numeric?"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v1, "char-whitespace?"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v1, "char-upper-case?"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v1, "char-lower-case?"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v1, "char-title-case?"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v1, "char->integer"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v1, "integer->char"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v1, "char-upcase"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v1, "char-downcase"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v1, "char-titlecase"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v1, "char-foldcase"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v1, "char-general-category"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v1, "string?"

    const-string v7, "kawa.lib.strings"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v1, "make-string"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v1, "string-length"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v1, "string-ref"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v1, "string-set!"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v1, "string=?"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v1, "string<?"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v1, "string>?"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v1, "string<=?"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v1, "string>=?"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v1, "string-ci=?"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v1, "string-ci<?"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v1, "string-ci>?"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v1, "string-ci<=?"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v1, "string-ci>=?"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v1, "string-normalize-nfd"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v1, "string-normalize-nfkd"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v1, "string-normalize-nfc"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v1, "string-normalize-nfkc"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v1, "substring"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v1, "string-append"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v1, "string-append/shared"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v1, "string->list"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v1, "list->string"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v1, "string-copy"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v1, "string-fill!"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v1, "vector?"

    const-string v9, "kawa.lib.vectors"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v1, "make-vector"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v1, "vector-length"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v1, "vector-ref"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v1, "vector-set!"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v1, "list->vector"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v1, "vector->list"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v1, "vector-fill!"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v1, "kawa.standard.vector_append"

    const-string v9, "vectorAppend"

    const-string v10, "vector-append"

    invoke-virtual {p0, v10, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v1, "gnu.kawa.functions.AppendValues"

    const-string v9, "appendValues"

    const-string v10, "values-append"

    invoke-virtual {p0, v10, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v1, "procedure?"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v1, "apply"

    const-string v9, "apply"

    invoke-virtual {p0, v1, v4, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v1, "map"

    const-string v9, "map"

    invoke-virtual {p0, v1, v4, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v1, "for-each"

    const-string v9, "forEach"

    invoke-virtual {p0, v1, v4, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v1, "gnu.kawa.functions.CallCC"

    const-string v9, "callcc"

    const-string v10, "call-with-current-continuation"

    invoke-virtual {p0, v10, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v1, "kawa.standard.callcc"

    const-string v9, "callcc"

    const-string v10, "call/cc"

    invoke-virtual {p0, v10, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v1, "force"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v1, "call-with-input-file"

    const-string v9, "kawa.lib.ports"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v1, "call-with-output-file"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v1, "input-port?"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v1, "output-port?"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v1, "current-input-port"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v1, "current-output-port"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v1, "with-input-from-file"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v1, "with-output-to-file"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v1, "open-input-file"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v1, "open-output-file"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v1, "close-input-port"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v1, "close-output-port"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v1, "read"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v1, "read-line"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v1, "kawa.standard.readchar"

    const-string v10, "readChar"

    const-string v11, "read-char"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v1, "kawa.standard.readchar"

    const-string v10, "peekChar"

    const-string v11, "peek-char"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v1, "eof-object?"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v1, "char-ready?"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v1, "write"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v1, "display"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v1, "gnu.xquery.lang.XQuery"

    const-string v10, "writeFormat"

    const-string v11, "print-as-xml"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v1, "write-char"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v1, "newline"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v1, "kawa.standard.load"

    const-string v10, "load"

    const-string v11, "load"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v1, "kawa.standard.load"

    const-string v10, "loadRelative"

    const-string v11, "load-relative"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v1, "transcript-off"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v1, "transcript-on"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v1, "call-with-input-string"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v1, "open-input-string"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v1, "open-output-string"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v1, "get-output-string"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v1, "call-with-output-string"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v1, "force-output"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v1, "port-line"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v1, "set-port-line!"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v1, "port-column"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v1, "current-error-port"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v1, "input-port-line-number"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v1, "set-input-port-line-number!"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v1, "input-port-column-number"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v1, "input-port-read-state"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v1, "default-prompter"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v1, "input-port-prompter"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v1, "set-input-port-prompter!"

    invoke-virtual {p0, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v1, "base-uri"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v1, "kawa.standard.syntax_error"

    const-string v9, "syntax_error"

    const-string v10, "%syntax-error"

    invoke-virtual {p0, v10, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v1, "syntax-error"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0}, Lgnu/mapping/Environment;->setLocked()V

    .line 431
    sget-object v0, Lkawa/standard/Scheme;->r5Environment:Lgnu/mapping/Environment;

    iput-object v0, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    .line 433
    const-string v1, "values"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v1, "kawa.standard.call_with_values"

    const-string v9, "callWithValues"

    const-string v10, "call-with-values"

    invoke-virtual {p0, v10, v1, v9}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v1, "let-values"

    const-string v9, "kawa.lib.syntax"

    invoke-virtual {p0, v1, v9}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v1, "let*-values"

    invoke-virtual {p0, v1, v9}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v1, "case-lambda"

    invoke-virtual {p0, v1, v9}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v1, "receive"

    invoke-virtual {p0, v1, v9}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v1, "eval"

    const-string v10, "kawa.lang.Eval"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v1, "kawa.standard.SchemeCompilation"

    const-string v10, "repl"

    const-string v11, "repl"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v1, "scheme-report-environment"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v1, "null-environment"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v1, "interaction-environment"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v1, "dynamic-wind"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0}, Lgnu/mapping/Environment;->setLocked()V

    .line 448
    sget-object v0, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    iput-object v0, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    .line 450
    const-string v1, "define-private"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v1, "define-constant"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v1, "kawa.standard.define_autoload"

    const-string v10, "define_autoload"

    const-string v11, "define-autoload"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v1, "kawa.standard.define_autoload"

    const-string v10, "define_autoloads_from_file"

    const-string v11, "define-autoloads-from-file"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v1, "exit"

    const-string v10, "kawa.lib.rnrs.programs"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v1, "command-line"

    const-string v10, "kawa.lib.rnrs.programs"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v1, "ashift"

    const-string v10, "bitwise-arithmetic-shift"

    const-string v11, "gnu.kawa.functions.BitwiseOp"

    invoke-virtual {p0, v10, v11, v1}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v1, "arithmetic-shift"

    const-string v10, "ashift"

    invoke-virtual {p0, v1, v11, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v1, "ash"

    const-string v10, "ashift"

    invoke-virtual {p0, v1, v11, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v1, "bitwise-arithmetic-shift-left"

    const-string v10, "ashiftl"

    invoke-virtual {p0, v1, v11, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v1, "bitwise-arithmetic-shift-right"

    const-string v10, "ashiftr"

    invoke-virtual {p0, v1, v11, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v1, "bitwise-and"

    const-string v10, "and"

    invoke-virtual {p0, v1, v11, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v1, "logand"

    const-string v10, "and"

    invoke-virtual {p0, v1, v11, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v1, "bitwise-ior"

    const-string v10, "ior"

    invoke-virtual {p0, v1, v11, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v1, "logior"

    const-string v10, "ior"

    invoke-virtual {p0, v1, v11, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v1, "bitwise-xor"

    const-string v10, "xor"

    invoke-virtual {p0, v1, v11, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v1, "logxor"

    const-string v10, "xor"

    invoke-virtual {p0, v1, v11, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v1, "bitwise-if"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v1, "bitwise-not"

    const-string v10, "not"

    invoke-virtual {p0, v1, v11, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v1, "lognot"

    const-string v10, "not"

    invoke-virtual {p0, v1, v11, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v1, "logop"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v1, "bitwise-bit-set?"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v1, "bitwise-bit-set?"

    invoke-static {v1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "logbit?"

    invoke-virtual {p0, v10, v6, v1}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v1, "logtest"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v1, "bitwise-bit-count"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v1, "logcount"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v1, "bitwise-copy-bit"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v1, "bitwise-copy-bit-field"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v1, "bitwise-bit-field"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v1, "bitwise-bit-field"

    invoke-static {v1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "bit-extract"

    invoke-virtual {p0, v10, v6, v1}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v1, "bitwise-length"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v1, "integer-length"

    const-string v10, "bitwise$Mnlength"

    invoke-virtual {p0, v1, v6, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v1, "bitwise-first-bit-set"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v1, "bitwise-rotate-bit-field"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v1, "bitwise-reverse-bit-field"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v1, "string-upcase!"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v1, "string-downcase!"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v1, "string-capitalize!"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v1, "string-upcase"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v1, "string-downcase"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v1, "string-titlecase"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v1, "string-foldcase"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v1, "string-capitalize"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v1, "virtual_method"

    const-string v7, "primitive-virtual-method"

    const-string v8, "kawa.standard.prim_method"

    invoke-virtual {p0, v7, v8, v1}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v1, "primitive-static-method"

    const-string v7, "static_method"

    invoke-virtual {p0, v1, v8, v7}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v1, "primitive-interface-method"

    const-string v7, "interface_method"

    invoke-virtual {p0, v1, v8, v7}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v1, "primitive-constructor"

    const-string v7, "kawa.lib.reflection"

    invoke-virtual {p0, v1, v7}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v1, "primitive-op1"

    const-string v10, "op1"

    invoke-virtual {p0, v1, v8, v10}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v1, "primitive-get-field"

    invoke-virtual {p0, v1, v7}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v1, "primitive-set-field"

    invoke-virtual {p0, v1, v7}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v1, "primitive-get-static"

    invoke-virtual {p0, v1, v7}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v1, "primitive-set-static"

    invoke-virtual {p0, v1, v7}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v1, "primitive-array-new"

    invoke-virtual {p0, v1, v7}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v1, "primitive-array-get"

    invoke-virtual {p0, v1, v7}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v1, "primitive-array-set"

    invoke-virtual {p0, v1, v7}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v1, "primitive-array-length"

    invoke-virtual {p0, v1, v7}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v1, "subtype?"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v1, "kawa.standard.prim_throw"

    const-string v8, "primitiveThrow"

    const-string v10, "primitive-throw"

    invoke-virtual {p0, v10, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v1, "try-finally"

    invoke-virtual {p0, v1, v9}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v1, "try-catch"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v1, "kawa.standard.throw_name"

    const-string v8, "throwName"

    const-string v10, "throw"

    invoke-virtual {p0, v10, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v1, "catch"

    const-string v8, "kawa.lib.system"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v1, "error"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v1, "gnu.kawa.functions.Convert"

    const-string v10, "as"

    const-string v11, "as"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v1, "instance?"

    const-string v10, "instanceOf"

    invoke-virtual {p0, v1, v4, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string v1, "synchronized"

    invoke-virtual {p0, v1, v9}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v1, "kawa.standard.object"

    const-string v10, "objectSyntax"

    const-string v11, "object"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v1, "kawa.standard.define_class"

    const-string v10, "define_class"

    const-string v11, "define-class"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v1, "kawa.standard.define_class"

    const-string v10, "define_simple_class"

    const-string v11, "define-simple-class"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v1, "kawa.standard.thisRef"

    const-string v10, "thisSyntax"

    const-string v11, "this"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v1, "gnu.kawa.reflect.Invoke"

    const-string v10, "make"

    const-string v11, "make"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v1, "gnu.kawa.reflect.SlotGet"

    const-string v10, "slotRef"

    const-string v11, "slot-ref"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v1, "gnu.kawa.reflect.SlotSet"

    const-string v10, "set$Mnfield$Ex"

    const-string v11, "slot-set!"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v1, "field"

    const-string v10, "gnu.kawa.reflect.SlotGet"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v1, "gnu.kawa.reflect.ClassMethods"

    const-string v10, "classMethods"

    const-string v11, "class-methods"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v1, "gnu.kawa.reflect.SlotGet"

    const-string v10, "staticField"

    const-string v11, "static-field"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v1, "gnu.kawa.reflect.Invoke"

    const-string v10, "invoke"

    const-string v11, "invoke"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v1, "gnu.kawa.reflect.Invoke"

    const-string v10, "invokeStatic"

    const-string v11, "invoke-static"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string v1, "gnu.kawa.reflect.Invoke"

    const-string v10, "invokeSpecial"

    const-string v11, "invoke-special"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v1, "define-macro"

    invoke-virtual {p0, v1, v9}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v1, "kawa.standard.define_syntax"

    const-string v10, "define_macro"

    const-string v11, "%define-macro"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v1, "define-syntax-case"

    invoke-virtual {p0, v1, v9}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v1, "kawa.standard.syntax_case"

    const-string v10, "syntax_case"

    const-string v11, "syntax-case"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v1, "kawa.standard.define_syntax"

    const-string v10, "define_syntax"

    const-string v11, "%define-syntax"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v1, "kawa.standard.syntax"

    const-string v10, "syntax"

    const-string v11, "syntax"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v1, "kawa.standard.syntax"

    const-string v10, "quasiSyntax"

    const-string v11, "quasisyntax"

    invoke-virtual {p0, v11, v1, v10}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v1, "syntax-object->datum"

    invoke-virtual {p0, v1, v3}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v1, "datum->syntax-object"

    invoke-virtual {p0, v1, v3}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v1, "syntax->expression"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v1, "syntax-body->expression"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v1, "generate-temporaries"

    invoke-virtual {p0, v1, v3}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v1, "with-syntax"

    invoke-virtual {p0, v1, v3}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v1, "identifier?"

    invoke-virtual {p0, v1, v3}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v1, "free-identifier=?"

    invoke-virtual {p0, v1, v3}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string v1, "syntax-source"

    invoke-virtual {p0, v1, v3}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v1, "syntax-line"

    invoke-virtual {p0, v1, v3}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v1, "syntax-column"

    invoke-virtual {p0, v1, v3}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v1, "begin-for-syntax"

    invoke-virtual {p0, v1, v3}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v1, "define-for-syntax"

    invoke-virtual {p0, v1, v3}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v1, "include"

    const-string v2, "kawa.lib.misc_syntax"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v1, "include-relative"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v1, "file-exists?"

    const-string v10, "kawa.lib.files"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v1, "file-directory?"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v1, "file-readable?"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v1, "file-writable?"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v1, "delete-file"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v1, "system-tmpdir"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v1, "make-temporary-file"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v1, "rename-file"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v1, "copy-file"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v1, "create-directory"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v1, "->pathname"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v11, "port-char-encoding"

    invoke-virtual {p0, v11, v1}, Lgnu/expr/Language;->define(Ljava/lang/String;Ljava/lang/Object;)V

    .line 591
    const-string v1, "symbol-read-case"

    const-string v11, "P"

    invoke-virtual {p0, v1, v11}, Lgnu/expr/Language;->define(Ljava/lang/String;Ljava/lang/Object;)V

    .line 593
    const-string v1, "system"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v1, "make-process"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v1, "tokenize-string-to-string-array"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v1, "tokenize-string-using-shell"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v1, "command-parse"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v1, "process-command-line-assignments"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v1, "record-accessor"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v1, "record-modifier"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v1, "record-predicate"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v1, "record-constructor"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v1, "make-record-type"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v1, "record-type-descriptor"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v1, "record-type-name"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v1, "record-type-field-names"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v1, "record?"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v1, "define-record-type"

    const-string v7, "gnu.kawa.slib.DefineRecordType"

    invoke-virtual {p0, v1, v7}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v1, "when"

    invoke-virtual {p0, v1, v9}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v1, "unless"

    invoke-virtual {p0, v1, v9}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v1, "kawa.standard.fluid_let"

    const-string v7, "fluid_let"

    const-string v11, "fluid-let"

    invoke-virtual {p0, v11, v1, v7}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v1, "kawa.standard.constant_fold"

    const-string v7, "constant_fold"

    const-string v11, "constant-fold"

    invoke-virtual {p0, v11, v1, v7}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v1, "make-parameter"

    const-string v7, "kawa.lib.parameters"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v1, "parameterize"

    const-string v7, "kawa.lib.parameters"

    invoke-virtual {p0, v1, v7}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v1, "compile-file"

    invoke-virtual {p0, v1, v8}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v1, "environment-bound?"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v1, "scheme-implementation-version"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v1, "scheme-window"

    const-string v7, "kawa.lib.windows"

    invoke-virtual {p0, v1, v7}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v1, "define-procedure"

    invoke-virtual {p0, v1, v3}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v1, "add-procedure-properties"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v1, "gnu.kawa.functions.MakeProcedure"

    const-string v3, "makeProcedure"

    const-string v7, "make-procedure"

    invoke-virtual {p0, v7, v1, v3}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v1, "procedure-property"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v1, "set-procedure-property!"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v1, "provide"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v1, "test-begin"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v1, "quantity->number"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v1, "quantity->unit"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v1, "make-quantity"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v1, "gnu.kawa.lispexpr.DefineNamespace"

    const-string v3, "define_namespace"

    const-string v7, "define-namespace"

    invoke-virtual {p0, v7, v1, v3}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v1, "gnu.kawa.lispexpr.DefineNamespace"

    const-string v3, "define_xml_namespace"

    const-string v7, "define-xml-namespace"

    invoke-virtual {p0, v7, v1, v3}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v1, "gnu.kawa.lispexpr.DefineNamespace"

    const-string v3, "define_private_namespace"

    const-string v7, "define-private-namespace"

    invoke-virtual {p0, v7, v1, v3}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v1, "kawa.standard.define_unit"

    const-string v3, "define_unit"

    const-string v7, "define-unit"

    invoke-virtual {p0, v7, v1, v3}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v1, "kawa.standard.define_unit"

    const-string v3, "define_base_unit"

    const-string v7, "define-base-unit"

    invoke-virtual {p0, v7, v1, v3}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v1, "duration"

    invoke-virtual {p0, v1, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v1, "gentemp"

    invoke-virtual {p0, v1, v5}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v1, "defmacro"

    invoke-virtual {p0, v1, v9}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v1, "gnu.kawa.functions.Setter"

    const-string v3, "setter"

    const-string v5, "setter"

    invoke-virtual {p0, v5, v1, v3}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v1, "resource-url"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v1, "module-uri"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v1, "future"

    const-string v2, "kawa.lib.thread"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v1, "sleep"

    const-string v2, "kawa.lib.thread"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v1, "runnable"

    const-string v2, "kawa.lib.thread"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v1, "trace"

    const-string v2, "kawa.lib.trace"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v1, "untrace"

    const-string v2, "kawa.lib.trace"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v1, "disassemble"

    const-string v2, "kawa.lib.trace"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v1, "format"

    const-string v2, "gnu.kawa.functions.Format"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v1, "gnu.kawa.functions.ParseFormat"

    const-string v2, "parseFormat"

    const-string v3, "parse-format"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v1, "gnu.kawa.xml.MakeElement"

    const-string v2, "makeElement"

    const-string v3, "make-element"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v1, "gnu.kawa.xml.MakeAttribute"

    const-string v2, "makeAttribute"

    const-string v3, "make-attribute"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v1, "gnu.kawa.functions.ValuesMap"

    const-string v2, "valuesMap"

    const-string v3, "map-values"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v1, "gnu.kawa.xml.Children"

    const-string v2, "children"

    const-string v3, "children"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v1, "attributes"

    const-string v2, "gnu.kawa.xml.Attributes"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v1, "gnu.kawa.xml.MakeUnescapedData"

    const-string v2, "unescapedData"

    const-string v3, "unescaped-data"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v1, "keyword?"

    const-string v2, "kawa.lib.keywords"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v1, "keyword->string"

    const-string v2, "kawa.lib.keywords"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v1, "string->keyword"

    const-string v2, "kawa.lib.keywords"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v1, "kawa.standard.location"

    const-string v2, "location"

    const-string v3, "location"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v1, "kawa.standard.define_alias"

    const-string v2, "define_alias"

    const-string v3, "define-alias"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v1, "kawa.standard.define_variable"

    const-string v2, "define_variable"

    const-string v3, "define-variable"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const-string v1, "kawa.standard.define_member_alias"

    const-string v2, "define_member_alias"

    const-string v3, "define-member-alias"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v1, "define-enum"

    const-string v2, "gnu.kawa.slib.enums"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v1, "import"

    invoke-virtual {p0, v1, v9}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v1, "kawa.standard.require"

    const-string v2, "require"

    const-string v3, "require"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v1, "kawa.standard.module_name"

    const-string v2, "module_name"

    const-string v3, "module-name"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v1, "kawa.standard.module_extends"

    const-string v2, "module_extends"

    const-string v3, "module-extends"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v1, "kawa.standard.module_implements"

    const-string v2, "module_implements"

    const-string v3, "module-implements"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v1, "kawa.standard.module_static"

    const-string v2, "module_static"

    const-string v3, "module-static"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v1, "kawa.standard.export"

    const-string v2, "module_export"

    const-string v3, "module-export"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v1, "kawa.standard.export"

    const-string v2, "export"

    const-string v3, "export"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v1, "kawa.standard.module_compile_options"

    const-string v2, "module_compile_options"

    const-string v3, "module-compile-options"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const-string v1, "kawa.standard.with_compile_options"

    const-string v2, "with_compile_options"

    const-string v3, "with-compile-options"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v1, "array?"

    const-string v2, "kawa.lib.arrays"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v1, "array-rank"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v1, "make-array"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v1, "array"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v1, "array-start"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v1, "array-end"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v1, "shape"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v1, "gnu.kawa.functions.ArrayRef"

    const-string v3, "arrayRef"

    const-string v5, "array-ref"

    invoke-virtual {p0, v5, v1, v3}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v1, "gnu.kawa.functions.ArraySet"

    const-string v3, "arraySet"

    const-string v5, "array-set!"

    invoke-virtual {p0, v5, v1, v3}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v1, "share-array"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v1, "s8vector?"

    const-string v2, "kawa.lib.uniform"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v1, "make-s8vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-string v1, "s8vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v1, "s8vector-length"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v1, "s8vector-ref"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v1, "s8vector-set!"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v1, "s8vector->list"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v1, "list->s8vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v1, "u8vector?"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v1, "make-u8vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v1, "u8vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v1, "u8vector-length"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string v1, "u8vector-ref"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v1, "u8vector-set!"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v1, "u8vector->list"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v1, "list->u8vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v1, "s16vector?"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v1, "make-s16vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string v1, "s16vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v1, "s16vector-length"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v1, "s16vector-ref"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v1, "s16vector-set!"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v1, "s16vector->list"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v1, "list->s16vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v1, "u16vector?"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v1, "make-u16vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v1, "u16vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v1, "u16vector-length"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v1, "u16vector-ref"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v1, "u16vector-set!"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v1, "u16vector->list"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v1, "list->u16vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v1, "s32vector?"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v1, "make-s32vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v1, "s32vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v1, "s32vector-length"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string v1, "s32vector-ref"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-string v1, "s32vector-set!"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v1, "s32vector->list"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v1, "list->s32vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v1, "u32vector?"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v1, "make-u32vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v1, "u32vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string v1, "u32vector-length"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v1, "u32vector-ref"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v1, "u32vector-set!"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v1, "u32vector->list"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v1, "list->u32vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v1, "s64vector?"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string v1, "make-s64vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v1, "s64vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v1, "s64vector-length"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const-string v1, "s64vector-ref"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v1, "s64vector-set!"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string v1, "s64vector->list"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v1, "list->s64vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v1, "u64vector?"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v1, "make-u64vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string v1, "u64vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v1, "u64vector-length"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v1, "u64vector-ref"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v1, "u64vector-set!"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string v1, "u64vector->list"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v1, "list->u64vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const-string v1, "f32vector?"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string v1, "make-f32vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string v1, "f32vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string v1, "f32vector-length"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string v1, "f32vector-ref"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string v1, "f32vector-set!"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string v1, "f32vector->list"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v1, "list->f32vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v1, "f64vector?"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const-string v1, "make-f64vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string v1, "f64vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const-string v1, "f64vector-length"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v1, "f64vector-ref"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const-string v1, "f64vector-set!"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const-string v1, "f64vector->list"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-string v1, "list->f64vector"

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string v1, "cut"

    const-string v2, "gnu.kawa.slib.cut"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string v1, "cute"

    const-string v2, "gnu.kawa.slib.cut"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v1, "cond-expand"

    invoke-virtual {p0, v1, v9}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const-string v1, "%cond-expand"

    invoke-virtual {p0, v1, v9}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const-string v1, "gnu.kawa.functions.DisplayFormat"

    const-string v2, "outBase"

    const-string v3, "*print-base*"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/expr/Language;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string v1, "gnu.kawa.functions.DisplayFormat"

    const-string v2, "outRadix"

    const-string v3, "*print-radix*"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/expr/Language;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const-string v1, "gnu.text.PrettyWriter"

    const-string v2, "lineLengthLoc"

    const-string v3, "*print-right-margin*"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/expr/Language;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const-string v1, "gnu.text.PrettyWriter"

    const-string v2, "miserWidthLoc"

    const-string v3, "*print-miser-width*"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/expr/Language;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const-string v1, "gnu.kawa.xml.XmlNamespace"

    const-string v2, "HTML"

    const-string v3, "html"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/expr/Language;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string v1, "unit"

    const-string v2, "unitNamespace"

    invoke-virtual {p0, v1, v4, v2}, Lgnu/expr/Language;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v1, "pathType"

    const-string v2, "path"

    const-string v3, "gnu.kawa.lispexpr.LangObjType"

    invoke-virtual {p0, v2, v3, v1}, Lgnu/expr/Language;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const-string v1, "filepath"

    const-string v2, "filepathType"

    invoke-virtual {p0, v1, v3, v2}, Lgnu/expr/Language;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string v1, "URI"

    const-string v2, "URIType"

    invoke-virtual {p0, v1, v3, v2}, Lgnu/expr/Language;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v1, "resolve-uri"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const-string v1, "vector"

    const-string v2, "vectorType"

    invoke-virtual {p0, v1, v3, v2}, Lgnu/expr/Language;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v1, "string"

    const-string v2, "stringType"

    invoke-virtual {p0, v1, v3, v2}, Lgnu/expr/Language;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string v1, "list"

    const-string v2, "listType"

    invoke-virtual {p0, v1, v3, v2}, Lgnu/expr/Language;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v1, "regex"

    const-string v2, "regexType"

    invoke-virtual {p0, v1, v3, v2}, Lgnu/expr/Language;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v1, "path?"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v1, "filepath?"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v1, "URI?"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const-string v1, "absolute-path?"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const-string v1, "path-scheme"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string v1, "path-authority"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string v1, "path-user-info"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v1, "path-host"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const-string v1, "path-port"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string v1, "path-file"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const-string v1, "path-parent"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string v1, "path-directory"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v1, "path-last"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v1, "path-extension"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string v1, "path-fragment"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v1, "path-query"

    invoke-virtual {p0, v1, v10}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-virtual {v0}, Lgnu/mapping/Environment;->setLocked()V

    return-void
.end method

.method public static registerEnvironment()V
    .locals 1

    .line 1448
    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v0

    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    return-void
.end method

.method public static string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 2

    .line 1105
    const-string v0, "[]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1109
    invoke-static {v0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v0

    goto :goto_0

    .line 1112
    :cond_0
    invoke-static {p0}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    return-object v0

    .line 1115
    :cond_2
    invoke-static {p0}, Lgnu/expr/Language;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1117
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method


# virtual methods
.method public asSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 1

    .line 1424
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v0, p1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public checkDefaultBinding(Lgnu/mapping/Symbol;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 22

    move-object/from16 v0, p2

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 1146
    invoke-virtual/range {p1 .. p1}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v5

    .line 1147
    invoke-virtual/range {p1 .. p1}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    .line 1148
    instance-of v7, v5, Lgnu/kawa/xml/XmlNamespace;

    if-eqz v7, :cond_0

    .line 1149
    check-cast v5, Lgnu/kawa/xml/XmlNamespace;

    invoke-virtual {v5, v6}, Lgnu/kawa/xml/XmlNamespace;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    return-object v0

    .line 1150
    :cond_0
    invoke-virtual {v5}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lkawa/standard/Scheme;->unitNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v8}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v8

    if-ne v7, v8, :cond_1

    .line 1152
    invoke-static {v6}, Lgnu/math/Unit;->lookup(Ljava/lang/String;)Lgnu/math/NamedUnit;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1154
    invoke-static {v7}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    return-object v0

    .line 1156
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1157
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_2

    return-object v9

    :cond_2
    if-le v8, v4, :cond_6

    add-int/lit8 v10, v8, -0x1

    .line 1160
    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3f

    if-ne v10, v11, :cond_6

    .line 1162
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v4, :cond_6

    sub-int/2addr v10, v4

    .line 1165
    invoke-virtual {v6, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 1166
    invoke-virtual {v5, v6}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v6

    .line 1167
    invoke-virtual {v0, v6, v2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v6

    .line 1168
    instance-of v10, v6, Lgnu/expr/ReferenceExp;

    if-eqz v10, :cond_3

    .line 1170
    move-object v10, v6

    check-cast v10, Lgnu/expr/ReferenceExp;

    invoke-virtual {v10}, Lgnu/expr/AccessExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v10

    if-eqz v10, :cond_4

    const-wide/32 v11, 0x10000

    .line 1171
    invoke-virtual {v10, v11, v12}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_0

    .line 1174
    :cond_3
    instance-of v10, v6, Lgnu/expr/QuoteExp;

    if-nez v10, :cond_5

    :cond_4
    :goto_0
    move-object v6, v9

    :cond_5
    if-eqz v6, :cond_6

    .line 1178
    new-instance v0, Lgnu/expr/LambdaExp;

    invoke-direct {v0, v4}, Lgnu/expr/LambdaExp;-><init>(I)V

    move-object/from16 v1, p1

    .line 1179
    invoke-virtual {v0, v1}, Lgnu/mapping/PropertySet;->setSymbol(Ljava/lang/Object;)V

    .line 1180
    invoke-virtual {v0, v9}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 1181
    new-instance v5, Lgnu/expr/ApplyExp;

    sget-object v7, Lkawa/standard/Scheme;->instanceOf:Lgnu/kawa/reflect/InstanceOf;

    new-instance v8, Lgnu/expr/ReferenceExp;

    invoke-direct {v8, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    new-array v1, v3, [Lgnu/expr/Expression;

    aput-object v8, v1, v2

    aput-object v6, v1, v4

    invoke-direct {v5, v7, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    iput-object v5, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    return-object v0

    .line 1188
    :cond_6
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v10, 0x2e

    const/16 v11, 0x2b

    const/16 v12, 0x2d

    if-eq v6, v12, :cond_9

    if-eq v6, v11, :cond_9

    .line 1191
    invoke-static {v6, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v13

    if-ltz v13, :cond_7

    goto :goto_2

    :cond_7
    move-object/from16 v17, v9

    :cond_8
    :goto_1
    const/4 v12, 0x1

    goto/16 :goto_14

    :cond_9
    :goto_2
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    if-ge v13, v8, :cond_15

    .line 1202
    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 1203
    invoke-static {v15, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v16

    move-object/from16 v17, v9

    const/4 v9, 0x4

    const/4 v2, 0x5

    const/16 v19, 0x1

    const/4 v4, 0x3

    if-ltz v16, :cond_c

    if-ge v14, v4, :cond_a

    const/4 v9, 0x2

    goto :goto_4

    :cond_a
    if-ge v14, v2, :cond_b

    goto :goto_4

    :cond_b
    const/4 v9, 0x5

    :goto_4
    move v14, v9

    goto :goto_5

    :cond_c
    if-eq v15, v11, :cond_d

    if-ne v15, v12, :cond_e

    :cond_d
    if-nez v14, :cond_e

    const/4 v14, 0x1

    goto :goto_5

    :cond_e
    if-ne v15, v10, :cond_f

    if-ge v14, v4, :cond_f

    const/4 v14, 0x3

    goto :goto_5

    :cond_f
    const/16 v4, 0x65

    if-eq v15, v4, :cond_10

    const/16 v4, 0x45

    if-ne v15, v4, :cond_16

    :cond_10
    if-eq v14, v3, :cond_11

    if-ne v14, v9, :cond_16

    :cond_11
    add-int/lit8 v4, v13, 0x1

    if-ge v4, v8, :cond_16

    .line 1213
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v12, :cond_12

    if-ne v9, v11, :cond_13

    :cond_12
    add-int/lit8 v4, v13, 0x2

    if-ge v4, v8, :cond_13

    .line 1215
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1216
    :cond_13
    invoke-static {v9, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    if-gez v9, :cond_14

    goto :goto_6

    :cond_14
    add-int/lit8 v13, v4, 0x1

    const/4 v14, 0x5

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v9, v17

    const/4 v2, 0x0

    const/4 v4, 0x1

    goto :goto_3

    :cond_15
    move-object/from16 v17, v9

    const/16 v19, 0x1

    :cond_16
    :goto_6
    if-ge v13, v8, :cond_8

    const/4 v2, 0x1

    if-le v14, v2, :cond_8

    .line 1227
    new-instance v4, Lgnu/math/DFloNum;

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14}, Lgnu/math/DFloNum;-><init>(Ljava/lang/String;)V

    .line 1229
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    const/4 v14, 0x0

    :goto_7
    if-ge v13, v8, :cond_29

    add-int/lit8 v15, v13, 0x1

    .line 1232
    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v10, 0x2a

    if-ne v2, v10, :cond_19

    if-ne v15, v8, :cond_17

    :goto_8
    goto/16 :goto_1

    :cond_17
    add-int/2addr v13, v3

    .line 1236
    invoke-virtual {v7, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v15, v13

    :cond_18
    :goto_9
    const/16 v19, 0x1

    goto :goto_a

    :cond_19
    const/16 v10, 0x2f

    if-ne v2, v10, :cond_18

    if-eq v15, v8, :cond_8

    if-eqz v14, :cond_1a

    goto :goto_8

    :cond_1a
    add-int/2addr v13, v3

    .line 1242
    invoke-virtual {v7, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v15, v13

    const/4 v14, 0x1

    goto :goto_9

    :goto_a
    add-int/lit8 v10, v15, -0x1

    .line 1248
    :goto_b
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v13

    if-nez v13, :cond_1b

    add-int/lit8 v13, v15, -0x1

    if-ne v13, v10, :cond_1c

    goto :goto_8

    :cond_1b
    if-ne v15, v8, :cond_28

    const/16 v2, 0x31

    move v13, v15

    .line 1263
    :cond_1c
    invoke-virtual {v7, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v10, 0x5e

    if-ne v2, v10, :cond_1e

    if-ne v15, v8, :cond_1d

    goto :goto_8

    :cond_1d
    const/16 v19, 0x1

    add-int/lit8 v2, v15, 0x1

    .line 1269
    invoke-virtual {v7, v15}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v15, v2

    move v2, v10

    const/4 v10, 0x1

    goto :goto_c

    :cond_1e
    const/16 v19, 0x1

    const/4 v10, 0x0

    :goto_c
    if-ne v2, v11, :cond_20

    if-ne v15, v8, :cond_1f

    goto :goto_8

    :cond_1f
    add-int/lit8 v2, v15, 0x1

    .line 1276
    invoke-virtual {v7, v15}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v15, v2

    move v2, v10

    move v13, v14

    :goto_d
    const/16 v16, 0x1

    goto :goto_e

    :cond_20
    if-ne v2, v12, :cond_22

    if-ne v15, v8, :cond_21

    goto :goto_8

    :cond_21
    add-int/lit8 v2, v15, 0x1

    .line 1282
    invoke-virtual {v7, v15}, Ljava/lang/String;->charAt(I)C

    move-result v10

    xor-int/lit8 v13, v14, 0x1

    move v15, v2

    move v2, v10

    goto :goto_d

    :cond_22
    move/from16 v16, v10

    move v13, v14

    :goto_e
    const/4 v10, 0x0

    const/16 v20, 0x0

    .line 1289
    :goto_f
    invoke-static {v2, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-gtz v2, :cond_23

    add-int/lit8 v15, v15, -0x1

    goto :goto_10

    :cond_23
    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v10, v2

    add-int/lit8 v20, v20, 0x1

    if-ne v15, v8, :cond_27

    :goto_10
    if-nez v20, :cond_25

    if-eqz v16, :cond_24

    goto/16 :goto_8

    :cond_24
    const/4 v10, 0x1

    :cond_25
    if-eqz v13, :cond_26

    neg-int v10, v10

    .line 1309
    :cond_26
    invoke-static {v10}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v13, v15

    const/4 v2, 0x1

    const/16 v10, 0x2e

    goto/16 :goto_7

    :cond_27
    const/16 v19, 0x1

    add-int/lit8 v2, v15, 0x1

    .line 1299
    invoke-virtual {v7, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v21, v15

    move v15, v2

    move/from16 v2, v21

    goto :goto_f

    :cond_28
    const/16 v19, 0x1

    add-int/lit8 v2, v15, 0x1

    .line 1261
    invoke-virtual {v7, v15}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move v15, v2

    move v2, v13

    goto/16 :goto_b

    :cond_29
    const/16 v19, 0x1

    if-ne v13, v8, :cond_8

    .line 1313
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    .line 1314
    new-array v2, v1, [Lgnu/expr/Expression;

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v1, :cond_2b

    mul-int/lit8 v6, v5, 0x2

    .line 1317
    invoke-virtual {v9, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1318
    sget-object v8, Lkawa/standard/Scheme;->unitNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v7

    .line 1319
    invoke-virtual {v0, v7}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    .line 1320
    invoke-virtual {v9, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/math/IntNum;

    .line 1321
    invoke-virtual {v6}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    cmp-long v8, v10, v12

    if-eqz v8, :cond_2a

    .line 1322
    new-instance v8, Lgnu/expr/ApplyExp;

    sget-object v10, Lkawa/standard/expt;->expt:Lkawa/standard/expt;

    invoke-static {v6}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v6

    new-array v11, v3, [Lgnu/expr/Expression;

    const/16 v18, 0x0

    aput-object v7, v11, v18

    const/4 v12, 0x1

    aput-object v6, v11, v12

    invoke-direct {v8, v10, v11}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v7, v8

    goto :goto_12

    :cond_2a
    const/4 v12, 0x1

    const/16 v18, 0x0

    .line 1324
    :goto_12
    aput-object v7, v2, v5

    add-int/2addr v5, v12

    const/16 v19, 0x1

    goto :goto_11

    :cond_2b
    const/4 v12, 0x1

    const/16 v18, 0x0

    if-ne v1, v12, :cond_2c

    .line 1328
    aget-object v0, v2, v18

    goto :goto_13

    .line 1330
    :cond_2c
    new-instance v0, Lgnu/expr/ApplyExp;

    sget-object v1, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 1331
    :goto_13
    new-instance v1, Lgnu/expr/ApplyExp;

    sget-object v2, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    invoke-static {v4}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v4

    new-array v3, v3, [Lgnu/expr/Expression;

    aput-object v4, v3, v18

    const/4 v12, 0x1

    aput-object v0, v3, v12

    invoke-direct {v1, v2, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-object v1

    :goto_14
    if-le v8, v3, :cond_2d

    const/16 v1, 0x3c

    if-ne v6, v1, :cond_2d

    add-int/lit8 v1, v8, -0x1

    .line 1339
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3e

    if-ne v2, v4, :cond_2d

    .line 1341
    invoke-virtual {v7, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v8, -0x2

    const/4 v2, 0x1

    goto :goto_15

    :cond_2d
    const/4 v2, 0x0

    :goto_15
    const/4 v9, 0x0

    :goto_16
    if-le v8, v3, :cond_2e

    add-int/lit8 v1, v8, -0x2

    .line 1348
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x5b

    if-ne v1, v4, :cond_2e

    const/16 v19, 0x1

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x5d

    if-ne v1, v4, :cond_2e

    add-int/lit8 v8, v8, -0x2

    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    :cond_2e
    if-eqz v9, :cond_2f

    const/4 v1, 0x0

    .line 1356
    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_17

    :cond_2f
    move-object v3, v7

    .line 1360
    :goto_17
    :try_start_0
    invoke-static {v3}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v1

    if-lez v9, :cond_31

    if-eqz v2, :cond_30

    if-nez v1, :cond_31

    .line 1363
    :cond_30
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    const/4 v4, 0x0

    .line 1364
    invoke-virtual {v0, v2, v4}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v2

    .line 1365
    invoke-static {v2, v0}, Lgnu/expr/InlineCalls;->inlineCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v2

    .line 1366
    instance-of v4, v2, Lgnu/expr/ErrorExp;

    if-nez v4, :cond_31

    .line 1367
    invoke-virtual {v0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-virtual {v1, v2}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v1

    goto :goto_18

    :catch_0
    nop

    goto :goto_1c

    :cond_31
    :goto_18
    if-eqz v1, :cond_33

    :goto_19
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_32

    .line 1374
    invoke-static {v1}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v1

    goto :goto_19

    .line 1375
    :cond_32
    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    return-object v0

    .line 1379
    :cond_33
    invoke-static {v3}, Lgnu/bytecode/Type;->lookupType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v1

    .line 1380
    instance-of v2, v1, Lgnu/bytecode/PrimType;

    if-eqz v2, :cond_34

    .line 1381
    invoke-virtual {v1}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1a

    :cond_34
    const/16 v1, 0x2e

    .line 1384
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_35

    .line 1385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1387
    :cond_35
    invoke-static {v3}, Lgnu/bytecode/ObjectType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_1a
    if-eqz v0, :cond_38

    if-lez v9, :cond_37

    .line 1394
    invoke-static {v0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    :goto_1b
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_36

    .line 1396
    invoke-static {v0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v0

    goto :goto_1b

    .line 1397
    :cond_36
    invoke-virtual {v0}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    .line 1399
    :cond_37
    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1404
    :goto_1c
    invoke-static {v7}, Lgnu/bytecode/ArrayClassLoader;->getContextPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 1406
    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    return-object v0

    :catchall_0
    :cond_38
    return-object v17
.end method

.method public createReadTable()Lgnu/kawa/lispexpr/ReadTable;
    .locals 4

    .line 1429
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->createInitial()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    const/16 v1, 0x3a

    .line 1430
    iput-char v1, v0, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    const/16 v1, 0x23

    .line 1431
    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v1

    check-cast v1, Lgnu/kawa/lispexpr/ReaderDispatch;

    .line 1432
    new-instance v2, Lgnu/kawa/lispexpr/ReaderQuote;

    const-string v3, "syntax"

    invoke-virtual {p0, v3}, Lkawa/standard/Scheme;->asSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/kawa/lispexpr/ReaderQuote;-><init>(Ljava/lang/Object;)V

    const/16 v3, 0x27

    invoke-virtual {v1, v3, v2}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 1433
    new-instance v2, Lgnu/kawa/lispexpr/ReaderQuote;

    const-string v3, "quasisyntax"

    invoke-virtual {p0, v3}, Lkawa/standard/Scheme;->asSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/kawa/lispexpr/ReaderQuote;-><init>(Ljava/lang/Object;)V

    const/16 v3, 0x60

    invoke-virtual {v1, v3, v2}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    const/16 v2, 0x2c

    .line 1434
    invoke-static {}, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->getInstance()Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 1435
    const-string v1, "pathType"

    const-string v2, "path"

    const-string v3, "gnu.kawa.lispexpr.LangObjType"

    invoke-virtual {v0, v2, v3, v1}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtorFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    const-string v1, "filepath"

    const-string v2, "filepathType"

    invoke-virtual {v0, v1, v3, v2}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtorFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    const-string v1, "URI"

    const-string v2, "URIType"

    invoke-virtual {v0, v1, v3, v2}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtorFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    const-string v1, "gnu.mapping.Symbol"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    const-string v2, "symbol"

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtor(Ljava/lang/String;Lgnu/bytecode/Type;)V

    .line 1439
    const-string v1, "gnu.mapping.Namespace"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    const-string v2, "namespace"

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtor(Ljava/lang/String;Lgnu/bytecode/Type;)V

    .line 1440
    const-string v1, "duration"

    const-string v2, "kawa.lib.numbers"

    invoke-virtual {v0, v1, v2, v1}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtorFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1441
    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/ReadTable;->setFinalColonIsKeyword(Z)V

    return-object v0
.end method

.method public formatType(Lgnu/bytecode/Type;)Ljava/lang/String;
    .locals 4

    .line 1083
    sget-object v0, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 1085
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    .line 1086
    invoke-static {}, Lkawa/standard/Scheme;->getTypeMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1088
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1089
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/Type;

    .line 1090
    sget-object v3, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    invoke-virtual {v1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v3

    if-eq v3, v1, :cond_0

    .line 1093
    sget-object v1, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1096
    :cond_1
    sget-object v0, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    return-object v0

    .line 1099
    :cond_2
    invoke-super {p0, p1}, Lgnu/expr/Language;->formatType(Lgnu/bytecode/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFormat(Z)Lgnu/lists/AbstractFormat;
    .locals 0

    if-eqz p1, :cond_0

    .line 938
    sget-object p1, Lkawa/standard/Scheme;->writeFormat:Lgnu/lists/AbstractFormat;

    return-object p1

    :cond_0
    sget-object p1, Lkawa/standard/Scheme;->displayFormat:Lgnu/lists/AbstractFormat;

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 856
    const-string v0, "Scheme"

    return-object v0
.end method

.method public getNamespaceOf(Lgnu/expr/Declaration;)I
    .locals 0

    const/4 p1, 0x3

    return p1
.end method

.method public getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;
    .locals 2

    .line 1046
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1047
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1048
    invoke-static {v0}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1

    .line 1049
    :cond_0
    const-string v1, "java.lang.String"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1050
    sget-object p1, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    return-object p1

    .line 1051
    :cond_1
    const-string v1, "gnu.math.IntNum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1052
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    .line 1053
    :cond_2
    const-string v1, "gnu.math.DFloNum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1054
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->dflonumType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    .line 1055
    :cond_3
    const-string v1, "gnu.math.RatNum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1056
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->rationalType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    .line 1057
    :cond_4
    const-string v1, "gnu.math.RealNum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1058
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->realType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    .line 1059
    :cond_5
    const-string v1, "gnu.math.Numeric"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1060
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->numericType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    .line 1061
    :cond_6
    const-string v1, "gnu.lists.FVector"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1062
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->vectorType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    .line 1063
    :cond_7
    const-string v1, "gnu.lists.LList"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1064
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    .line 1065
    :cond_8
    const-string v1, "gnu.text.Path"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1066
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->pathType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    .line 1067
    :cond_9
    const-string v1, "gnu.text.URIPath"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1068
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->URIType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    .line 1069
    :cond_a
    const-string v1, "gnu.text.FilePath"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1070
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->filepathType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    .line 1071
    :cond_b
    const-string v1, "java.lang.Class"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1072
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    .line 1073
    :cond_c
    const-string v1, "gnu.bytecode.Type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1074
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->typeType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    .line 1075
    :cond_d
    const-string v1, "gnu.bytecode.ClassType"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1076
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    return-object p1

    .line 1077
    :cond_e
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1
.end method

.method public getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 0

    .line 1123
    invoke-static {p1}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1
.end method

.method public makeApply(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 3

    .line 1416
    array-length v0, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Lgnu/expr/Expression;

    const/4 v2, 0x0

    .line 1417
    aput-object p1, v0, v2

    .line 1418
    array-length p1, p2

    invoke-static {p2, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1419
    new-instance p1, Lgnu/expr/ApplyExp;

    new-instance p2, Lgnu/expr/ReferenceExp;

    sget-object v1, Lkawa/standard/Scheme;->applyFieldDecl:Lgnu/expr/Declaration;

    invoke-direct {p2, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {p1, p2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object p1
.end method
