.class Lcom/google/appinventor/components/runtime/FirebaseAuthentication$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->LinkWithMicrosoft()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FirebaseAuthentication;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$17;->this$0:Lcom/google/appinventor/components/runtime/FirebaseAuthentication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/firebase/auth/AuthResult;)V
    .locals 0

    .line 394
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$17;->this$0:Lcom/google/appinventor/components/runtime/FirebaseAuthentication;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->MicrosoftLinkSuccessful()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 391
    check-cast p1, Lcom/google/firebase/auth/AuthResult;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$17;->onSuccess(Lcom/google/firebase/auth/AuthResult;)V

    return-void
.end method
