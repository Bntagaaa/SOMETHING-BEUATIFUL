.class synthetic Lcom/google/appinventor/components/runtime/StartAppNativeAd$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/StartAppNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$startapp$sdk$ads$nativead$StartAppNativeAd$CampaignAction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 164
    invoke-static {}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$CampaignAction;->values()[Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$CampaignAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/appinventor/components/runtime/StartAppNativeAd$2;->$SwitchMap$com$startapp$sdk$ads$nativead$StartAppNativeAd$CampaignAction:[I

    :try_start_0
    sget-object v1, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$CampaignAction;->LAUNCH_APP:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$CampaignAction;

    invoke-virtual {v1}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$CampaignAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/google/appinventor/components/runtime/StartAppNativeAd$2;->$SwitchMap$com$startapp$sdk$ads$nativead$StartAppNativeAd$CampaignAction:[I

    sget-object v1, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$CampaignAction;->OPEN_MARKET:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$CampaignAction;

    invoke-virtual {v1}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$CampaignAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
