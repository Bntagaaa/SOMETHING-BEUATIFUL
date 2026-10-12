.class Lcom/google/appinventor/components/runtime/Form$19$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final deniedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Form$19;

.field final synthetic val$it:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form$19;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3444
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$19$1;->this$1:Lcom/google/appinventor/components/runtime/Form$19;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Form$19$1;->val$it:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3445
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$19$1;->deniedPermissions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 3450
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Form$19$1;->deniedPermissions:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3452
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$19$1;->val$it:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3453
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$19$1;->this$1:Lcom/google/appinventor/components/runtime/Form$19;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Form$19;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Form$19$1;->val$it:Ljava/util/Iterator;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void

    .line 3455
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$19$1;->deniedPermissions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 3456
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$19$1;->this$1:Lcom/google/appinventor/components/runtime/Form$19;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Form$19;->val$request:Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->onGranted()V

    return-void

    .line 3458
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$19$1;->this$1:Lcom/google/appinventor/components/runtime/Form$19;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Form$19;->val$request:Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Form$19$1;->deniedPermissions:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->onDenied([Ljava/lang/String;)V

    return-void
.end method
