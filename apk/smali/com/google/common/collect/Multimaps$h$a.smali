.class Lcom/google/common/collect/Multimaps$h$a;
.super Lcom/google/common/collect/Sets$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multimaps$h;->get(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$k<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/google/common/collect/Multimaps$h;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Multimaps$h;Ljava/lang/Object;)V
    .locals 0

    .line 1013
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$h$a;->b:Lcom/google/common/collect/Multimaps$h;

    iput-object p2, p0, Lcom/google/common/collect/Multimaps$h$a;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$k;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 1016
    new-instance v0, Lcom/google/common/collect/Multimaps$h$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$h$a$a;-><init>(Lcom/google/common/collect/Multimaps$h$a;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 1044
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$h$a;->b:Lcom/google/common/collect/Multimaps$h;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$h;->f:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$h$a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
