.class Lcom/google/appinventor/components/runtime/Texting$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Texting$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Texting$1;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Texting$1;)V
    .locals 0

    .line 1045
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$1$1;->this$1:Lcom/google/appinventor/components/runtime/Texting$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1049
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$1$1;->this$1:Lcom/google/appinventor/components/runtime/Texting$1;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Texting$1;->val$me:Lcom/google/appinventor/components/runtime/Texting;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Texting;->f(Lcom/google/appinventor/components/runtime/Texting;)V

    .line 1050
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$1$1;->this$1:Lcom/google/appinventor/components/runtime/Texting$1;

    iget-object p2, p1, Lcom/google/appinventor/components/runtime/Texting$1;->val$me:Lcom/google/appinventor/components/runtime/Texting;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Texting$1;->val$caller:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/Texting;->j(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V

    return-void

    .line 1052
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$1$1;->this$1:Lcom/google/appinventor/components/runtime/Texting$1;

    iget-object p2, p1, Lcom/google/appinventor/components/runtime/Texting$1;->val$form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, p1, Lcom/google/appinventor/components/runtime/Texting$1;->val$me:Lcom/google/appinventor/components/runtime/Texting;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Texting$1;->val$caller:Ljava/lang/String;

    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {p2, v0, p1, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
