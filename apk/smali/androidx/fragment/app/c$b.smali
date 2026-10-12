.class Landroidx/fragment/app/c$b;
.super Landroidx/fragment/app/c$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public c:Z

.field public d:Z

.field public e:Landroidx/fragment/app/x$a;


# virtual methods
.method public final c(Landroid/content/Context;)Landroidx/fragment/app/x$a;
    .locals 4

    .line 795
    iget-boolean v0, p0, Landroidx/fragment/app/c$b;->d:Z

    if-eqz v0, :cond_0

    .line 796
    iget-object p1, p0, Landroidx/fragment/app/c$b;->e:Landroidx/fragment/app/x$a;

    return-object p1

    .line 799
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/b1$c;

    invoke-virtual {v0}, Landroidx/fragment/app/b1$c;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 800
    invoke-virtual {v0}, Landroidx/fragment/app/b1$c;->getFinalState()Landroidx/fragment/app/b1$c$b;

    move-result-object v0

    sget-object v2, Landroidx/fragment/app/b1$c$b;->b:Landroidx/fragment/app/b1$c$b;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Landroidx/fragment/app/c$b;->c:Z

    .line 798
    invoke-static {p1, v1, v0, v2}, Landroidx/fragment/app/x;->a(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/x$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/c$b;->e:Landroidx/fragment/app/x$a;

    .line 802
    iput-boolean v3, p0, Landroidx/fragment/app/c$b;->d:Z

    return-object p1
.end method
