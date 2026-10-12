.class Lcom/google/appinventor/components/runtime/Ev3Motors$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3Motors;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Ev3Motors;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->c(Lcom/google/appinventor/components/runtime/Ev3Motors;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->h(Lcom/google/appinventor/components/runtime/Ev3Motors;I)I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->b(Lcom/google/appinventor/components/runtime/Ev3Motors;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->d(Lcom/google/appinventor/components/runtime/Ev3Motors;)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->e(Lcom/google/appinventor/components/runtime/Ev3Motors;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->TachoCountChanged(I)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->f(Lcom/google/appinventor/components/runtime/Ev3Motors;)V

    .line 75
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->g(Lcom/google/appinventor/components/runtime/Ev3Motors;I)V

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3Motors;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->a(Lcom/google/appinventor/components/runtime/Ev3Motors;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
