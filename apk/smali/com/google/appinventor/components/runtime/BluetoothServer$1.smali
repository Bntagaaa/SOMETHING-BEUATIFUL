.class Lcom/google/appinventor/components/runtime/BluetoothServer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/BluetoothServer;->accept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

.field final synthetic val$functionName:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$uuidString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/BluetoothServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->val$functionName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->val$uuidString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    .line 92
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->val$functionName:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->val$name:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->val$uuidString:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothServer;->c(Lcom/google/appinventor/components/runtime/BluetoothServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
