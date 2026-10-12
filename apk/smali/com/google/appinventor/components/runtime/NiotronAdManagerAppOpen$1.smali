.class Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen$1;
.super Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->LoadAd(Ljava/lang/String;)V
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

    .line 75
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;

    invoke-direct {p0}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    .line 87
    const-string v0, "AppOpenAdManager"

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->b(Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;)V

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V
    .locals 2

    .line 79
    const-string v0, "AppOpenAdManager"

    const-string v1, "Ad was loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->a(Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;Lcom/google/android/gms/ads/appopen/AppOpenAd;)V

    .line 81
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;->b(Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronAdManagerAppOpen$1;->onAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V

    return-void
.end method
