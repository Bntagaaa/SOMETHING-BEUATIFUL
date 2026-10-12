.class Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$24$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$24;->onSuccess(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/database/DataSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$24;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$24;)V
    .locals 0

    .line 968
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$24$1;->this$1:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/database/DataSnapshot;",
            ">;)V"
        }
    .end annotation

    .line 971
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 972
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 973
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$24$1;->this$1:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$24;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$24;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$24;->val$tag:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v1, v0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ServerTimestampReceived(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
