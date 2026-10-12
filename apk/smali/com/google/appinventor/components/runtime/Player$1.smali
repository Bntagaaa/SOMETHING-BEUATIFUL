.class Lcom/google/appinventor/components/runtime/Player$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Player;->Source(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Player;

.field final synthetic val$tempPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Player;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Player$1;->this$0:Lcom/google/appinventor/components/runtime/Player;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Player$1;->val$tempPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 181
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Player$1;->this$0:Lcom/google/appinventor/components/runtime/Player;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Player$1;->val$tempPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Player;->Source(Ljava/lang/String;)V

    return-void

    .line 183
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Player$1;->this$0:Lcom/google/appinventor/components/runtime/Player;

    iget-object v0, p2, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Source"

    invoke-virtual {v0, p2, v1, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
