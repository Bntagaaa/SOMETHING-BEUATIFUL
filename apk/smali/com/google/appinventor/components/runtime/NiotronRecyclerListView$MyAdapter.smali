.class public Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->b(Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 96
    check-cast p1, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter;->onBindViewHolder(Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter$ViewHolder;I)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->d(Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;Landroid/widget/LinearLayout;)V

    .line 112
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->OnBindView(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter$ViewHolder;
    .locals 1

    .line 103
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->a(Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 104
    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter$ViewHolder;-><init>(Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter;Landroid/widget/LinearLayout;)V

    .line 105
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;

    iget-object v0, p2, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->d(Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;Landroid/widget/LinearLayout;)V

    .line 106
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->OnCreateViewHolder()V

    return-object p2
.end method
