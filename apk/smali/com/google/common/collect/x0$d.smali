.class abstract Lcom/google/common/collect/x0$d;
.super Lcom/google/common/collect/ImmutableMap$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap$a<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final f:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap$a;-><init>()V

    .line 88
    iput p1, p0, Lcom/google/common/collect/x0$d;->f:I

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/common/collect/ImmutableSet;
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/google/common/collect/x0$d;->j()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/x0$d;->f:I

    if-ne v1, v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/google/common/collect/x0$d;->j()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 416
    :cond_0
    new-instance v0, Lcom/google/common/collect/n2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/n2;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/google/common/collect/x0$d;->j()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 118
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/x0$d;->i(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1

    .line 123
    new-instance v0, Lcom/google/common/collect/y0;

    invoke-direct {v0, p0}, Lcom/google/common/collect/y0;-><init>(Lcom/google/common/collect/x0$d;)V

    return-object v0
.end method

.method public abstract i(I)Ljava/lang/Object;
.end method

.method public abstract j()Lcom/google/common/collect/ImmutableMap;
.end method

.method public size()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/google/common/collect/x0$d;->f:I

    return v0
.end method
