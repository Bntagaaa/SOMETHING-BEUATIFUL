.class Lcom/google/common/collect/Maps$m$a;
.super Lcom/google/common/collect/Maps$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$m;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$f<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/Maps$m;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Maps$m;)V
    .locals 0

    .line 3376
    iput-object p1, p0, Lcom/google/common/collect/Maps$m$a;->a:Lcom/google/common/collect/Maps$m;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    .line 3379
    iget-object v0, p0, Lcom/google/common/collect/Maps$m$a;->a:Lcom/google/common/collect/Maps$m;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3384
    iget-object v0, p0, Lcom/google/common/collect/Maps$m$a;->a:Lcom/google/common/collect/Maps$m;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$m;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
