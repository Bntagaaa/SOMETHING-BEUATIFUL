.class Lcom/google/appinventor/components/runtime/StartAppInterstitial$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/StartAppInterstitial;->LoadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/StartAppInterstitial;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/StartAppInterstitial;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/StartAppInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/StartAppInterstitial;

    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/Ad;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/StartAppInterstitial;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveAd(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/StartAppInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/StartAppInterstitial;->AdLoaded()V

    return-void
.end method
