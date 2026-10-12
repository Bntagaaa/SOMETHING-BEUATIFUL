.class Lcom/google/common/collect/y5$d$a;
.super Lcom/google/common/collect/c6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/y5$d;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c6<",
        "Ljava/util/Collection<",
        "TV;>;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/y5$d;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/y5$d;Ljava/util/Iterator;)V
    .locals 0

    .line 1260
    iput-object p1, p0, Lcom/google/common/collect/y5$d$a;->b:Lcom/google/common/collect/y5$d;

    invoke-direct {p0, p2}, Lcom/google/common/collect/c6;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1260
    check-cast p1, Ljava/util/Collection;

    .line 1263
    iget-object v0, p0, Lcom/google/common/collect/y5$d$a;->b:Lcom/google/common/collect/y5$d;

    iget-object v0, v0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/collect/y5;->b(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
