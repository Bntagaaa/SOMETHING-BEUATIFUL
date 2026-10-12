.class public final Landroidx/core/app/NotificationCompat$WearableExtender;
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
    name = "WearableExtender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$WearableExtender$a;,
        Landroidx/core/app/NotificationCompat$WearableExtender$b;,
        Landroidx/core/app/NotificationCompat$WearableExtender$c;,
        Landroidx/core/app/NotificationCompat$WearableExtender$d;
    }
.end annotation


# static fields
.field public static final SCREEN_TIMEOUT_LONG:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCREEN_TIMEOUT_SHORT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIZE_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIZE_FULL_SCREEN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIZE_LARGE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIZE_MEDIUM:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIZE_SMALL:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIZE_XSMALL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNSET_ACTION_INDEX:I = -0x1


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:I

.field public c:Landroid/app/PendingIntent;

.field public d:Ljava/util/ArrayList;

.field public e:Landroid/graphics/Bitmap;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7049
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 7050
    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->b:I

    .line 7052
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->d:Ljava/util/ArrayList;

    const v0, 0x800005

    .line 7055
    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->g:I

    const/4 v0, -0x1

    .line 7056
    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->h:I

    const/4 v0, 0x0

    .line 7057
    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->i:I

    const/16 v0, 0x50

    .line 7060
    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 10
    .param p1    # Landroid/app/Notification;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7049
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 7050
    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->b:I

    .line 7052
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->d:Ljava/util/ArrayList;

    const v1, 0x800005

    .line 7055
    iput v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->g:I

    const/4 v2, -0x1

    .line 7056
    iput v2, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->h:I

    const/4 v3, 0x0

    .line 7057
    iput v3, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->i:I

    const/16 v4, 0x50

    .line 7060
    iput v4, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->k:I

    .line 7074
    invoke-static {p1}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7075
    const-string v5, "android.wearable.EXTENSIONS"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_7

    .line 7078
    const-string v5, "actions"

    .line 7079
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 7081
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v7, v6, [Landroidx/core/app/NotificationCompat$Action;

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_1

    .line 7084
    invoke-static {v5, v8}, Landroidx/core/app/NotificationCompat$WearableExtender$a;->getActionCompatFromAction(Ljava/util/ArrayList;I)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 7090
    :cond_1
    iget-object v5, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    invoke-static {v5, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 7093
    :cond_2
    const-string v5, "flags"

    invoke-virtual {p1, v5, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->b:I

    .line 7094
    const-string v0, "displayIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->c:Landroid/app/PendingIntent;

    .line 9094
    const-string v0, "pages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 9095
    instance-of v6, v5, [Landroid/app/Notification;

    if-nez v6, :cond_5

    if-nez v5, :cond_3

    goto :goto_3

    .line 9098
    :cond_3
    array-length v6, v5

    new-array v6, v6, [Landroid/app/Notification;

    const/4 v7, 0x0

    .line 9099
    :goto_2
    array-length v8, v5

    if-ge v7, v8, :cond_4

    .line 9100
    aget-object v8, v5, v7

    check-cast v8, Landroid/app/Notification;

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 9102
    :cond_4
    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_4

    .line 9096
    :cond_5
    :goto_3
    move-object v6, v5

    check-cast v6, [Landroid/app/Notification;

    :goto_4
    if-eqz v6, :cond_6

    .line 7099
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->d:Ljava/util/ArrayList;

    invoke-static {v0, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 7102
    :cond_6
    const-string v0, "background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->e:Landroid/graphics/Bitmap;

    .line 7103
    const-string v0, "contentIcon"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->f:I

    .line 7104
    const-string v0, "contentIconGravity"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->g:I

    .line 7106
    const-string v0, "contentActionIndex"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->h:I

    .line 7108
    const-string v0, "customSizePreset"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->i:I

    .line 7110
    const-string v0, "customContentHeight"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->j:I

    .line 7111
    const-string v0, "gravity"

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->k:I

    .line 7112
    const-string v0, "hintScreenTimeout"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->l:I

    .line 7113
    const-string v0, "dismissalId"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->m:Ljava/lang/String;

    .line 7114
    const-string v0, "bridgeTag"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->n:Ljava/lang/String;

    :cond_7
    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 7852
    iget p2, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->b:I

    or-int/2addr p1, p2

    iput p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->b:I

    return-void

    .line 7854
    :cond_0
    iget p2, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->b:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->b:I

    return-void
.end method

.method public addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 1
    .param p1    # Landroidx/core/app/NotificationCompat$Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 7269
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addActions(Ljava/util/List;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;)",
            "Landroidx/core/app/NotificationCompat$WearableExtender;"
        }
    .end annotation

    .line 7286
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addPage(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 1
    .param p1    # Landroid/app/Notification;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7368
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPages(Ljava/util/List;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification;",
            ">;)",
            "Landroidx/core/app/NotificationCompat$WearableExtender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7385
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public clearActions()Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 7296
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public clearPages()Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7397
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public clone()Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 7238
    new-instance v0, Landroidx/core/app/NotificationCompat$WearableExtender;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$WearableExtender;-><init>()V

    .line 7239
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    .line 7240
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->b:I

    iput v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->b:I

    .line 7241
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->c:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->c:Landroid/app/PendingIntent;

    .line 7242
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->d:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->d:Ljava/util/ArrayList;

    .line 7243
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->e:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->e:Landroid/graphics/Bitmap;

    .line 7244
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->f:I

    iput v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->f:I

    .line 7245
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->g:I

    iput v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->g:I

    .line 7246
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->h:I

    iput v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->h:I

    .line 7247
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->i:I

    iput v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->i:I

    .line 7248
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->j:I

    iput v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->j:I

    .line 7249
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->k:I

    iput v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->k:I

    .line 7250
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->l:I

    iput v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->l:I

    .line 7251
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->m:Ljava/lang/String;

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->m:Ljava/lang/String;

    .line 7252
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->n:Ljava/lang/String;

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->n:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6924
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$WearableExtender;->clone()Landroidx/core/app/NotificationCompat$WearableExtender;

    move-result-object v0

    return-object v0
.end method

.method public extend(Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 10
    .param p1    # Landroidx/core/app/NotificationCompat$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 7127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7129
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 7131
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7132
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/app/NotificationCompat$Action;

    .line 7133
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    const/4 v6, 0x0

    if-lt v4, v5, :cond_1

    .line 7195
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    .line 7197
    :cond_0
    invoke-virtual {v5}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    :goto_1
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    .line 7198
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v8

    .line 7196
    invoke-static {v5, v7, v8}, Landroidx/core/app/NotificationCompat$WearableExtender$b;->a(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    move-result-object v5

    goto :goto_3

    .line 7200
    :cond_1
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 7202
    invoke-virtual {v5}, Landroidx/core/graphics/drawable/IconCompat;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 7203
    invoke-virtual {v5}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 7205
    :goto_2
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    .line 7206
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v8

    .line 7205
    invoke-static {v5, v7, v8}, Landroidx/core/app/NotificationCompat$WearableExtender$a;->d(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    move-result-object v5

    .line 7209
    :goto_3
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 7210
    new-instance v7, Landroid/os/Bundle;

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_4

    .line 7212
    :cond_3
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 7214
    :goto_4
    const-string v8, "android.support.allowGeneratedReplies"

    .line 7215
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v9

    .line 7214
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v8, 0x18

    if-lt v4, v8, :cond_4

    .line 7218
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v8

    .line 7217
    invoke-static {v5, v8}, Landroidx/core/app/NotificationCompat$WearableExtender$c;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    :cond_4
    const/16 v8, 0x1f

    if-lt v4, v8, :cond_5

    .line 7222
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action;->isAuthenticationRequired()Z

    move-result v4

    .line 7221
    invoke-static {v5, v4}, Landroidx/core/app/NotificationCompat$WearableExtender$d;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 7224
    :cond_5
    invoke-static {v5, v7}, Landroidx/core/app/NotificationCompat$WearableExtender$a;->a(Landroid/app/Notification$Action$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 7225
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 7227
    invoke-static {v3}, Landroidx/core/app/RemoteInput;->a([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v3

    .line 7228
    array-length v4, v3

    :goto_5
    if-ge v6, v4, :cond_6

    aget-object v7, v3, v6

    .line 7229
    invoke-static {v5, v7}, Landroidx/core/app/NotificationCompat$WearableExtender$a;->b(Landroid/app/Notification$Action$Builder;Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 7232
    :cond_6
    invoke-static {v5}, Landroidx/core/app/NotificationCompat$WearableExtender$a;->c(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action;

    move-result-object v3

    .line 7134
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 7140
    :cond_7
    const-string v2, "actions"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 7145
    :cond_8
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->b:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    .line 7146
    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 7148
    :cond_9
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->c:Landroid/app/PendingIntent;

    if-eqz v1, :cond_a

    .line 7149
    const-string v2, "displayIntent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7151
    :cond_a
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 7152
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->d:Ljava/util/ArrayList;

    .line 7153
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/app/Notification;

    .line 7152
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    const-string v2, "pages"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 7155
    :cond_b
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_c

    .line 7156
    const-string v2, "background"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7158
    :cond_c
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->f:I

    if-eqz v1, :cond_d

    .line 7159
    const-string v2, "contentIcon"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 7161
    :cond_d
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->g:I

    const v2, 0x800005

    if-eq v1, v2, :cond_e

    .line 7162
    const-string v2, "contentIconGravity"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 7164
    :cond_e
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    .line 7165
    const-string v2, "contentActionIndex"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 7168
    :cond_f
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->i:I

    if-eqz v1, :cond_10

    .line 7169
    const-string v2, "customSizePreset"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 7171
    :cond_10
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->j:I

    if-eqz v1, :cond_11

    .line 7172
    const-string v2, "customContentHeight"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 7174
    :cond_11
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->k:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_12

    .line 7175
    const-string v2, "gravity"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 7177
    :cond_12
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->l:I

    if-eqz v1, :cond_13

    .line 7178
    const-string v2, "hintScreenTimeout"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 7180
    :cond_13
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->m:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 7181
    const-string v2, "dismissalId"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7183
    :cond_14
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->n:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 7184
    const-string v2, "bridgeTag"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7187
    :cond_15
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .line 7304
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBackground()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7441
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBridgeTag()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 7847
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getContentAction()I
    .locals 1

    .line 7517
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->h:I

    return v0
.end method

.method public getContentIcon()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7462
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->f:I

    return v0
.end method

.method public getContentIconGravity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7489
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->g:I

    return v0
.end method

.method public getContentIntentAvailableOffline()Z
    .locals 2

    .line 7645
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomContentHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7604
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->j:I

    return v0
.end method

.method public getCustomSizePreset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7576
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->i:I

    return v0
.end method

.method public getDismissalId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 7826
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayIntent()Landroid/app/PendingIntent;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7352
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->c:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getGravity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7544
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->k:I

    return v0
.end method

.method public getHintAmbientBigPicture()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7781
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHintAvoidBackgroundClipping()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7726
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHintContentIntentLaunchesActivity()Z
    .locals 1

    .line 7804
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->b:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHintHideIcon()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7670
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHintScreenTimeout()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7754
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->l:I

    return v0
.end method

.method public getHintShowBackgroundOnly()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7695
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPages()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7411
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartScrollBottom()Z
    .locals 1

    .line 7623
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setBackground(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7426
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->e:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setBridgeTag(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 7838
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->n:Ljava/lang/String;

    return-object p0
.end method

.method public setContentAction(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 7503
    iput p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->h:I

    return-object p0
.end method

.method public setContentIcon(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7451
    iput p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->f:I

    return-object p0
.end method

.method public setContentIconGravity(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7475
    iput p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->g:I

    return-object p0
.end method

.method public setContentIntentAvailableOffline(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 7634
    invoke-virtual {p0, v0, p1}, Landroidx/core/app/NotificationCompat$WearableExtender;->a(IZ)V

    return-object p0
.end method

.method public setCustomContentHeight(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7590
    iput p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->j:I

    return-object p0
.end method

.method public setCustomSizePreset(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7560
    iput p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->i:I

    return-object p0
.end method

.method public setDismissalId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 7817
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->m:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7340
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->c:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setGravity(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7530
    iput p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->k:I

    return-object p0
.end method

.method public setHintAmbientBigPicture(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x20

    .line 7767
    invoke-virtual {p0, v0, p1}, Landroidx/core/app/NotificationCompat$WearableExtender;->a(IZ)V

    return-object p0
.end method

.method public setHintAvoidBackgroundClipping(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    .line 7711
    invoke-virtual {p0, v0, p1}, Landroidx/core/app/NotificationCompat$WearableExtender;->a(IZ)V

    return-object p0
.end method

.method public setHintContentIntentLaunchesActivity(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0x40

    .line 7793
    invoke-virtual {p0, v0, p1}, Landroidx/core/app/NotificationCompat$WearableExtender;->a(IZ)V

    return-object p0
.end method

.method public setHintHideIcon(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    .line 7657
    invoke-virtual {p0, v0, p1}, Landroidx/core/app/NotificationCompat$WearableExtender;->a(IZ)V

    return-object p0
.end method

.method public setHintScreenTimeout(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7740
    iput p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->l:I

    return-object p0
.end method

.method public setHintShowBackgroundOnly(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    .line 7682
    invoke-virtual {p0, v0, p1}, Landroidx/core/app/NotificationCompat$WearableExtender;->a(IZ)V

    return-object p0
.end method

.method public setStartScrollBottom(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0x8

    .line 7613
    invoke-virtual {p0, v0, p1}, Landroidx/core/app/NotificationCompat$WearableExtender;->a(IZ)V

    return-object p0
.end method
