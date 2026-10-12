.class public Lcom/google/appinventor/components/runtime/NiotronPollfish;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/pollfish/callback/PollfishSurveyCompletedListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Pollfish ad component for surveys provided by pollfish. <br> SDK Version: 6.4.0"
    iconName = "images/niotronPollfish.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "pollfish-universal.aar, pollfish-universal.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, com.google.android.gms.permission.AD_ID"
.end annotation


# instance fields
.field private final TEST_API_KEY:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private apiKey:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private offerWallEnabled:Z

.field private params:Lcom/pollfish/builder/Params;

.field private position:Lcom/pollfish/builder/Position;

.field private rewardedEnabled:Z

.field private testMode:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 49
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 34
    sget-object v0, Lcom/pollfish/builder/Position;->BOTTOM_RIGHT:Lcom/pollfish/builder/Position;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->position:Lcom/pollfish/builder/Position;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->testMode:Z

    .line 39
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->offerWallEnabled:Z

    .line 40
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->rewardedEnabled:Z

    .line 41
    const-string v1, "f60355d8-94c2-4b21-a6ac-3d4479b867fc"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->TEST_API_KEY:Ljava/lang/String;

    .line 51
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->context:Landroid/content/Context;

    .line 52
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->activity:Landroid/app/Activity;

    .line 54
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of p1, p1, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz p1, :cond_0

    .line 55
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->apiKey:Ljava/lang/String;

    .line 56
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->testMode:Z

    return-void

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronPollfish;->getAPiKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->apiKey:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 59
    const-string v0, "pollfish-default-api-key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 60
    :cond_1
    const-string p1, "Pollfish API Key not found"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronPollfish;->ErrorOccurred(Ljava/lang/String;)V

    .line 61
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "Put your Pollfish API Key in the Settings Menu"

    const-string v1, "Pollfish API Key Error"

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method private getAPiKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 231
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->testMode:Z

    if-eqz v0, :cond_0

    .line 232
    const-string p1, "f60355d8-94c2-4b21-a6ac-3d4479b867fc"

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 235
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 237
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "pollfishapikey"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 240
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NiotronPollfish;->ErrorOccurred(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public Closed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when pollfish closed"
    .end annotation

    const/4 v0, 0x0

    .line 196
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Closed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when Something Goes wrong"
    .end annotation

    .line 191
    const-string v0, "ErrorOccurred"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Hide()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the survey"
    .end annotation

    .line 186
    invoke-static {}, Lcom/pollfish/Pollfish;->hide()V

    return-void
.end method

.method public IconPosition(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/PollfishIconPosition;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set Pollfish icon position"
    .end annotation

    .line 101
    sget-object v0, Lcom/google/appinventor/components/common/PollfishIconPosition;->BottomLeft:Lcom/google/appinventor/components/common/PollfishIconPosition;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/PollfishIconPosition;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 102
    sget-object p1, Lcom/pollfish/builder/Position;->BOTTOM_LEFT:Lcom/pollfish/builder/Position;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->position:Lcom/pollfish/builder/Position;

    return-void

    .line 103
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/common/PollfishIconPosition;->BottomRight:Lcom/google/appinventor/components/common/PollfishIconPosition;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/PollfishIconPosition;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 104
    sget-object p1, Lcom/pollfish/builder/Position;->BOTTOM_RIGHT:Lcom/pollfish/builder/Position;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->position:Lcom/pollfish/builder/Position;

    return-void

    .line 105
    :cond_1
    sget-object v0, Lcom/google/appinventor/components/common/PollfishIconPosition;->TopLeft:Lcom/google/appinventor/components/common/PollfishIconPosition;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/PollfishIconPosition;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 106
    sget-object p1, Lcom/pollfish/builder/Position;->TOP_LEFT:Lcom/pollfish/builder/Position;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->position:Lcom/pollfish/builder/Position;

    return-void

    .line 107
    :cond_2
    sget-object v0, Lcom/google/appinventor/components/common/PollfishIconPosition;->TopRight:Lcom/google/appinventor/components/common/PollfishIconPosition;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/PollfishIconPosition;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 108
    sget-object p1, Lcom/pollfish/builder/Position;->TOP_RIGHT:Lcom/pollfish/builder/Position;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->position:Lcom/pollfish/builder/Position;

    return-void

    .line 109
    :cond_3
    sget-object v0, Lcom/google/appinventor/components/common/PollfishIconPosition;->MiddleLeft:Lcom/google/appinventor/components/common/PollfishIconPosition;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/PollfishIconPosition;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 110
    sget-object p1, Lcom/pollfish/builder/Position;->MIDDLE_LEFT:Lcom/pollfish/builder/Position;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->position:Lcom/pollfish/builder/Position;

    return-void

    .line 111
    :cond_4
    sget-object v0, Lcom/google/appinventor/components/common/PollfishIconPosition;->MiddleRight:Lcom/google/appinventor/components/common/PollfishIconPosition;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/PollfishIconPosition;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 112
    sget-object p1, Lcom/pollfish/builder/Position;->MIDDLE_RIGHT:Lcom/pollfish/builder/Position;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->position:Lcom/pollfish/builder/Position;

    return-void

    .line 114
    :cond_5
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "Not valid icon position in pollfish"

    const-string v1, "Invalid Input"

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public InitializePollfish()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 121
    new-instance v0, Lcom/pollfish/builder/Params$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->apiKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pollfish/builder/Params$Builder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->testMode:Z

    xor-int/lit8 v1, v1, 0x1

    .line 122
    invoke-virtual {v0, v1}, Lcom/pollfish/builder/Params$Builder;->releaseMode(Z)Lcom/pollfish/builder/Params$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->rewardedEnabled:Z

    .line 123
    invoke-virtual {v0, v1}, Lcom/pollfish/builder/Params$Builder;->rewardMode(Z)Lcom/pollfish/builder/Params$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->offerWallEnabled:Z

    .line 124
    invoke-virtual {v0, v1}, Lcom/pollfish/builder/Params$Builder;->offerwallMode(Z)Lcom/pollfish/builder/Params$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->position:Lcom/pollfish/builder/Position;

    .line 125
    invoke-virtual {v0, v1}, Lcom/pollfish/builder/Params$Builder;->indicatorPosition(Lcom/pollfish/builder/Position;)Lcom/pollfish/builder/Params$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronPollfish$7;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronPollfish$7;-><init>(Lcom/google/appinventor/components/runtime/NiotronPollfish;)V

    .line 126
    invoke-virtual {v0, v1}, Lcom/pollfish/builder/Params$Builder;->pollfishSurveyReceivedListener(Lcom/pollfish/callback/PollfishSurveyReceivedListener;)Lcom/pollfish/builder/Params$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronPollfish$6;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronPollfish$6;-><init>(Lcom/google/appinventor/components/runtime/NiotronPollfish;)V

    .line 138
    invoke-virtual {v0, v1}, Lcom/pollfish/builder/Params$Builder;->pollfishSurveyCompletedListener(Lcom/pollfish/callback/PollfishSurveyCompletedListener;)Lcom/pollfish/builder/Params$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronPollfish$5;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronPollfish$5;-><init>(Lcom/google/appinventor/components/runtime/NiotronPollfish;)V

    .line 145
    invoke-virtual {v0, v1}, Lcom/pollfish/builder/Params$Builder;->pollfishClosedListener(Lcom/pollfish/callback/PollfishClosedListener;)Lcom/pollfish/builder/Params$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronPollfish$4;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronPollfish$4;-><init>(Lcom/google/appinventor/components/runtime/NiotronPollfish;)V

    .line 151
    invoke-virtual {v0, v1}, Lcom/pollfish/builder/Params$Builder;->pollfishOpenedListener(Lcom/pollfish/callback/PollfishOpenedListener;)Lcom/pollfish/builder/Params$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronPollfish$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronPollfish$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronPollfish;)V

    .line 157
    invoke-virtual {v0, v1}, Lcom/pollfish/builder/Params$Builder;->pollfishSurveyNotAvailableListener(Lcom/pollfish/callback/PollfishSurveyNotAvailableListener;)Lcom/pollfish/builder/Params$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronPollfish$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronPollfish$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronPollfish;)V

    .line 163
    invoke-virtual {v0, v1}, Lcom/pollfish/builder/Params$Builder;->pollfishUserNotEligibleListener(Lcom/pollfish/callback/PollfishUserNotEligibleListener;)Lcom/pollfish/builder/Params$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronPollfish$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronPollfish$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronPollfish;)V

    .line 169
    invoke-virtual {v0, v1}, Lcom/pollfish/builder/Params$Builder;->pollfishUserRejectedSurveyListener(Lcom/pollfish/callback/PollfishUserRejectedSurveyListener;)Lcom/pollfish/builder/Params$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/pollfish/builder/Params$Builder;->build()Lcom/pollfish/builder/Params;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->params:Lcom/pollfish/builder/Params;

    .line 176
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/pollfish/Pollfish;->initWith(Landroid/app/Activity;Lcom/pollfish/builder/Params;)V

    return-void
