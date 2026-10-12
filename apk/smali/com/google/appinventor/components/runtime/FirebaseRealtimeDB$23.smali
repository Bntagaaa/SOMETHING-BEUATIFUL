.class Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->GetServerTimestamp(Ljava/lang/String;)V
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

    .line 979
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$23;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 982
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$23;->this$0:Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;

    const-string v1, "GetServerTimestamp"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
