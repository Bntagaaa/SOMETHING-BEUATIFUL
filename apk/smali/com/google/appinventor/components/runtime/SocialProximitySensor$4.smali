.class Lcom/google/appinventor/components/runtime/SocialProximitySensor$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/SocialProximitySensor;->SocialProximityScanComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/SocialProximitySensor;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$4;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 412
    const-string v0, "BluetoothSensor"

    const-string v1, "SocialProximityScanComplete() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$4;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SocialProximityScanComplete"

    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
