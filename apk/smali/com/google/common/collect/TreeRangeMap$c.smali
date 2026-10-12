.class final Lcom/google/common/collect/TreeRangeMap$c;
.super Lcom/google/common/collect/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/k<",
        "Lcom/google/common/collect/Range<",
        "TK;>;TV;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/collect/Range;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/google/common/collect/k;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/Range;

    .line 76
    iput-object p2, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public getKey()Lcom/google/common/collect/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range<",
            "TK;>;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/Range;

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$c;->getKey()Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Ljava/lang/Object;

    return-object v0
.end method
