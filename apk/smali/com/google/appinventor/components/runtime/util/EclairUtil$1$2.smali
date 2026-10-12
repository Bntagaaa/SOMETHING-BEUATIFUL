.class Lcom/google/appinventor/components/runtime/util/EclairUtil$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/EclairUtil$1;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/EclairUtil$1;

.field final synthetic val$theCallback:Landroid/webkit/GeolocationPermissions$Callback;

.field final synthetic val$theOrigin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/EclairUtil$1;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$2;->this$0:Lcom/google/appinventor/components/runtime/util/EclairUtil$1;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$2;->val$theCallback:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$2;->val$theOrigin:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 83
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$2;->val$theCallback:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$2;->val$theOrigin:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, p2, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method
