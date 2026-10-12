.class public final Lcom/google/appinventor/components/runtime/AdsConsentForm;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0xe
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "The Google-rendered consent form is a full-screen configurable form that displays over your app content. You can configure the form to present the user with combinations of the following options:"
    iconName = "images/adsConsentForm.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesAssets;
    fileNames = "consentform.html"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "consent-library-1.0.8.aar, consent-library-1.0.8.jar, gson.jar"
.end annotation


# instance fields
.field private adFreeOption:Z

.field private consentForm:Lcom/google/ads/consent/ConsentForm;

.field private context:Landroid/content/Context;

.field protected nonPersonalizedAdsOption:Z

.field private personalizedAdsOption:Z

.field private privacyUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 47
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm;->privacyUrl:Ljava/lang/String;

    .line 48
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public AdFreeOption(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->PRIVACY:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = ""
    .end annotation

    .line 105
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm;->adFreeOption:Z

    return-void
.end method

.method public AdFreeOption()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 110
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm;->adFreeOption:Z

    return v0
.end method

.method public ConsentFormClosed(Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Consent Form was Closed. Users Choice is returned"
    .end annotation

    const/4 p1, 0x0

    .line 189
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ConsentFormClosed"

    invoke-static {p0, p2, p1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ConsentFormError(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Some Error Occurred while creating form"
    .end annotation

    .line 194
    const-string v0, "ConsentFormError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ConsentFormLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Form loaded"
    .end annotation

    const/4 v0, 0x0

    .line 179
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ConsentFormLoaded"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ConsentFormOpened()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The form is opened and is displayed to the user"
    .end annotation

    const/4 v0, 0x0

    .line 184
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ConsentFormOpened"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Some Error Occurred"
    .end annotation

    .line 199
    const-string v0, "ErrorOccurred"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LoadConsentForm()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load the Consent Form before Showing"
    .end annotation

    .line 117
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm;->privacyUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    const-string v0, "Malformed URl"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AdsConsentForm;->ErrorOccurred(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 123
    new-instance v1, Lcom/google/ads/consent/ConsentForm$Builder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/ads/consent/ConsentForm$Builder;-><init>(Landroid/content/Context;Ljava/net/URL;)V

    .line 124
    new-instance v0, Lcom/google/appinventor/components/runtime/AdsConsentForm$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/AdsConsentForm$2;-><init>(Lcom/google/appinventor/components/runtime/AdsConsentForm;)V

    invoke-virtual {v1, v0}, Lcom/google/ads/consent/ConsentForm$Builder;->withListener(Lcom/google/ads/consent/ConsentFormListener;)Lcom/google/ads/consent/ConsentForm$Builder;

    .line 153
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm;->personalizedAdsOption:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v1}, Lcom/google/ads/consent/ConsentForm$Builder;->withPersonalizedAdsOption()Lcom/google/ads/consent/ConsentForm$Builder;

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm;->nonPersonalizedAdsOption:Z

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {v1}, Lcom/google/ads/consent/ConsentForm$Builder;->withNonPersonalizedAdsOption()Lcom/google/ads/consent/ConsentForm$Builder;

    .line 159
    :cond_1
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm;->adFreeOption:Z

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {v1}, Lcom/google/ads/consent/ConsentForm$Builder;->withAdFreeOption()Lcom/google/ads/consent/ConsentForm$Builder;

    .line 163
    :cond_2
    invoke-virtual {v1}, Lcom/google/ads/consent/ConsentForm$Builder;->build()Lcom/google/ads/consent/ConsentForm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm;->consentForm:Lcom/google/ads/consent/ConsentForm;

    .line 164
    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentForm;->load()V

    :cond_3
    return-void
.end method

.method public NonPersonalizedAdsOption(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->PRIVACY:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = ""
    .end annotation

    .line 94
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm;->nonPersonalizedAdsOption:Z

    return-void
.end method

.method public NonPersonalizedAdsOption()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 99
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm;->nonPersonalizedAdsOption:Z

    return v0
.end method

.method public PersonalizedAdsOption(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->PRIVACY:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = ""
    .end annotation

    .line 83
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm;->personalizedAdsOption:Z

    return-void
.end method

.method public PersonalizedAdsOption()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 88
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm;->personalizedAdsOption:Z

    return v0
.end method

.method public PrivacyPolicyUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm;->privacyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public PrivacyPolicyUrl(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "https://www.google.com"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->PRIVACY:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Privacy Url In the Form"
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm;->privacyUrl:Ljava/lang/String;

    return-void
.end method

.method public PublisherId(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "pub-0123456789012345"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Admob PublisherId"
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/consent/ConsentInformation;->getInstance(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v0

    .line 66
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 67
    new-instance v1, Lcom/google/appinventor/components/runtime/AdsConsentForm$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/AdsConsentForm$1;-><init>(Lcom/google/appinventor/components/runtime/AdsConsentForm;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/consent/ConsentInformation;->requestConsentInfoUpdate([Ljava/lang/String;Lcom/google/ads/consent/ConsentInfoUpdateListener;)V

    return-void
.end method

.method public ShowConsentForm()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the Consent Form after Loading"
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdsConsentForm;->consentForm:Lcom/google/ads/consent/ConsentForm;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentForm;->show()V

    return-void

    .line 173
    :cond_0
    const-string v0, "Load the Consent Form First"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AdsConsentForm;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method
