.class Lcom/google/common/collect/h1;
.super Lcom/google/common/collect/Multisets$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$e<",
        "Ljava/lang/Enum<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/common/collect/i1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/i1;I)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/google/common/collect/h1;->b:Lcom/google/common/collect/i1;

    iput p2, p0, Lcom/google/common/collect/h1;->a:I

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$e;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/google/common/collect/h1;->b:Lcom/google/common/collect/i1;

    iget-object v0, v0, Lcom/google/common/collect/i1;->d:Lcom/google/common/collect/EnumMultiset;

    .line 47
    iget-object v0, v0, Lcom/google/common/collect/EnumMultiset;->e:[I

    .line 270
    iget v1, p0, Lcom/google/common/collect/h1;->a:I

    aget v0, v0, v1

    return v0
.end method

.method public getElement()Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Enum<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/google/common/collect/h1;->b:Lcom/google/common/collect/i1;

    iget-object v0, v0, Lcom/google/common/collect/i1;->d:Lcom/google/common/collect/EnumMultiset;

    .line 47
    iget-object v0, v0, Lcom/google/common/collect/EnumMultiset;->d:[Ljava/lang/Enum;

    .line 265
    iget v1, p0, Lcom/google/common/collect/h1;->a:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic getElement()Ljava/lang/Object;
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/google/common/collect/h1;->getElement()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method
