.class Lcom/google/appinventor/components/runtime/StartAppRewarded$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/StartAppRewarded;->LoadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/StartAppRewarded;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/StartAppRewarded;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppRewarded$2;->this$0:Lcom/google/appinventor/components/runtime/StartAppRewarded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppRewarded$2;->this$0:Lcom/google/appinventor/components/runtime/StartAppRewarded;

    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/Ad;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/StartAppRewarded;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveAd(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppRewarded$2;->this$0:Lcom/google/appinventor/components/runtime/StartAppRewarded;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/StartAppRewarded;->AdLoaded()V

    return-void
.end method
