.class public final Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Adjoe is a mobile ad tech company that helps app developers boost revenue through smart ad placements. Their platform offers easy integration, rewarded ads, and detailed analytics, ensuring effective user engagement and seamless app experiences."
    iconName = "images/adjoeAds.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "adjoe-sdk-android.aar, adjoe-sdk-android.jar, adjoe-protection-android-standard.aar, adjoe-protection-android-standard.jar, work-runtime.aar, work-runtime.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-appset.aar, play-services-appset.jar, play-services-auth.aar, play-services-auth.jar, play-services-auth-api-phone.aar, play-services-auth-api-phone.jar, integrity.aar, integrity.jar, play-services-auth-base.aar, play-services-auth-base.jar, play-services-fido.aar, play-services-fido.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, room-runtime.aar, room-runtime.jar, sqlite-framework.aar, sqlite-framework.jar, sqlite.aar, sqlite.jar, annotation.jar, constraintlayout-solver.jar"
.end annotation


# instance fields
.field private adjoeGender:Lio/adjoe/sdk/AdjoeGender;

.field private applicationProcessName:Ljava/lang/String;

.field context:Landroid/content/Context;

.field private dob:Ljava/util/Date;

.field private placement:Ljava/lang/String;

.field private sdkHash:Ljava/lang/String;

.field private uaChannel:Ljava/lang/String;

.field private uaNetwork:Ljava/lang/String;

.field private uaSubPublisherCleartext:Ljava/lang/String;

