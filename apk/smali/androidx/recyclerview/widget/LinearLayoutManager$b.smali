.class Landroidx/recyclerview/widget/LinearLayoutManager$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/util/List;

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2271
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:Z

    const/4 v0, 0x0

    .line 2312
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$b;->h:I

    .line 2319
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$b;->i:I

    const/4 v0, 0x0

    .line 2338
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$b;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;
    .locals 4

    .line 2359
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$b;->k:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2375
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 2377
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$b;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2379
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2380
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 2383
    :cond_0
    iget v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:I

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v2

    if-ne v3, v2, :cond_1

    .line 2384
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$b;->assignPositionFromScrapList(Landroid/view/View;)V

    return-object v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1

    .line 2362
    :cond_3
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p1

    .line 2363
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:I

    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$b;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:I

    return-object p1
.end method

.method public assignPositionFromScrapList()V
    .locals 1

    const/4 v0, 0x0

    .line 2392
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager$b;->assignPositionFromScrapList(Landroid/view/View;)V

    return-void
.end method

.method public assignPositionFromScrapList(Landroid/view/View;)V
    .locals 0

    .line 2396
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$b;->nextViewInLimitedList(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 2398
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:I

    return-void

    .line 2400
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2401
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:I

    return-void
.end method

.method public nextViewInLimitedList(Landroid/view/View;)Landroid/view/View;
    .locals 7

    .line 2406
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$b;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 2413
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager$b;->k:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2415
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eq v4, p1, :cond_3

    .line 2416
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 2419
    :cond_0
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v5

    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager$b;->e:I

    mul-int v5, v5, v6

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    if-ge v5, v2, :cond_3

    if-nez v5, :cond_2

    return-object v4

    :cond_2
    move-object v1, v4

    move v2, v5

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method
