.class Landroidx/appcompat/widget/o;
.super Landroidx/core/content/res/ResourcesCompat$FontCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/ref/WeakReference;

.field public final synthetic d:Landroidx/appcompat/widget/q;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/q;IILjava/lang/ref/WeakReference;)V
    .locals 0

    .line 365
    iput-object p1, p0, Landroidx/appcompat/widget/o;->d:Landroidx/appcompat/widget/q;

    iput p2, p0, Landroidx/appcompat/widget/o;->a:I

    iput p3, p0, Landroidx/appcompat/widget/o;->b:I

    iput-object p4, p0, Landroidx/appcompat/widget/o;->c:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .locals 0

    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;)V
    .locals 3
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 368
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    .line 369
    iget v1, p0, Landroidx/appcompat/widget/o;->a:I

    if-eq v1, v0, :cond_1

    .line 370
    iget v0, p0, Landroidx/appcompat/widget/o;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v1, v0}, Landroidx/appcompat/widget/q$e;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    .line 440
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/o;->d:Landroidx/appcompat/widget/q;

    iget-boolean v1, v0, Landroidx/appcompat/widget/q;->m:Z

    if-eqz v1, :cond_3

    .line 441
    iput-object p1, v0, Landroidx/appcompat/widget/q;->l:Landroid/graphics/Typeface;

    .line 442
    iget-object v1, p0, Landroidx/appcompat/widget/o;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 444
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 445
    iget v0, v0, Landroidx/appcompat/widget/q;->j:I

    .line 446
    new-instance v2, Landroidx/appcompat/widget/p;

    invoke-direct {v2, v1, p1, v0}, Landroidx/appcompat/widget/p;-><init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 453
    :cond_2
    iget v0, v0, Landroidx/appcompat/widget/q;->j:I

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    return-void
.end method
