.class Lcom/google/appinventor/components/runtime/SocketIO$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/SocketIO$1;->call([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/SocketIO$1;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/SocketIO$1;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocketIO$1$1;->this$1:Lcom/google/appinventor/components/runtime/SocketIO$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocketIO$1$1;->this$1:Lcom/google/appinventor/components/runtime/SocketIO$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/SocketIO$1;->this$0:Lcom/google/appinventor/components/runtime/SocketIO;

    invoke-static {}, Lcom/google/appinventor/components/runtime/SocketIO;->e()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    invoke-static {}, Lcom/google/appinventor/components/runtime/SocketIO;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SocketIO$1$1;->this$1:Lcom/google/appinventor/components/runtime/SocketIO$1;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SocketIO$1;->this$0:Lcom/google/appinventor/components/runtime/SocketIO;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/SocketIO;->b(Lcom/google/appinventor/components/runtime/SocketIO;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/SocketIO;->EventReceived(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
