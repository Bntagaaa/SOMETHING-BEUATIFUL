.class final Landroidx/core/graphics/drawable/d;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Landroid/graphics/drawable/Drawable$ConstantState;

.field public c:Landroid/content/res/ColorStateList;

.field public d:Landroid/graphics/PorterDuff$Mode;


# virtual methods
.method public getChangingConfigurations()I
    .locals 2

    .line 61
    iget v0, p0, Landroidx/core/graphics/drawable/d;->a:I

    .line 62
    iget-object v1, p0, Landroidx/core/graphics/drawable/d;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Landroidx/core/graphics/drawable/d;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 54
    new-instance v0, Landroidx/core/graphics/drawable/c;

    .line 52
    invoke-direct {v0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 53
    iput-object p0, v0, Landroidx/core/graphics/drawable/b;->d:Landroidx/core/graphics/drawable/d;

    .line 74
    iget-object v1, p0, Landroidx/core/graphics/drawable/d;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/graphics/drawable/b;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    :cond_0
    invoke-static {}, Landroidx/core/graphics/drawable/c;->c()V

    return-object v0
.end method
