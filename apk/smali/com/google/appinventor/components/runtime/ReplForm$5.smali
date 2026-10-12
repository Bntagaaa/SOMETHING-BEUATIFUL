.class Lcom/google/appinventor/components/runtime/ReplForm$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ReplForm;->addLogcatButton(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ReplForm;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ReplForm;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ReplForm$5;->this$0:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 294
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ReplForm$5;->this$0:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/ReplForm;->k(Lcom/google/appinventor/components/runtime/ReplForm;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 295
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/ReplApplication;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 296
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Your Report Id is: "

    const-string v2, "<br />Use this ID when reporting this error."

    .line 0
    invoke-static {v1, p1, v2}, L_COROUTINE/a;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 296
    const-string v1, "Error Report Id"

    const-string v2, "OK"

    invoke-static {v0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
