.class Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->addListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;)V
    .locals 0

    .line 752
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 760
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialTextBox;->OnTextChange(Ljava/lang/String;)V

    return-void
.end method
