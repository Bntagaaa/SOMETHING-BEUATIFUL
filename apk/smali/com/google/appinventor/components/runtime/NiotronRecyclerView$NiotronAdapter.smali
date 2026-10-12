.class Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/NiotronRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NiotronAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter$NiotronViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter$NiotronViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronRecyclerView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronRecyclerView;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecyclerView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronRecyclerView;->b(Lcom/google/appinventor/components/runtime/NiotronRecyclerView;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 244
    check-cast p1, Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter$NiotronViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter;->onBindViewHolder(Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter$NiotronViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter$NiotronViewHolder;I)V
    .locals 2
    .param p1    # Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter$NiotronViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 258
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecyclerView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronRecyclerView;->e(Lcom/google/appinventor/components/runtime/NiotronRecyclerView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 260
    const-string v1, "customRecyclerViewByNiotron"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecyclerView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronRecyclerView;->a(Lcom/google/appinventor/components/runtime/NiotronRecyclerView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecyclerView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronRecyclerView;->a(Lcom/google/appinventor/components/runtime/NiotronRecyclerView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 267
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecyclerView;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/NiotronRecyclerView;->Scroll(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 244
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter$NiotronViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter$NiotronViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecyclerView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronRecyclerView;->c(Lcom/google/appinventor/components/runtime/NiotronRecyclerView;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 250
    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter$NiotronViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter$NiotronViewHolder;-><init>(Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter;Landroid/view/View;)V

    .line 251
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecyclerView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronRecyclerView;->d(Lcom/google/appinventor/components/runtime/NiotronRecyclerView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecyclerView;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronRecyclerView;->ItemAdded()V

    return-object p2
.end method
