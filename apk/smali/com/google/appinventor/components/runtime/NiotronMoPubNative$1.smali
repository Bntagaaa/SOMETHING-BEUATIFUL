.class Lcom/google/appinventor/components/runtime/NiotronMoPubNative$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronMoPubNative;->LoadAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronMoPubNative;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronMoPubNative;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMoPubNative$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMoPubNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMoPubNative$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMoPubNative;

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronMoPubNative;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onNativeLoad(Lcom/mopub/nativeads/NativeAd;)V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMoPubNative$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMoPubNative;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronMoPubNative;->AdLoaded()V

    .line 58
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronMoPubNative$1$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronMoPubNative$1$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronMoPubNative$1;)V

    invoke-virtual {p1, v0}, Lcom/mopub/nativeads/NativeAd;->setMoPubNativeEventListener(Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;)V

    .line 69
    new-instance v0, Lcom/mopub/nativeads/AdapterHelper;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMoPubNative$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMoPubNative;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronMoPubNative;->a(Lcom/google/appinventor/components/runtime/NiotronMoPubNative;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/nativeads/AdapterHelper;-><init>(Landroid/content/Context;II)V

    .line 70
    new-instance v1, Lcom/mopub/nativeads/ViewBinder$Builder;

    invoke-direct {v1, v2}, Lcom/mopub/nativeads/ViewBinder$Builder;-><init>(I)V

    invoke-virtual {v1}, Lcom/mopub/nativeads/ViewBinder$Builder;->build()Lcom/mopub/nativeads/ViewBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p1, v1}, Lcom/mopub/nativeads/AdapterHelper;->getAdView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/mopub/nativeads/NativeAd;Lcom/mopub/nativeads/ViewBinder;)Landroid/view/View;

    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMoPubNative$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMoPubNative;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronMoPubNative;->b(Lcom/google/appinventor/components/runtime/NiotronMoPubNative;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
