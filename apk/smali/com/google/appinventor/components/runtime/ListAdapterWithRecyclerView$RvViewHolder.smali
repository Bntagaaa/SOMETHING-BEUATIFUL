.class Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RvViewHolder"
.end annotation


# instance fields
.field public cardView:Landroidx/cardview/widget/CardView;

.field public imageVieww:Landroid/widget/ImageView;

.field public textViewFirst:Landroid/widget/TextView;

.field public textViewSecond:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Landroid/view/View;)V
    .locals 2

    .line 379
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .line 380
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 382
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->c(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    .line 385
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->d(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewFirst:Landroid/widget/TextView;

    .line 387
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->f(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 388
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->f(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewSecond:Landroid/widget/TextView;

    .line 391
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->e(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 392
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->e(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->imageVieww:Landroid/widget/ImageView;

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 398
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 399
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->i(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->changeSelections(I)V

    goto :goto_0

    .line 402
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->toggleSelection(I)V

    .line 404
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->a(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;->onItemClick(ILandroid/view/View;)V

    return-void
.end method
