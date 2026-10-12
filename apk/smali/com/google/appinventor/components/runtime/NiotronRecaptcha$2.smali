.class Lcom/google/appinventor/components/runtime/NiotronRecaptcha$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->Verify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/android/gms/safetynet/SafetyNetApi$RecaptchaTokenResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronRecaptcha;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronRecaptcha;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecaptcha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/android/gms/safetynet/SafetyNetApi$RecaptchaTokenResponse;)V
    .locals 1

    .line 72
    invoke-virtual {p1}, Lcom/google/android/gms/safetynet/SafetyNetApi$RecaptchaTokenResponse;->getTokenResult()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecaptcha;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->handleSiteVerify(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 69
    check-cast p1, Lcom/google/android/gms/safetynet/SafetyNetApi$RecaptchaTokenResponse;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$2;->onSuccess(Lcom/google/android/gms/safetynet/SafetyNetApi$RecaptchaTokenResponse;)V

    return-void
.end method
