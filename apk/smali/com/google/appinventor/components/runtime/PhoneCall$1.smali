.class Lcom/google/appinventor/components/runtime/PhoneCall$1;
.super Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/PhoneCall;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/PhoneCall;


# direct methods
.method public varargs constructor <init>(Lcom/google/appinventor/components/runtime/PhoneCall;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$1;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;-><init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGranted()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall$1;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/PhoneCall;->b(Lcom/google/appinventor/components/runtime/PhoneCall;)V

    return-void
.end method
