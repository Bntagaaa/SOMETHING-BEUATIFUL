.class Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AccelerometerSensor;->startListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AccelerometerSensor;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AccelerometerSensor;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;->this$0:Lcom/google/appinventor/components/runtime/AccelerometerSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;->this$0:Lcom/google/appinventor/components/runtime/AccelerometerSensor;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->getDeviceDefaultOrientation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->b(Lcom/google/appinventor/components/runtime/AccelerometerSensor;I)V

    .line 352
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;->this$0:Lcom/google/appinventor/components/runtime/AccelerometerSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->a(Lcom/google/appinventor/components/runtime/AccelerometerSensor;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deviceDefaultOrientation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccelerometerSensor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string v0, "Configuration.ORIENTATION_LANDSCAPE = 2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v0, "Configuration.ORIENTATION_PORTRAIT = 1"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
