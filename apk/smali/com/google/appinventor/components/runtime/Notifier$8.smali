.class Lcom/google/appinventor/components/runtime/Notifier$8;
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

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Notifier;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 383
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier$8;->this$0:Lcom/google/appinventor/components/runtime/Notifier;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Notifier$8;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 385
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier$8;->this$0:Lcom/google/appinventor/components/runtime/Notifier;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Notifier$8;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Notifier;->HideKeyboard(Landroid/view/View;)V

    .line 386
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier$8;->this$0:Lcom/google/appinventor/components/runtime/Notifier;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Notifier$8;->val$input:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Notifier;->AfterTextInput(Ljava/lang/String;)V

    return-void
.end method
