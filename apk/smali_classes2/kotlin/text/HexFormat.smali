.class public final Lkotlin/text/HexFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/text/HexFormat$Builder;,
        Lkotlin/text/HexFormat$BytesHexFormat;,
        Lkotlin/text/HexFormat$Companion;,
        Lkotlin/text/HexFormat$NumberHexFormat;
    }
.end annotation

.annotation build Lkotlin/ExperimentalStdlibApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0013\u0008\u0007\u0018\u0000 \u00192\u00020\u0001:\u0004\u001a\u001b\u001c\u0019B!\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlin/text/HexFormat;",
        "",
        "",
        "upperCase",
        "Lkotlin/text/HexFormat$BytesHexFormat;",
        "bytes",
        "Lkotlin/text/HexFormat$NumberHexFormat;",
        "number",
        "<init>",
        "(ZLkotlin/text/HexFormat$BytesHexFormat;Lkotlin/text/HexFormat$NumberHexFormat;)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "a",
        "Z",
        "getUpperCase",
        "()Z",
        "b",
        "Lkotlin/text/HexFormat$BytesHexFormat;",
        "getBytes",
        "()Lkotlin/text/HexFormat$BytesHexFormat;",
        "c",
        "Lkotlin/text/HexFormat$NumberHexFormat;",
        "getNumber",
        "()Lkotlin/text/HexFormat$NumberHexFormat;",
        "Companion",
        "BytesHexFormat",
        "NumberHexFormat",
        "Builder",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.9"
.end annotation


# static fields
.field public static final Companion:Lkotlin/text/HexFormat$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Lkotlin/text/HexFormat;

.field public static final e:Lkotlin/text/HexFormat;


# instance fields
.field public final a:Z

.field public final b:Lkotlin/text/HexFormat$BytesHexFormat;

.field public final c:Lkotlin/text/HexFormat$NumberHexFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lkotlin/text/HexFormat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/text/HexFormat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/text/HexFormat;->Companion:Lkotlin/text/HexFormat$Companion;

    .line 789
    new-instance v0, Lkotlin/text/HexFormat;

    .line 791
    sget-object v1, Lkotlin/text/HexFormat$BytesHexFormat;->Companion:Lkotlin/text/HexFormat$BytesHexFormat$Companion;

    invoke-virtual {v1}, Lkotlin/text/HexFormat$BytesHexFormat$Companion;->getDefault$kotlin_stdlib()Lkotlin/text/HexFormat$BytesHexFormat;

    move-result-object v2

    .line 792
    sget-object v3, Lkotlin/text/HexFormat$NumberHexFormat;->Companion:Lkotlin/text/HexFormat$NumberHexFormat$Companion;

    invoke-virtual {v3}, Lkotlin/text/HexFormat$NumberHexFormat$Companion;->getDefault$kotlin_stdlib()Lkotlin/text/HexFormat$NumberHexFormat;

    move-result-object v4

    const/4 v5, 0x0

    .line 789
    invoke-direct {v0, v5, v2, v4}, Lkotlin/text/HexFormat;-><init>(ZLkotlin/text/HexFormat$BytesHexFormat;Lkotlin/text/HexFormat$NumberHexFormat;)V

    sput-object v0, Lkotlin/text/HexFormat;->d:Lkotlin/text/HexFormat;

    .line 804
    new-instance v0, Lkotlin/text/HexFormat;

    .line 806
    invoke-virtual {v1}, Lkotlin/text/HexFormat$BytesHexFormat$Companion;->getDefault$kotlin_stdlib()Lkotlin/text/HexFormat$BytesHexFormat;

    move-result-object v1

    .line 807
    invoke-virtual {v3}, Lkotlin/text/HexFormat$NumberHexFormat$Companion;->getDefault$kotlin_stdlib()Lkotlin/text/HexFormat$NumberHexFormat;

    move-result-object v2

    const/4 v3, 0x1

    .line 804
    invoke-direct {v0, v3, v1, v2}, Lkotlin/text/HexFormat;-><init>(ZLkotlin/text/HexFormat$BytesHexFormat;Lkotlin/text/HexFormat$NumberHexFormat;)V

    sput-object v0, Lkotlin/text/HexFormat;->e:Lkotlin/text/HexFormat;

    return-void
.end method

.method public constructor <init>(ZLkotlin/text/HexFormat$BytesHexFormat;Lkotlin/text/HexFormat$NumberHexFormat;)V
    .locals 1
    .param p2    # Lkotlin/text/HexFormat$BytesHexFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/text/HexFormat$NumberHexFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean p1, p0, Lkotlin/text/HexFormat;->a:Z

    .line 65
    iput-object p2, p0, Lkotlin/text/HexFormat;->b:Lkotlin/text/HexFormat$BytesHexFormat;

    .line 77
    iput-object p3, p0, Lkotlin/text/HexFormat;->c:Lkotlin/text/HexFormat$NumberHexFormat;

    return-void
.end method

.method public static final synthetic access$getDefault$cp()Lkotlin/text/HexFormat;
    .locals 1

    .line 35
    sget-object v0, Lkotlin/text/HexFormat;->d:Lkotlin/text/HexFormat;

    return-object v0
.end method

.method public static final synthetic access$getUpperCase$cp()Lkotlin/text/HexFormat;
    .locals 1

    .line 35
    sget-object v0, Lkotlin/text/HexFormat;->e:Lkotlin/text/HexFormat;

    return-object v0
.end method


# virtual methods
.method public final getBytes()Lkotlin/text/HexFormat$BytesHexFormat;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 65
    iget-object v0, p0, Lkotlin/text/HexFormat;->b:Lkotlin/text/HexFormat$BytesHexFormat;

    return-object v0
.end method

.method public final getNumber()Lkotlin/text/HexFormat$NumberHexFormat;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 77
    iget-object v0, p0, Lkotlin/text/HexFormat;->c:Lkotlin/text/HexFormat$NumberHexFormat;

    return-object v0
.end method

.method public final getUpperCase()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lkotlin/text/HexFormat;->a:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 81
    const-string v0, "HexFormat(\n    upperCase = "

    .line 0
    invoke-static {v0}, L_COROUTINE/a;->p(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    iget-boolean v1, p0, Lkotlin/text/HexFormat;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n    bytes = BytesHexFormat(\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Lkotlin/text/HexFormat;->b:Lkotlin/text/HexFormat$BytesHexFormat;

    const-string v2, "        "

    invoke-virtual {v1, v0, v2}, Lkotlin/text/HexFormat$BytesHexFormat;->appendOptionsTo$kotlin_stdlib(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, "    ),"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "    number = NumberHexFormat("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lkotlin/text/HexFormat;->c:Lkotlin/text/HexFormat$NumberHexFormat;

    invoke-virtual {v1, v0, v2}, Lkotlin/text/HexFormat$NumberHexFormat;->appendOptionsTo$kotlin_stdlib(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, "    )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