.field private uaSubPublisherEncrypted:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 55
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 38
    const-string v0, "default"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->uaNetwork:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->uaChannel:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->uaSubPublisherCleartext:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->uaSubPublisherEncrypted:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->placement:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->userId:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->applicationProcessName:Ljava/lang/String;

    .line 45
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->dob:Ljava/util/Date;

    .line 46
    sget-object v1, Lio/adjoe/sdk/AdjoeGender;->UNKNOWN:Lio/adjoe/sdk/AdjoeGender;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->adjoeGender:Lio/adjoe/sdk/AdjoeGender;

    .line 47
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->sdkHash:Ljava/lang/String;

    .line 56
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public AdjoeError(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Some error occurred in adjoe"
    .end annotation

    .line 315
    const-string v0, "AdjoeError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdjoeNotInitializedException()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "an error occurred in Adjoe SDK"
    .end annotation

    const/4 v0, 0x0

    .line 305
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdjoeNotInitializedException"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CanShowOfferwall()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true or false depending if offerwall can be shown or not"
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/adjoe/sdk/Adjoe;->canShowOfferwall(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public DOB(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set date of birth of the user for adjoe ads in \"dd/MM/yyyy\" format"
    .end annotation

    .line 98
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 101
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->dob:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public DoPayout()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initiate a payout to a user"
    .end annotation

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->context:Landroid/content/Context;

    new-instance v1, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$3;-><init>(Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;)V

    invoke-static {v0, v1}, Lio/adjoe/sdk/Adjoe;->doPayout(Landroid/content/Context;Lio/adjoe/sdk/AdjoePayoutListener;)V
    :try_end_0
    .catch Lio/adjoe/sdk/AdjoeNotInitializedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 211
    :catch_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->AdjoeNotInitializedException()V

    return-void
.end method

.method public Gender(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorArgs = {
            "Male",
            "Female",
            "Unknown"
        }
        editorType = "choices"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set adjoe users gender for ads, \"Male\", \"Female\", \"Unknown\""
    .end annotation

    .line 116
    const-string v0, "Male"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    sget-object p1, Lio/adjoe/sdk/AdjoeGender;->MALE:Lio/adjoe/sdk/AdjoeGender;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->adjoeGender:Lio/adjoe/sdk/AdjoeGender;

    return-void

    .line 118
    :cond_0
    const-string v0, "Female"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    sget-object p1, Lio/adjoe/sdk/AdjoeGender;->FEMALE:Lio/adjoe/sdk/AdjoeGender;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->adjoeGender:Lio/adjoe/sdk/AdjoeGender;

    return-void

    .line 120
    :cond_1
    const-string v0, "Unknown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 121
    sget-object p1, Lio/adjoe/sdk/AdjoeGender;->UNKNOWN:Lio/adjoe/sdk/AdjoeGender;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->adjoeGender:Lio/adjoe/sdk/AdjoeGender;

    :cond_2
    return-void
.end method

.method public InitialisationError(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when SDK is initialization tripped on a error"
    .end annotation

    .line 290
    const-string v0, "InitialisationError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InitialisationFinished()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when SDK is initialized"
    .end annotation

    const/4 v0, 0x0

    .line 285
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InitialisationFinished"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InitializeSDK()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initialize the adjoe ads SDK"
    .end annotation

    .line 128
    new-instance v0, Lio/adjoe/sdk/AdjoeParams$Builder;

    invoke-direct {v0}, Lio/adjoe/sdk/AdjoeParams$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->uaNetwork:Ljava/lang/String;

    .line 129
    invoke-virtual {v0, v1}, Lio/adjoe/sdk/AdjoeParams$Builder;->setUaNetwork(Ljava/lang/String;)Lio/adjoe/sdk/AdjoeParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->uaChannel:Ljava/lang/String;

    .line 130
    invoke-virtual {v0, v1}, Lio/adjoe/sdk/AdjoeParams$Builder;->setUaChannel(Ljava/lang/String;)Lio/adjoe/sdk/AdjoeParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->uaSubPublisherCleartext:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v1}, Lio/adjoe/sdk/AdjoeParams$Builder;->setUaSubPublisherCleartext(Ljava/lang/String;)Lio/adjoe/sdk/AdjoeParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->uaSubPublisherEncrypted:Ljava/lang/String;

    .line 132
    invoke-virtual {v0, v1}, Lio/adjoe/sdk/AdjoeParams$Builder;->setUaSubPublisherEncrypted(Ljava/lang/String;)Lio/adjoe/sdk/AdjoeParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->placement:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, v1}, Lio/adjoe/sdk/AdjoeParams$Builder;->setPlacement(Ljava/lang/String;)Lio/adjoe/sdk/AdjoeParams$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lio/adjoe/sdk/AdjoeParams$Builder;->build()Lio/adjoe/sdk/AdjoeParams;

    move-result-object v0

    .line 136
    new-instance v1, Lio/adjoe/sdk/AdjoeUserProfile;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->adjoeGender:Lio/adjoe/sdk/AdjoeGender;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->dob:Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Lio/adjoe/sdk/AdjoeUserProfile;-><init>(Lio/adjoe/sdk/AdjoeGender;Ljava/util/Date;)V

    .line 138
    new-instance v2, Lio/adjoe/sdk/Adjoe$Options;

    invoke-direct {v2}, Lio/adjoe/sdk/Adjoe$Options;-><init>()V

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->userId:Ljava/lang/String;

    .line 139
    invoke-virtual {v2, v3}, Lio/adjoe/sdk/Adjoe$Options;->setUserId(Ljava/lang/String;)Lio/adjoe/sdk/Adjoe$Options;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->context:Landroid/content/Context;

    .line 140
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/adjoe/sdk/Adjoe$Options;->setApplicationProcessName(Ljava/lang/String;)Lio/adjoe/sdk/Adjoe$Options;

    move-result-object v2

    .line 141
    invoke-virtual {v2, v0}, Lio/adjoe/sdk/Adjoe$Options;->setParams(Lio/adjoe/sdk/AdjoeParams;)Lio/adjoe/sdk/Adjoe$Options;

    move-result-object v0

    .line 142
    invoke-virtual {v0, v1}, Lio/adjoe/sdk/Adjoe$Options;->setUserProfile(Lio/adjoe/sdk/AdjoeUserProfile;)Lio/adjoe/sdk/Adjoe$Options;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->sdkHash:Ljava/lang/String;

    new-instance v3, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$1;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$1;-><init>(Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;)V

    invoke-static {v1, v2, v0, v3}, Lio/adjoe/sdk/Adjoe;->init(Landroid/content/Context;Ljava/lang/String;Lio/adjoe/sdk/Adjoe$Options;Lio/adjoe/sdk/AdjoeInitialisationListener;)V

    .line 164
    new-instance v0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$2;-><init>(Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;)V

    invoke-static {v0}, Lio/adjoe/sdk/Adjoe;->setOfferwallListener(Lio/adjoe/sdk/AdjoeOfferwallListener;)V

    return-void
.end method

.method public OfferwallClosed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggers when offerwall closed"
    .end annotation

    .line 325
    const-string v0, "OfferwallClosed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OfferwallOpened(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggers when offerwall opened"
    .end annotation

    .line 320
    const-string v0, "OfferwallOpened"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OpenPlaytime()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Opens the playtime offerwall"
    .end annotation

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/adjoe/sdk/Adjoe;->getOfferwallIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lio/adjoe/sdk/AdjoeNotInitializedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lio/adjoe/sdk/AdjoeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 261
    invoke-virtual {v0}, Lio/adjoe/sdk/AdjoeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->AdjoeError(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :catch_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->AdjoeNotInitializedException()V

    :goto_0
    return-void
.end method

.method public PayoutError(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "an error occurred while paying out the rewards"
    .end annotation

    .line 300
    const-string v0, "PayoutError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PayoutExecuted(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "rewards is the amount of `rewards` that have been successfully withdrawn from the balance"
    .end annotation

    .line 295
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "PayoutExecuted"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Placement(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The placement of Playtime inside your app, e.g. \"Main Screen\", \"Shop\", \"Interstitial\", \"More Diamonds Screen\", etc."
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->placement:Ljava/lang/String;

    return-void
.end method

.method public RequestRewards()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "You can get information about the rewards that the user has collected as well as about how many rewards are available for payout and how many the user has already spent."
    .end annotation

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->context:Landroid/content/Context;

    new-instance v1, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$4;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$4;-><init>(Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;)V

    invoke-static {v0, v1}, Lio/adjoe/sdk/Adjoe;->requestRewards(Landroid/content/Context;Lio/adjoe/sdk/AdjoeRewardListener;)V
    :try_end_0
    .catch Lio/adjoe/sdk/AdjoeNotInitializedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 247
    :catch_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->AdjoeNotInitializedException()V

    return-void
.end method

.method public SDKHash(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set adjoe parameter for sdk hash for ads"
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->sdkHash:Ljava/lang/String;

    return-void
.end method

.method public ShowTeaserButton()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows the teaser button for adjoe offerwall"
    .end annotation

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/adjoe/sdk/Adjoe;->canShowOfferwall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->context:Landroid/content/Context;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/adjoe/sdk/Adjoe;->sendUserEvent(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catch Lio/adjoe/sdk/AdjoeNotInitializedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 279
    :catch_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->AdjoeNotInitializedException()V

    :cond_0
    return-void
.end method

.method public SubPublisherEncrypted(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The encrypted package name or app id of the sub-publisher app in the network where the user was acquired."
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->uaSubPublisherEncrypted:Ljava/lang/String;

    return-void
.end method

.method public UaChannel(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The channel of the campaign in the network where the user was acquired, e.g. incent, video"
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->uaChannel:Ljava/lang/String;

    return-void
.end method

.method public UaNetwork(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The network which the user was acquired from, e.g. adwords, facebook, organic"
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->uaNetwork:Ljava/lang/String;

    return-void
.end method

.method public UaSubPublisherCleartext(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The cleartext package name of app id of the sub publisher app in the network where the user was acquired, e.g. com.domain.appName"
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->uaSubPublisherCleartext:Ljava/lang/String;

    return-void
.end method

.method public UserId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set adjoe option of application user id"
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->userId:Ljava/lang/String;

    return-void
.end method

.method public UserReceivesReward(III)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "successfully received the rewards"
    .end annotation

    .line 310
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "UserReceivesReward"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
