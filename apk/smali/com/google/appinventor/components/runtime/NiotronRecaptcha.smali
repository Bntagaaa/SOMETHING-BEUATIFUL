.class public final Lcom/google/appinventor/components/runtime/NiotronRecaptcha;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Recaptcha Component using Safety net"
    iconName = "images/niotronRecaptcha.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "play-services-safetynet.jar, google-api-client.jar,play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar,play-services-base.aar, play-services-base.jar, json.jar"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private apiKey:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private secretKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 49
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->apiKey:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->secretKey:Ljava/lang/String;

    .line 50
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->context:Landroid/content/Context;

    .line 51
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->activity:Landroid/app/Activity;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/NiotronRecaptcha;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/NiotronRecaptcha;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->secretKey:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public ApiKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->apiKey:Ljava/lang/String;

    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 151
    const-string v0, "ErrorOccurred"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SecretKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->secretKey:Ljava/lang/String;

    return-void
.end method

.method public VerificationFailed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 161
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VerificationFailed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public VerificationSuccess()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 156
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VerificationSuccess"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Verify()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/safetynet/SafetyNet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/safetynet/SafetyNetClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/safetynet/SafetyNetClient;->verifyWithRecaptcha(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronRecaptcha;)V

    .line 69
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronRecaptcha;)V

    .line 78
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public handleSiteVerify(Ljava/lang/String;)V
    .locals 1

    .line 93
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronRecaptcha;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
