.class Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->CameraPositionChanged(DDFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

.field final synthetic val$bearing:F

.field final synthetic val$lat:D

.field final synthetic val$lng:D

.field final synthetic val$tilt:F

.field final synthetic val$zoom:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;DDFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1486
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$8;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    iput-wide p2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$8;->val$lat:D

    iput-wide p4, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$8;->val$lng:D

    iput p6, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$8;->val$bearing:F

    iput p7, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$8;->val$tilt:F

    iput p8, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$8;->val$zoom:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1488
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$8;->val$lat:D

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$8;->val$lng:D

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$8;->val$bearing:F

    iget v5, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$8;->val$tilt:F

    iget v6, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$8;->val$zoom:F

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Camera\'s position has changed:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NiotronGoogleMaps"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$8;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$8;->val$lat:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$8;->val$lng:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$8;->val$bearing:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$8;->val$tilt:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v5, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$8;->val$zoom:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

    const-string v1, "CameraPositionChanged"

    invoke-static {v0, v1, v6}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
