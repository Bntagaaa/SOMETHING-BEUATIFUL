.class Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;
.super Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public I:[[I


# direct methods
.method public constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;Landroid/content/res/Resources;)V
    .locals 0

    .line 328
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_0

    .line 331
    iget-object p1, p1, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    return-void

    .line 797
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    array-length p1, p1

    .line 333
    new-array p1, p1, [[I

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 339
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    array-length v1, v0

    new-array v1, v1, [[I

    .line 340
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 341
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 343
    :cond_1
    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    return-void
.end method

.method public final c([I)I
    .locals 4

    .line 353
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    .line 354
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 356
    aget-object v3, v0, v2

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public growArray(II)V
    .locals 2

    .line 377
    invoke-super {p0, p1, p2}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->growArray(II)V

    .line 378
    new-array p2, p2, [[I

    .line 379
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    iput-object p2, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 366
    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 372
    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;Landroid/content/res/Resources;)V

    return-object v0
.end method
