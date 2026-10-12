.class Landroidx/transition/d;
.super Landroidx/transition/TransitionListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 135
    iput-object p1, p0, Landroidx/transition/d;->a:Landroid/view/View;

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

    .line 138
    iget-object v0, p0, Landroidx/transition/d;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/transition/f0;->b(Landroid/view/View;F)V

    .line 128
    sget-object v1, Landroidx/transition/f0;->a:Landroidx/transition/h0;

    invoke-virtual {v1, v0}, Landroidx/transition/g0;->clearNonTransitionAlpha(Landroid/view/View;)V

    .line 140
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method
