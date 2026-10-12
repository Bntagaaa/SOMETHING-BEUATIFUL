.class Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3TouchSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const-wide/16 v1, 0x32

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->f(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)I

    move-result v0

    .line 65
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->d(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)I

    move-result v3

    if-gez v3, :cond_0

    .line 66
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->e(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;I)V

    .line 67
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->a(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 71
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->d(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)I

    move-result v3

    const/16 v4, 0x32

    if-ge v3, v4, :cond_1

    .line 72
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->c(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-lt v0, v4, :cond_2

    .line 73
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->Pressed()V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->b(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ge v0, v4, :cond_2

    .line 76
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->Released()V

    .line 79
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->e(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;I)V

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->a(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
