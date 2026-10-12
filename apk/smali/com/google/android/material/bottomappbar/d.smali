.class Lcom/google/android/material/bottomappbar/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/ActionMenuView;

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 0

    .line 882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/d;->d:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iput-object p2, p0, Lcom/google/android/material/bottomappbar/d;->a:Landroidx/appcompat/widget/ActionMenuView;

    iput p3, p0, Lcom/google/android/material/bottomappbar/d;->b:I

    iput-boolean p4, p0, Lcom/google/android/material/bottomappbar/d;->c:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 885
    iget v0, p0, Lcom/google/android/material/bottomappbar/d;->b:I

    iget-boolean v1, p0, Lcom/google/android/material/bottomappbar/d;->c:Z

    .line 886
    iget-object v2, p0, Lcom/google/android/material/bottomappbar/d;->d:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget-object v3, p0, Lcom/google/android/material/bottomappbar/d;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuViewTranslationX(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result v0

    int-to-float v0, v0

    .line 885
    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
