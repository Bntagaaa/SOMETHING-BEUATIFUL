.class Lcom/google/common/collect/MinMaxPriorityQueue$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MinMaxPriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/common/collect/Ordering;

.field public b:Lcom/google/common/collect/MinMaxPriorityQueue$b;

.field public final synthetic c:Lcom/google/common/collect/MinMaxPriorityQueue;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/Ordering;)V
    .locals 0

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    .line 511
    iput-object p2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->a:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method public static d(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    .line 736
    div-int/lit8 p0, p0, 0x2

    return p0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)I
    .locals 4

    :goto_0
    const/4 v0, 0x2

    .line 568
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    if-le p1, v0, :cond_1

    .line 740
    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue$b;->d(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue$b;->d(I)I

    move-result v0

    .line 302
    iget-object v2, v1, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    .line 302
    aget-object v2, v2, v0

    .line 571
    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->a:Lcom/google/common/collect/Ordering;

    invoke-virtual {v3, v2, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    iget-object v1, v1, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    .line 574
    aput-object v2, v1, p1

    move p1, v0

    goto :goto_0

    .line 102
    :cond_1
    :goto_1
    iget-object v0, v1, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    .line 577
    aput-object p2, v0, p1

    return p1
.end method

.method public final b(ILjava/lang/Object;)I
    .locals 7

    .line 619
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    if-nez p1, :cond_0

    .line 102
    iget-object p1, v0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 620
    aput-object p2, p1, v0

    return v0

    .line 623
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue$b;->d(I)I

    move-result v1

    .line 302
    iget-object v2, v0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    .line 302
    aget-object v2, v2, v1

    .line 625
    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->a:Lcom/google/common/collect/Ordering;

    if-eqz v1, :cond_1

    .line 630
    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue$b;->d(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    if-eq v4, v1, :cond_1

    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x1

    .line 102
    iget v6, v0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    if-lt v5, v6, :cond_1

    .line 302
    iget-object v5, v0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    .line 302
    aget-object v5, v5, v4

    .line 634
    invoke-virtual {v3, v5, v2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_1

    move v1, v4

    move-object v2, v5

    .line 640
    :cond_1
    invoke-virtual {v3, v2, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2

    .line 102
    iget-object v0, v0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    .line 641
    aput-object v2, v0, p1

    .line 642
    aput-object p2, v0, v1

    return v1

    .line 102
    :cond_2
    iget-object v0, v0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    .line 645
    aput-object p2, v0, p1

    return p1
.end method

.method public final c(II)I
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    iget v1, v0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    if-lt p1, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-lez p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 589
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 102
    iget v1, v0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    sub-int/2addr v1, p2

    .line 590
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 p2, p1, 0x1

    :goto_1
    if-ge p2, v1, :cond_3

    .line 302
    iget-object v2, v0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    .line 302
    aget-object v3, v2, p2

    aget-object v2, v2, p1

    .line 515
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->a:Lcom/google/common/collect/Ordering;

    invoke-virtual {v4, v3, v2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_2

    move p1, p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return p1
.end method
