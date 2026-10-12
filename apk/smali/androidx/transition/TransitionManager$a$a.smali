.class Landroidx/transition/TransitionManager$a$a;
.super Landroidx/transition/TransitionListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/TransitionManager$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/collection/ArrayMap;

.field public final synthetic b:Landroidx/transition/TransitionManager$a;


# direct methods
.method public constructor <init>(Landroidx/transition/TransitionManager$a;Landroidx/collection/ArrayMap;)V
    .locals 0

    .line 287
    iput-object p1, p0, Landroidx/transition/TransitionManager$a$a;->b:Landroidx/transition/TransitionManager$a;

    iput-object p2, p0, Landroidx/transition/TransitionManager$a$a;->a:Landroidx/collection/ArrayMap;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 2
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 290
    iget-object v0, p0, Landroidx/transition/TransitionManager$a$a;->b:Landroidx/transition/TransitionManager$a;

    iget-object v0, v0, Landroidx/transition/TransitionManager$a;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/transition/TransitionManager$a$a;->a:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 291
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method
