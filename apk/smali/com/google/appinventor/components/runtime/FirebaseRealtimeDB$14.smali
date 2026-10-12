.class Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->StartListening(Ljava/lang/String;)V
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

    .line 339
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$14;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$14;->val$tag:Ljava/lang/String;

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

    .line 348
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$14;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$14;->val$tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ListeningCancelled(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 2
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 342
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$14;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->a(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 343
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$14;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$14;->val$tag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->DataChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
