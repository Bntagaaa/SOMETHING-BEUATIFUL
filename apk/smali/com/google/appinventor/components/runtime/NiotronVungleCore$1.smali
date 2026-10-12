.class Lcom/google/appinventor/components/runtime/NiotronVungleCore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/InitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronVungleCore;->InitializeSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronVungleCore;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronVungleCore;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVungleCore$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVungleCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/vungle/ads/VungleError;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/VungleError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 58
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleCore$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVungleCore;

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleCore;->SDKFailedToInitialize(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleCore$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVungleCore;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronVungleCore;->SDKInitialized()V

    return-void
.end method
