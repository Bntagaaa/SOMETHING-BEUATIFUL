.class Lcom/google/appinventor/components/runtime/AdsConsentForm$2;
.super Lcom/google/ads/consent/ConsentFormListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AdsConsentForm;->LoadConsentForm()V
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

    .line 124
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm$2;->this$0:Lcom/google/appinventor/components/runtime/AdsConsentForm;

    invoke-direct {p0}, Lcom/google/ads/consent/ConsentFormListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsentFormClosed(Lcom/google/ads/consent/ConsentStatus;Ljava/lang/Boolean;)V
    .locals 2

    .line 142
    sget-object v0, Lcom/google/appinventor/components/runtime/AdsConsentForm$3;->$SwitchMap$com$google$ads$consent$ConsentStatus:[I

    invoke-virtual {p1}, Lcom/google/ads/consent/ConsentStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    return-void

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm$2;->this$0:Lcom/google/appinventor/components/runtime/AdsConsentForm;

    const-string v0, "Personalized"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/AdsConsentForm;->ConsentFormClosed(Ljava/lang/String;Z)V

    .line 146
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm$2;->this$0:Lcom/google/appinventor/components/runtime/AdsConsentForm;

    const-string v0, "NonPersonalized"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/AdsConsentForm;->ConsentFormClosed(Ljava/lang/String;Z)V

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm$2;->this$0:Lcom/google/appinventor/components/runtime/AdsConsentForm;

    const-string v0, "UnKnown"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/google/appinventor/components/runtime/AdsConsentForm;->ConsentFormClosed(Ljava/lang/String;Z)V

    return-void
.end method

.method public onConsentFormError(Ljava/lang/String;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm$2;->this$0:Lcom/google/appinventor/components/runtime/AdsConsentForm;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/AdsConsentForm;->ConsentFormError(Ljava/lang/String;)V

    return-void
.end method

.method public onConsentFormLoaded()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm$2;->this$0:Lcom/google/appinventor/components/runtime/AdsConsentForm;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdsConsentForm;->ConsentFormLoaded()V

    return-void
.end method

.method public onConsentFormOpened()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm$2;->this$0:Lcom/google/appinventor/components/runtime/AdsConsentForm;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdsConsentForm;->ConsentFormOpened()V

    return-void
.end method
