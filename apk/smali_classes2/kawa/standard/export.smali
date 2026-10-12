.class public Lkawa/standard/export;
.super Lkawa/lang/Syntax;
.source "SourceFile"


# static fields
.field public static final export:Lkawa/standard/export;

.field public static final module_export:Lkawa/standard/export;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Lkawa/standard/export;

    invoke-direct {v0}, Lkawa/standard/export;-><init>()V

    sput-object v0, Lkawa/standard/export;->module_export:Lkawa/standard/export;

    .line 9
    const-string v1, "module-export"

    invoke-virtual {v0, v1}, Lkawa/lang/Syntax;->setName(Ljava/lang/String;)V

    .line 11
    new-instance v1, Lkawa/standard/export;

    invoke-direct {v1}, Lkawa/standard/export;-><init>()V

    sput-object v1, Lkawa/standard/export;->export:Lkawa/standard/export;

    .line 12
    const-string v1, "export"

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
    .locals 6

    .line 17
    const-string p2, "\'"

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 18
    invoke-virtual {p4, p1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 21
    :try_start_0
    instance-of v1, p3, Lgnu/expr/ModuleExp;

    const/4 v2, 0x1

    const/16 v3, 0x65

    if-eqz v1, :cond_7

    .line 22
    move-object p2, p3

    check-cast p2, Lgnu/expr/ModuleExp;

    const/16 v1, 0x4000

    invoke-virtual {p2, v1}, Lgnu/expr/Expression;->setFlag(I)V

    .line 29
    :goto_0
    sget-object p2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, p2, :cond_6

    .line 31
    invoke-virtual {p4, v0}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :goto_1
    instance-of p2, v0, Lkawa/lang/SyntaxForm;

    if-eqz p2, :cond_0

    .line 34
    check-cast v0, Lkawa/lang/SyntaxForm;

    .line 35
    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto/16 :goto_3

    .line 38
    :cond_0
    instance-of p2, v0, Lgnu/lists/Pair;

    if-eqz p2, :cond_5

    .line 40
    check-cast v0, Lgnu/lists/Pair;

    .line 41
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p2

    .line 42
    :goto_2
    instance-of v1, p2, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_1

    .line 44
    check-cast p2, Lkawa/lang/SyntaxForm;

    .line 45
    invoke-interface {p2}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p2

    goto :goto_2

    .line 47
    :cond_1
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 49
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 50
    const-string v4, "namespace:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 52
    const-string p2, "\'namespace:\' prefix ignored"

    const/16 v4, 0x77

    invoke-virtual {p4, v4, p2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    const/16 p2, 0xa

    .line 53
    invoke-virtual {v1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 56
    :cond_2
    instance-of v1, p2, Ljava/lang/String;

    if-nez v1, :cond_3

    instance-of v1, p2, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_5

    .line 64
    :cond_3
    invoke-virtual {p3, p2}, Lgnu/expr/ScopeExp;->getNoDefine(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object p2

    const-wide/16 v4, 0x200

    .line 65
    invoke-virtual {p2, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 66
    invoke-static {p2, v0}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    :cond_4
    const-wide/16 v4, 0x400

    .line 67
    invoke-virtual {p2, v4, v5}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 68
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid syntax in \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkawa/lang/Syntax;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x27

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, v3, p2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {p4, p1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_6
    invoke-virtual {p4, p1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return v2

    .line 25
    :cond_7
    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkawa/lang/Syntax;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' not at module level"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, v3, p2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    invoke-virtual {p4, p1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return v2

    :goto_3
    invoke-virtual {p4, p1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw p2
.end method
