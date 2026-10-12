.class Landroidx/core/view/WindowInsetsAnimationCompat$a$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/WindowInsetsAnimationCompat$a$a;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroidx/core/view/WindowInsetsAnimationCompat;

.field public final synthetic c:Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

.field public final synthetic d:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$c;->a:Landroid/view/View;

    iput-object p2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$c;->b:Landroidx/core/view/WindowInsetsAnimationCompat;

    iput-object p3, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$c;->c:Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    iput-object p4, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$c;->d:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 852
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$c;->b:Landroidx/core/view/WindowInsetsAnimationCompat;

    iget-object v1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$c;->c:Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    iget-object v2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$c;->a:Landroid/view/View;

    invoke-static {v2, v0, v1}, Landroidx/core/view/WindowInsetsAnimationCompat$a;->d(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)V

    .line 853
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$c;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
