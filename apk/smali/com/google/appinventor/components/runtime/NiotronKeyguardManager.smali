.class public Lcom/google/appinventor/components/runtime/NiotronKeyguardManager;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTRAS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/keyguardmanager.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private keyguardManager:Landroid/app/KeyguardManager;

.field private reqcode:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 29
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronKeyguardManager;->reqcode:I

    .line 30
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronKeyguardManager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 31
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronKeyguardManager;->context:Landroid/content/Context;

    .line 32
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronKeyguardManager;->activity:Landroid/app/Activity;

    .line 33
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronKeyguardManager;->keyguardManager:Landroid/app/KeyguardManager;

    return-void
.end method


# virtual methods
.method public ErrorOccured(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Error occurred"
    .end annotation

    .line 48
    const-string v0, "ErrorOccured"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public IsDeviceLocked()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns if device is locked"
    .end annotation

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronKeyguardManager;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-static {v0}, Landroidx/core/content/a;->g(Landroid/app/KeyguardManager;)Z

    move-result v0

    return v0

    .line 101
    :cond_0
    const-string v0, "SDK Level Not Suppored"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronKeyguardManager;->ErrorOccured(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public IsDeviceSecure()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns if device secured"
    .end annotation

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronKeyguardManager;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-static {v0}, Landroidx/vectordrawable/graphics/drawable/c;->p(Landroid/app/KeyguardManager;)Z

    move-result v0

    return v0

    .line 81
    :cond_0
    const-string v0, "SDK Level Not Suppored"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronKeyguardManager;->ErrorOccured(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public IsKeyguardLocked()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns if keyguard is locked"
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronKeyguardManager;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public IsKeyguardSecure()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns if application is keyguard secured"
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronKeyguardManager;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method public ShowLockScreen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the ock screen"
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronKeyguardManager;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 55
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p2, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result p2

    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronKeyguardManager;->reqcode:I

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronKeyguardManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronKeyguardManager;->ErrorOccured(Ljava/lang/String;)V

    return-void
.end method

.method public VerificationFailed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Verification failed"
    .end annotation

    const/4 v0, 0x0

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VerificationFailed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public VerificationSuccess()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Verification succeed"
    .end annotation

    const/4 v0, 0x0

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VerificationSuccess"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 0

    .line 108
    iget p3, p0, Lcom/google/appinventor/components/runtime/NiotronKeyguardManager;->reqcode:I

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronKeyguardManager;->VerificationSuccess()V

    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronKeyguardManager;->VerificationFailed()V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronKeyguardManager;->VerificationFailed()V

    :cond_2
    return-void
.end method
