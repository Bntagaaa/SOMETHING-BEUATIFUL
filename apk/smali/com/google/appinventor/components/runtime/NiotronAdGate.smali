.class public final Lcom/google/appinventor/components/runtime/NiotronAdGate;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A new component "
    iconName = "images/niotronAdGate.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "adgatemediasdk.jar, adgatemediasdk.aar, play-services-iid.aar, play-services-iid.jar,play-services-ads.aar, play-services-ads.jar, gson.jar, okio-jvm.jar, okhttp.jar, jsr305.jar, connectionclass.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, android.permission.WRITE_EXTERNAL_STORAGE, android.permission.READ_EXTERNAL_STORAGE"
.end annotation


# instance fields
.field adGateMedia:Lcom/adgatemedia/sdk/classes/AdGateMedia;

.field context:Landroid/content/Context;

.field subids:Ljava/util/HashMap;

.field userId:Ljava/lang/String;

.field wallCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 47
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 48
    invoke-static {}, Lcom/adgatemedia/sdk/classes/AdGateMedia;->getInstance()Lcom/adgatemedia/sdk/classes/AdGateMedia;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdGate;->adGateMedia:Lcom/adgatemedia/sdk/classes/AdGateMedia;

    .line 49
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdGate;->context:Landroid/content/Context;

    .line 50
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdGate;->subids:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public AdClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad closed"
    .end annotation

    const/4 v0, 0x0

    .line 146
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClosed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoadFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad load failed"
    .end annotation

    .line 141
    const-string v0, "AdLoadFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad loaded successfully"
    .end annotation

    const/4 v0, 0x0

    .line 136
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ErrorGettingConversionReport(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Error getting conversion report"
    .end annotation

    .line 156
    const-string v0, "ErrorGettingConversionReport"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetConversion()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the conversion"
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdGate;->adGateMedia:Lcom/adgatemedia/sdk/classes/AdGateMedia;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAdGate;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAdGate;->wallCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronAdGate;->userId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronAdGate;->subids:Ljava/util/HashMap;

    new-instance v5, Lcom/google/appinventor/components/runtime/NiotronAdGate$4;

    invoke-direct {v5, p0}, Lcom/google/appinventor/components/runtime/NiotronAdGate$4;-><init>(Lcom/google/appinventor/components/runtime/NiotronAdGate;)V

    invoke-virtual/range {v0 .. v5}, Lcom/adgatemedia/sdk/classes/AdGateMedia;->getConversions(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/adgatemedia/sdk/network/OnConversionsReceived;)V

    return-void
.end method

.method public GotConversionReport(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Got conversion report"
    .end annotation

    .line 151
    const-string v0, "GotConversionReport"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LoadAd()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads the offerwall ad"
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdGate;->adGateMedia:Lcom/adgatemedia/sdk/classes/AdGateMedia;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAdGate;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAdGate;->wallCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronAdGate;->userId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronAdGate;->subids:Ljava/util/HashMap;

    new-instance v5, Lcom/google/appinventor/components/runtime/NiotronAdGate$1;

    invoke-direct {v5, p0}, Lcom/google/appinventor/components/runtime/NiotronAdGate$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronAdGate;)V

    new-instance v6, Lcom/google/appinventor/components/runtime/NiotronAdGate$2;

    invoke-direct {v6, p0}, Lcom/google/appinventor/components/runtime/NiotronAdGate$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronAdGate;)V

    invoke-virtual/range {v0 .. v6}, Lcom/adgatemedia/sdk/classes/AdGateMedia;->loadOfferWall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/adgatemedia/sdk/network/OnOfferWallLoadSuccess;Lcom/adgatemedia/sdk/network/OnOfferWallLoadFailed;)V

    return-void
.end method

.method public ShowAd()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows the offerwall ad"
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdGate;->adGateMedia:Lcom/adgatemedia/sdk/classes/AdGateMedia;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAdGate;->context:Landroid/content/Context;

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronAdGate$3;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/NiotronAdGate$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronAdGate;)V

    invoke-virtual {v0, v1, v2}, Lcom/adgatemedia/sdk/classes/AdGateMedia;->showOfferWall(Landroid/content/Context;Lcom/adgatemedia/sdk/classes/AdGateMedia$OnOfferWallClosed;)V

    return-void
.end method

.method public SubId(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set sub ids"
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdGate;->subids:Ljava/util/HashMap;

    return-void
.end method

.method public UserId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set user id"
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdGate;->userId:Ljava/lang/String;

    return-void
.end method

.method public WallCode(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the wallcode"
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdGate;->wallCode:Ljava/lang/String;

    return-void
.end method
