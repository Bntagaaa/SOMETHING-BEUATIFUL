.class public Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$a;,
        Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$c;,
        Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$b;
    }
.end annotation


# static fields
.field public static final TYPE_ACCESSIBILITY_OVERLAY:I = 0x4

.field public static final TYPE_APPLICATION:I = 0x1

.field public static final TYPE_INPUT_METHOD:I = 0x2

.field public static final TYPE_SPLIT_SCREEN_DIVIDER:I = 0x5

.field public static final TYPE_SYSTEM:I = 0x3


# instance fields
.field public final a:Landroid/view/accessibility/AccessibilityWindowInfo;


# direct methods
.method public constructor <init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    return-void
.end method

.method public static obtain()Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 344
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$a;->l()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    invoke-direct {v1, v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static obtain(Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    .locals 1
    .param p0    # Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 364
    :cond_0
    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 365
    invoke-static {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$a;->m(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 85
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    invoke-direct {v0, p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 407
    :cond_1
    instance-of v0, p1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    if-nez v0, :cond_2

    goto :goto_1

    .line 410
    :cond_2
    check-cast p1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    .line 411
    iget-object p1, p1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez v0, :cond_4

    if-nez p1, :cond_3

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1

    .line 414
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAnchor()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 327
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 328
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 329
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$b;->a(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 328
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->e(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 213
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-static {v0, p1}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$a;->a(Landroid/view/accessibility/AccessibilityWindowInfo;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getChild(I)Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 280
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-static {v0, p1}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$a;->b(Landroid/view/accessibility/AccessibilityWindowInfo;I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    invoke-direct {v0, p1}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 265
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$a;->c(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result v0

    return v0
.end method

.method public getDisplayId()I
    .locals 2

    .line 298
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$c;->a(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 174
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$a;->d(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result v0

    return v0
.end method

.method public getLayer()I
    .locals 1

    .line 119
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$a;->e(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result v0

    return v0
.end method

.method public getParent()Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 161
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$a;->f(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    invoke-direct {v1, v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRegionInScreen(Landroid/graphics/Region;)V
    .locals 3
    .param p1    # Landroid/graphics/Region;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    iget-object v2, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    if-lt v0, v1, :cond_0

    .line 193
    invoke-static {v2, p1}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$c;->b(Landroid/view/accessibility/AccessibilityWindowInfo;Landroid/graphics/Region;)V

    return-void

    .line 195
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 196
    invoke-static {v2, v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$a;->a(Landroid/view/accessibility/AccessibilityWindowInfo;Landroid/graphics/Rect;)V

    .line 197
    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public getRoot()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 133
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 134
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$a;->g(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->e(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 313
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 314
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$b;->b(Landroid/view/accessibility/AccessibilityWindowInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 105
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$a;->h(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 396
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAccessibilityFocused()Z
    .locals 1

    .line 252
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$a;->i(Landroid/view/accessibility/AccessibilityWindowInfo;)Z

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 226
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$a;->j(Landroid/view/accessibility/AccessibilityWindowInfo;)Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .line 239
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$a;->k(Landroid/view/accessibility/AccessibilityWindowInfo;)Z

    move-result v0

    return v0
.end method

.method public isInPictureInPictureMode()Z
    .locals 2

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$c;->c(Landroid/view/accessibility/AccessibilityWindowInfo;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public recycle()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccessibilityWindowInfo[id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 422
    invoke-virtual {p0, v1}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 424
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    const-string v2, ", type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    .line 451
    const-string v2, "<UNKNOWN>"

    goto :goto_0

    .line 448
    :cond_0
    const-string v2, "TYPE_ACCESSIBILITY_OVERLAY"

    goto :goto_0

    .line 445
    :cond_1
    const-string v2, "TYPE_SYSTEM"

    goto :goto_0

    .line 442
    :cond_2
    const-string v2, "TYPE_INPUT_METHOD"

    goto :goto_0

    .line 439
    :cond_3
    const-string v2, "TYPE_APPLICATION"

    .line 425
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const-string v2, ", layer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getLayer()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 427
    const-string v2, ", bounds="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 428
    const-string v1, ", focused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 429
    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->isActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 430
    const-string v1, ", hasParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getParent()Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 431
    const-string v1, ", hasChildren="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->getChildCount()I

    move-result v1

    if-lez v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 388
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;->a:Landroid/view/accessibility/AccessibilityWindowInfo;

    return-object v0
.end method
