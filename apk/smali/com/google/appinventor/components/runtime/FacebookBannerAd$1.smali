.class Lcom/google/appinventor/components/runtime/FacebookBannerAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FacebookBannerAd;->LoadBannerAd(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FacebookBannerAd;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/FacebookBannerAd;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/FacebookBannerAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 115
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/FacebookBannerAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->AdClicked()V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 110
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/FacebookBannerAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->AdLoaded()V

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/FacebookBannerAd;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 120
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/FacebookBannerAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FacebookBannerAd;->AdImpression()V

    return-void
.end method
