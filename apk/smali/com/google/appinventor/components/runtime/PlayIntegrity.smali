.class public final Lcom/google/appinventor/components/runtime/PlayIntegrity;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "The Play Integrity API helps you check that interactions and server requests are coming from your genuine app binary running on a genuine Android device. By detecting potentially risky and fraudulent interactions, such as from tampered app versions and untrustworthy environments, your app\u2019s backend server can respond with appropriate actions to prevent attacks and reduce abuse."
    iconName = "images/playIntegrity.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "integrity.aar, integrity.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, play-core-common.aar, play-core-common.jar, annotation.jar"
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private integrityManager:Lcom/google/android/play/core/integrity/IntegrityManager;

.field private integrityTokenProvider:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;

.field private projectNumber:Ljava/lang/String;

.field private standardIntegrityManager:Lcom/google/android/play/core/integrity/StandardIntegrityManager;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 42
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PlayIntegrity;->projectNumber:Ljava/lang/String;

    .line 43
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PlayIntegrity;->context:Landroid/app/Activity;

    .line 45
    invoke-static {p1}, Lcom/google/android/play/core/integrity/IntegrityManagerFactory;->createStandard(Landroid/content/Context;)Lcom/google/android/play/core/integrity/StandardIntegrityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PlayIntegrity;->standardIntegrityManager:Lcom/google/android/play/core/integrity/StandardIntegrityManager;

    .line 46
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PlayIntegrity;->context:Landroid/app/Activity;

    invoke-static {p1}, Lcom/google/android/play/core/integrity/IntegrityManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/integrity/IntegrityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PlayIntegrity;->integrityManager:Lcom/google/android/play/core/integrity/IntegrityManager;

    return-void
.end method

