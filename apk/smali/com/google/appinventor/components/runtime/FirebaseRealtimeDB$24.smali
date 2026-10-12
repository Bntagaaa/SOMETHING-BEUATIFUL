.class Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->GetServerTimestamp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

.field final synthetic val$ref:Lcom/google/firebase/database/DatabaseReference;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Lcom/google/firebase/database/DatabaseReference;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 964
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$24;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$24;->val$ref:Lcom/google/firebase/database/DatabaseReference;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$24;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 964
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$24;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 1

    .line 968
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$24;->val$ref:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseReference;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$24$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$24$1;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$24;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
