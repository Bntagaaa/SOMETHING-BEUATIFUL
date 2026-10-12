.class public final Lcom/google/appinventor/components/runtime/NiotronTapjoy;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJPlacementListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Tapjoy component for monetization"
    iconName = "images/niotronTapjoy.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "tapjoy.jar, tapjoy.aar, play-services-ads-identifier.aar, play-services-ads-identifier.jar,        play-services-basement.aar, play-services-basement.jar"
.end annotation


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 33
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 34
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronTapjoy;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/NiotronTapjoy;)Lcom/google/appinventor/components/runtime/ComponentContainer;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronTapjoy;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-object p0
.end method


# virtual methods
.method public Click(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 116
    const-string v0, "Click"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ConnectFail()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 86
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ConnectFail"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ConnectSDK(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 39
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 40
    const-string v1, "TJC_OPTION_ENABLE_LOGGING"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronTapjoy;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronTapjoy$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/NiotronTapjoy$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronTapjoy;)V

    invoke-static {v1, p1, v0, v2}, Lcom/tapjoy/Tapjoy;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    return-void
.end method

.method public ConnectSuccess()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 81
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ConnectSuccess"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ContentDismiss(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 111
    const-string v0, "ContentDismiss"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ContentReady(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 101
    const-string v0, "ContentReady"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ContentShow(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 106
    const-string v0, "ContentShow"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CurrencyResponseFailure(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 121
    const-string v0, "CurrencyResponseFailure"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetCurrency()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 69
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronTapjoy$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronTapjoy$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronTapjoy;)V

    invoke-static {v0}, Lcom/tapjoy/Tapjoy;->getCurrencyBalance(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V

    return-void
.end method

.method public GotCurrencyBalance(Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 126
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "GotCurrencyBalance"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LoadPlacement(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 57
    new-instance v0, Lcom/tapjoy/TJPlacement;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronTapjoy;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/tapjoy/TJPlacement;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)V

    .line 58
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->requestContent()V

    return-void
.end method

.method public RequestFailure(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 96
    const-string v0, "RequestFailure"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RequestSuccess(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 91
    const-string v0, "RequestSuccess"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ShowPlacement(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 63
    check-cast p1, Lcom/tapjoy/TJPlacement;

    .line 64
    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->showContent()V

    return-void
.end method

.method public onClick(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronTapjoy;->Click(Ljava/lang/Object;)V

    return-void
.end method

.method public onContentDismiss(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    .line 141
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronTapjoy;->ContentDismiss(Ljava/lang/Object;)V

    return-void
.end method

.method public onContentReady(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronTapjoy;->ContentReady(Ljava/lang/Object;)V

    return-void
.end method

.method public onContentShow(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronTapjoy;->ContentShow(Ljava/lang/Object;)V

    return-void
.end method

.method public onPurchaseRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V
    .locals 0

    .line 132
    iget-object p2, p2, Lcom/tapjoy/TJError;->message:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronTapjoy;->RequestFailure(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestSuccess(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronTapjoy;->RequestSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public onRewardRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
