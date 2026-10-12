.class Landroidx/recyclerview/widget/k;
.super Landroidx/recyclerview/widget/ItemTouchHelper$d;
.source "SourceFile"


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic p:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IFFFFILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 644
    iput-object p1, p0, Landroidx/recyclerview/widget/k;->p:Landroidx/recyclerview/widget/ItemTouchHelper;

    iput p8, p0, Landroidx/recyclerview/widget/k;->n:I

    iput-object p9, p0, Landroidx/recyclerview/widget/k;->o:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$d;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IFFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 647
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$d;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 648
    iget-boolean p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->k:Z

    if-eqz p1, :cond_0

    goto :goto_1

    .line 651
    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/k;->n:I

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->o:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, p0, Landroidx/recyclerview/widget/k;->p:Landroidx/recyclerview/widget/ItemTouchHelper;

    if-gtz p1, :cond_1

    .line 653
    iget-object p1, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 657
    :cond_1
    iget-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->a:Ljava/util/ArrayList;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 658
    iput-boolean v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$d;->h:Z

    if-lez p1, :cond_2

    .line 709
    iget-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 709
    new-instance v3, Landroidx/recyclerview/widget/l;

    invoke-direct {v3, v1, p0, p1}, Landroidx/recyclerview/widget/l;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/k;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 666
    :cond_2
    :goto_0
    iget-object p1, v1, Landroidx/recyclerview/widget/ItemTouchHelper;->w:Landroid/view/View;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 667
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->i(Landroid/view/View;)V

    :cond_3
    :goto_1
    return-void
.end method
