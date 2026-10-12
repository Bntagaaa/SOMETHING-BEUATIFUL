.class public Landroidx/core/widget/ContentLoadingProgressBar;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Z

.field public c:Z

.field public d:Z

.field public final e:Landroidx/core/widget/a;

.field public final f:Landroidx/core/widget/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Landroidx/core/widget/ContentLoadingProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, -0x1

    .line 39
    iput-wide p1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->a:J

    .line 40
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->b:Z

    .line 41
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->c:Z

    .line 42
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->d:Z

    .line 44
    new-instance p1, Landroidx/core/widget/a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/core/widget/a;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;I)V

    iput-object p1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->e:Landroidx/core/widget/a;

    .line 50
    new-instance p1, Landroidx/core/widget/a;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Landroidx/core/widget/a;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;I)V

    iput-object p1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->f:Landroidx/core/widget/a;

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 94
    new-instance v0, Landroidx/core/widget/a;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroidx/core/widget/a;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 68
    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    .line 79
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->e:Landroidx/core/widget/a;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 80
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->f:Landroidx/core/widget/a;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 74
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    .line 79
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->e:Landroidx/core/widget/a;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 80
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->f:Landroidx/core/widget/a;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public show()V
    .locals 2

    .line 129
    new-instance v0, Landroidx/core/widget/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroidx/core/widget/a;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
