.class public final Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Admob App Open component for app monetization"
    iconName = "images/niotronAdmobAppOpen.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppOpenManager"

.field private static final TEST_AD_UNIT_ID:Ljava/lang/String; = "ca-app-pub-3940256099942544/9257395921"


# instance fields
.field private adUnitId:Ljava/lang/String;

.field private appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

.field private context:Landroid/content/Context;

.field private portrait:Z

.field private test:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 44
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->adUnitId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->portrait:Z

    .line 45
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->context:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;)Lcom/google/android/gms/ads/appopen/AppOpenAd;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;Lcom/google/android/gms/ads/appopen/AppOpenAd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    return-void
.end method

.method private getAdRequest()Lcom/google/android/gms/ads/AdRequest;
    .locals 1

    .line 171
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 164
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdDismissedFullScreenContent()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 154
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdDismissedFullScreenContent"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToLoad(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 139
    const-string v0, "AdFailedToLoad"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToShowFullScreenContent(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 144
    const-string v0, "AdFailedToShowFullScreenContent"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdImpression()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 159
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdImpression"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 134
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdShowedFullScreenContent()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 149
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdShowedFullScreenContent"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdUnitId(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 51
    const-string v0, ""

    if-eq p1, v0, :cond_0

    .line 52
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->adUnitId:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->test:Z

    return-void
.end method

.method public LoadAd()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->getAdRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->context:Landroid/content/Context;

    .line 77
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->test:Z

    if-eqz v2, :cond_0

    const-string v2, "ca-app-pub-3940256099942544/9257395921"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->adUnitId:Ljava/lang/String;

    .line 79
    :goto_0
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->portrait:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    new-instance v4, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen$1;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;)V

    .line 76
    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;ILcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V

    return-void
.end method

.method public Orientation(I)V
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/AdmobAppOpenOrientation;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 67
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->portrait:Z

    return-void

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->portrait:Z

    :cond_1
    return-void
.end method

.method public ShowAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->show(Landroid/app/Activity;)V

    return-void
.end method

.method public TestMode(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 61
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->test:Z

    return-void
.end method
