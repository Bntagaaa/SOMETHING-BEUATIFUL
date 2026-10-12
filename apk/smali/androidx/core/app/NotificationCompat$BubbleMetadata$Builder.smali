.class public final Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$BubbleMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Landroid/app/PendingIntent;

.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public c:I

.field public d:I

.field public e:I

.field public f:Landroid/app/PendingIntent;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;)V
    .locals 0
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/graphics/drawable/IconCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 8752
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->a:Landroid/app/PendingIntent;

    .line 8753
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->b:Landroidx/core/graphics/drawable/IconCompat;

    return-void

    .line 8750
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Bubbles require non-null icon"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8747
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Bubble requires non-null pending intent"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1e
    .end annotation

    .line 8724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8725
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8728
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->g:Ljava/lang/String;

    return-void

    .line 8726
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Bubble requires a non-null shortcut id"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Landroidx/core/app/NotificationCompat$BubbleMetadata;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 8890
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->a:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8891
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must supply pending intent or shortcut to bubble"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 8894
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 8895
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must supply an icon or shortcut for the bubble"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8898
    :cond_3
    :goto_1
    new-instance v1, Landroidx/core/app/NotificationCompat$BubbleMetadata;

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->a:Landroid/app/PendingIntent;

    iget-object v3, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->f:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->b:Landroidx/core/graphics/drawable/IconCompat;

    iget v5, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->c:I

    iget v6, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->d:I

    iget v7, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->e:I

    .line 8546
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8547
    iput-object v2, v1, Landroidx/core/app/NotificationCompat$BubbleMetadata;->a:Landroid/app/PendingIntent;

    .line 8548
    iput-object v4, v1, Landroidx/core/app/NotificationCompat$BubbleMetadata;->c:Landroidx/core/graphics/drawable/IconCompat;

    .line 8549
    iput v5, v1, Landroidx/core/app/NotificationCompat$BubbleMetadata;->d:I

    .line 8550
    iput v6, v1, Landroidx/core/app/NotificationCompat$BubbleMetadata;->e:I

    .line 8551
    iput-object v3, v1, Landroidx/core/app/NotificationCompat$BubbleMetadata;->b:Landroid/app/PendingIntent;

    .line 8552
    iput v7, v1, Landroidx/core/app/NotificationCompat$BubbleMetadata;->f:I

    .line 8553
    iput-object v0, v1, Landroidx/core/app/NotificationCompat$BubbleMetadata;->g:Ljava/lang/String;

    .line 8900
    invoke-virtual {v1, v7}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->setFlags(I)V

    return-object v1
.end method

.method public setAutoExpandBubble(Z)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    .line 8907
    iget p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->e:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->e:I

    return-object p0

    .line 8909
    :cond_0
    iget p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->e:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->e:I

    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 0
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 8878
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->f:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setDesiredHeight(I)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
            unit = 0x0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 8817
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->c:I

    .line 8818
    iput v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->d:I

    return-object p0
.end method

.method public setDesiredHeightResId(I)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 8833
    iput p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->d:I

    const/4 p1, 0x0

    .line 8834
    iput p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->c:I

    return-object p0
.end method

.method public setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 1
    .param p1    # Landroidx/core/graphics/drawable/IconCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 8794
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 8802
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->b:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0

    .line 8800
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Bubbles require non-null icon"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8795
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Created as a shortcut bubble, cannot set an Icon. Consider using BubbleMetadata.Builder(PendingIntent,Icon) instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 1
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 8766
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 8774
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->a:Landroid/app/PendingIntent;

    return-object p0

    .line 8772
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Bubble requires non-null pending intent"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8767
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Created as a shortcut bubble, cannot set a PendingIntent. Consider using BubbleMetadata.Builder(PendingIntent,Icon) instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSuppressNotification(Z)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    .line 8907
    iget p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->e:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->e:I

    return-object p0

    .line 8909
    :cond_0
    iget p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->e:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->e:I

    return-object p0
.end method
