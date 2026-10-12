.class Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;->LoadBannerAd(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;->AdClicked()V

    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;->AdClosed()V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/LoadAdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;->AdImpression()V

    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;->AdLoaded()V

    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerBanner;->AdOpened()V

    return-void
.end method
