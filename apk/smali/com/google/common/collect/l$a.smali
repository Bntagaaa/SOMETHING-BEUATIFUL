.class Lcom/google/common/collect/l$a;
.super Lcom/google/common/collect/Multimaps$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multimaps$f<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/l;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/l;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/google/common/collect/l$a;->a:Lcom/google/common/collect/l;

    invoke-direct {p0}, Lcom/google/common/collect/Multimaps$f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/Multimap;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/common/collect/l$a;->a:Lcom/google/common/collect/l;

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

    .line 128
    iget-object v0, p0, Lcom/google/common/collect/l$a;->a:Lcom/google/common/collect/l;

    invoke-virtual {v0}, Lcom/google/common/collect/l;->f()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
