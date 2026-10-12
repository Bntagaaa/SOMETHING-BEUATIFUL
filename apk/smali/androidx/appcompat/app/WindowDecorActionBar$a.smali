.class Landroidx/appcompat/app/WindowDecorActionBar$a;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/WindowDecorActionBar;)V
    .locals 0

    .line 134
    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$a;->a:Landroidx/appcompat/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .line 137
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$a;->a:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-boolean v0, p1, Landroidx/appcompat/app/WindowDecorActionBar;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/appcompat/app/WindowDecorActionBar;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 139
    iget-object v0, p1, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 141
    :cond_0
    iget-object v0, p1, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 142
    iget-object v0, p1, Landroidx/appcompat/app/WindowDecorActionBar;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p1, Landroidx/appcompat/app/WindowDecorActionBar;->z:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 309
    iget-object v1, p1, Landroidx/appcompat/app/WindowDecorActionBar;->p:Landroidx/appcompat/view/ActionMode$Callback;

    if-eqz v1, :cond_1

    .line 310
    iget-object v2, p1, Landroidx/appcompat/app/WindowDecorActionBar;->o:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    invoke-interface {v1, v2}, Landroidx/appcompat/view/ActionMode$Callback;->onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V

    .line 311
    iput-object v0, p1, Landroidx/appcompat/app/WindowDecorActionBar;->o:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    .line 312
    iput-object v0, p1, Landroidx/appcompat/app/WindowDecorActionBar;->p:Landroidx/appcompat/view/ActionMode$Callback;

    .line 145
    :cond_1
    iget-object p1, p1, Landroidx/appcompat/app/WindowDecorActionBar;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_2

    .line 146
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_2
    return-void
.end method
