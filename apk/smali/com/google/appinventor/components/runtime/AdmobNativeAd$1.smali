.class Lcom/google/appinventor/components/runtime/AdmobNativeAd$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AdmobNativeAd;->LoadAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AdmobNativeAd;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AdmobNativeAd;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$1;->this$0:Lcom/google/appinventor/components/runtime/AdmobNativeAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 101
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$1;->this$0:Lcom/google/appinventor/components/runtime/AdmobNativeAd;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdmobNativeAd;->AdClicked()V

    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 83
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$1;->this$0:Lcom/google/appinventor/components/runtime/AdmobNativeAd;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdmobNativeAd;->AdClosed()V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/LoadAdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 89
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$1;->this$0:Lcom/google/appinventor/components/runtime/AdmobNativeAd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/AdmobNativeAd;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 1

    .line 107
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$1;->this$0:Lcom/google/appinventor/components/runtime/AdmobNativeAd;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdmobNativeAd;->AdImpression()V

    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .line 95
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobNativeAd$1;->this$0:Lcom/google/appinventor/components/runtime/AdmobNativeAd;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdmobNativeAd;->AdOpened()V

    return-void
.end method
