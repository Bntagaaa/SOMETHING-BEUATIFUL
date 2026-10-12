.class public Landroidx/core/app/NotificationChannelCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationChannelCompat$a;,
        Landroidx/core/app/NotificationChannelCompat$c;,
        Landroidx/core/app/NotificationChannelCompat$b;,
        Landroidx/core/app/NotificationChannelCompat$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = "miscellaneous"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/CharSequence;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Landroid/net/Uri;

.field public h:Landroid/media/AudioAttributes;

.field public i:Z

.field public j:I

.field public k:Z

.field public l:[J

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public final o:Z

.field public final p:I

.field public final q:Z

.field public final r:Z


# direct methods
.method public constructor <init>(Landroid/app/NotificationChannel;)V
    .locals 3

    .line 285
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->i(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->j(Landroid/app/NotificationChannel;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/core/app/NotificationChannelCompat;-><init>(Ljava/lang/String;I)V

    .line 287
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->m(Landroid/app/NotificationChannel;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->b:Ljava/lang/CharSequence;

    .line 288
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->g(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->d:Ljava/lang/String;

    .line 289
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->h(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->e:Ljava/lang/String;

    .line 290
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->b(Landroid/app/NotificationChannel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->f:Z

    .line 291
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->n(Landroid/app/NotificationChannel;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->g:Landroid/net/Uri;

    .line 292
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->f(Landroid/app/NotificationChannel;)Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->h:Landroid/media/AudioAttributes;

    .line 293
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->v(Landroid/app/NotificationChannel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->i:Z

    .line 294
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->k(Landroid/app/NotificationChannel;)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationChannelCompat;->j:I

    .line 295
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->w(Landroid/app/NotificationChannel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->k:Z

    .line 296
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->o(Landroid/app/NotificationChannel;)[J

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->l:[J

    .line 297
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 298
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$c;->b(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->m:Ljava/lang/String;

    .line 299
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$c;->a(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->n:Ljava/lang/String;

    .line 302
    :cond_0
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->a(Landroid/app/NotificationChannel;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/core/app/NotificationChannelCompat;->o:Z

    .line 303
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->l(Landroid/app/NotificationChannel;)I

    move-result v2

    iput v2, p0, Landroidx/core/app/NotificationChannelCompat;->p:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    .line 305
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$b;->a(Landroid/app/NotificationChannel;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/core/app/NotificationChannelCompat;->q:Z

    :cond_1
    if-lt v0, v1, :cond_2

    .line 308
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$c;->c(Landroid/app/NotificationChannel;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/core/app/NotificationChannelCompat;->r:Z

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->f:Z

    .line 61
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->g:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Landroidx/core/app/NotificationChannelCompat;->j:I

    .line 276
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/core/app/NotificationChannelCompat;->a:Ljava/lang/String;

    .line 277
    iput p2, p0, Landroidx/core/app/NotificationChannelCompat;->c:I

    .line 279
    sget-object p1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object p1, p0, Landroidx/core/app/NotificationChannelCompat;->h:Landroid/media/AudioAttributes;

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/NotificationChannel;
    .locals 4

    .line 318
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 321
    :cond_0
    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->b:Ljava/lang/CharSequence;

    iget v2, p0, Landroidx/core/app/NotificationChannelCompat;->c:I

    iget-object v3, p0, Landroidx/core/app/NotificationChannelCompat;->a:Ljava/lang/String;

    invoke-static {v3, v1, v2}, Landroidx/core/app/NotificationChannelCompat$a;->c(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 322
    iget-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/core/app/NotificationChannelCompat$a;->p(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/core/app/NotificationChannelCompat$a;->q(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 324
    iget-boolean v2, p0, Landroidx/core/app/NotificationChannelCompat;->f:Z

    invoke-static {v1, v2}, Landroidx/core/app/NotificationChannelCompat$a;->s(Landroid/app/NotificationChannel;Z)V

    .line 325
    iget-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->g:Landroid/net/Uri;

    iget-object v3, p0, Landroidx/core/app/NotificationChannelCompat;->h:Landroid/media/AudioAttributes;

    invoke-static {v1, v2, v3}, Landroidx/core/app/NotificationChannelCompat$a;->t(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 326
    iget-boolean v2, p0, Landroidx/core/app/NotificationChannelCompat;->i:Z

    invoke-static {v1, v2}, Landroidx/core/app/NotificationChannelCompat$a;->d(Landroid/app/NotificationChannel;Z)V

    .line 327
    iget v2, p0, Landroidx/core/app/NotificationChannelCompat;->j:I

    invoke-static {v1, v2}, Landroidx/core/app/NotificationChannelCompat$a;->r(Landroid/app/NotificationChannel;I)V

    .line 328
    iget-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->l:[J

    invoke-static {v1, v2}, Landroidx/core/app/NotificationChannelCompat$a;->u(Landroid/app/NotificationChannel;[J)V

    .line 329
    iget-boolean v2, p0, Landroidx/core/app/NotificationChannelCompat;->k:Z

    invoke-static {v1, v2}, Landroidx/core/app/NotificationChannelCompat$a;->e(Landroid/app/NotificationChannel;Z)V

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_1

    .line 330
    iget-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->n:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 331
    invoke-static {v1, v0, v2}, Landroidx/core/app/NotificationChannelCompat$c;->d(Landroid/app/NotificationChannel;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public canBubble()Z
    .locals 1

    .line 509
    iget-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->q:Z

    return v0
.end method

.method public canBypassDnd()Z
    .locals 1

    .line 486
    iget-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->o:Z

    return v0
.end method

.method public canShowBadge()Z
    .locals 1

    .line 445
    iget-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->f:Z

    return v0
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 404
    iget-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->h:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 475
    iget-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 375
    iget-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 455
    iget-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 359
    iget-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getImportance()I
    .locals 1

    .line 388
    iget v0, p0, Landroidx/core/app/NotificationChannelCompat;->c:I

    return v0
.end method

.method public getLightColor()I
    .locals 1

    .line 419
    iget v0, p0, Landroidx/core/app/NotificationChannelCompat;->j:I

    return v0
.end method

.method public getLockscreenVisibility()I
    .locals 1

    .line 498
    iget v0, p0, Landroidx/core/app/NotificationChannelCompat;->p:I

    return v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 367
    iget-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getParentChannelId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 465
    iget-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getSound()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 396
    iget-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->g:Landroid/net/Uri;

    return-object v0
.end method

.method public getVibrationPattern()[J
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 435
    iget-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->l:[J

    return-object v0
.end method

.method public isImportantConversation()Z
    .locals 1

    .line 524
    iget-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->r:Z

    return v0
.end method

.method public shouldShowLights()Z
    .locals 1

    .line 411
    iget-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->i:Z

    return v0
.end method

.method public shouldVibrate()Z
    .locals 1

    .line 426
    iget-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->k:Z

    return v0
.end method

.method public toBuilder()Landroidx/core/app/NotificationChannelCompat$Builder;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 341
    new-instance v0, Landroidx/core/app/NotificationChannelCompat$Builder;

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->a:Ljava/lang/String;

    iget v2, p0, Landroidx/core/app/NotificationChannelCompat;->c:I

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationChannelCompat$Builder;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->b:Ljava/lang/CharSequence;

    .line 342
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->d:Ljava/lang/String;

    .line 343
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setDescription(Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->e:Ljava/lang/String;

    .line 344
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/core/app/NotificationChannelCompat;->f:Z

    .line 345
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setShowBadge(Z)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->g:Landroid/net/Uri;

    iget-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->h:Landroid/media/AudioAttributes;

    .line 346
    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationChannelCompat$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/core/app/NotificationChannelCompat;->i:Z

    .line 347
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setLightsEnabled(Z)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/core/app/NotificationChannelCompat;->j:I

    .line 348
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setLightColor(I)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/core/app/NotificationChannelCompat;->k:Z

    .line 349
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setVibrationEnabled(Z)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->l:[J

    .line 350
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setVibrationPattern([J)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->m:Ljava/lang/String;

    iget-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->n:Ljava/lang/String;

    .line 351
    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationChannelCompat$Builder;->setConversationId(Ljava/lang/String;Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    return-object v0
.end method
