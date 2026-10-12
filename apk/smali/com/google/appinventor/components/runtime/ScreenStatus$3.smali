.class Lcom/google/appinventor/components/runtime/ScreenStatus$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ScreenStatus;->ScreenInfoReceived(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ScreenStatus;

.field final synthetic val$screenOn:Z

.field final synthetic val$timestamp:J


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ScreenStatus;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenStatus$3;->this$0:Lcom/google/appinventor/components/runtime/ScreenStatus;

    iput-wide p2, p0, Lcom/google/appinventor/components/runtime/ScreenStatus$3;->val$timestamp:J

    iput-boolean p4, p0, Lcom/google/appinventor/components/runtime/ScreenStatus$3;->val$screenOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 162
    const-string v0, "ScreenStatus"

    const-string v1, "ScreenInfoReceived() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenStatus$3;->this$0:Lcom/google/appinventor/components/runtime/ScreenStatus;

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/ScreenStatus$3;->val$timestamp:J

    .line 164
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ScreenStatus$3;->val$screenOn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    .line 163
    const-string v1, "ScreenInfoReceived"

    invoke-static {v0, v1, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