.method private synthetic lambda$RequestClassicIntegrityVerdict$8(Lcom/google/android/play/core/integrity/IntegrityTokenResponse;)V
    .locals 0

    .line 146
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityTokenResponse;->token()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/PlayIntegrity;->ClassicIntegrityVerdictReceived(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$RequestClassicIntegrityVerdict$9(Ljava/lang/Exception;)V
    .locals 0

    .line 148
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/PlayIntegrity;->ClassicIntegrityVerdictFailed(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$RequestClassicIntegrityVerdictWithNonce$10(Lcom/google/android/play/core/integrity/IntegrityTokenResponse;)V
    .locals 0

    .line 161
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityTokenResponse;->token()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/PlayIntegrity;->ClassicIntegrityVerdictReceived(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$RequestClassicIntegrityVerdictWithNonce$11(Ljava/lang/Exception;)V
    .locals 0

    .line 163
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/PlayIntegrity;->ClassicIntegrityVerdictFailed(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$RequestStandardIntegrityVerdict$0(Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PlayIntegrity;->integrityTokenProvider:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;

    return-void
.end method

.method private synthetic lambda$RequestStandardIntegrityVerdict$1(Ljava/lang/Exception;)V
    .locals 0

    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/PlayIntegrity;->StandardIntegrityVerdictFailed(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$RequestStandardIntegrityVerdict$2(Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;)V
    .locals 0

    .line 91
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;->token()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/PlayIntegrity;->StandardIntegrityVerdictReceived(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$RequestStandardIntegrityVerdict$3(Ljava/lang/Exception;)V
    .locals 0

    .line 94
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/PlayIntegrity;->StandardIntegrityVerdictFailed(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$RequestStandardIntegrityVerdictWithHash$4(Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PlayIntegrity;->integrityTokenProvider:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;

    return-void
.end method

.method private synthetic lambda$RequestStandardIntegrityVerdictWithHash$5(Ljava/lang/Exception;)V
    .locals 0

    .line 115
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/PlayIntegrity;->StandardIntegrityVerdictFailed(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$RequestStandardIntegrityVerdictWithHash$6(Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;)V
    .locals 0

    .line 130
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;->token()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/PlayIntegrity;->StandardIntegrityVerdictReceived(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$RequestStandardIntegrityVerdictWithHash$7(Ljava/lang/Exception;)V
    .locals 0

    .line 133
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/PlayIntegrity;->StandardIntegrityVerdictFailed(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public ClassicIntegrityVerdictFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that the classic integrity request failed."
    .end annotation

    .line 186
    const-string v0, "ClassicIntegrityVerdictFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ClassicIntegrityVerdictReceived(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that the classic integrity request was successful. Use the integrity token on your server to verify the integrity of the request."
    .end annotation

    .line 181
    const-string v0, "ClassicIntegrityVerdictReceived"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CloudProjectNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Your Google Cloud project number. Only needed for standard request."
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PlayIntegrity;->projectNumber:Ljava/lang/String;

    return-object v0
.end method

.method public CloudProjectNumber(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Your Google Cloud project number. Only needed for standard request."
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PlayIntegrity;->projectNumber:Ljava/lang/String;

    return-void
.end method

.method public RequestClassicIntegrityVerdict()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Request an integrity token from the Play Integrity API. The token can be used to verify the integrity of the request on your server."
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PlayIntegrity;->integrityManager:Lcom/google/android/play/core/integrity/IntegrityManager;

    .line 143
    invoke-static {}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest;->builder()Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;->build()Lcom/google/android/play/core/integrity/IntegrityTokenRequest;

    move-result-object v1

    .line 142
    invoke-interface {v0, v1}, Lcom/google/android/play/core/integrity/IntegrityManager;->requestIntegrityToken(Lcom/google/android/play/core/integrity/IntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/google/appinventor/components/runtime/c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public RequestClassicIntegrityVerdictWithNonce(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Request an integrity token from the Play Integrity API with a nonce. The token can be used to verify the integrity of the request on your server."
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PlayIntegrity;->integrityManager:Lcom/google/android/play/core/integrity/IntegrityManager;

    .line 158
    invoke-static {}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest;->builder()Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;->setNonce(Ljava/lang/String;)Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;->build()Lcom/google/android/play/core/integrity/IntegrityTokenRequest;

    move-result-object p1

    .line 157
    invoke-interface {v0, p1}, Lcom/google/android/play/core/integrity/IntegrityManager;->requestIntegrityToken(Lcom/google/android/play/core/integrity/IntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 160
    new-instance v0, Lcom/google/appinventor/components/runtime/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 162
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public RequestStandardIntegrityVerdict()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Request an integrity token from the Play Integrity API. The token can be used to verify the integrity of the request on your server."
    .end annotation

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PlayIntegrity;->integrityTokenProvider:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PlayIntegrity;->projectNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "Google Cloud Project number is required for standard request."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/PlayIntegrity;->StandardIntegrityVerdictFailed(Ljava/lang/String;)V

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PlayIntegrity;->standardIntegrityManager:Lcom/google/android/play/core/integrity/StandardIntegrityManager;

    .line 71
    invoke-static {}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;->builder()Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PlayIntegrity;->projectNumber:Ljava/lang/String;

    .line 72
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest$Builder;->setCloudProjectNumber(J)Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest$Builder;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest$Builder;->build()Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;

    move-result-object v1

    .line 70
    invoke-interface {v0, v1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager;->prepareIntegrityToken(Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PlayIntegrity;->integrityTokenProvider:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;

    if-nez v0, :cond_1

    .line 81
    const-string v0, "Integrity token provider is not ready yet."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/PlayIntegrity;->StandardIntegrityVerdictFailed(Ljava/lang/String;)V

    return-void

    .line 87
    :cond_1
    invoke-static {}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;->builder()Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;->build()Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;

    move-result-object v1

    .line 86
    invoke-interface {v0, v1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;->request(Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/google/appinventor/components/runtime/c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public RequestStandardIntegrityVerdictWithHash(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Request an integrity token from the Play Integrity API with a hash. The token can be used to verify the integrity of the request on your server."
    .end annotation

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PlayIntegrity;->integrityTokenProvider:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PlayIntegrity;->projectNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const-string p1, "Google Cloud Project number is required for standard request."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/PlayIntegrity;->StandardIntegrityVerdictFailed(Ljava/lang/String;)V

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PlayIntegrity;->standardIntegrityManager:Lcom/google/android/play/core/integrity/StandardIntegrityManager;

    .line 109
    invoke-static {}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;->builder()Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PlayIntegrity;->projectNumber:Ljava/lang/String;

    .line 110
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest$Builder;->setCloudProjectNumber(J)Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest$Builder;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest$Builder;->build()Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;

    move-result-object v1

    .line 108
    invoke-interface {v0, v1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager;->prepareIntegrityToken(Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PlayIntegrity;->integrityTokenProvider:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;

    if-nez v0, :cond_1

    .line 119
    const-string p1, "Integrity token provider is not ready yet."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/PlayIntegrity;->StandardIntegrityVerdictFailed(Ljava/lang/String;)V

    return-void

    .line 125
    :cond_1
    invoke-static {}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;->builder()Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;

    move-result-object v1

    .line 126
    invoke-virtual {v1, p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;->setRequestHash(Ljava/lang/String;)Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;->build()Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;

    move-result-object p1

    .line 124
    invoke-interface {v0, p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;->request(Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 128
    new-instance v0, Lcom/google/appinventor/components/runtime/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public StandardIntegrityVerdictFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that the standard integrity request failed."
    .end annotation

    .line 175
    const-string v0, "StandardIntegrityVerdictFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public StandardIntegrityVerdictReceived(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that the standard integrity request was successful. Use the integrity token on your server to verify the integrity of the request."
    .end annotation

    .line 170
    const-string v0, "StandardIntegrityVerdictReceived"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
