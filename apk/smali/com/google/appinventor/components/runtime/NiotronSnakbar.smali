.class public final Lcom/google/appinventor/components/runtime/NiotronSnakbar;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A new component "
    iconName = "images/niotronSnakbar.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private PARENT_LAYOUT_ID:I

.field private actionColor:I

.field private actionText:Ljava/lang/String;

.field private backgroundColor:I

.field private duration:I

.field private isShowing:Z

.field private parentView:Landroid/view/View;

.field private snackbar:Lcom/google/android/material/snackbar/Snackbar;

.field private text:Ljava/lang/String;

.field private textColor:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 51
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->actionText:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->text:Ljava/lang/String;

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->actionColor:I

    .line 38
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->textColor:I

    const/16 v0, 0x5dc

    .line 39
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->duration:I

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->isShowing:Z

    const v0, -0xbbbbbc

    .line 41
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->backgroundColor:I

    .line 53
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget p1, p1, Lcom/google/appinventor/components/runtime/Form;->FRAME_LAYOUT_ID_CONSTANT:I

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->parentView:Landroid/view/View;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/NiotronSnakbar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->isShowing:Z

    return-void
.end method

.method private updateSnakbar()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->parentView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->text:Ljava/lang/String;

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->duration:I

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->actionColor:I

    .line 121
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->actionText:Ljava/lang/String;

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronSnakbar$2;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/NiotronSnakbar$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronSnakbar;)V

    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronSnakbar$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronSnakbar$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronSnakbar;)V

    .line 129
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/Snackbar;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    return-void
.end method


# virtual methods
.method public ActionClick()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 116
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ActionClick"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ActionColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 68
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->actionColor:I

    return-void
.end method

.method public ActionText(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->actionText:Ljava/lang/String;

    return-void
.end method

.method public Dismiss()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->isShowing:Z

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    :cond_0
    return-void
.end method

.method public Dismissed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 111
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Dismissed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Duration(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "To set duration of the snakbar use time in milliseconds, To use predifined time constants follow the below values\n\n \"LENGTH_SHORT\" = 0\n \"LENGTH_LONG\" = -1\n \"LENGTH_INFINITE\" = -2"
    .end annotation

    .line 88
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->duration:I

    return-void
.end method

.method public Show()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 93
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->updateSnakbar()V

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public Shown()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 106
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Shown"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Text(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSnakbar;->text:Ljava/lang/String;

    return-void
.end method
