.class Lcom/google/appinventor/components/runtime/ImagePicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ImagePicker;->click()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ImagePicker;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ImagePicker;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ImagePicker$1;->this$0:Lcom/google/appinventor/components/runtime/ImagePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 119
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ImagePicker$1;->this$0:Lcom/google/appinventor/components/runtime/ImagePicker;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/ImagePicker;->a(Lcom/google/appinventor/components/runtime/ImagePicker;)V

    .line 120
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ImagePicker$1;->this$0:Lcom/google/appinventor/components/runtime/ImagePicker;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/ImagePicker;->click()V

    return-void

    .line 122
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ImagePicker$1;->this$0:Lcom/google/appinventor/components/runtime/ImagePicker;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/Picker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImagePicker$1;->this$0:Lcom/google/appinventor/components/runtime/ImagePicker;

    const-string v1, "Click"

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
