.class Lcom/google/appinventor/components/runtime/Image$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Image;->Picture(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Image;

.field final synthetic val$tempPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Image;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Image$4;->this$0:Lcom/google/appinventor/components/runtime/Image;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Image$4;->val$tempPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 202
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image$4;->this$0:Lcom/google/appinventor/components/runtime/Image;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Image$4;->val$tempPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Image;->Picture(Ljava/lang/String;)V

    return-void

    .line 204
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Image$4;->this$0:Lcom/google/appinventor/components/runtime/Image;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image$4;->this$0:Lcom/google/appinventor/components/runtime/Image;

    const-string v1, "Picture"

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
