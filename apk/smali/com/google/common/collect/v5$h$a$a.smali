.class Lcom/google/common/collect/v5$h$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/v5$h$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "TR;",
        "Ljava/util/Map<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/v5$h$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/v5$h$a;)V
    .locals 0

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/v5$h$a$a;->a:Lcom/google/common/collect/v5$h$a;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 769
    invoke-virtual {p0, p1}, Lcom/google/common/collect/v5$h$a$a;->apply(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 772
    iget-object v0, p0, Lcom/google/common/collect/v5$h$a$a;->a:Lcom/google/common/collect/v5$h$a;

    iget-object v0, v0, Lcom/google/common/collect/v5$h$a;->b:Lcom/google/common/collect/v5$h;

    iget-object v0, v0, Lcom/google/common/collect/v5$h;->d:Lcom/google/common/collect/v5;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/v5;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
