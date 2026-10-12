.class Lcom/google/appinventor/components/runtime/util/FileOperation$1;
.super Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/FileOperation;


# direct methods
.method public varargs constructor <init>(Lcom/google/appinventor/components/runtime/util/FileOperation;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;-><init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGranted()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/appinventor/components/runtime/util/FileOperation;->hasPermission:Z

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    return-void
.end method
