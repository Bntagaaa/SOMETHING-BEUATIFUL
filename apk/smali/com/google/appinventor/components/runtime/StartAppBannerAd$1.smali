.class Lcom/google/appinventor/components/runtime/StartAppBannerAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/startapp/sdk/ads/banner/BannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/StartAppBannerAd;->LoadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/StartAppBannerAd;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/StartAppBannerAd;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/StartAppBannerAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/StartAppBannerAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/StartAppBannerAd;->AdClicked()V

    return-void
.end method

.method public onFailedToReceiveAd(Landroid/view/View;)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/StartAppBannerAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/StartAppBannerAd;->AdFailedToLoad()V

    return-void
.end method

.method public onImpression(Landroid/view/View;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/StartAppBannerAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/StartAppBannerAd;->AdImpression()V

    return-void
.end method

.method public onReceiveAd(Landroid/view/View;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppBannerAd$1;->this$0:Lcom/google/appinventor/components/runtime/StartAppBannerAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/StartAppBannerAd;->AdLoaded()V

    return-void
.end method
