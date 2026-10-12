.class Lcom/google/appinventor/components/runtime/NiotronMoPubCore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/SdkInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronMoPubCore;->AdUnitId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronMoPubCore;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronMoPubCore;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMoPubCore$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMoPubCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationFinished()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMoPubCore$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMoPubCore;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronMoPubCore;->SDKInitialized()V

    return-void
.end method
