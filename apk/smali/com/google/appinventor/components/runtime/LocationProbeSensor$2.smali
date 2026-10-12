.class Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/LocationProbeSensor;->LocationInfoReceived(JDDFLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/LocationProbeSensor;

.field final synthetic val$mAccuracy:F

.field final synthetic val$mLatitude:D

.field final synthetic val$mLongitude:D

.field final synthetic val$mProvider:Ljava/lang/String;

.field final synthetic val$timestamp:J


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/LocationProbeSensor;JDDFLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->this$0:Lcom/google/appinventor/components/runtime/LocationProbeSensor;

    iput-wide p2, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->val$timestamp:J

    iput-wide p4, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->val$mLatitude:D

    iput-wide p6, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->val$mLongitude:D

    iput p8, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->val$mAccuracy:F

    iput-object p9, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->val$mProvider:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 133
    const-string v0, "LocationProbeSensor"

    const-string v1, "LocationInfoReceived() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->this$0:Lcom/google/appinventor/components/runtime/LocationProbeSensor;

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->val$timestamp:J

    .line 135
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->val$mLatitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->val$mLongitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->val$mAccuracy:F

    .line 136
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/LocationProbeSensor$2;->val$mProvider:Ljava/lang/String;

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

    .line 134
    const-string v1, "LocationInfoReceived"

    invoke-static {v0, v1, v6}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
