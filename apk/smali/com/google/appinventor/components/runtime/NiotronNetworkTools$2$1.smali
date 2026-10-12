.class Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;

.field final synthetic val$result:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;

    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2$1;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronNetworkTools;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2$1;->val$result:Z

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->ConnectedToInternetResult(Z)V

    return-void
.end method
