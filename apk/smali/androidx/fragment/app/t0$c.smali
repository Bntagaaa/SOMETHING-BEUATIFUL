.class Landroidx/fragment/app/t0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/t0;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/util/ArrayList;

.field public final synthetic g:Landroidx/fragment/app/t0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/t0;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/t0$c;->g:Landroidx/fragment/app/t0;

    iput-object p2, p0, Landroidx/fragment/app/t0$c;->a:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/t0$c;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Landroidx/fragment/app/t0$c;->c:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/fragment/app/t0$c;->d:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/fragment/app/t0$c;->e:Ljava/lang/Object;

    iput-object p7, p0, Landroidx/fragment/app/t0$c;->f:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    .line 241
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 3

    const/4 p1, 0x0

    .line 228
    iget-object v0, p0, Landroidx/fragment/app/t0$c;->g:Landroidx/fragment/app/t0;

    iget-object v1, p0, Landroidx/fragment/app/t0$c;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 229
    iget-object v2, p0, Landroidx/fragment/app/t0$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/fragment/app/t0;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 231
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/t0$c;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 232
    iget-object v2, p0, Landroidx/fragment/app/t0$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/fragment/app/t0;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 234
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/t0$c;->e:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 235
    iget-object v2, p0, Landroidx/fragment/app/t0$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/fragment/app/t0;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
