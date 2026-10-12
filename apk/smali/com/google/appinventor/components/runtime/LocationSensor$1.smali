.class Lcom/google/appinventor/components/runtime/LocationSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

.field final synthetic val$caller:Ljava/lang/String;

.field final synthetic val$me:Lcom/google/appinventor/components/runtime/LocationSensor;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/LocationSensor;Lcom/google/appinventor/components/runtime/LocationSensor;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 690
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$me:Lcom/google/appinventor/components/runtime/LocationSensor;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$caller:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 693
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$me:Lcom/google/appinventor/components/runtime/LocationSensor;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/LocationSensor$1$1;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "RefreshProvider"

    invoke-direct {v2, p0, v0, v4, v3}, Lcom/google/appinventor/components/runtime/LocationSensor$1$1;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor$1;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    return-void
.end method
