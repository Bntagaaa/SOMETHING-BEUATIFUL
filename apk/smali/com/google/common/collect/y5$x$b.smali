.class Lcom/google/common/collect/y5$x$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/y5$x;->columnMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Ljava/util/Map<",
        "TR;TV;>;",
        "Ljava/util/Map<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/y5$x;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/y5$x;)V
    .locals 0

    .line 1995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/y5$x$b;->a:Lcom/google/common/collect/y5$x;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1995
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/y5$x$b;->apply(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TR;TV;>;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 1998
    iget-object v0, p0, Lcom/google/common/collect/y5$x$b;->a:Lcom/google/common/collect/y5$x;

    iget-object v0, v0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    .line 961
    new-instance v1, Lcom/google/common/collect/y5$k;

    .line 970
    invoke-direct {v1, p1, v0}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
