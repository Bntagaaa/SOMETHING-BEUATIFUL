.class public final Lcom/google/appinventor/components/runtime/AppLovinCore;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Core Component Required for AppLovin MAX Components. Only Required in Screen1"
    iconName = "images/appLovinCore.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "applovin-sdk.aar, applovin-sdk.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-appset.aar, play-services-appset.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, annotation.jar"
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private privacyPolicyUrl:Ljava/lang/String;

.field private sdkKey:Ljava/lang/String;

.field private termsAndPrivacyPolicyFlow:Z

.field private termsOfServiceUrl:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 35
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->sdkKey:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->userId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->termsAndPrivacyPolicyFlow:Z

    .line 31
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->privacyPolicyUrl:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->termsOfServiceUrl:Ljava/lang/String;

    .line 36
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->context:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public DoNotSell(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->PRIVACY:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set whether the user has opted out of the sale of their personal information"
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->context:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setDoNotSell(ZLandroid/content/Context;)V

    return-void
.end method

.method public DoNotSell()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get whether the user has opted out of the sale of their personal information"
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->isDoNotSell(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public InitializeSDK()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initialize the AppLovin SDK. Required to use AppLovin MAX Components."
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->sdkKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->context:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration;->builder(Ljava/lang/String;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration$Builder;

    move-result-object v0

    const-string v1, "max"

    .line 108
    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration$Builder;->setMediationProvider(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration$Builder;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration$Builder;->build()Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->context:Landroid/app/Activity;

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdk;->getSettings()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->userId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/applovin/sdk/AppLovinSdkSettings;->setUserIdentifier(Ljava/lang/String;)V

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->privacyPolicyUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdkSettings;->getTermsAndPrivacyPolicyFlowSettings()Lcom/applovin/sdk/AppLovinTermsAndPrivacyPolicyFlowSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->privacyPolicyUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/applovin/sdk/AppLovinTermsAndPrivacyPolicyFlowSettings;->setPrivacyPolicyUri(Landroid/net/Uri;)V

    .line 120
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->termsOfServiceUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 121
    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdkSettings;->getTermsAndPrivacyPolicyFlowSettings()Lcom/applovin/sdk/AppLovinTermsAndPrivacyPolicyFlowSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->termsOfServiceUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/applovin/sdk/AppLovinTermsAndPrivacyPolicyFlowSettings;->setTermsOfServiceUri(Landroid/net/Uri;)V

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->context:Landroid/app/Activity;

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/AppLovinCore$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/AppLovinCore$1;-><init>(Lcom/google/appinventor/components/runtime/AppLovinCore;)V

    invoke-virtual {v1, v0, v2}, Lcom/applovin/sdk/AppLovinSdk;->initialize(Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration;Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V

    return-void
.end method

.method public PrivacyPolicyUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the Privacy Policy URL for AppLovin MAX"
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->privacyPolicyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public PrivacyPolicyUrl(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->PRIVACY:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the Privacy Policy URL for AppLovin MAX. Optional."
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->privacyPolicyUrl:Ljava/lang/String;

    return-void
.end method

.method public SDKInitialized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when the AppLovin SDK is initialized"
    .end annotation

    const/4 v0, 0x0

    .line 134
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SDKInitialized"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SDKKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the SDK Key for AppLovin MAX"
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->sdkKey:Ljava/lang/String;

    return-object v0
.end method

.method public SDKKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the SDK Key for AppLovin MAX"
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->sdkKey:Ljava/lang/String;

    return-void
.end method

.method public TermsAndPrivacyPolicyFlow(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->PRIVACY:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Enable or Disable TermsAndPrivacyPolicy Flow"
    .end annotation

    .line 64
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->termsAndPrivacyPolicyFlow:Z

    return-void
.end method

.method public TermsAndPrivacyPolicyFlow()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the TermsAndPrivacyPolicy Flow boolean"
    .end annotation

    .line 69
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->termsAndPrivacyPolicyFlow:Z

    return v0
.end method

.method public UserConsent(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->PRIVACY:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set whether the application has user consent "
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->context:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setHasUserConsent(ZLandroid/content/Context;)V

    return-void
.end method

.method public UserConsent()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get whether the application has user consent"
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->hasUserConsent(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public UserId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the User ID for AppLovin MAX"
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public UserId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->ADVANCED:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the User ID for AppLovin MAX to track individual users. Optional."
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->userId:Ljava/lang/String;

    return-void
.end method
