.class Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2$2;
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


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2$2;->this$1:Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2$2;->this$1:Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronNetworkTools$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronNetworkTools;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronNetworkTools;->ConnectedToInternetResult(Z)V

    return-void
.end method
