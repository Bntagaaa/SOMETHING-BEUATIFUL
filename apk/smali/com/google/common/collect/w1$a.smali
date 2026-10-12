.class Lcom/google/common/collect/w1$a;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/w1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/w1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/w1;I)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/google/common/collect/w1$a;->c:Lcom/google/common/collect/w1;

    invoke-direct {p0, p2}, Lcom/google/common/collect/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 296
    invoke-virtual {p0, p1}, Lcom/google/common/collect/w1$a;->get(I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/google/common/collect/w1$a;->c:Lcom/google/common/collect/w1;

    iget-object v0, v0, Lcom/google/common/collect/w1;->b:[Ljava/lang/Iterable;

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
