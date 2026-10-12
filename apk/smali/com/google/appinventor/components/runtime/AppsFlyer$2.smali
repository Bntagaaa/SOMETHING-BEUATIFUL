.class Lcom/google/appinventor/components/runtime/AppsFlyer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appsflyer/attribution/AppsFlyerRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AppsFlyer;->InitializeSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AppsFlyer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AppsFlyer;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppsFlyer$2;->this$0:Lcom/google/appinventor/components/runtime/AppsFlyer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppsFlyer$2;->this$0:Lcom/google/appinventor/components/runtime/AppsFlyer;

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/AppsFlyer;->LaunchFailed(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppsFlyer$2;->this$0:Lcom/google/appinventor/components/runtime/AppsFlyer;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppsFlyer;->LaunchSuccess()V

    return-void
.end method
