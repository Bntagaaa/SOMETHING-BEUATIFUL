.class final Lcom/google/common/collect/Sets$m;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/collect/ImmutableMap;

.field public final b:I


# direct methods
.method public constructor <init>(ILcom/google/common/collect/ImmutableMap;)V
    .locals 0

    .line 1408
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1409
    iput-object p2, p0, Lcom/google/common/collect/Sets$m;->a:Lcom/google/common/collect/ImmutableMap;

    .line 1410
    iput p1, p0, Lcom/google/common/collect/Sets$m;->b:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1443
    iget-object v0, p0, Lcom/google/common/collect/Sets$m;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 1444
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget v1, p0, Lcom/google/common/collect/Sets$m;->b:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1415
    new-instance v0, Lcom/google/common/collect/Sets$m$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Sets$m$a;-><init>(Lcom/google/common/collect/Sets$m;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1438
    iget v0, p0, Lcom/google/common/collect/Sets$m;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method
