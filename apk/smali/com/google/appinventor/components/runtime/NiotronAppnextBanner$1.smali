.class Lcom/google/appinventor/components/runtime/NiotronAppnextBanner$1;
.super Lcom/appnext/banners/BannerListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->LoadAd(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;

    invoke-direct {p0}, Lcom/appnext/banners/BannerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public adImpression()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->AdImpression()V

    return-void
.end method

.method public onAdClicked()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->AdClicked()V

    return-void
.end method

.method public onAdLoaded(Ljava/lang/String;Lcom/appnext/core/AppnextAdCreativeType;)V
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->AdLoaded()V

    return-void
.end method

.method public onError(Lcom/appnext/core/AppnextError;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;

    invoke-virtual {p1}, Lcom/appnext/core/AppnextError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronAppnextBanner;->AdErrorOccurred(Ljava/lang/String;)V

    return-void
.end method
