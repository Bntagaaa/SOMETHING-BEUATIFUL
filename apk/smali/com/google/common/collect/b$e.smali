.class Lcom/google/common/collect/b$e;
.super Lcom/google/common/collect/ForwardingSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Set;

.field public final synthetic b:Lcom/google/common/collect/b;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/b;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/google/common/collect/b$e;->b:Lcom/google/common/collect/b;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    .line 249
    iget-object p1, p1, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/b;

    invoke-virtual {p1}, Lcom/google/common/collect/b;->keySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/b$e;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 247
    invoke-virtual {p0}, Lcom/google/common/collect/b$e;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 247
    invoke-virtual {p0}, Lcom/google/common/collect/b$e;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/google/common/collect/b$e;->a:Ljava/util/Set;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/google/common/collect/b$e;->b:Lcom/google/common/collect/b;

    invoke-virtual {v0}, Lcom/google/common/collect/b;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/google/common/collect/s3;

    .line 122
    invoke-direct {v1, v0}, Lcom/google/common/collect/c6;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 263
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingCollection;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 268
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ForwardingCollection;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 273
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingCollection;->standardToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
