.class Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;

.field final synthetic val$component:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

.field final synthetic val$fHeight:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout$2;->val$component:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iput p3, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout$2;->val$fHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 184
    const-string v0, "MockSwipeRefreshLayout"

    const-string v1, "(HVArrangement)Height not stable yet... trying again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout$2;->val$component:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout$2;->val$fHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    return-void
.end method
