.class public Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/pm/ShortcutInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroidx/core/content/pm/ShortcutInfoCompat;

.field public b:Z

.field public c:Ljava/util/HashSet;

.field public d:Ljava/util/HashMap;

.field public e:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/ShortcutInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x19
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    new-instance v0, Landroidx/core/content/pm/ShortcutInfoCompat;

    invoke-direct {v0}, Landroidx/core/content/pm/ShortcutInfoCompat;-><init>()V

    iput-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 607
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->a:Landroid/content/Context;

    .line 608
    invoke-static {p2}, Landroidx/core/content/pm/a;->l(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->b:Ljava/lang/String;

    .line 609
    invoke-static {p2}, Landroidx/core/content/pm/a;->x(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->c:Ljava/lang/String;

    .line 610
    invoke-static {p2}, Landroidx/core/content/pm/a;->v(Landroid/content/pm/ShortcutInfo;)[Landroid/content/Intent;

    move-result-object p1

    .line 611
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/Intent;

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->d:[Landroid/content/Intent;

    .line 612
    invoke-static {p2}, Landroidx/core/content/pm/a;->c(Landroid/content/pm/ShortcutInfo;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->e:Landroid/content/ComponentName;

    .line 613
    invoke-static {p2}, Landroidx/core/content/pm/a;->k(Landroid/content/pm/ShortcutInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->f:Ljava/lang/CharSequence;

    .line 614
    invoke-static {p2}, Landroidx/core/content/pm/a;->w(Landroid/content/pm/ShortcutInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->g:Ljava/lang/CharSequence;

    .line 615
    invoke-static {p2}, Landroidx/core/content/pm/a;->A(Landroid/content/pm/ShortcutInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->h:Ljava/lang/CharSequence;

    .line 616
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-lt p1, v1, :cond_0

    .line 617
    invoke-static {p2}, Landroidx/core/app/f;->a(Landroid/content/pm/ShortcutInfo;)I

    move-result p1

    iput p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->A:I

    goto :goto_1

    .line 619
    :cond_0
    invoke-static {p2}, Landroidx/core/content/pm/a;->D(Landroid/content/pm/ShortcutInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 621
    :goto_0
    iput p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->A:I

    .line 623
    :goto_1
    invoke-static {p2}, Landroidx/core/content/pm/a;->m(Landroid/content/pm/ShortcutInfo;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->l:Ljava/util/Set;

    .line 624
    invoke-static {p2}, Landroidx/core/content/pm/a;->i(Landroid/content/pm/ShortcutInfo;)Landroid/os/PersistableBundle;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 358
    const-string v3, "extraPersonCount"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    .line 362
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 363
    new-array v4, v3, [Landroidx/core/app/Person;

    :goto_2
    if-ge v2, v3, :cond_4

    .line 365
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "extraPerson_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 366
    invoke-virtual {p1, v5}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 365
    invoke-static {v5}, Landroidx/core/app/Person;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroidx/core/app/Person;

    move-result-object v5

    aput-object v5, v4, v2

    move v2, v6

    goto :goto_2

    :cond_3
    :goto_3
    move-object v4, v1

    .line 624
    :cond_4
    iput-object v4, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->k:[Landroidx/core/app/Person;

    .line 625
    iget-object p1, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    invoke-static {p2}, Landroidx/core/content/pm/a;->j(Landroid/content/pm/ShortcutInfo;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->s:Landroid/os/UserHandle;

    .line 626
    iget-object p1, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    invoke-static {p2}, Landroidx/core/content/pm/a;->b(Landroid/content/pm/ShortcutInfo;)J

    move-result-wide v2

    iput-wide v2, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->r:J

    .line 627
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_5

    .line 628
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    invoke-static {p2}, La/a;->u(Landroid/content/pm/ShortcutInfo;)Z

    move-result v2

    iput-boolean v2, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->t:Z

    .line 630
    :cond_5
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    invoke-static {p2}, Landroidx/core/content/pm/a;->u(Landroid/content/pm/ShortcutInfo;)Z

    move-result v2

    iput-boolean v2, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->u:Z

    .line 631
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    invoke-static {p2}, Landroidx/core/content/pm/a;->z(Landroid/content/pm/ShortcutInfo;)Z

    move-result v2

    iput-boolean v2, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->v:Z

    .line 632
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    invoke-static {p2}, Landroidx/core/content/pm/a;->B(Landroid/content/pm/ShortcutInfo;)Z

    move-result v2

    iput-boolean v2, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->w:Z

    .line 633
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    invoke-static {p2}, Landroidx/core/content/pm/a;->C(Landroid/content/pm/ShortcutInfo;)Z

    move-result v2

    iput-boolean v2, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->x:Z

    .line 634
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    invoke-static {p2}, Landroidx/core/content/pm/a;->D(Landroid/content/pm/ShortcutInfo;)Z

    move-result v2

    iput-boolean v2, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->y:Z

    .line 635
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    invoke-static {p2}, Landroidx/core/content/pm/b;->l(Landroid/content/pm/ShortcutInfo;)Z

    move-result v2

    iput-boolean v2, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->z:Z

    .line 636
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    const/16 v2, 0x1d

    if-lt p1, v2, :cond_7

    .line 506
    invoke-static {p2}, Landroidx/appcompat/widget/s;->b(Landroid/content/pm/ShortcutInfo;)Landroid/content/LocusId;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_4

    .line 507
    :cond_6
    invoke-static {p2}, Landroidx/appcompat/widget/s;->b(Landroid/content/pm/ShortcutInfo;)Landroid/content/LocusId;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/content/LocusIdCompat;->toLocusIdCompat(Landroid/content/LocusId;)Landroidx/core/content/LocusIdCompat;

    move-result-object v1

    goto :goto_4

    .line 509
    :cond_7
    invoke-static {p2}, Landroidx/core/content/pm/a;->i(Landroid/content/pm/ShortcutInfo;)Landroid/os/PersistableBundle;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_4

    .line 538
    :cond_8
    const-string v2, "extraLocusId"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_4

    .line 539
    :cond_9
    new-instance v1, Landroidx/core/content/LocusIdCompat;

    invoke-direct {v1, p1}, Landroidx/core/content/LocusIdCompat;-><init>(Ljava/lang/String;)V

    .line 636
    :goto_4
    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->m:Landroidx/core/content/LocusIdCompat;

    .line 637
    iget-object p1, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    invoke-static {p2}, Landroidx/core/content/pm/a;->a(Landroid/content/pm/ShortcutInfo;)I

    move-result v0

    iput v0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->o:I

    .line 638
    iget-object p1, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    invoke-static {p2}, Landroidx/core/content/pm/a;->i(Landroid/content/pm/ShortcutInfo;)Landroid/os/PersistableBundle;

    move-result-object p2

    iput-object p2, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->p:Landroid/os/PersistableBundle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    new-instance v0, Landroidx/core/content/pm/ShortcutInfoCompat;

    invoke-direct {v0}, Landroidx/core/content/pm/ShortcutInfoCompat;-><init>()V

    iput-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 555
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->a:Landroid/content/Context;

    .line 556
    iput-object p2, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/core/content/pm/ShortcutInfoCompat;)V
    .locals 3
    .param p1    # Landroidx/core/content/pm/ShortcutInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    new-instance v0, Landroidx/core/content/pm/ShortcutInfoCompat;

    invoke-direct {v0}, Landroidx/core/content/pm/ShortcutInfoCompat;-><init>()V

    iput-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 565
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->a:Landroid/content/Context;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->a:Landroid/content/Context;

    .line 566
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->b:Ljava/lang/String;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->b:Ljava/lang/String;

    .line 567
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->c:Ljava/lang/String;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->c:Ljava/lang/String;

    .line 568
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->d:[Landroid/content/Intent;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/Intent;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->d:[Landroid/content/Intent;

    .line 569
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->e:Landroid/content/ComponentName;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->e:Landroid/content/ComponentName;

    .line 570
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->f:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->f:Ljava/lang/CharSequence;

    .line 571
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->g:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->g:Ljava/lang/CharSequence;

    .line 572
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->h:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->h:Ljava/lang/CharSequence;

    .line 573
    iget v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->A:I

    iput v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->A:I

    .line 574
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->i:Landroidx/core/graphics/drawable/IconCompat;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->i:Landroidx/core/graphics/drawable/IconCompat;

    .line 575
    iget-boolean v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->j:Z

    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->j:Z

    .line 576
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->s:Landroid/os/UserHandle;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->s:Landroid/os/UserHandle;

    .line 577
    iget-wide v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->r:J

    iput-wide v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->r:J

    .line 578
    iget-boolean v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->t:Z

    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->t:Z

    .line 579
    iget-boolean v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->u:Z

    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->u:Z

    .line 580
    iget-boolean v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->v:Z

    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->v:Z

    .line 581
    iget-boolean v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->w:Z

    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->w:Z

    .line 582
    iget-boolean v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->x:Z

    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->x:Z

    .line 583
    iget-boolean v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->y:Z

    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->y:Z

    .line 584
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->m:Landroidx/core/content/LocusIdCompat;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->m:Landroidx/core/content/LocusIdCompat;

    .line 585
    iget-boolean v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->n:Z

    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->n:Z

    .line 586
    iget-boolean v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->z:Z

    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->z:Z

    .line 587
    iget v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->o:I

    iput v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->o:I

    .line 588
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->k:[Landroidx/core/app/Person;

    if-eqz v1, :cond_0

    .line 589
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/core/app/Person;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->k:[Landroidx/core/app/Person;

    .line 591
    :cond_0
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->l:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 592
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->l:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->l:Ljava/util/Set;

    .line 594
    :cond_1
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->p:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_2

    .line 595
    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->p:Landroid/os/PersistableBundle;

    .line 597
    :cond_2
    iget p1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->B:I

    iput p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->B:I

    return-void
.end method


# virtual methods
.method public addCapabilityBinding(Ljava/lang/String;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingGetterMatchingBuilder"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 907
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->c:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 908
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->c:Ljava/util/HashSet;

    .line 910
    :cond_0
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addCapabilityBinding(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingGetterMatchingBuilder"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/content/pm/ShortcutInfoCompat$Builder;"
        }
    .end annotation

    .line 933
    invoke-virtual {p0, p1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->addCapabilityBinding(Ljava/lang/String;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    .line 935
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 936
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 937
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->d:Ljava/util/HashMap;

    .line 939
    :cond_0
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 940
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->d:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    :cond_1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p0
.end method

.method public build()Landroidx/core/content/pm/ShortcutInfoCompat;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 965
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    iget-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->f:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 968
    iget-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->d:[Landroid/content/Intent;

    if-eqz v1, :cond_a

    array-length v1, v1

    if-eqz v1, :cond_a

    .line 971
    iget-boolean v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->b:Z

    if-eqz v1, :cond_1

    .line 972
    iget-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->m:Landroidx/core/content/LocusIdCompat;

    if-nez v1, :cond_0

    .line 973
    new-instance v1, Landroidx/core/content/LocusIdCompat;

    iget-object v2, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroidx/core/content/LocusIdCompat;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->m:Landroidx/core/content/LocusIdCompat;

    :cond_0
    const/4 v1, 0x1

    .line 975
    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->n:Z

    .line 978
    :cond_1
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->c:Ljava/util/HashSet;

    if-eqz v1, :cond_3

    .line 979
    iget-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->l:Ljava/util/Set;

    if-nez v1, :cond_2

    .line 980
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->l:Ljava/util/Set;

    .line 982
    :cond_2
    iget-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->l:Ljava/util/Set;

    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->c:Ljava/util/HashSet;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 985
    :cond_3
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->d:Ljava/util/HashMap;

    if-eqz v1, :cond_7

    .line 986
    iget-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->p:Landroid/os/PersistableBundle;

    if-nez v1, :cond_4

    .line 987
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->p:Landroid/os/PersistableBundle;

    .line 989
    :cond_4
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 990
    iget-object v3, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->d:Ljava/util/HashMap;

    .line 991
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 992
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 994
    iget-object v5, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->p:Landroid/os/PersistableBundle;

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/String;

    .line 995
    invoke-interface {v4, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 994
    invoke-virtual {v5, v2, v4}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 998
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 999
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 1000
    iget-object v8, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->p:Landroid/os/PersistableBundle;

    const-string v9, "/"

    .line 0
    invoke-static {v2, v9, v5}, L_COROUTINE/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v7, :cond_6

    .line 1001
    new-array v7, v6, [Ljava/lang/String;

    goto :goto_1

    :cond_6
    new-array v9, v6, [Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 1000
    :goto_1
    invoke-virtual {v8, v5, v7}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 1005
    :cond_7
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->e:Landroid/net/Uri;

    if-eqz v1, :cond_9

    .line 1006
    iget-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->p:Landroid/os/PersistableBundle;

    if-nez v1, :cond_8

    .line 1007
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->p:Landroid/os/PersistableBundle;

    .line 1009
    :cond_8
    iget-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->p:Landroid/os/PersistableBundle;

    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->e:Landroid/net/Uri;

    invoke-static {v2}, Landroidx/core/net/UriCompat;->toSafeString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "extraSliceUri"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-object v0

    .line 969
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shortcut must have an intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 966
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shortcut must have a non-empty label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActivity(Landroid/content/ComponentName;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 756
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->e:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setAlwaysBadged()Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 774
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->j:Z

    return-object p0
.end method

.method public setCategories(Ljava/util/Set;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/content/pm/ShortcutInfoCompat$Builder;"
        }
    .end annotation

    .line 813
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->l:Ljava/util/Set;

    return-object p0
.end method

.method public setDisabledMessage(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 678
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setExcludedFromSurfaces(I)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 854
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    iput p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->B:I

    return-object p0
.end method

.method public setExtras(Landroid/os/PersistableBundle;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1
    .param p1    # Landroid/os/PersistableBundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 880
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->p:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 713
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->i:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 693
    new-array v0, v0, [Landroid/content/Intent;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIntents([Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setIntents([Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1
    .param p1    # [Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 704
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->d:[Landroid/content/Intent;

    return-object p0
.end method

.method public setIsConversation()Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 743
    iput-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->b:Z

    return-object p0
.end method

.method public setLocusId(Landroidx/core/content/LocusIdCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1
    .param p1    # Landroidx/core/content/LocusIdCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 727
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->m:Landroidx/core/content/LocusIdCompat;

    return-object p0
.end method

.method public setLongLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 666
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->g:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setLongLived()Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 823
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->n:Z

    return-object p0
.end method

.method public setLongLived(Z)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 834
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    iput-boolean p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->n:Z

    return-object p0
.end method

.method public setPerson(Landroidx/core/app/Person;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 2
    .param p1    # Landroidx/core/app/Person;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 788
    new-array v0, v0, [Landroidx/core/app/Person;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setPersons([Landroidx/core/app/Person;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPersons([Landroidx/core/app/Person;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1
    .param p1    # [Landroidx/core/app/Person;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 796
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->k:[Landroidx/core/app/Person;

    return-object p0
.end method

.method public setRank(I)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 866
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    iput p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->o:I

    return-object p0
.end method

.method public setShortLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 652
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSliceUri(Landroid/net/Uri;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingGetterMatchingBuilder"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 955
    iput-object p1, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->e:Landroid/net/Uri;

    return-object p0
.end method

.method public setTransientExtras(Landroid/os/Bundle;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 890
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->q:Landroid/os/Bundle;

    return-object p0
.end method
