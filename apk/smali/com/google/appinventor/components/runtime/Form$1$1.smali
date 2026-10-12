.class Lcom/google/appinventor/components/runtime/Form$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Form$1;

.field final synthetic val$savedLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form$1;Landroid/widget/FrameLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 523
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$1$1;->this$1:Lcom/google/appinventor/components/runtime/Form$1;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Form$1$1;->val$savedLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1$1;->val$savedLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
