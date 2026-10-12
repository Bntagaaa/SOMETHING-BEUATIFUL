.class public final Landroidx/core/app/NotificationCompat$CarExtender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/NotificationCompat$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarExtender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;,
        Landroidx/core/app/NotificationCompat$CarExtender$a;,
        Landroidx/core/app/NotificationCompat$CarExtender$b;
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7999
    iput v0, p0, Landroidx/core/app/NotificationCompat$CarExtender;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 22
    .param p1    # Landroid/app/Notification;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    .line 8013
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 7999
    iput v1, v0, Landroidx/core/app/NotificationCompat$CarExtender;->c:I

    .line 8018
    invoke-static/range {p1 .. p1}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 8019
    :cond_0
    invoke-static/range {p1 .. p1}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "android.car.EXTENSIONS"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_a

    .line 8021
    const-string v4, "large_icon"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iput-object v4, v0, Landroidx/core/app/NotificationCompat$CarExtender;->a:Landroid/graphics/Bitmap;

    .line 8022
    const-string v4, "app_color"

    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroidx/core/app/NotificationCompat$CarExtender;->c:I

    .line 8024
    const-string v4, "car_conversation"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_5

    .line 8035
    :cond_1
    const-string v4, "messages"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 8038
    array-length v5, v4

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_4

    .line 8041
    aget-object v8, v4, v7

    instance-of v9, v8, Landroid/os/Bundle;

    if-nez v9, :cond_2

    goto/16 :goto_5

    .line 8045
    :cond_2
    check-cast v8, Landroid/os/Bundle;

    const-string v9, "text"

    invoke-virtual {v8, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    if-nez v8, :cond_3

    goto/16 :goto_5

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    move-object v9, v6

    goto :goto_2

    :cond_5
    move-object v9, v3

    .line 8058
    :goto_2
    const-string v4, "on_read"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/app/PendingIntent;

    .line 8059
    const-string v4, "on_reply"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/app/PendingIntent;

    .line 8061
    const-string v4, "remote_input"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/RemoteInput;

    .line 8063
    const-string v5, "participants"

    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 8064
    array-length v5, v13

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    goto :goto_5

    :cond_6
    if-eqz v4, :cond_8

    .line 8069
    new-instance v14, Landroidx/core/app/RemoteInput;

    invoke-static {v4}, Landroidx/core/app/NotificationCompat$CarExtender$a;->h(Landroid/app/RemoteInput;)Ljava/lang/String;

    move-result-object v15

    .line 8070
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$CarExtender$a;->g(Landroid/app/RemoteInput;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 8071
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$CarExtender$a;->e(Landroid/app/RemoteInput;)[Ljava/lang/CharSequence;

    move-result-object v17

    .line 8072
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$CarExtender$a;->d(Landroid/app/RemoteInput;)Z

    move-result v18

    .line 8073
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v3, v5, :cond_7

    .line 8074
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$CarExtender$b;->a(Landroid/app/RemoteInput;)I

    move-result v1

    move/from16 v19, v1

    goto :goto_3

    :cond_7
    const/16 v19, 0x0

    .line 8076
    :goto_3
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$CarExtender$a;->f(Landroid/app/RemoteInput;)Landroid/os/Bundle;

    move-result-object v20

    const/16 v21, 0x0

    invoke-direct/range {v14 .. v21}, Landroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/HashSet;)V

    move-object v10, v14

    goto :goto_4

    :cond_8
    move-object v10, v3

    .line 8080
    :goto_4
    new-instance v8, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    const-string v1, "timestamp"

    .line 8081
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-direct/range {v8 .. v15}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroidx/core/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    move-object v3, v8

    .line 8025
    :cond_9
    :goto_5
    iput-object v3, v0, Landroidx/core/app/NotificationCompat$CarExtender;->b:Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    :cond_a
    return-void
.end method


# virtual methods
.method public extend(Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 10
    .param p1    # Landroidx/core/app/NotificationCompat$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 8130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8132
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$CarExtender;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 8133
    const-string v2, "large_icon"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8135
    :cond_0
    iget v1, p0, Landroidx/core/app/NotificationCompat$CarExtender;->c:I

    if-eqz v1, :cond_1

    .line 8136
    const-string v2, "app_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 8139
    :cond_1
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$CarExtender;->b:Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    if-eqz v1, :cond_5

    .line 8086
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 8088
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_2

    .line 8089
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 8091
    :goto_0
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getMessages()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    new-array v6, v5, [Landroid/os/Parcelable;

    :goto_1
    if-ge v4, v5, :cond_3

    .line 8093
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 8094
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getMessages()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v4

    const-string v9, "text"

    invoke-virtual {v7, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8095
    const-string v8, "author"

    invoke-virtual {v7, v8, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8096
    aput-object v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 8098
    :cond_3
    const-string v3, "messages"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 8099
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getRemoteInput()Landroidx/core/app/RemoteInput;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 8102
    invoke-virtual {v3}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v4

    .line 8101
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$CarExtender$a;->c(Ljava/lang/String;)Landroid/app/RemoteInput$Builder;

    move-result-object v4

    .line 8103
    invoke-virtual {v3}, Landroidx/core/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/core/app/NotificationCompat$CarExtender$a;->k(Landroid/app/RemoteInput$Builder;Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    .line 8104
    invoke-virtual {v3}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/core/app/NotificationCompat$CarExtender$a;->j(Landroid/app/RemoteInput$Builder;[Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    .line 8105
    invoke-virtual {v3}, Landroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v5

    invoke-static {v4, v5}, Landroidx/core/app/NotificationCompat$CarExtender$a;->i(Landroid/app/RemoteInput$Builder;Z)Landroid/app/RemoteInput$Builder;

    .line 8106
    invoke-virtual {v3}, Landroidx/core/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v4, v3}, Landroidx/core/app/NotificationCompat$CarExtender$a;->a(Landroid/app/RemoteInput$Builder;Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    .line 8108
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$CarExtender$a;->b(Landroid/app/RemoteInput$Builder;)Landroid/app/RemoteInput;

    move-result-object v3

    .line 8109
    const-string v4, "remote_input"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8111
    :cond_4
    const-string v3, "on_reply"

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getReplyPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8112
    const-string v3, "on_read"

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getReadPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8113
    const-string v3, "participants"

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getParticipants()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8114
    const-string v3, "timestamp"

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;->getLatestTimestamp()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 8141
    const-string v1, "car_conversation"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8144
    :cond_5
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.car.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public getColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 8168
    iget v0, p0, Landroidx/core/app/NotificationCompat$CarExtender;->c:I

    return v0
.end method

.method public getLargeIcon()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 8192
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CarExtender;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUnreadConversation()Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8220
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CarExtender;->b:Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    return-object v0
.end method

.method public setColor(I)Landroidx/core/app/NotificationCompat$CarExtender;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 8157
    iput p1, p0, Landroidx/core/app/NotificationCompat$CarExtender;->c:I

    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$CarExtender;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 8181
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$CarExtender;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setUnreadConversation(Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;)Landroidx/core/app/NotificationCompat$CarExtender;
    .locals 0
    .param p1    # Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8207
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$CarExtender;->b:Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    return-object p0
.end method
