.class Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    .line 68
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 69
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->h(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 76
    const-string v4, "Text2"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 77
    const-string v5, "Text1"

    invoke-virtual {v3, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 79
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, " "

    .line 0
    invoke-static {v5, v6, v4}, L_COROUTINE/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_3
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->h(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 86
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 87
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v0
.end method

.method public publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3

    .line 93
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->j(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Ljava/util/List;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->h(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->b(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->b(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->h(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, p2

    .line 100
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->g(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)[Landroidx/cardview/widget/CardView;

    move-result-object v0

    aget-object v0, v0, p2

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->g(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)[Landroidx/cardview/widget/CardView;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->g(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)[Landroidx/cardview/widget/CardView;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, p2

    .line 106
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->g(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)[Landroidx/cardview/widget/CardView;

    move-result-object v0

    aget-object v0, v0, p2

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->g(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)[Landroidx/cardview/widget/CardView;

    move-result-object v0

    aget-object v0, v0, p2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->g(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)[Landroidx/cardview/widget/CardView;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method
