.class Lcom/google/appinventor/components/runtime/Form$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->AskForPermission(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0

    .line 1217
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$6;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1221
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Form$6;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/Form;->PermissionGranted(Ljava/lang/String;)V

    return-void

    .line 1223
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Form$6;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const-string v0, "RequestPermission"

    invoke-virtual {p2, p2, v0, p1}, Lcom/google/appinventor/components/runtime/Form;->PermissionDenied(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
