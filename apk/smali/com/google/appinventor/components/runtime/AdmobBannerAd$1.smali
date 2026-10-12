.class Lcom/google/appinventor/components/runtime/AdmobBannerAd$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AdmobBannerAd;->LoadBannerAd(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AdmobBannerAd;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AdmobBannerAd;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/AdmobBannerAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/AdmobBannerAd;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->AdClicked()V

    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/AdmobBannerAd;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->AdClosed()V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/LoadAdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/AdmobBannerAd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/AdmobBannerAd;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->AdImpression()V

    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/AdmobBannerAd;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->AdLoaded()V

    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/AdmobBannerAd;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdmobBannerAd;->AdOpened()V

    return-void
.end method
