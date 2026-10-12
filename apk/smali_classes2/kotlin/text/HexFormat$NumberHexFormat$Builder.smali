.class public final Lkotlin/text/HexFormat$NumberHexFormat$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/HexFormat$NumberHexFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\t\u0008\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R*\u0010\u0010\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00088\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR*\u0010\u0014\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00088\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u000b\u001a\u0004\u0008\u0012\u0010\r\"\u0004\u0008\u0013\u0010\u000fR\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR0\u0010%\u001a\u00020\u001d2\u0006\u0010\t\u001a\u00020\u001d8\u0006@FX\u0087\u000e\u00a2\u0006\u0018\n\u0004\u0008\u001e\u0010\u001f\u0012\u0004\u0008$\u0010\u0003\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#\u00a8\u0006&"
    }
    d2 = {
        "Lkotlin/text/HexFormat$NumberHexFormat$Builder;",
        "",
        "<init>",
        "()V",
        "Lkotlin/text/HexFormat$NumberHexFormat;",
        "build$kotlin_stdlib",
        "()Lkotlin/text/HexFormat$NumberHexFormat;",
        "build",
        "",
        "value",
        "a",
        "Ljava/lang/String;",
        "getPrefix",
        "()Ljava/lang/String;",
        "setPrefix",
        "(Ljava/lang/String;)V",
        "prefix",
        "b",
        "getSuffix",
        "setSuffix",
        "suffix",
        "",
        "c",
        "Z",
        "getRemoveLeadingZeros",
        "()Z",
        "setRemoveLeadingZeros",
        "(Z)V",
        "removeLeadingZeros",
        "",
        "d",
        "I",
        "getMinLength",
        "()I",
        "setMinLength",
        "(I)V",
        "getMinLength$annotations",
        "minLength",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHexFormat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HexFormat.kt\nkotlin/text/HexFormat$NumberHexFormat$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,844:1\n1#2:845\n*E\n"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    sget-object v0, Lkotlin/text/HexFormat$NumberHexFormat;->Companion:Lkotlin/text/HexFormat$NumberHexFormat$Companion;

    invoke-virtual {v0}, Lkotlin/text/HexFormat$NumberHexFormat$Companion;->getDefault$kotlin_stdlib()Lkotlin/text/HexFormat$NumberHexFormat;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/text/HexFormat$NumberHexFormat;->getPrefix()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lkotlin/text/HexFormat$NumberHexFormat$Builder;->a:Ljava/lang/String;

    .line 580
    invoke-virtual {v0}, Lkotlin/text/HexFormat$NumberHexFormat$Companion;->getDefault$kotlin_stdlib()Lkotlin/text/HexFormat$NumberHexFormat;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/text/HexFormat$NumberHexFormat;->getSuffix()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lkotlin/text/HexFormat$NumberHexFormat$Builder;->b:Ljava/lang/String;

    .line 595
    invoke-virtual {v0}, Lkotlin/text/HexFormat$NumberHexFormat$Companion;->getDefault$kotlin_stdlib()Lkotlin/text/HexFormat$NumberHexFormat;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/text/HexFormat$NumberHexFormat;->getRemoveLeadingZeros()Z

    move-result v1

    iput-boolean v1, p0, Lkotlin/text/HexFormat$NumberHexFormat$Builder;->c:Z

    .line 610
    invoke-virtual {v0}, Lkotlin/text/HexFormat$NumberHexFormat$Companion;->getDefault$kotlin_stdlib()Lkotlin/text/HexFormat$NumberHexFormat;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/text/HexFormat$NumberHexFormat;->getMinLength()I

    move-result v0

    iput v0, p0, Lkotlin/text/HexFormat$NumberHexFormat$Builder;->d:I

    return-void
.end method

.method public static synthetic getMinLength$annotations()V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "2.0"
    .end annotation

    return-void
.end method


# virtual methods
.method public final build$kotlin_stdlib()Lkotlin/text/HexFormat$NumberHexFormat;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 617
    new-instance v0, Lkotlin/text/HexFormat$NumberHexFormat;

    iget-object v1, p0, Lkotlin/text/HexFormat$NumberHexFormat$Builder;->a:Ljava/lang/String;

    iget-object v2, p0, Lkotlin/text/HexFormat$NumberHexFormat$Builder;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lkotlin/text/HexFormat$NumberHexFormat$Builder;->c:Z

    iget v4, p0, Lkotlin/text/HexFormat$NumberHexFormat$Builder;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/text/HexFormat$NumberHexFormat;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v0
.end method

.method public final getMinLength()I
    .locals 1

    .line 609
    iget v0, p0, Lkotlin/text/HexFormat$NumberHexFormat$Builder;->d:I

    return v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 561
    iget-object v0, p0, Lkotlin/text/HexFormat$NumberHexFormat$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getRemoveLeadingZeros()Z
    .locals 1

    .line 595
    iget-boolean v0, p0, Lkotlin/text/HexFormat$NumberHexFormat$Builder;->c:Z

    return v0
.end method

.method public final getSuffix()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 580
    iget-object v0, p0, Lkotlin/text/HexFormat$NumberHexFormat$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final setMinLength(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 613
    iput p1, p0, Lkotlin/text/HexFormat$NumberHexFormat$Builder;->d:I

    return-void

    .line 612
    :cond_0
    const-string v0, "Non-positive values are prohibited for minLength, but was "

    .line 0
    invoke-static {p1, v0}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 612
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setPrefix(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 563
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xd

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    iput-object p1, p0, Lkotlin/text/HexFormat$NumberHexFormat$Builder;->a:Ljava/lang/String;

    return-void

    .line 564
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LF and CR characters are prohibited in prefix, but was "

    .line 0
    invoke-static {v1, p1}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 564
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setRemoveLeadingZeros(Z)V
    .locals 0

    .line 595
    iput-boolean p1, p0, Lkotlin/text/HexFormat$NumberHexFormat$Builder;->c:Z

    return-void
.end method

.method public final setSuffix(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 582
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xd

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    iput-object p1, p0, Lkotlin/text/HexFormat$NumberHexFormat$Builder;->b:Ljava/lang/String;

    return-void

    .line 583
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LF and CR characters are prohibited in suffix, but was "

    .line 0
    invoke-static {v1, p1}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 583
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
