.class Landroidx/recyclerview/widget/i$b;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/i;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/i;)V
    .locals 0

    .line 130
    iput-object p1, p0, Landroidx/recyclerview/widget/i$b;->a:Landroidx/recyclerview/widget/i;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 8

    .line 133
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p2

    .line 134
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    .line 339
    iget-object p3, p0, Landroidx/recyclerview/widget/i$b;->a:Landroidx/recyclerview/widget/i;

    iget-object v0, p3, Landroidx/recyclerview/widget/i;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 339
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    .line 340
    iget v1, p3, Landroidx/recyclerview/widget/i;->r:I

    sub-int v2, v0, v1

    .line 341
    iget v3, p3, Landroidx/recyclerview/widget/i;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v2, :cond_0

    if-lt v1, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p3, Landroidx/recyclerview/widget/i;->t:Z

    .line 344
    iget-object v2, p3, Landroidx/recyclerview/widget/i;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v2

    .line 345
    iget v6, p3, Landroidx/recyclerview/widget/i;->q:I

    sub-int v7, v2, v6

    if-lez v7, :cond_1

    if-lt v6, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 346
    :goto_1
    iput-boolean v3, p3, Landroidx/recyclerview/widget/i;->u:Z

    .line 349
    iget-boolean v7, p3, Landroidx/recyclerview/widget/i;->t:Z

    if-nez v7, :cond_2

    if-nez v3, :cond_2

    .line 350
    iget p1, p3, Landroidx/recyclerview/widget/i;->v:I

    if-eqz p1, :cond_5

    .line 351
    invoke-virtual {p3, v4}, Landroidx/recyclerview/widget/i;->d(I)V

    return-void

    :cond_2
    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v7, :cond_3

    int-to-float p1, p1

    int-to-float v4, v1

    div-float v7, v4, v3

    add-float/2addr v7, p1

    mul-float v7, v7, v4

    int-to-float p1, v0

    div-float/2addr v7, p1

    float-to-int p1, v7

    .line 358
    iput p1, p3, Landroidx/recyclerview/widget/i;->l:I

    mul-int p1, v1, v1

    .line 360
    div-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p3, Landroidx/recyclerview/widget/i;->k:I

    .line 364
    :cond_3
    iget-boolean p1, p3, Landroidx/recyclerview/widget/i;->u:Z

    if-eqz p1, :cond_4

    int-to-float p1, p2

    int-to-float p2, v6

    div-float v0, p2, v3

    add-float/2addr v0, p1

    mul-float v0, v0, p2

    int-to-float p1, v2

    div-float/2addr v0, p1

    float-to-int p1, v0

    .line 366
    iput p1, p3, Landroidx/recyclerview/widget/i;->o:I

    mul-int p1, v6, v6

    .line 368
    div-int/2addr p1, v2

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p3, Landroidx/recyclerview/widget/i;->n:I

    .line 372
    :cond_4
    iget p1, p3, Landroidx/recyclerview/widget/i;->v:I

    if-eqz p1, :cond_6

    if-ne p1, v5, :cond_5

    goto :goto_2

    :cond_5
    return-void

    .line 373
    :cond_6
    :goto_2
    invoke-virtual {p3, v5}, Landroidx/recyclerview/widget/i;->d(I)V

    return-void
.end method
