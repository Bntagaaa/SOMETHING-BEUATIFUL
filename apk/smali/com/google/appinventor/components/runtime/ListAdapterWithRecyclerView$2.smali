.class Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->onBindViewHolder(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

.field final synthetic val$holder:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 305
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$2;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$2;->val$holder:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$2;->val$holder:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->onClick(Landroid/view/View;)V

    return-void
.end method
