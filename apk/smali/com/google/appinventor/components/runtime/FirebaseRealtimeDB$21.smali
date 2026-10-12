.class Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->GetTagList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;)V
    .locals 0

    .line 812
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$21;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

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

    .line 826
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$21;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    const-string v1, "GetTagList"

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 2
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 815
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 817
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getChildren()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/DataSnapshot;

    .line 818
    invoke-virtual {v1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 821
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$21;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->GotTagList(Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method
