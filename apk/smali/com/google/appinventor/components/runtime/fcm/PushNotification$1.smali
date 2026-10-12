.class Lcom/google/appinventor/components/runtime/fcm/PushNotification$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/fcm/PushNotification;->showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/fcm/PushNotification;

.field final synthetic val$id:I

.field final synthetic val$largeImage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/fcm/PushNotification;Ljava/lang/String;I)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification$1;->this$0:Lcom/google/appinventor/components/runtime/fcm/PushNotification;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification$1;->val$largeImage:Ljava/lang/String;

    iput p3, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 97
    const-string v0, "Downloading img"

    const-string v1, "FCM"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification$1;->val$largeImage:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    .line 102
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 103
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 104
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/16 v3, 0x60

    .line 110
    invoke-static {v0, v3, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification$1;->this$0:Lcom/google/appinventor/components/runtime/fcm/PushNotification;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->a(Lcom/google/appinventor/components/runtime/fcm/PushNotification;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification$1;->this$0:Lcom/google/appinventor/components/runtime/fcm/PushNotification;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->a(Lcom/google/appinventor/components/runtime/fcm/PushNotification;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 113
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification$1;->this$0:Lcom/google/appinventor/components/runtime/fcm/PushNotification;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->b(Lcom/google/appinventor/components/runtime/fcm/PushNotification;)Landroid/app/NotificationManager;

    move-result-object v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification$1;->val$id:I

    invoke-virtual {v2, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification$1;->this$0:Lcom/google/appinventor/components/runtime/fcm/PushNotification;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->playSound()V

    .line 115
    const-string v0, "bitmap added"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification$1;->this$0:Lcom/google/appinventor/components/runtime/fcm/PushNotification;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->a(Lcom/google/appinventor/components/runtime/fcm/PushNotification;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 118
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification$1;->this$0:Lcom/google/appinventor/components/runtime/fcm/PushNotification;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->b(Lcom/google/appinventor/components/runtime/fcm/PushNotification;)Landroid/app/NotificationManager;

    move-result-object v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification$1;->val$id:I

    invoke-virtual {v2, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification$1;->this$0:Lcom/google/appinventor/components/runtime/fcm/PushNotification;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->playSound()V

    .line 120
    const-string v0, "bitmap null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_1
    const-string v0, "Done"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
