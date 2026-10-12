.class Lcom/google/appinventor/components/runtime/fcm/MyFirebaseMessagingService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/fcm/MyFirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/fcm/MyFirebaseMessagingService;

.field final synthetic val$dictionary:Lcom/google/appinventor/components/runtime/util/YailDictionary;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/fcm/MyFirebaseMessagingService;Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/fcm/MyFirebaseMessagingService$1;->this$0:Lcom/google/appinventor/components/runtime/fcm/MyFirebaseMessagingService;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/fcm/MyFirebaseMessagingService$1;->val$dictionary:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/MyFirebaseMessagingService$1;->val$dictionary:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->GotMessage(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
