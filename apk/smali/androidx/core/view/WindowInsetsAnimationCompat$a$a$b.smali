.class Landroidx/core/view/WindowInsetsAnimationCompat$a$a$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/WindowInsetsAnimationCompat$a$a;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/core/view/WindowInsetsAnimationCompat;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 0

    .line 837
    iput-object p2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$b;->a:Landroidx/core/view/WindowInsetsAnimationCompat;

    iput-object p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$b;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 841
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$b;->a:Landroidx/core/view/WindowInsetsAnimationCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->setFraction(F)V

    .line 842
    iget-object p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$a$a$b;->b:Landroid/view/View;

    invoke-static {p1, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$a;->a(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;)V

    return-void
.end method
