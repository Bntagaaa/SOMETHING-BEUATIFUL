.class Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3ColorSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const-wide/16 v1, 0x32

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->f(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Lcom/google/appinventor/components/common/ColorSensorMode;

    move-result-object v0

    sget-object v3, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    if-ne v0, v3, :cond_2

    .line 71
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->m(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v0

    .line 73
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->g(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-gez v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->k(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)V

    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->e(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->g(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->d(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->n(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->ColorChanged(ILjava/lang/String;)V

    .line 82
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->k(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)V

    goto/16 :goto_1

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->m(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v0

    .line 85
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->h(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-gez v3, :cond_3

    .line 86
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->l(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)V

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->e(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 92
    :cond_3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->c(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 93
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->b(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->h(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->c(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-lt v3, v4, :cond_7

    .line 94
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->BelowRange()V

    goto :goto_0

    .line 95
    :cond_4
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->i(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-le v0, v3, :cond_5

    .line 96
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->a(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->h(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->i(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-gt v3, v4, :cond_7

    .line 97
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->AboveRange()V

    goto :goto_0

    .line 99
    :cond_5
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->j(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->h(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->c(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-lt v3, v4, :cond_6

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->h(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->i(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-le v3, v4, :cond_7

    .line 100
    :cond_6
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->WithinRange()V

    .line 103
    :cond_7
    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->l(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)V

    .line 107
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->e(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
