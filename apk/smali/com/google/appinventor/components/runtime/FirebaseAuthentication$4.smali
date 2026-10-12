.class Lcom/google/appinventor/components/runtime/FirebaseAuthentication$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->SignInWithPhone(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FirebaseAuthentication;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseAuthentication;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$4;->this$0:Lcom/google/appinventor/components/runtime/FirebaseAuthentication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;)V"
        }
    .end annotation

    .line 192
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$4;->this$0:Lcom/google/appinventor/components/runtime/FirebaseAuthentication;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->PhoneSignInSuccessful()V

    return-void

    .line 195
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 198
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseAuthentication$4;->this$0:Lcom/google/appinventor/components/runtime/FirebaseAuthentication;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/FirebaseAuthentication;->PhoneSignInFailed(Ljava/lang/String;)V

    return-void
.end method
