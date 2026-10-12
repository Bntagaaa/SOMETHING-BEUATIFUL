.class public final synthetic Landroidx/core/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/core/widget/ContentLoadingProgressBar;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/widget/ContentLoadingProgressBar;I)V
    .locals 0

    iput p2, p0, Landroidx/core/widget/a;->a:I

    iput-object p1, p0, Landroidx/core/widget/a;->b:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Landroidx/core/widget/a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 99
    iget-object v0, p0, Landroidx/core/widget/a;->b:Landroidx/core/widget/ContentLoadingProgressBar;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/core/widget/ContentLoadingProgressBar;->d:Z

    .line 100
    iget-object v2, v0, Landroidx/core/widget/ContentLoadingProgressBar;->f:Landroidx/core/widget/a;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    .line 101
    iput-boolean v2, v0, Landroidx/core/widget/ContentLoadingProgressBar;->c:Z

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Landroidx/core/widget/ContentLoadingProgressBar;->a:J

    sub-long/2addr v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v8, v2, v6

    if-gez v8, :cond_1

    const-wide/16 v8, -0x1

    cmp-long v10, v4, v8

    if-nez v10, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-boolean v4, v0, Landroidx/core/widget/ContentLoadingProgressBar;->b:Z

    if-nez v4, :cond_2

    .line 113
    iget-object v4, v0, Landroidx/core/widget/ContentLoadingProgressBar;->e:Landroidx/core/widget/a;

    sub-long/2addr v6, v2

    invoke-virtual {v0, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    iput-boolean v1, v0, Landroidx/core/widget/ContentLoadingProgressBar;->b:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x8

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Landroidx/core/widget/a;->b:Landroidx/core/widget/ContentLoadingProgressBar;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroidx/core/widget/ContentLoadingProgressBar;->a:J

    const/4 v1, 0x0

    .line 136
    iput-boolean v1, v0, Landroidx/core/widget/ContentLoadingProgressBar;->d:Z

    .line 137
    iget-object v2, v0, Landroidx/core/widget/ContentLoadingProgressBar;->e:Landroidx/core/widget/a;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 138
    iput-boolean v1, v0, Landroidx/core/widget/ContentLoadingProgressBar;->b:Z

    .line 139
    iget-boolean v1, v0, Landroidx/core/widget/ContentLoadingProgressBar;->c:Z

    if-nez v1, :cond_3

    .line 140
    iget-object v1, v0, Landroidx/core/widget/ContentLoadingProgressBar;->f:Landroidx/core/widget/a;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    .line 141
    iput-boolean v1, v0, Landroidx/core/widget/ContentLoadingProgressBar;->c:Z

    :cond_3
    return-void

    .line 51
    :pswitch_1
    iget-object v0, p0, Landroidx/core/widget/a;->b:Landroidx/core/widget/ContentLoadingProgressBar;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/core/widget/ContentLoadingProgressBar;->c:Z

    .line 52
    iget-boolean v2, v0, Landroidx/core/widget/ContentLoadingProgressBar;->d:Z

    if-nez v2, :cond_4

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/core/widget/ContentLoadingProgressBar;->a:J

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void

    :pswitch_2
    const/4 v0, 0x0

    .line 45
    iget-object v1, p0, Landroidx/core/widget/a;->b:Landroidx/core/widget/ContentLoadingProgressBar;

    iput-boolean v0, v1, Landroidx/core/widget/ContentLoadingProgressBar;->b:Z

    const-wide/16 v2, -0x1

    .line 46
    iput-wide v2, v1, Landroidx/core/widget/ContentLoadingProgressBar;->a:J

    const/16 v0, 0x8

    .line 47
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
