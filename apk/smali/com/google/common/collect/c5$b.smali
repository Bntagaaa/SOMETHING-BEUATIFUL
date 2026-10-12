.class final Lcom/google/common/collect/c5$b;
.super Lcom/google/common/collect/a3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/a3<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/c5;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/c5;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/google/common/collect/c5$b;->c:Lcom/google/common/collect/c5;

    invoke-direct {p0}, Lcom/google/common/collect/a3;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 83
    iget-object v0, p0, Lcom/google/common/collect/c5$b;->c:Lcom/google/common/collect/c5;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMultiset;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/common/collect/c5$b;->c:Lcom/google/common/collect/c5;

    iget-object v0, v0, Lcom/google/common/collect/c5;->e:Lcom/google/common/collect/r4;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/r4;->c(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/common/collect/c5$b;->c:Lcom/google/common/collect/c5;

    iget-object v0, v0, Lcom/google/common/collect/c5;->e:Lcom/google/common/collect/r4;

    .line 179
    iget v0, v0, Lcom/google/common/collect/r4;->c:I

    return v0
.end method
