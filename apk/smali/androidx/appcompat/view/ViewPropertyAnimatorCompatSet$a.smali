.class Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;)V
    .locals 0

    .line 121
    iput-object p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->c:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 122
    iput-boolean p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->a:Z

    .line 123
    iput p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->b:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .line 144
    iget p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->b:I

    iget-object v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->c:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    iget-object v1, v0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 145
    iget-object p1, v0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->d:Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 146
    invoke-interface {p1, v1}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    .line 137
    iput p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->b:I

    .line 138
    iput-boolean p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->a:Z

    .line 86
    iput-boolean p1, v0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->e:Z

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 127
    iget-boolean p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->a:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->a:Z

    .line 131
    iget-object p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->c:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    iget-object p1, p1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->d:Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 132
    invoke-interface {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
