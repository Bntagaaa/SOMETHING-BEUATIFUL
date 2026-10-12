.class public final Lkotlin/text/HexFormat$BytesHexFormat$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/HexFormat$BytesHexFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008\u0014\u0018\u00002\u00020\u0001B\t\u0008\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R*\u0010\u0010\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00088\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR*\u0010\u0014\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00088\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u000b\u001a\u0004\u0008\u0012\u0010\r\"\u0004\u0008\u0013\u0010\u000fR\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR*\u0010 \u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\u00158\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u0017\u001a\u0004\u0008\u001e\u0010\u0019\"\u0004\u0008\u001f\u0010\u001bR*\u0010$\u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\u00158\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\u0017\u001a\u0004\u0008\"\u0010\u0019\"\u0004\u0008#\u0010\u001bR*\u0010(\u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\u00158\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010\u0017\u001a\u0004\u0008&\u0010\u0019\"\u0004\u0008\'\u0010\u001b\u00a8\u0006)"
    }
    d2 = {
        "Lkotlin/text/HexFormat$BytesHexFormat$Builder;",
        "",
        "<init>",
        "()V",
        "Lkotlin/text/HexFormat$BytesHexFormat;",
        "build$kotlin_stdlib",
        "()Lkotlin/text/HexFormat$BytesHexFormat;",
        "build",
        "",
        "value",
        "a",
        "I",
        "getBytesPerLine",
        "()I",
        "setBytesPerLine",
        "(I)V",
        "bytesPerLine",
        "b",
        "getBytesPerGroup",
        "setBytesPerGroup",
        "bytesPerGroup",
        "",
        "c",
        "Ljava/lang/String;",
        "getGroupSeparator",
        "()Ljava/lang/String;",
        "setGroupSeparator",
        "(Ljava/lang/String;)V",
        "groupSeparator",
        "d",
        "getByteSeparator",
        "setByteSeparator",
        "byteSeparator",
        "e",
        "getBytePrefix",
        "setBytePrefix",
        "bytePrefix",
        "f",
        "getByteSuffix",
        "setByteSuffix",
        "byteSuffix",
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


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    sget-object v0, Lkotlin/text/HexFormat$BytesHexFormat;->Companion:Lkotlin/text/HexFormat$BytesHexFormat$Companion;

    invoke-virtual {v0}, Lkotlin/text/HexFormat$BytesHexFormat$Companion;->getDefault$kotlin_stdlib()Lkotlin/text/HexFormat$BytesHexFormat;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/text/HexFormat$BytesHexFormat;->getBytesPerLine()I

    move-result v1

    iput v1, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->a:I

    .line 315
    invoke-virtual {v0}, Lkotlin/text/HexFormat$BytesHexFormat$Companion;->getDefault$kotlin_stdlib()Lkotlin/text/HexFormat$BytesHexFormat;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/text/HexFormat$BytesHexFormat;->getBytesPerGroup()I

    move-result v1

    iput v1, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->b:I

    .line 330
    invoke-virtual {v0}, Lkotlin/text/HexFormat$BytesHexFormat$Companion;->getDefault$kotlin_stdlib()Lkotlin/text/HexFormat$BytesHexFormat;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/text/HexFormat$BytesHexFormat;->getGroupSeparator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->c:Ljava/lang/String;

    .line 344
    invoke-virtual {v0}, Lkotlin/text/HexFormat$BytesHexFormat$Companion;->getDefault$kotlin_stdlib()Lkotlin/text/HexFormat$BytesHexFormat;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/text/HexFormat$BytesHexFormat;->getByteSeparator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->d:Ljava/lang/String;

    .line 363
    invoke-virtual {v0}, Lkotlin/text/HexFormat$BytesHexFormat$Companion;->getDefault$kotlin_stdlib()Lkotlin/text/HexFormat$BytesHexFormat;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/text/HexFormat$BytesHexFormat;->getBytePrefix()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->e:Ljava/lang/String;

    .line 382
    invoke-virtual {v0}, Lkotlin/text/HexFormat$BytesHexFormat$Companion;->getDefault$kotlin_stdlib()Lkotlin/text/HexFormat$BytesHexFormat;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/text/HexFormat$BytesHexFormat;->getByteSuffix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build$kotlin_stdlib()Lkotlin/text/HexFormat$BytesHexFormat;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 390
    new-instance v0, Lkotlin/text/HexFormat$BytesHexFormat;

    iget v1, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->a:I

    iget v2, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->b:I

    iget-object v3, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->c:Ljava/lang/String;

    iget-object v4, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->d:Ljava/lang/String;

    iget-object v5, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->e:Ljava/lang/String;

    iget-object v6, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lkotlin/text/HexFormat$BytesHexFormat;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getBytePrefix()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 363
    iget-object v0, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getByteSeparator()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 344
    iget-object v0, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getByteSuffix()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 382
    iget-object v0, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getBytesPerGroup()I
    .locals 1

    .line 315
    iget v0, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->b:I

    return v0
.end method

.method public final getBytesPerLine()I
    .locals 1

    .line 296
    iget v0, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->a:I

    return v0
.end method

.method public final getGroupSeparator()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 330
    iget-object v0, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final setBytePrefix(Ljava/lang/String;)V
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

    .line 365
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xd

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iput-object p1, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->e:Ljava/lang/String;

    return-void

    .line 366
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LF and CR characters are prohibited in bytePrefix, but was "

    .line 0
    invoke-static {v1, p1}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 366
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setByteSeparator(Ljava/lang/String;)V
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

    .line 346
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xd

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iput-object p1, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->d:Ljava/lang/String;

    return-void

    .line 347
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LF and CR characters are prohibited in byteSeparator, but was "

    .line 0
    invoke-static {v1, p1}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 347
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setByteSuffix(Ljava/lang/String;)V
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

    .line 384
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xd

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    iput-object p1, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->f:Ljava/lang/String;

    return-void

    .line 385
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LF and CR characters are prohibited in byteSuffix, but was "

    .line 0
    invoke-static {v1, p1}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 385
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setBytesPerGroup(I)V
    .locals 2

    if-lez p1, :cond_0

    .line 319
    iput p1, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->b:I

    return-void

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-positive values are prohibited for bytesPerGroup, but was "

    .line 0
    invoke-static {p1, v1}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 318
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setBytesPerLine(I)V
    .locals 2

    if-lez p1, :cond_0

    .line 300
    iput p1, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->a:I

    return-void

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-positive values are prohibited for bytesPerLine, but was "

    .line 0
    invoke-static {p1, v1}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 299
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setGroupSeparator(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    iput-object p1, p0, Lkotlin/text/HexFormat$BytesHexFormat$Builder;->c:Ljava/lang/String;

    return-void
.end method
