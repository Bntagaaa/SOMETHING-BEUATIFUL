.class public final Lkotlin/jvm/internal/IntSpreadBuilder;
.super Lkotlin/jvm/internal/PrimitiveSpreadBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/PrimitiveSpreadBuilder<",
        "[I>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0013\u0010\u0007\u001a\u00020\u0003*\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u0006J\r\u0010\u000c\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlin/jvm/internal/IntSpreadBuilder;",
        "Lkotlin/jvm/internal/PrimitiveSpreadBuilder;",
        "",
        "",
        "size",
        "<init>",
        "(I)V",
        "getSize",
        "([I)I",
        "value",
        "",
        "add",
        "toArray",
        "()[I",
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
.field public final d:[I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;-><init>(I)V

    .line 97
    new-array p1, p1, [I

    iput-object p1, p0, Lkotlin/jvm/internal/IntSpreadBuilder;->d:[I

    return-void
.end method


# virtual methods
.method public final add(I)V
    .locals 2

    .line 101
    invoke-virtual {p0}, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->getPosition()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->setPosition(I)V

    iget-object v1, p0, Lkotlin/jvm/internal/IntSpreadBuilder;->d:[I

    aput p1, v1, v0

    return-void
.end method

.method public bridge synthetic getSize(Ljava/lang/Object;)I
    .locals 0

    .line 96
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/IntSpreadBuilder;->getSize([I)I

    move-result p1

    return p1
.end method

.method public getSize([I)I
    .locals 1
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    array-length p1, p1

    return p1
.end method

.method public final toArray()[I
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 104
    invoke-virtual {p0}, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->size()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Lkotlin/jvm/internal/IntSpreadBuilder;->d:[I

    invoke-virtual {p0, v1, v0}, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;->toArray(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
