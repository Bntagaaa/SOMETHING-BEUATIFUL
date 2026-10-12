.class Lcom/google/common/collect/a4;
.super Lcom/google/common/collect/Maps$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$f<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/Maps$d;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Maps$d;)V
    .locals 0

    .line 3960
    iput-object p1, p0, Lcom/google/common/collect/a4;->a:Lcom/google/common/collect/Maps$d;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    .line 3963
    iget-object v0, p0, Lcom/google/common/collect/a4;->a:Lcom/google/common/collect/Maps$d;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 3968
    iget-object v0, p0, Lcom/google/common/collect/a4;->a:Lcom/google/common/collect/Maps$d;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$d;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
