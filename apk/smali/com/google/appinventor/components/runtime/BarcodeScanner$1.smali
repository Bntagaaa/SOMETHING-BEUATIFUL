.class Lcom/google/appinventor/components/runtime/BarcodeScanner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/BarcodeScanner;->DoScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/BarcodeScanner;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/BarcodeScanner;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;->this$0:Lcom/google/appinventor/components/runtime/BarcodeScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 117
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;->this$0:Lcom/google/appinventor/components/runtime/BarcodeScanner;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/BarcodeScanner;->a(Lcom/google/appinventor/components/runtime/BarcodeScanner;)V

    .line 118
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;->this$0:Lcom/google/appinventor/components/runtime/BarcodeScanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/BarcodeScanner;->DoScan()V

    return-void

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;->this$0:Lcom/google/appinventor/components/runtime/BarcodeScanner;

    iget-object p2, p1, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v0, "DoScan"

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
