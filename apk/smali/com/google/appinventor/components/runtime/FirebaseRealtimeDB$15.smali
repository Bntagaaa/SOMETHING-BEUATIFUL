.class Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/database/ChildEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->StartChildListening(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 382
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$15;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$15;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 2
    .param p1    # Lcom/google/firebase/database/DatabaseError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 409
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$15;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$15;->val$tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ChildListeningCancelled(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 385
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$15;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->a(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$15;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$15;->val$tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0, p2}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ChildAdded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 391
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$15;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->a(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$15;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$15;->val$tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0, p2}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ChildChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 403
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$15;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->a(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$15;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$15;->val$tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0, p2}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ChildMoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 3
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 397
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$15;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->a(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$15;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$15;->val$tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ChildRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
