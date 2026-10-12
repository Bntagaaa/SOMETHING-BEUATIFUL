.class abstract Lcom/google/common/collect/Maps$d0;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient a:Ljava/util/Set;

.field public transient b:Ljava/util/Set;

.field public transient c:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3328
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 1

    .line 3364
    new-instance v0, Lcom/google/common/collect/Maps$c0;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$c0;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public abstract createEntrySet()Ljava/util/Set;
.end method

.method public createKeySet()Ljava/util/Set;
    .locals 1

    .line 3352
    new-instance v0, Lcom/google/common/collect/Maps$n;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$n;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3339
    iget-object v0, p0, Lcom/google/common/collect/Maps$d0;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 3340
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$d0;->createEntrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$d0;->a:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 3347
    iget-object v0, p0, Lcom/google/common/collect/Maps$d0;->b:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 3348
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$d0;->createKeySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$d0;->b:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 3359
    iget-object v0, p0, Lcom/google/common/collect/Maps$d0;->c:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 3360
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$d0;->a()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$d0;->c:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
