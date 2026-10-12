.class Lcom/google/appinventor/components/runtime/NiotronMoPubNative$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronMoPubNative$1;->onNativeLoad(Lcom/mopub/nativeads/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronMoPubNative$1;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronMoPubNative$1;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMoPubNative$1$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronMoPubNative$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMoPubNative$1$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronMoPubNative$1;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/NiotronMoPubNative$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMoPubNative;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronMoPubNative;->Clicked()V

    return-void
.end method

.method public onImpression(Landroid/view/View;)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMoPubNative$1$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronMoPubNative$1;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/NiotronMoPubNative$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMoPubNative;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronMoPubNative;->GotImpression()V

    return-void
.end method
