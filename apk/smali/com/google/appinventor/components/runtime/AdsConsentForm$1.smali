.class Lcom/google/appinventor/components/runtime/AdsConsentForm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/consent/ConsentInfoUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AdsConsentForm;->PublisherId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AdsConsentForm;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AdsConsentForm;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm$1;->this$0:Lcom/google/appinventor/components/runtime/AdsConsentForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsentInfoUpdated(Lcom/google/ads/consent/ConsentStatus;)V
    .locals 0

    return-void
.end method

.method public onFailedToUpdateConsentInfo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
