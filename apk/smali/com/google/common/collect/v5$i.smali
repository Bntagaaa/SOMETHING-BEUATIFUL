.class abstract Lcom/google/common/collect/v5$i;
.super Lcom/google/common/collect/Sets$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/v5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Sets$k<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/v5;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/v5;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/google/common/collect/v5$i;->a:Lcom/google/common/collect/v5;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$k;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/google/common/collect/v5$i;->a:Lcom/google/common/collect/v5;

    iget-object v0, v0, Lcom/google/common/collect/v5;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/google/common/collect/v5$i;->a:Lcom/google/common/collect/v5;

    iget-object v0, v0, Lcom/google/common/collect/v5;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method
