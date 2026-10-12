.class Lcom/google/common/collect/r4$a;
.super Lcom/google/common/collect/Multisets$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/r4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$e<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lcom/google/common/collect/r4;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/r4;I)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/google/common/collect/r4$a;->c:Lcom/google/common/collect/r4;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$e;-><init>()V

    .line 210
    iget-object p1, p1, Lcom/google/common/collect/r4;->a:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/common/collect/r4$a;->a:Ljava/lang/Object;

    .line 211
    iput p2, p0, Lcom/google/common/collect/r4$a;->b:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 5

    .line 220
    iget v0, p0, Lcom/google/common/collect/r4$a;->b:I

    iget-object v1, p0, Lcom/google/common/collect/r4$a;->c:Lcom/google/common/collect/r4;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/google/common/collect/r4$a;->a:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    .line 179
    iget v4, v1, Lcom/google/common/collect/r4;->c:I

    if-ge v0, v4, :cond_0

    .line 221
    iget-object v4, v1, Lcom/google/common/collect/r4;->a:[Ljava/lang/Object;

    aget-object v0, v4, v0

    .line 222
    invoke-static {v3, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    :cond_0
    invoke-virtual {v1, v3}, Lcom/google/common/collect/r4;->e(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/r4$a;->b:I

    .line 231
    :cond_1
    iget v0, p0, Lcom/google/common/collect/r4$a;->b:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    iget-object v1, v1, Lcom/google/common/collect/r4;->b:[I

    aget v0, v1, v0

    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/google/common/collect/r4$a;->a:Ljava/lang/Object;

    return-object v0
.end method
