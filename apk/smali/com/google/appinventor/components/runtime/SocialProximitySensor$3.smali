.class Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/SocialProximitySensor;->SocialProximityInfoReceived(FLjava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

.field final synthetic val$deviceName:Ljava/lang/String;

.field final synthetic val$mClass:I

.field final synthetic val$macAddress:Ljava/lang/String;

.field final synthetic val$rssi:I

.field final synthetic val$timestamp:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/SocialProximitySensor;FLjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 393
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    iput p2, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->val$timestamp:F

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->val$deviceName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->val$macAddress:Ljava/lang/String;

    iput p5, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->val$rssi:I

    iput p6, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->val$mClass:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 395
    const-string v0, "BluetoothSensor"

    const-string v1, "SocialProximityInfoReceived() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    iget v1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->val$timestamp:F

    .line 397
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->val$deviceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->val$macAddress:Ljava/lang/String;

    iget v4, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->val$rssi:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->val$mClass:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v4, v6, v1

    const/4 v1, 0x4

    aput-object v5, v6, v1

    .line 396
    const-string v1, "SocialProximityInfoReceived"

    invoke-static {v0, v1, v6}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
