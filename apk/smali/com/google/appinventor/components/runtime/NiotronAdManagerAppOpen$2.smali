.class Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen$2;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->ShowAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdClicked()V

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->AdClicked()V

    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .locals 1

    .line 104
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdDismissedFullScreenContent()V

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->c(Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;)V

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->AdDismissedFullScreenContent()V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 111
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V

    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->b(Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;)V

    .line 113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->AdFailedToShowFullScreenContent(Ljava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdImpression()V

    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->AdImpression()V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 1

    .line 124
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdShowedFullScreenContent()V

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->AdShowedFullScreenContent()V

    return-void
.end method
