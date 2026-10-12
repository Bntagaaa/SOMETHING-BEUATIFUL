.class Landroidx/appcompat/widget/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/widget/b$e;

.field public final synthetic b:Landroidx/appcompat/widget/b;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/b;Landroidx/appcompat/widget/b$e;)V
    .locals 0

    .line 782
    iput-object p1, p0, Landroidx/appcompat/widget/b$c;->b:Landroidx/appcompat/widget/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    iput-object p2, p0, Landroidx/appcompat/widget/b$c;->a:Landroidx/appcompat/widget/b$e;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 788
    iget-object v0, p0, Landroidx/appcompat/widget/b$c;->b:Landroidx/appcompat/widget/b;

    invoke-static {v0}, Landroidx/appcompat/widget/b;->e(Landroidx/appcompat/widget/b;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 789
    invoke-static {v0}, Landroidx/appcompat/widget/b;->f(Landroidx/appcompat/widget/b;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->changeMenuMode()V

    .line 791
    :cond_0
    invoke-static {v0}, Landroidx/appcompat/widget/b;->g(Landroidx/appcompat/widget/b;)Landroidx/appcompat/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 792
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/b$c;->a:Landroidx/appcompat/widget/b$e;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 793
    iput-object v1, v0, Landroidx/appcompat/widget/b;->o:Landroidx/appcompat/widget/b$e;

    :cond_1
    const/4 v1, 0x0

    .line 795
    iput-object v1, v0, Landroidx/appcompat/widget/b;->q:Landroidx/appcompat/widget/b$c;

    return-void
.end method
