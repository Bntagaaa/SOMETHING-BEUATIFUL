.class Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;->LoadAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;->AdClicked()V

    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 81
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;->AdClosed()V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/LoadAdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 1

    .line 105
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;->AdImpression()V

    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerNativeAd;->AdOpened()V

    return-void
.end method
