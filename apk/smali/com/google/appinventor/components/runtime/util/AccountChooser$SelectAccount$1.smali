.class Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount$1;->this$1:Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 194
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount$1;->this$1:Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;->this$0:Lcom/google/appinventor/components/runtime/util/AccountChooser;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->a(Lcom/google/appinventor/components/runtime/util/AccountChooser;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount$1;->this$1:Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;->this$0:Lcom/google/appinventor/components/runtime/util/AccountChooser;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->b(Lcom/google/appinventor/components/runtime/util/AccountChooser;)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount$1;->this$1:Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;

    .line 196
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount$1;->this$1:Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;->a(Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount$1;->this$1:Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;

    .line 197
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 199
    const-string v0, "AccountChooser"

    const-string v1, "Dialog showing!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
