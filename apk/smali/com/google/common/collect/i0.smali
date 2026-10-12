.class Lcom/google/common/collect/i0;
.super Lcom/google/common/collect/k0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/k0<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">.b<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/collect/k0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/k0;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/google/common/collect/i0;->e:Lcom/google/common/collect/k0;

    invoke-direct {p0, p1}, Lcom/google/common/collect/k0$b;-><init>(Lcom/google/common/collect/k0;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 2

    .line 734
    new-instance v0, Lcom/google/common/collect/k0$d;

    iget-object v1, p0, Lcom/google/common/collect/i0;->e:Lcom/google/common/collect/k0;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/k0$d;-><init>(Lcom/google/common/collect/k0;I)V

    return-object v0
.end method
