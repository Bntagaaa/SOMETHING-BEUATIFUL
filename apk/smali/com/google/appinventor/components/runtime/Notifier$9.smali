.class Lcom/google/appinventor/components/runtime/Notifier$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Notifier;->textInputDialog(Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Notifier;

.field final synthetic val$cancelButtonText:Ljava/lang/String;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Notifier;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 394
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier$9;->this$0:Lcom/google/appinventor/components/runtime/Notifier;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Notifier$9;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Notifier$9;->val$cancelButtonText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 396
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier$9;->this$0:Lcom/google/appinventor/components/runtime/Notifier;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Notifier$9;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Notifier;->HideKeyboard(Landroid/view/View;)V

    .line 397
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier$9;->this$0:Lcom/google/appinventor/components/runtime/Notifier;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Notifier;->TextInputCanceled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 399
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier$9;->this$0:Lcom/google/appinventor/components/runtime/Notifier;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Notifier$9;->val$cancelButtonText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Notifier;->AfterTextInput(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
