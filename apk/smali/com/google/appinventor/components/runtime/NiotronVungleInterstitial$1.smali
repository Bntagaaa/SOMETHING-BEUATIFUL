.class Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/BaseAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;->LoadAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/vungle/ads/BaseAd;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 77
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;->AdClicked(Ljava/lang/String;)V

    return-void
.end method

.method public onAdEnd(Lcom/vungle/ads/BaseAd;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;->AdEnded(Ljava/lang/String;)V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/VungleError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/vungle/ads/VungleError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;->AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdFailedToPlay(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/VungleError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 92
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/vungle/ads/VungleError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;->AdFailedToPlay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdImpression(Lcom/vungle/ads/BaseAd;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 67
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;->AdViewed(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLeftApplication(Lcom/vungle/ads/BaseAd;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;->AdLeftApplication(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Lcom/vungle/ads/BaseAd;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 57
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;->AdLoaded(Ljava/lang/String;)V

    return-void
.end method

.method public onAdStart(Lcom/vungle/ads/BaseAd;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleInterstitial;->AdStarted(Ljava/lang/String;)V

    return-void
.end method
