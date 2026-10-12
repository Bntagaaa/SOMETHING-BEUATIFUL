.class Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3GyroSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const-wide/16 v1, 0x32

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->e(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)D

    move-result-wide v3

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->c(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpg-double v0, v5, v7

    if-gez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v0, v3, v4}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->d(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;D)V

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->b(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Lcom/google/appinventor/components/common/GyroSensorMode;

    move-result-object v0

    sget-object v5, Lcom/google/appinventor/components/common/GyroSensorMode;->Rate:Lcom/google/appinventor/components/common/GyroSensorMode;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-ne v0, v5, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v0, v8, v6

    if-gez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->b(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Lcom/google/appinventor/components/common/GyroSensorMode;

    move-result-object v0

    sget-object v5, Lcom/google/appinventor/components/common/GyroSensorMode;->Angle:Lcom/google/appinventor/components/common/GyroSensorMode;

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->c(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)D

    move-result-wide v8

    sub-double v8, v3, v8

    .line 71
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v0, v8, v6

    if-ltz v0, :cond_3

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-virtual {v0, v3, v4}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->SensorValueChanged(D)V

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v0, v3, v4}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->d(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;D)V

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->a(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
