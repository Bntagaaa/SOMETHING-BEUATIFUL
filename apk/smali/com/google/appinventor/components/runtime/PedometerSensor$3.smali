.class Lcom/google/appinventor/components/runtime/PedometerSensor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/PedometerSensor;->PedometerInfoReceived(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/PedometerSensor;

.field final synthetic val$timestamp:J


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/PedometerSensor;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$3;->this$0:Lcom/google/appinventor/components/runtime/PedometerSensor;

    iput-wide p2, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$3;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 135
    const-string v0, "PedometerSensor"

    const-string v1, "PedometerInfoReceived() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$3;->this$0:Lcom/google/appinventor/components/runtime/PedometerSensor;

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$3;->val$timestamp:J

    .line 137
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 136
    const-string v1, "PedometerInfoReceived"

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
