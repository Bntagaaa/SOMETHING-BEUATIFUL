.class Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->executeQuery(Lcom/google/firebase/database/Query;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

.field final synthetic val$queryType:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1276
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$25;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$25;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$25;->val$queryType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 3
    .param p1    # Lcom/google/firebase/database/DatabaseError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1285
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$25;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$25;->val$tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$25;->val$queryType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->QueryFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 3
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1279
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$25;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->b(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Lcom/google/firebase/database/DataSnapshot;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    .line 1280
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$25;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$25;->val$tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$25;->val$queryType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->QueryResult(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method
