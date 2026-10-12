.class Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->AddListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->OnPageRefresh()V

    return-void
.end method
