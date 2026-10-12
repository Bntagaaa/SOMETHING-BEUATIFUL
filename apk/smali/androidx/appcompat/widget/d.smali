.class Landroidx/appcompat/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/widget/AppCompatCheckedTextView;

.field public b:Landroid/content/res/ColorStateList;

.field public c:Landroid/graphics/PorterDuff$Mode;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatCheckedTextView;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Landroidx/appcompat/widget/d;->b:Landroid/content/res/ColorStateList;

    .line 44
    iput-object v0, p0, Landroidx/appcompat/widget/d;->c:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Landroidx/appcompat/widget/d;->d:Z

    .line 46
    iput-boolean v0, p0, Landroidx/appcompat/widget/d;->e:Z

    .line 51
    iput-object p1, p0, Landroidx/appcompat/widget/d;->a:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 133
    iget-object v0, p0, Landroidx/appcompat/widget/d;->a:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-static {v0}, Landroidx/core/widget/CheckedTextViewCompat;->getCheckMarkDrawable(Landroid/widget/CheckedTextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 135
    iget-boolean v2, p0, Landroidx/appcompat/widget/d;->d:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroidx/appcompat/widget/d;->e:Z

    if-eqz v2, :cond_4

    .line 136
    :cond_0
    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 138
    iget-boolean v2, p0, Landroidx/appcompat/widget/d;->d:Z

    if-eqz v2, :cond_1

    .line 139
    iget-object v2, p0, Landroidx/appcompat/widget/d;->b:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 141
    :cond_1
    iget-boolean v2, p0, Landroidx/appcompat/widget/d;->e:Z

    if-eqz v2, :cond_2

    .line 142
    iget-object v2, p0, Landroidx/appcompat/widget/d;->c:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 146
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 149
    :cond_3
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method
