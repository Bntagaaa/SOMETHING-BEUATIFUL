.class Lcom/google/appinventor/components/runtime/ScreenStatus$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ledu/mit/media/funf/probe/Probe$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ScreenStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ScreenStatus;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ScreenStatus;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenStatus$1;->this$0:Lcom/google/appinventor/components/runtime/ScreenStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataCompleted(Ledu/mit/media/funf/json/IJsonObject;Lcom/google/gson/JsonElement;)V
    .locals 0

    return-void
.end method

.method public onDataReceived(Ledu/mit/media/funf/json/IJsonObject;Ledu/mit/media/funf/json/IJsonObject;)V
    .locals 3

    .line 66
    const-string v0, "receive data of running applications"

    const-string v1, "ScreenStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p2}, Ledu/mit/media/funf/json/IJsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DATA: "

    .line 0
    invoke-static {v2, v0, v1}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenStatus$1;->this$0:Lcom/google/appinventor/components/runtime/ScreenStatus;

    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabledSaveToDB:Z

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/ProbeBase;->saveToDB(Ledu/mit/media/funf/json/IJsonObject;Ledu/mit/media/funf/json/IJsonObject;)V

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenStatus$1;->this$0:Lcom/google/appinventor/components/runtime/ScreenStatus;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/ScreenStatus;->myHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 82
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ScreenStatus$1;->this$0:Lcom/google/appinventor/components/runtime/ScreenStatus;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/ScreenStatus;->myHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
