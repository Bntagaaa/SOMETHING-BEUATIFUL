.class public final Lcom/google/appinventor/components/runtime/NiotronCustomDialog;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Show Various kinds of Dialog like Progress, Success, Warnings, Error, etc"
    iconName = "images/niotronCustomDialog.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "sweetdialog.jar,sweetdialog.aar,sweetdialogprogress.jar,sweetdialogprogress.aar"
.end annotation


# instance fields
.field private pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 28
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    return-void
.end method


# virtual methods
.method public CancelButtonClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Cancel button clicked"
    .end annotation

    .line 167
    const-string v0, "CancelButtonClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ConfirmButtonClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Confirm button clicked"
    .end annotation

    .line 172
    const-string v0, "ConfirmButtonClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Dismiss()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Dialog dismissed"
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public DismissWithAnimation()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Dialog dismissed with animation"
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    :cond_0
    return-void
.end method

.method public IsShowing()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns if the dialog is showing"
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public SetCustomImage(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets custom image"
    .end annotation

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setCustomImage(Landroid/graphics/drawable/Drawable;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ShowErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows error dialog"
    .end annotation

    .line 53
    new-instance v0, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 54
    invoke-virtual {v0, p1}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 55
    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, p2}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, p3}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setCancelable(Z)V

    .line 57
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 58
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public ShowErrorDialogWithButtons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows error dialog with buttons"
    .end annotation

    .line 87
    new-instance v0, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 88
    invoke-virtual {v0, p1}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 89
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v1, p2}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 90
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p2, p3}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 91
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p2, p4}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 92
    :cond_1
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p2, v2}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 93
    :cond_2
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p2, p5}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setCancelable(Z)V

    .line 94
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    new-instance p4, Lcom/google/appinventor/components/runtime/NiotronCustomDialog$3;

    invoke-direct {p4, p0, p1, p3}, Lcom/google/appinventor/components/runtime/NiotronCustomDialog$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronCustomDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 100
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    new-instance p4, Lcom/google/appinventor/components/runtime/NiotronCustomDialog$4;

    invoke-direct {p4, p0, p1, p3}, Lcom/google/appinventor/components/runtime/NiotronCustomDialog$4;-><init>(Lcom/google/appinventor/components/runtime/NiotronCustomDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 106
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public ShowMessageDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows the message dialog"
    .end annotation

    .line 43
    new-instance v0, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v0, v1}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 44
    invoke-virtual {v0, p1}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 45
    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, p2}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, p3}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setCancelable(Z)V

    .line 47
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 48
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public ShowProgressDialog(Ljava/lang/String;ZI)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shoes the progress dialog"
    .end annotation

    .line 33
    new-instance v0, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 34
    invoke-virtual {v0}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->getProgressHelper()Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/ProgressHelper;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/ProgressHelper;->setBarColor(I)V

    .line 35
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p3, p1}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 36
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1, p2}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setCancelable(Z)V

    .line 37
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 38
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public ShowProgressDialogWithButtons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows progress dialog with buttons"
    .end annotation

    .line 111
    new-instance v0, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 112
    invoke-virtual {v0, p1}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 113
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v1, p2}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 114
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p2, p3}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 115
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p2, p4}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 116
    :cond_1
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    const/4 p4, 0x1

    invoke-virtual {p2, p4}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 117
    :cond_2
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p2, p5}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setCancelable(Z)V

    .line 118
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    new-instance p4, Lcom/google/appinventor/components/runtime/NiotronCustomDialog$5;

    invoke-direct {p4, p0, p1, p3}, Lcom/google/appinventor/components/runtime/NiotronCustomDialog$5;-><init>(Lcom/google/appinventor/components/runtime/NiotronCustomDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 124
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    new-instance p4, Lcom/google/appinventor/components/runtime/NiotronCustomDialog$6;

    invoke-direct {p4, p0, p1, p3}, Lcom/google/appinventor/components/runtime/NiotronCustomDialog$6;-><init>(Lcom/google/appinventor/components/runtime/NiotronCustomDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 130
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public ShowSuccessDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows success dialog"
    .end annotation

    .line 135
    new-instance v0, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 136
    invoke-virtual {v0, p1}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 137
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v1, p2}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 138
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p2, p3}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 139
    :cond_1
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p2, p4}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setCancelable(Z)V

    .line 140
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 141
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    new-instance p4, Lcom/google/appinventor/components/runtime/NiotronCustomDialog$7;

    invoke-direct {p4, p0, p1, p3}, Lcom/google/appinventor/components/runtime/NiotronCustomDialog$7;-><init>(Lcom/google/appinventor/components/runtime/NiotronCustomDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 147
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public ShowWarningDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows warning dialog"
    .end annotation

    .line 63
    new-instance v0, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 64
    invoke-virtual {v0, p1}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 65
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {v1, p2}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 66
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p2, p3}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 67
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p2, p4}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 68
    :cond_1
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    const/4 p4, 0x1

    invoke-virtual {p2, p4}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 69
    :cond_2
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p2, p5}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setCancelable(Z)V

    .line 70
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    new-instance p4, Lcom/google/appinventor/components/runtime/NiotronCustomDialog$1;

    invoke-direct {p4, p0, p1, p3}, Lcom/google/appinventor/components/runtime/NiotronCustomDialog$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronCustomDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 76
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    new-instance p4, Lcom/google/appinventor/components/runtime/NiotronCustomDialog$2;

    invoke-direct {p4, p0, p1, p3}, Lcom/google/appinventor/components/runtime/NiotronCustomDialog$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronCustomDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    .line 82
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->pDialog:Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p1}, Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method
