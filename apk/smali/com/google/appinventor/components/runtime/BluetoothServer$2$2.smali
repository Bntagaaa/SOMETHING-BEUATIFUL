.class Lcom/google/appinventor/components/runtime/BluetoothServer$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/BluetoothServer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$2;

.field final synthetic val$bluetoothSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/BluetoothServer$2;Landroid/bluetooth/BluetoothSocket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2$2;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$2;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2$2;->val$bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2$2;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/BluetoothServer$2;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2$2;->val$bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->setConnection(Landroid/bluetooth/BluetoothSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2$2;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/BluetoothServer$2;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothServer;->ConnectionAccepted()V

    return-void

    .line 164
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2$2;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/BluetoothServer$2;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    .line 165
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2$2;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$2;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/BluetoothServer$2;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    iget-object v2, v1, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/BluetoothServer$2;->val$functionName:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x1fd

    invoke-virtual {v2, v1, v0, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method
