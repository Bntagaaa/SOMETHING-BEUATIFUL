.class Lcom/google/common/collect/v5$f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/v5$f$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "TC;",
        "Ljava/util/Map<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/v5$f$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/v5$f$a;)V
    .locals 0

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/v5$f$a$a;->a:Lcom/google/common/collect/v5$f$a;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 855
    invoke-virtual {p0, p1}, Lcom/google/common/collect/v5$f$a$a;->apply(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 858
    iget-object v0, p0, Lcom/google/common/collect/v5$f$a$a;->a:Lcom/google/common/collect/v5$f$a;

    iget-object v0, v0, Lcom/google/common/collect/v5$f$a;->b:Lcom/google/common/collect/v5$f;

    iget-object v0, v0, Lcom/google/common/collect/v5$f;->d:Lcom/google/common/collect/v5;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/v5;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