.end method

.method public OfferWallMode(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set to true if \"offerwall mode\" needed, set to false for \"single survey\""
    .end annotation

    .line 80
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->offerWallEnabled:Z

    return-void
.end method

.method public OfferWallMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "returns true if \"offerwall mode\", false for \"single survey\""
    .end annotation

    .line 85
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->offerWallEnabled:Z

    return v0
.end method

.method public Opened()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when pollfish opened"
    .end annotation

    const/4 v0, 0x0

    .line 206
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Opened"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RewardedMode(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set rewarded mode"
    .end annotation

    .line 69
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->rewardedEnabled:Z

    return-void
.end method

.method public RewardedMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 74
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->rewardedEnabled:Z

    return v0
.end method

.method public Show()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the survey"
    .end annotation

    .line 181
    invoke-static {}, Lcom/pollfish/Pollfish;->show()V

    return-void
.end method

.method public SurveyCompleted(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when pollfish survey completed"
    .end annotation

    .line 201
    const-string v0, "SurveyCompleted"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SurveyNotAvailable()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when pollfish survey not available"
    .end annotation

    const/4 v0, 0x0

    .line 216
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurveyNotAvailable"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SurveyReceived(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when pollfish survey received"
    .end annotation

    .line 211
    const-string v0, "SurveyReceived"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TestMode(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the test mode"
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->testMode:Z

    return-void
.end method

.method public TestMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 96
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish;->testMode:Z

    return v0
.end method

.method public UserNotEligible()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when user not eligible"
    .end annotation

    const/4 v0, 0x0

    .line 221
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UserNotEligible"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UserRejectedSurvey()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when user rejected pollfish survey"
    .end annotation

    const/4 v0, 0x0

    .line 226
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UserRejectedSurvey"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public onPollfishSurveyCompleted(Lcom/pollfish/callback/SurveyInfo;)V
    .locals 0
    .param p1    # Lcom/pollfish/callback/SurveyInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method
