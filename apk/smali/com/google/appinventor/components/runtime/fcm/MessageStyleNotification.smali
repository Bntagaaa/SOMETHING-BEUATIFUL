.class public Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$InputReceiver;,
        Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$Message;
    }
.end annotation


# static fields
.field private static MESSAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$Message;",
            ">;"
        }
    .end annotation
.end field

.field private static self:Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;


# instance fields
.field private builder:Landroid/app/Notification$Builder;

.field private channelName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private notificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->MESSAGES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "FCMNotification"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->channelName:Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->context:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;)Landroid/app/Notification$Builder;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->builder:Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;)Landroid/app/NotificationManager;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->notificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method public static bridge synthetic c()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->MESSAGES:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;
    .locals 1

    .line 107
    sget-object v0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->self:Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->self:Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;

    .line 108
    :cond_0
    sget-object p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->self:Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;

    return-object p0
.end method


# virtual methods
.method public clearNotification(I)V
    .locals 2

    const/4 v0, 0x5

    .line 222
    const-string v1, "Notifications"

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->initChannelNotification(ILjava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public getAppIcon()Landroid/graphics/drawable/Icon;
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 229
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 230
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x60

    .line 234
    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 235
    invoke-static {v0}, Landroidx/appcompat/widget/m;->d(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 243
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 244
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public initChannelNotification(ILjava/lang/String;)V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->notificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->notificationManager:Landroid/app/NotificationManager;

    .line 253
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 254
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->notificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/b;->h(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 256
    invoke-static {}, Lcom/google/appinventor/components/runtime/b;->r()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->channelName:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/google/appinventor/components/runtime/b;->i(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->notificationManager:Landroid/app/NotificationManager;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/b;->v(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 259
    :cond_1
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/b;->t(Landroid/app/NotificationChannel;I)V

    const/16 p1, 0x9

    .line 272
    new-array p1, p1, [J

    fill-array-data p1, :array_0

    .line 273
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/b;->u(Landroid/app/NotificationChannel;[J)V

    .line 274
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/b;->s(Landroid/app/NotificationChannel;)V

    .line 275
    new-instance p1, Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/b;->f(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->builder:Landroid/app/Notification$Builder;

    return-void

    .line 277
    :cond_2
    new-instance p1, Landroid/app/Notification$Builder;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->builder:Landroid/app/Notification$Builder;

    return-void

    nop

    :array_0
    .array-data 8
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
    .end array-data
.end method

.method public playSound()V
    .locals 2

    const/4 v0, 0x2

    .line 213
    :try_start_0
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v6, p1

    move-object/from16 v1, p2

    move-object/from16 v7, p8

    .line 112
    const-string v8, "smallIcon"

    const-string v9, "sound"

    const-string v10, ""

    const/4 v2, 0x5

    const-string v3, "FCMNotification"

    invoke-virtual {v0, v2, v3}, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->initChannelNotification(ILjava/lang/String;)V

    if-nez p7, :cond_0

    .line 114
    const-string v2, "#FFFFFF"

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object/from16 v11, p7

    .line 116
    :goto_0
    new-instance v2, Landroid/app/RemoteInput$Builder;

    const-string v3, "key_text_reply"

    invoke-direct {v2, v3}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    const-string v3, "Your answer..."

    invoke-virtual {v2, v3}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v2

    .line 117
    new-instance v3, Landroid/content/Intent;

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->context:Landroid/content/Context;

    const-class v5, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$InputReceiver;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    const-string v4, "group"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v4, "id"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string v4, "color"

    invoke-virtual {v3, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v4, "sender"

    move-object/from16 v5, p4

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v4, "data"

    move-object/from16 v12, p9

    invoke-virtual {v3, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->context:Landroid/content/Context;

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1f

    if-lt v12, v13, :cond_1

    const/high16 v12, 0x42000000    # 32.0f

    goto :goto_1

    :cond_1
    const/high16 v12, 0x40000000    # 2.0f

    :goto_1
    const/4 v13, 0x0

    invoke-static {v4, v13, v3, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 125
    const-string v3, "reply.png"

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 126
    new-instance v4, Landroid/app/Notification$Action$Builder;

    invoke-static {v3}, Landroidx/appcompat/widget/m;->d(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-static {v3, v12}, Landroidx/vectordrawable/graphics/drawable/c;->b(Landroid/graphics/drawable/Icon;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v14

    .line 127
    invoke-static {}, Landroidx/core/os/f;->d()Landroid/app/Notification$MessagingStyle;

    move-result-object v15

    .line 128
    invoke-static {v15, v1}, Lcom/google/appinventor/components/runtime/fcm/a;->r(Landroid/app/Notification$MessagingStyle;Ljava/lang/String;)V

    .line 129
    sget-object v1, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->MESSAGES:Ljava/util/List;

    move-object v2, v1

    new-instance v1, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$Message;

    move-object v13, v2

    move-object v3, v5

    move-object/from16 v2, p3

    move-wide/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$Message;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v1, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->MESSAGES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$Message;

    .line 131
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$Message;->getId()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 132
    invoke-static {}, Lcom/google/appinventor/components/runtime/fcm/a;->p()V

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$Message;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v3, v4, v5, v2}, Lcom/google/appinventor/components/runtime/fcm/a;->a(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v2

    .line 133
    invoke-static {v15, v2}, Lcom/google/appinventor/components/runtime/fcm/a;->q(Landroid/app/Notification$MessagingStyle;Landroid/app/Notification$MessagingStyle$Message;)V

    goto :goto_2

    .line 136
    :cond_3
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 137
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v15}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 138
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v14}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 139
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 140
    :cond_4
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->builder:Landroid/app/Notification$Builder;

    const-string v2, "msg"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 141
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 142
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 143
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->context:Landroid/content/Context;

    const-string v2, "NiotronFCM"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    .line 146
    :try_start_0
    invoke-interface {v1, v9, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 147
    new-instance v3, Ljava/io/File;

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_3

    :catch_0
    nop

    goto :goto_5

    :cond_5
    const/4 v3, 0x2

    .line 149
    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 151
    :goto_3
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 153
    invoke-interface {v1, v8, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 154
    invoke-interface {v1, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/widget/m;->d(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    goto :goto_4

    .line 156
    :cond_6
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->getAppIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 158
    :goto_4
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->builder:Landroid/app/Notification$Builder;

    invoke-static {v2, v1}, Landroidx/vectordrawable/graphics/drawable/c;->f(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    const/16 v1, 0x9

    .line 162
    new-array v1, v1, [J

    fill-array-data v1, :array_0

    .line 163
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 164
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->builder:Landroid/app/Notification$Builder;

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 165
    const-string v1, "Notified"

    const-string v2, "FCM"

    if-eqz v7, :cond_8

    .line 166
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 167
    new-instance v1, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$1;

    invoke-direct {v1, v0, v7, v6}, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$1;-><init>(Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;Ljava/lang/String;I)V

    .line 196
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_6

    .line 198
    :cond_7
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 199
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 200
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->playSound()V

    .line 201
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 204
    :cond_8
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 205
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 206
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->playSound()V

    .line 207
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return-void

    nop

    :array_0
    .array-data 8
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
    .end array-data
.end method
