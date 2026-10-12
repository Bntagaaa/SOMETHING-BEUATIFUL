.class public Lkawa/standard/IfFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasFeature(Ljava/lang/String;)Z
    .locals 6

    .line 22
    const-string v0, "kawa"

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    .line 24
    :cond_0
    const-string v0, "srfi-0"

    if-ne p0, v0, :cond_1

    return v1

    .line 27
    :cond_1
    const-string v0, "srfi-4"

    if-ne p0, v0, :cond_2

    return v1

    .line 29
    :cond_2
    const-string v0, "srfi-6"

    if-ne p0, v0, :cond_3

    return v1

    .line 31
    :cond_3
    const-string v0, "srfi-8"

    if-ne p0, v0, :cond_4

    return v1

    .line 33
    :cond_4
    const-string v0, "srfi-9"

    if-ne p0, v0, :cond_5

    return v1

    .line 35
    :cond_5
    const-string v0, "srfi-11"

    if-ne p0, v0, :cond_6

    return v1

    .line 37
    :cond_6
    const-string v0, "srfi-16"

    if-ne p0, v0, :cond_7

    return v1

    .line 39
    :cond_7
    const-string v0, "srfi-17"

    if-ne p0, v0, :cond_8

    return v1

    .line 41
    :cond_8
    const-string v0, "srfi-23"

    if-ne p0, v0, :cond_9

    return v1

    .line 43
    :cond_9
    const-string v0, "srfi-25"

    if-ne p0, v0, :cond_a

    return v1

    .line 45
    :cond_a
    const-string v0, "srfi-26"

    if-ne p0, v0, :cond_b

    return v1

    .line 47
    :cond_b
    const-string v0, "srfi-28"

    if-ne p0, v0, :cond_c

    return v1

    .line 49
    :cond_c
    const-string v0, "srfi-30"

    if-ne p0, v0, :cond_d

    return v1

    .line 51
    :cond_d
    const-string v0, "srfi-39"

    if-ne p0, v0, :cond_e

    return v1

    .line 71
    :cond_e
    const-string v0, "in-servlet"

    const-string v2, "in-http-server"

    const/4 v3, 0x0

    if-eq p0, v2, :cond_f

    if-ne p0, v0, :cond_13

    .line 73
    :cond_f
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/expr/ModuleContext;->getFlags()I

    move-result v4

    if-ne p0, v2, :cond_11

    .line 75
    sget p0, Lgnu/expr/ModuleContext;->IN_HTTP_SERVER:I

    and-int/2addr p0, v4

    if-eqz p0, :cond_10

    return v1

    :cond_10
    return v3

    :cond_11
    if-ne p0, v0, :cond_13

    .line 77
    sget p0, Lgnu/expr/ModuleContext;->IN_SERVLET:I

    and-int/2addr p0, v4

    if-eqz p0, :cond_12

    return v1

    :cond_12
    return v3

    .line 80
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "%provide%"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 81
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    const/4 v2, -0x1

    .line 82
    invoke-virtual {v0, p0, v2}, Lgnu/expr/Compilation;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object p0

    if-eqz p0, :cond_14

    const-wide/32 v4, 0x10000

    .line 83
    invoke-virtual {p0, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result p0

    if-nez p0, :cond_14

    return v1

    :cond_14
    return v3
.end method

.method public static testFeature(Ljava/lang/Object;)Z
    .locals 1

    .line 10
    instance-of v0, p0, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_0

    .line 12
    check-cast p0, Lkawa/lang/SyntaxForm;

    .line 13
    invoke-interface {p0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    .line 15
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_2

    instance-of v0, p0, Lgnu/mapping/SimpleSymbol;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 16
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkawa/standard/IfFeature;->hasFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
