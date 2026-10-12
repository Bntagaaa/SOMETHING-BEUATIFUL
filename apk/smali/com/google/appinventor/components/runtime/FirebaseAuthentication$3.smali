.class Lcom/google/appinventor/components/runtime/FirebaseAuthentication$3;
.super Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->SendSMSVerification(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FirebaseAuthentication;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$3;->this$0:Lcom/google/appinventor/components/runtime/FirebaseAuthentication;

    invoke-direct {p0}, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onCodeAutoRetrievalTimeOut(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 164
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$3;->this$0:Lcom/google/appinventor/components/runtime/FirebaseAuthentication;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->VerificationSmsTimedOut()V

    return-void
.end method

.method public onCodeSent(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 159
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$3;->this$0:Lcom/google/appinventor/components/runtime/FirebaseAuthentication;

    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->VerificationSmsSent(Ljava/lang/String;)V

    return-void
.end method

.method public onVerificationCompleted(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$3;->this$0:Lcom/google/appinventor/components/runtime/FirebaseAuthentication;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->SmsVerified(Ljava/lang/Object;)V

    return-void
.end method

.method public onVerificationFailed(Lcom/google/firebase/FirebaseException;)V
    .locals 1

    .line 147
    instance-of v0, p1, Lcom/google/firebase/auth/FirebaseAuthInvalidCredentialsException;

    if-eqz v0, :cond_0

    .line 148
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$3;->this$0:Lcom/google/appinventor/components/runtime/FirebaseAuthentication;

    const-string v0, "Invalid Request"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->SmsVerificationFailed(Ljava/lang/String;)V

    return-void

    .line 149
    :cond_0
    instance-of v0, p1, Lcom/google/firebase/FirebaseTooManyRequestsException;

    if-eqz v0, :cond_1

    .line 150
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$3;->this$0:Lcom/google/appinventor/components/runtime/FirebaseAuthentication;

    const-string v0, "Too many requests"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->SmsVerificationFailed(Ljava/lang/String;)V

    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$3;->this$0:Lcom/google/appinventor/components/runtime/FirebaseAuthentication;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->SmsVerificationFailed(Ljava/lang/String;)V

    return-void
.end method
