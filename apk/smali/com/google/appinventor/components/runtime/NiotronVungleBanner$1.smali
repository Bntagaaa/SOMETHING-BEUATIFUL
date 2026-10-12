.class Lcom/google/appinventor/components/runtime/NiotronVungleBanner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/BaseAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->LoadAd(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronVungleBanner;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronVungleBanner;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVungleBanner;

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

    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVungleBanner;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->AdClicked(Ljava/lang/String;)V

    return-void
.end method

.method public onAdEnd(Lcom/vungle/ads/BaseAd;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVungleBanner;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->AdEnded(Ljava/lang/String;)V

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

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVungleBanner;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/vungle/ads/VungleError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVungleBanner;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/vungle/ads/VungleError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->AdFailedToPlay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdImpression(Lcom/vungle/ads/BaseAd;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVungleBanner;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->AdViewed(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLeftApplication(Lcom/vungle/ads/BaseAd;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVungleBanner;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->AdLeftApplication(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Lcom/vungle/ads/BaseAd;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVungleBanner;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->AdLoaded(Ljava/lang/String;)V

    return-void
.end method

.method public onAdStart(Lcom/vungle/ads/BaseAd;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/BaseAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronVungleBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronVungleBanner;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronVungleBanner;->AdStarted(Ljava/lang/String;)V

    return-void
.end method
