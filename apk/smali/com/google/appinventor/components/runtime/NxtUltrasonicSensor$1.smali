.class Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->j(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v0

    .line 65
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v1, :cond_5

    .line 67
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->c(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 68
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->BELOW_RANGE:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->g(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 70
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->ABOVE_RANGE:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    goto :goto_0

    .line 72
    :cond_1
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->WITHIN_RANGE:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->e(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 76
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->BELOW_RANGE:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->b(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->BelowRange()V

    .line 79
    :cond_2
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->WITHIN_RANGE:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->h(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->WithinRange()V

    .line 82
    :cond_3
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->ABOVE_RANGE:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->a(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->AboveRange()V

    .line 87
    :cond_4
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->i(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;)V

    .line 90
    :cond_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->k(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 91
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->d(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->f(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method
