.class Lcom/google/appinventor/components/runtime/NiotronTapjoy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronTapjoy;->ConnectSDK(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronTapjoy;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronTapjoy;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronTapjoy$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronTapjoy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailure()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronTapjoy$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronTapjoy;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronTapjoy;->ConnectFail()V

    return-void
.end method

.method public onConnectSuccess()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronTapjoy$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronTapjoy;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronTapjoy;->ConnectSuccess()V

    .line 45
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronTapjoy$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronTapjoy;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronTapjoy;->a(Lcom/google/appinventor/components/runtime/NiotronTapjoy;)Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/Tapjoy;->setActivity(Landroid/app/Activity;)V

    return-void
.end method
