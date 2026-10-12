.class public final Landroidx/core/view/ContentInfoCompat$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroidx/core/view/ContentInfoCompat$c;


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 2
    .param p1    # Landroid/content/ClipData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 519
    new-instance v0, Landroidx/core/view/ContentInfoCompat$b;

    invoke-direct {v0, p1, p2}, Landroidx/core/view/ContentInfoCompat$b;-><init>(Landroid/content/ClipData;I)V

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$c;

    return-void

    .line 521
    :cond_0
    new-instance v0, Landroidx/core/view/ContentInfoCompat$d;

    .line 618
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput-object p1, v0, Landroidx/core/view/ContentInfoCompat$d;->a:Landroid/content/ClipData;

    .line 620
    iput p2, v0, Landroidx/core/view/ContentInfoCompat$d;->b:I

    .line 521
    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$c;

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/ContentInfoCompat;)V
    .locals 2
    .param p1    # Landroidx/core/view/ContentInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 505
    new-instance v0, Landroidx/core/view/ContentInfoCompat$b;

    invoke-direct {v0, p1}, Landroidx/core/view/ContentInfoCompat$b;-><init>(Landroidx/core/view/ContentInfoCompat;)V

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$c;

    return-void

    .line 507
    :cond_0
    new-instance v0, Landroidx/core/view/ContentInfoCompat$d;

    .line 623
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 624
    invoke-virtual {p1}, Landroidx/core/view/ContentInfoCompat;->getClip()Landroid/content/ClipData;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/view/ContentInfoCompat$d;->a:Landroid/content/ClipData;

    .line 625
    invoke-virtual {p1}, Landroidx/core/view/ContentInfoCompat;->getSource()I

    move-result v1

    iput v1, v0, Landroidx/core/view/ContentInfoCompat$d;->b:I

    .line 626
    invoke-virtual {p1}, Landroidx/core/view/ContentInfoCompat;->getFlags()I

    move-result v1

    iput v1, v0, Landroidx/core/view/ContentInfoCompat$d;->c:I

    .line 627
    invoke-virtual {p1}, Landroidx/core/view/ContentInfoCompat;->getLinkUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/view/ContentInfoCompat$d;->d:Landroid/net/Uri;

    .line 628
    invoke-virtual {p1}, Landroidx/core/view/ContentInfoCompat;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, v0, Landroidx/core/view/ContentInfoCompat$d;->e:Landroid/os/Bundle;

    .line 507
    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$c;

    return-void
.end method


# virtual methods
.method public build()Landroidx/core/view/ContentInfoCompat;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 592
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$c;

    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$c;->build()Landroidx/core/view/ContentInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public setClip(Landroid/content/ClipData;)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 1
    .param p1    # Landroid/content/ClipData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 533
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$c;

    invoke-interface {v0, p1}, Landroidx/core/view/ContentInfoCompat$c;->setClip(Landroid/content/ClipData;)V

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 583
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$c;

    invoke-interface {v0, p1}, Landroidx/core/view/ContentInfoCompat$c;->setExtras(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public setFlags(I)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 558
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$c;

    invoke-interface {v0, p1}, Landroidx/core/view/ContentInfoCompat$c;->setFlags(I)V

    return-object p0
.end method

.method public setLinkUri(Landroid/net/Uri;)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 571
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$c;

    invoke-interface {v0, p1}, Landroidx/core/view/ContentInfoCompat$c;->setLinkUri(Landroid/net/Uri;)V

    return-object p0
.end method

.method public setSource(I)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 545
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$c;

    invoke-interface {v0, p1}, Landroidx/core/view/ContentInfoCompat$c;->setSource(I)V

    return-object p0
.end method
