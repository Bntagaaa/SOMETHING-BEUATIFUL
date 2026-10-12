.class public Lkawa/standard/module_compile_options;
.super Lkawa/lang/Syntax;
.source "SourceFile"


# static fields
.field public static final module_compile_options:Lkawa/standard/module_compile_options;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Lkawa/standard/module_compile_options;

    invoke-direct {v0}, Lkawa/standard/module_compile_options;-><init>()V

    sput-object v0, Lkawa/standard/module_compile_options;->module_compile_options:Lkawa/standard/module_compile_options;

    .line 10
    const-string v1, "module-compile-options"

    invoke-virtual {v0, v1}, Lkawa/lang/Syntax;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 0

    .line 15
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2, p0, p4}, Lkawa/standard/with_compile_options;->getOptions(Ljava/lang/Object;Ljava/util/Stack;Lkawa/lang/Syntax;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    sget-object p2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, p2, :cond_0

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkawa/lang/Syntax;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " key must be a keyword"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x65

    invoke-virtual {p4, p2, p1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
