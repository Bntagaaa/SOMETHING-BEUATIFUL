.class public Landroidx/appcompat/widget/AppCompatCheckBox;
.super Landroid/widget/CheckBox;
.source "SourceFile"

# interfaces
.implements Landroidx/core/widget/TintableCompoundButton;
.implements Landroidx/core/view/TintableBackgroundView;
.implements Landroidx/appcompat/widget/EmojiCompatConfigurationView;
.implements Landroidx/core/widget/TintableCompoundDrawablesView;


# instance fields
.field public final a:Landroidx/appcompat/widget/e;

.field public final b:Landroidx/appcompat/widget/c;

.field public final c:Landroidx/appcompat/widget/q;

.field public d:Landroidx/appcompat/widget/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    sget v0, Landroidx/appcompat/R$attr;->checkboxStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 79
    invoke-static {p1}, Landroidx/appcompat/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Landroid/view/View;Landroid/content/Context;)V

    .line 83
    new-instance p1, Landroidx/appcompat/widget/e;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/e;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/e;

    .line 84
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/e;->b(Landroid/util/AttributeSet;I)V

    .line 86
    new-instance p1, Landroidx/appcompat/widget/c;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/c;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/c;

    .line 87
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/c;->d(Landroid/util/AttributeSet;I)V

    .line 89
    new-instance p1, Landroidx/appcompat/widget/q;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/q;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->c:Landroidx/appcompat/widget/q;

    .line 90
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/q;->f(Landroid/util/AttributeSet;I)V

    .line 92
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->a()Landroidx/appcompat/widget/g;

    move-result-object p1

    .line 93
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/g;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/appcompat/widget/g;
    .locals 1

    .line 101
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->d:Landroidx/appcompat/widget/g;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Landroidx/appcompat/widget/g;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/g;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->d:Landroidx/appcompat/widget/g;

    .line 104
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->d:Landroidx/appcompat/widget/g;

    return-object v0
.end method

.method public drawableStateChanged()V
    .locals 1

    .line 251
    invoke-super {p0}, Landroid/widget/CheckBox;->drawableStateChanged()V

    .line 252
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->a()V

    .line 255
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->c:Landroidx/appcompat/widget/q;

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {v0}, Landroidx/appcompat/widget/q;->b()V

    :cond_1
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .line 122
    invoke-super {p0}, Landroid/widget/CheckBox;->getCompoundPaddingLeft()I

    move-result v0

    .line 123
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/e;

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, v0, Landroidx/appcompat/widget/e;->b:Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, v0, Landroidx/appcompat/widget/e;->c:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->c:Landroidx/appcompat/widget/q;

    invoke-virtual {v0}, Landroidx/appcompat/widget/q;->d()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->c:Landroidx/appcompat/widget/q;

    invoke-virtual {v0}, Landroidx/appcompat/widget/q;->e()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public isEmojiCompatEnabled()Z
    .locals 1

    .line 278
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->a()Landroidx/appcompat/widget/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/g;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setAllCaps(Z)V
    .locals 1

    .line 267
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setAllCaps(Z)V

    .line 268
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->a()Landroidx/appcompat/widget/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/g;->b(Z)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 235
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/c;

    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {p1}, Landroidx/appcompat/widget/c;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 243
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 244
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/c;->f(I)V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/e;

    if-eqz p1, :cond_1

    .line 117
    iget-boolean v0, p1, Landroidx/appcompat/widget/e;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p1, Landroidx/appcompat/widget/e;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p1, Landroidx/appcompat/widget/e;->f:Z

    .line 123
    invoke-virtual {p1}, Landroidx/appcompat/widget/e;->a()V

    :cond_1
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 284
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 285
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->c:Landroidx/appcompat/widget/q;

    if-eqz p1, :cond_0

    .line 522
    invoke-virtual {p1}, Landroidx/appcompat/widget/q;->b()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x11
    .end annotation

    .line 294
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->c:Landroidx/appcompat/widget/q;

    if-eqz p1, :cond_0

    .line 522
    invoke-virtual {p1}, Landroidx/appcompat/widget/q;->b()V

    :cond_0
    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    .line 273
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->a()Landroidx/appcompat/widget/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/g;->c(Z)V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .param p1    # [Landroid/text/InputFilter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 262
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->a()Landroidx/appcompat/widget/g;

    move-result-object v0

    .line 99
    iget-object v0, v0, Landroidx/appcompat/widget/g;->b:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    .line 99
    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    .line 262
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/c;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->b:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/c;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 95
    iput-object p1, v0, Landroidx/appcompat/widget/e;->b:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 96
    iput-boolean p1, v0, Landroidx/appcompat/widget/e;->d:Z

    .line 98
    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->a()V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->a:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    .line 106
    iput-object p1, v0, Landroidx/appcompat/widget/e;->c:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 107
    iput-boolean p1, v0, Landroidx/appcompat/widget/e;->e:Z

    .line 109
    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->a()V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->c:Landroidx/appcompat/widget/q;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/q;->k(Landroid/content/res/ColorStateList;)V

    .line 338
    invoke-virtual {v0}, Landroidx/appcompat/widget/q;->b()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckBox;->c:Landroidx/appcompat/widget/q;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/q;->l(Landroid/graphics/PorterDuff$Mode;)V

    .line 378
    invoke-virtual {v0}, Landroidx/appcompat/widget/q;->b()V

    return-void
.end method
