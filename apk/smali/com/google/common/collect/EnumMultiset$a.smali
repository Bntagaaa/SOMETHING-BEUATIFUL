.class abstract Lcom/google/common/collect/EnumMultiset$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/EnumMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:Lcom/google/common/collect/EnumMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/EnumMultiset;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/EnumMultiset$a;->c:Lcom/google/common/collect/EnumMultiset;

    const/4 p1, 0x0

    .line 209
    iput p1, p0, Lcom/google/common/collect/EnumMultiset$a;->a:I

    const/4 p1, -0x1

    .line 210
    iput p1, p0, Lcom/google/common/collect/EnumMultiset$a;->b:I

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
.end method

.method public hasNext()Z
    .locals 3

    .line 216
    :goto_0
    iget v0, p0, Lcom/google/common/collect/EnumMultiset$a;->a:I

    .line 47
    iget-object v1, p0, Lcom/google/common/collect/EnumMultiset$a;->c:Lcom/google/common/collect/EnumMultiset;

    iget-object v2, v1, Lcom/google/common/collect/EnumMultiset;->d:[Ljava/lang/Enum;

    .line 216
    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 47
    iget-object v1, v1, Lcom/google/common/collect/EnumMultiset;->e:[I

    .line 217
    aget v1, v1, v0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 216
    iput v0, p0, Lcom/google/common/collect/EnumMultiset$a;->a:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/google/common/collect/EnumMultiset$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget v0, p0, Lcom/google/common/collect/EnumMultiset$a;->a:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/EnumMultiset$a;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 230
    iget v1, p0, Lcom/google/common/collect/EnumMultiset$a;->a:I

    iput v1, p0, Lcom/google/common/collect/EnumMultiset$a;->b:I

    add-int/lit8 v1, v1, 0x1

    .line 231
    iput v1, p0, Lcom/google/common/collect/EnumMultiset$a;->a:I

    return-object v0

    .line 227
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 10

    .line 237
    iget v0, p0, Lcom/google/common/collect/EnumMultiset$a;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/g0;->e(Z)V

    .line 47
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$a;->c:Lcom/google/common/collect/EnumMultiset;

    iget-object v3, v0, Lcom/google/common/collect/EnumMultiset;->e:[I

    .line 238
    iget v4, p0, Lcom/google/common/collect/EnumMultiset$a;->b:I

    aget v5, v3, v4

    if-lez v5, :cond_1

    .line 47
    iget v6, v0, Lcom/google/common/collect/EnumMultiset;->f:I

    sub-int/2addr v6, v2

    iput v6, v0, Lcom/google/common/collect/EnumMultiset;->f:I

    .line 47
    iget-wide v6, v0, Lcom/google/common/collect/EnumMultiset;->g:J

    int-to-long v8, v5

    sub-long/2addr v6, v8

    .line 47
    iput-wide v6, v0, Lcom/google/common/collect/EnumMultiset;->g:J

    .line 241
    aput v1, v3, v4

    :cond_1
    const/4 v0, -0x1

    .line 243
    iput v0, p0, Lcom/google/common/collect/EnumMultiset$a;->b:I

    return-void
.end method
