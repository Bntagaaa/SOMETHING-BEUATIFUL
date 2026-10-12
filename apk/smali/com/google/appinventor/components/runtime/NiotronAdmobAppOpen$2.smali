.class Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen$2;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->ShowAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 125
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdClicked()V

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->AdClicked()V

    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .locals 1

    .line 113
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdDismissedFullScreenContent()V

    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->AdDismissedFullScreenContent()V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 101
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->AdFailedToShowFullScreenContent(Ljava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdImpression()V

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->AdImpression()V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 1

    .line 107
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdShowedFullScreenContent()V

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->AdShowedFullScreenContent()V

    return-void
.end method
