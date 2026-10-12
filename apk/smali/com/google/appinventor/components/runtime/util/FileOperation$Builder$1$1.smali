.class Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1$1;
.super Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->performOperation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;


# direct methods
.method public varargs constructor <init>(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1$1;->this$1:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;-><init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGranted()V
    .locals 0

    return-void
.end method
