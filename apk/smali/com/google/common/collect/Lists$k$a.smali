.class Lcom/google/common/collect/Lists$k$a;
.super Lcom/google/common/collect/d6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Lists$k;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/d6<",
        "TF;TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/Lists$k;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Lists$k;Ljava/util/ListIterator;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/google/common/collect/Lists$k$a;->b:Lcom/google/common/collect/Lists$k;

    .line 33
    invoke-direct {p0, p2}, Lcom/google/common/collect/c6;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/google/common/collect/Lists$k$a;->b:Lcom/google/common/collect/Lists$k;

    iget-object v0, v0, Lcom/google/common/collect/Lists$k;->b:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
