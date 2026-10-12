.class public Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/lang/String;

.field public c:Landroidx/core/app/RemoteInput;

.field public d:Landroid/app/PendingIntent;

.field public e:Landroid/app/PendingIntent;

.field public f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->a:Ljava/util/ArrayList;

    .line 8319
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    .line 8332
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public build()Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 8391
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Ljava/lang/String;

    .line 8392
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->b:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    .line 8393
    new-instance v1, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    iget-object v3, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->c:Landroidx/core/app/RemoteInput;

    iget-object v4, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->e:Landroid/app/PendingIntent;

    iget-object v5, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->d:Landroid/app/PendingIntent;

    iget-wide v7, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->f:J

    invoke-direct/range {v1 .. v8}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroidx/core/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    return-object v1
.end method

.method public setLatestTimestamp(J)Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 8381
    iput-wide p1, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->f:J

    return-object p0
.end method

.method public setReadPendingIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .locals 0
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 8365
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->d:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setReplyAction(Landroid/app/PendingIntent;Landroidx/core/app/RemoteInput;)Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .locals 0
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/core/app/RemoteInput;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 8350
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->c:Landroidx/core/app/RemoteInput;

    .line 8351
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->e:Landroid/app/PendingIntent;

    return-object p0
.end method
