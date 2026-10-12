.class Lcom/google/appinventor/components/runtime/AppLovinCore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AppLovinCore;->InitializeSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AppLovinCore;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AppLovinCore;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinCore$1;->this$0:Lcom/google/appinventor/components/runtime/AppLovinCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSdkInitialized(Lcom/applovin/sdk/AppLovinSdkConfiguration;)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinCore$1;->this$0:Lcom/google/appinventor/components/runtime/AppLovinCore;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AppLovinCore;->SDKInitialized()V

    return-void
.end method
