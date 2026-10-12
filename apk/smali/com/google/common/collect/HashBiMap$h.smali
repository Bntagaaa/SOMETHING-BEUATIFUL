.class abstract Lcom/google/common/collect/HashBiMap$h;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/collect/HashBiMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0

    .line 670
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 671
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$h;->a:Lcom/google/common/collect/HashBiMap;

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
.end method

.method public clear()V
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$h;->a:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/HashBiMap;->clear()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 678
    new-instance v0, Lcom/google/common/collect/HashBiMap$h$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$h$a;-><init>(Lcom/google/common/collect/HashBiMap$h;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$h;->a:Lcom/google/common/collect/HashBiMap;

    iget v0, v0, Lcom/google/common/collect/HashBiMap;->c:I

    return v0
.end method
