.class final enum Landroidx/fragment/app/b1$c$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/b1$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/fragment/app/b1$c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/fragment/app/b1$c$b;

.field public static final enum b:Landroidx/fragment/app/b1$c$b;

.field public static final enum c:Landroidx/fragment/app/b1$c$b;

.field public static final enum d:Landroidx/fragment/app/b1$c$b;

.field public static final synthetic e:[Landroidx/fragment/app/b1$c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 389
    new-instance v4, Landroidx/fragment/app/b1$c$b;

    .line 385
    const-string v5, "REMOVED"

    invoke-direct {v4, v5, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 389
    sput-object v4, Landroidx/fragment/app/b1$c$b;->a:Landroidx/fragment/app/b1$c$b;

    .line 393
    new-instance v5, Landroidx/fragment/app/b1$c$b;

    .line 385
    const-string v6, "VISIBLE"

    invoke-direct {v5, v6, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 393
    sput-object v5, Landroidx/fragment/app/b1$c$b;->b:Landroidx/fragment/app/b1$c$b;

    .line 397
    new-instance v6, Landroidx/fragment/app/b1$c$b;

    .line 385
    const-string v7, "GONE"

    invoke-direct {v6, v7, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 397
    sput-object v6, Landroidx/fragment/app/b1$c$b;->c:Landroidx/fragment/app/b1$c$b;

    .line 401
    new-instance v7, Landroidx/fragment/app/b1$c$b;

    .line 385
    const-string v8, "INVISIBLE"

    invoke-direct {v7, v8, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 401
    sput-object v7, Landroidx/fragment/app/b1$c$b;->d:Landroidx/fragment/app/b1$c$b;

    const/4 v8, 0x4

    .line 385
    new-array v8, v8, [Landroidx/fragment/app/b1$c$b;

    aput-object v4, v8, v3

    aput-object v5, v8, v2

    aput-object v6, v8, v1

    aput-object v7, v8, v0

    sput-object v8, Landroidx/fragment/app/b1$c$b;->e:[Landroidx/fragment/app/b1$c$b;

    return-void
.end method

.method public static b(I)Landroidx/fragment/app/b1$c$b;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    .line 432
    sget-object p0, Landroidx/fragment/app/b1$c$b;->c:Landroidx/fragment/app/b1$c$b;

    return-object p0

    .line 434
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown visibility "

    .line 0
    invoke-static {p0, v1}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 434
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_1
    sget-object p0, Landroidx/fragment/app/b1$c$b;->d:Landroidx/fragment/app/b1$c$b;

    return-object p0

    .line 428
    :cond_2
    sget-object p0, Landroidx/fragment/app/b1$c$b;->b:Landroidx/fragment/app/b1$c$b;

    return-object p0
.end method

.method public static c(Landroid/view/View;)Landroidx/fragment/app/b1$c$b;
    .locals 2

    .line 412
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 413
    sget-object p0, Landroidx/fragment/app/b1$c$b;->d:Landroidx/fragment/app/b1$c$b;

    return-object p0

    .line 415
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-static {p0}, Landroidx/fragment/app/b1$c$b;->b(I)Landroidx/fragment/app/b1$c$b;

    move-result-object p0

    return-object p0
.end method

.method public static values()[Landroidx/fragment/app/b1$c$b;
    .locals 1

    .line 385
    sget-object v0, Landroidx/fragment/app/b1$c$b;->e:[Landroidx/fragment/app/b1$c$b;

    invoke-virtual {v0}, [Landroidx/fragment/app/b1$c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/fragment/app/b1$c$b;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 5

    .line 444
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "FragmentManager"

    const/4 v2, 0x2

    if-eqz v0, :cond_6

    const/4 v3, 0x1

    const-string v4, "SpecialEffectsController: Setting view "

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    .line 470
    :cond_0
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to INVISIBLE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x4

    .line 475
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 463
    :cond_2
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to GONE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v0, 0x8

    .line 467
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 456
    :cond_4
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to VISIBLE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v0, 0x0

    .line 460
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 446
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 448
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SpecialEffectsController: Removing view "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_7
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    :goto_0
    return-void
.end method
