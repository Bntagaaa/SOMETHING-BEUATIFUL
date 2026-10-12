.class Lcom/google/appinventor/components/runtime/ContactInfo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ledu/mit/media/funf/probe/Probe$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ContactInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ContactInfo;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ContactInfo;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactInfo$2;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataCompleted(Ledu/mit/media/funf/json/IJsonObject;Lcom/google/gson/JsonElement;)V
    .locals 0

    return-void
.end method

.method public onDataReceived(Ledu/mit/media/funf/json/IJsonObject;Ledu/mit/media/funf/json/IJsonObject;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactInfo$2;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/ProbeBase;->enabledSaveToDB:Z

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/ProbeBase;->saveToDB(Ledu/mit/media/funf/json/IJsonObject;Ledu/mit/media/funf/json/IJsonObject;)V

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ContactInfo$2;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/ContactInfo;->myHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 160
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 161
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ContactInfo$2;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/ContactInfo;->myHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
