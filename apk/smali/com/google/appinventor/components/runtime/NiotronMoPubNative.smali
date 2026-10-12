.class public final Lcom/google/appinventor/components/runtime/NiotronMoPubNative;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Mopub native ad component to show native ads"
    iconName = "images/niotronMoPubNative.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "mopub-sdk-native-static.jar, mopub-sdk-native-static.aar, mopub-sdk-native-video.jar, mopub-sdk-native-video.aar, mopub-sdk-native-template.aar, mopub-sdk-native-template.jar"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private moPubNative:Lcom/mopub/nativeads/MoPubNative;

.field private view:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 43
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMoPubNative;->view:Landroid/widget/LinearLayout;

    .line 44
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMoPubNative;->context:Landroid/content/Context;

    .line 45
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/16 p1, 0x12c

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMoPubNative;->Height(I)V

    const/4 p1, -0x2

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMoPubNative;->Width(I)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/NiotronMoPubNative;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronMoPubNative;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/NiotronMoPubNative;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronMoPubNative;->view:Landroid/widget/LinearLayout;

    return-object p0
.end method


# virtual methods
.method public AdFailedToLoad(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad failed to load"
    .end annotation

    .line 116
    const-string v0, "AdFailedToLoad"

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
        description = "Ad loaded"
    .end annotation

    const/4 v0, 0x0

    .line 111
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Clicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Ad clicked"
    .end annotation

    const/4 v0, 0x0

    .line 106
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Clicked"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotImpression()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Impression counted"
    .end annotation

    const/4 v0, 0x0

    .line 101
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GotImpression"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Height(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set height"
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x12c

    .line 130
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public LoadAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Note : Custom Color is only supported for facebook ads and it won\'t work for mopub ads"
    .end annotation

    .line 54
    new-instance v0, Lcom/mopub/nativeads/MoPubNative;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMoPubNative;->context:Landroid/content/Context;

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronMoPubNative$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/NiotronMoPubNative$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronMoPubNative;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/mopub/nativeads/MoPubNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMoPubNative;->moPubNative:Lcom/mopub/nativeads/MoPubNative;

    .line 80
    :try_start_0
    new-instance p1, Lcom/mopub/template/MopubNativeView;

    invoke-direct {p1}, Lcom/mopub/template/MopubNativeView;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    :try_start_1
    const-string v0, "com.mopub.nativeads.FacebookTemplateRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 83
    new-instance v0, Lcom/mopub/nativeads/FacebookTemplateRenderer;

    new-instance v1, Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-direct {v1}, Lcom/facebook/ads/NativeAdViewAttributes;-><init>()V

    .line 84
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/facebook/ads/NativeAdViewAttributes;->setBackgroundColor(I)Lcom/facebook/ads/NativeAdViewAttributes;

    move-result-object p2

    .line 85
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/facebook/ads/NativeAdViewAttributes;->setTitleTextColor(I)Lcom/facebook/ads/NativeAdViewAttributes;

    move-result-object p2

    .line 86
    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/facebook/ads/NativeAdViewAttributes;->setDescriptionTextColor(I)Lcom/facebook/ads/NativeAdViewAttributes;

    move-result-object p2

    .line 87
    invoke-static {p5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/facebook/ads/NativeAdViewAttributes;->setButtonColor(I)Lcom/facebook/ads/NativeAdViewAttributes;

    move-result-object p2

    .line 88
    invoke-static {p6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/facebook/ads/NativeAdViewAttributes;->setButtonTextColor(I)Lcom/facebook/ads/NativeAdViewAttributes;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/mopub/nativeads/FacebookTemplateRenderer;-><init>(Lcom/facebook/ads/NativeAdViewAttributes;)V

    .line 89
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronMoPubNative;->moPubNative:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {p2, v0}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    :catch_0
    :try_start_2
    new-instance p2, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;

    invoke-virtual {p1}, Lcom/mopub/template/MopubNativeView;->getViewBinder()Lcom/mopub/nativeads/ViewBinder;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;)V

    .line 92
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMoPubNative;->moPubNative:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {p1, p2}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 93
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMoPubNative;->moPubNative:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {p1}, Lcom/mopub/nativeads/MoPubNative;->makeRequest()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 95
    :catch_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMoPubNative;->context:Landroid/content/Context;

    const-string p2, "Invalid hex value given in Load Ad Block"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the width"
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 139
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMoPubNative;->view:Landroid/widget/LinearLayout;

    return-object v0
.end method
