.class Lcom/google/android/material/bottomappbar/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Landroidx/appcompat/widget/ActionMenuView;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/c;->e:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iput-object p2, p0, Lcom/google/android/material/bottomappbar/c;->b:Landroidx/appcompat/widget/ActionMenuView;

    iput p3, p0, Lcom/google/android/material/bottomappbar/c;->c:I

    iput-boolean p4, p0, Lcom/google/android/material/bottomappbar/c;->d:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 805
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/c;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 810
    iget-boolean p1, p0, Lcom/google/android/material/bottomappbar/c;->a:Z

    if-nez p1, :cond_1

    .line 111
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/c;->e:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->i0:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 812
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->replaceMenu(I)V

    .line 111
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/c;->b:Landroidx/appcompat/widget/ActionMenuView;

    iget v2, p0, Lcom/google/android/material/bottomappbar/c;->c:I

    iget-boolean v3, p0, Lcom/google/android/material/bottomappbar/c;->d:Z

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->w(Landroidx/appcompat/widget/ActionMenuView;IZZ)V

    :cond_1
    return-void
.end method
