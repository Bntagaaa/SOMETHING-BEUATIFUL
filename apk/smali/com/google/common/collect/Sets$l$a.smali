.class Lcom/google/common/collect/Sets$l$a;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$l;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "Ljava/util/Set<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/Sets$l;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Sets$l;I)V
    .locals 0

    .line 1469
    iput-object p1, p0, Lcom/google/common/collect/Sets$l$a;->c:Lcom/google/common/collect/Sets$l;

    invoke-direct {p0, p2}, Lcom/google/common/collect/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1469
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$l$a;->get(I)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 1472
    new-instance v0, Lcom/google/common/collect/Sets$m;

    iget-object v1, p0, Lcom/google/common/collect/Sets$l$a;->c:Lcom/google/common/collect/Sets$l;

    iget-object v1, v1, Lcom/google/common/collect/Sets$l;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/Sets$m;-><init>(ILcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method
