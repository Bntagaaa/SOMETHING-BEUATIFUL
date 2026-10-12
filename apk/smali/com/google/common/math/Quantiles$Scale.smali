.class public final Lcom/google/common/math/Quantiles$Scale;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/Quantiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Scale"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 169
    :goto_0
    const-string v1, "Quantile scale must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 170
    iput p1, p0, Lcom/google/common/math/Quantiles$Scale;->a:I

    return-void
.end method


# virtual methods
.method public index(I)Lcom/google/common/math/Quantiles$ScaleAndIndex;
    .locals 2

    .line 179
    new-instance v0, Lcom/google/common/math/Quantiles$ScaleAndIndex;

    iget v1, p0, Lcom/google/common/math/Quantiles$Scale;->a:I

    invoke-direct {v0, v1, p1}, Lcom/google/common/math/Quantiles$ScaleAndIndex;-><init>(II)V

    return-object v0
.end method

.method public indexes(Ljava/util/Collection;)Lcom/google/common/math/Quantiles$ScaleAndIndexes;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/math/Quantiles$ScaleAndIndexes;"
        }
    .end annotation

    .line 205
    new-instance v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;

    invoke-static {p1}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object p1

    iget v1, p0, Lcom/google/common/math/Quantiles$Scale;->a:I

    invoke-direct {v0, v1, p1}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;-><init>(I[I)V

    return-object v0
.end method

.method public varargs indexes([I)Lcom/google/common/math/Quantiles$ScaleAndIndexes;
    .locals 2

    .line 192
    new-instance v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iget v1, p0, Lcom/google/common/math/Quantiles$Scale;->a:I

    invoke-direct {v0, v1, p1}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;-><init>(I[I)V

    return-object v0
.end method
