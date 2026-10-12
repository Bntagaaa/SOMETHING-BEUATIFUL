.class Lcom/google/common/graph/c0$a$a;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/c0$a;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Iterator;

.field public final synthetic b:Lcom/google/common/graph/c0$a;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/c0$a;Ljava/util/Iterator;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/google/common/graph/c0$a$a;->b:Lcom/google/common/graph/c0$a;

    iput-object p2, p0, Lcom/google/common/graph/c0$a$a;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/common/graph/c0$a$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/common/graph/c0$a$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 107
    iget-object v1, p0, Lcom/google/common/graph/c0$a$a;->b:Lcom/google/common/graph/c0$a;

    iget-object v1, v1, Lcom/google/common/graph/c0$a;->a:Lcom/google/common/graph/c0;

    .line 44
    iput-object v0, v1, Lcom/google/common/graph/c0;->b:Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
