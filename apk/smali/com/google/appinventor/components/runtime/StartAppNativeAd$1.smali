.class Lcom/google/appinventor/components/runtime/StartAppNativeAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/StartAppNativeAd;->LoadAd(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/StartAppNativeAd;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/StartAppNativeAd;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppNativeAd$1;->this$0:Lcom/google/appinventor/components/runtime/StartAppNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppNativeAd$1;->this$0:Lcom/google/appinventor/components/runtime/StartAppNativeAd;

    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/Ad;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/StartAppNativeAd;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveAd(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppNativeAd$1;->this$0:Lcom/google/appinventor/components/runtime/StartAppNativeAd;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/StartAppNativeAd;->a(Lcom/google/appinventor/components/runtime/StartAppNativeAd;)Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->getNativeAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/StartAppNativeAd;->AdLoaded(Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method
