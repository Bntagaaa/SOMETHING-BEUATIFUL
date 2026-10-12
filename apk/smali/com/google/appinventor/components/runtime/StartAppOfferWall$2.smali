.class Lcom/google/appinventor/components/runtime/StartAppOfferWall$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/startapp/sdk/adsbase/adlisteners/AdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/StartAppOfferWall;->ShowAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/StartAppOfferWall;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/StartAppOfferWall;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppOfferWall$2;->this$0:Lcom/google/appinventor/components/runtime/StartAppOfferWall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppOfferWall$2;->this$0:Lcom/google/appinventor/components/runtime/StartAppOfferWall;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/StartAppOfferWall;->AdClicked()V

    return-void
.end method

.method public adDisplayed(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppOfferWall$2;->this$0:Lcom/google/appinventor/components/runtime/StartAppOfferWall;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/StartAppOfferWall;->AdDisplayed()V

    return-void
.end method

.method public adHidden(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/StartAppOfferWall$2;->this$0:Lcom/google/appinventor/components/runtime/StartAppOfferWall;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/StartAppOfferWall;->AdHidden()V

    return-void
.end method

.method public adNotDisplayed(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/StartAppOfferWall$2;->this$0:Lcom/google/appinventor/components/runtime/StartAppOfferWall;

    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/Ad;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/StartAppOfferWall;->AdFailedToDisplay(Ljava/lang/String;)V

    return-void
.end method
