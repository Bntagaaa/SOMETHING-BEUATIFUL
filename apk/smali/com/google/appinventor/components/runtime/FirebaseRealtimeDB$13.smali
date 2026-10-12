.class Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->GetValue(Ljava/lang/String;Ljava/lang/Object;)V
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
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$valueIfTagNotThere:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 303
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$13;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$13;->val$valueIfTagNotThere:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$13;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
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

    .line 306
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/DataSnapshot;

    .line 309
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$13;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->a(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 312
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$13;->val$valueIfTagNotThere:Ljava/lang/Object;

    .line 314
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$13;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$13;->val$tag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->GotValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$13;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$13;->val$tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 317
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, "Unknown error"

    .line 316
    :goto_1
    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->GetValueFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
