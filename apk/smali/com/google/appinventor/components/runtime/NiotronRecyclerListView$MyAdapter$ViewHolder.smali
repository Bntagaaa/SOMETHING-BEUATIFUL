.class public Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public item:Landroid/widget/LinearLayout;

.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter$ViewHolder;->this$1:Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter;

    .line 118
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 119
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$MyAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    return-void
.end method
