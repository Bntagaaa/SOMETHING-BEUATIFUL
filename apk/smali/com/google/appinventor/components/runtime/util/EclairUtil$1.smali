.class Lcom/google/appinventor/components/runtime/util/EclairUtil$1;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/EclairUtil;->setupWebViewGeoLoc(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/webkit/WebView;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$caller:Lcom/google/appinventor/components/runtime/WebViewer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/app/Activity;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;->val$caller:Lcom/google/appinventor/components/runtime/WebViewer;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;->val$caller:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/WebViewer;->PromptforPermission()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 66
    invoke-interface {p2, p1, v0, v0}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void

    .line 69
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 70
    const-string v1, "Permission Request"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    const-string v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    const-string v1, "This Application"

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 73
    :goto_0
    const-string v2, " would like to access your location."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v1, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;-><init>(Lcom/google/appinventor/components/runtime/util/EclairUtil$1;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    const/4 v2, -0x1

    const-string v3, "Allow"

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 80
    new-instance v1, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$2;-><init>(Lcom/google/appinventor/components/runtime/util/EclairUtil$1;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    const/4 p1, -0x2

    const-string p2, "Refuse"

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 86
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
