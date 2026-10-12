.class Landroidx/core/view/ViewCompat$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewCompat$i;->t(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Landroidx/core/view/WindowInsetsCompat;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroidx/core/view/OnApplyWindowInsetsListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4840
    iput-object p1, p0, Landroidx/core/view/ViewCompat$i$a;->b:Landroid/view/View;

    iput-object p2, p0, Landroidx/core/view/ViewCompat$i$a;->c:Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 4841
    iput-object p1, p0, Landroidx/core/view/ViewCompat$i$a;->a:Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 4846
    invoke-static {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 4848
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, Landroidx/core/view/ViewCompat$i$a;->c:Landroidx/core/view/OnApplyWindowInsetsListener;

    const/16 v3, 0x1e

    if-ge v1, v3, :cond_0

    .line 4849
    iget-object v4, p0, Landroidx/core/view/ViewCompat$i$a;->b:Landroid/view/View;

    invoke-static {p2, v4}, Landroidx/core/view/ViewCompat$i;->a(Landroid/view/WindowInsets;Landroid/view/View;)V

    .line 4851
    iget-object p2, p0, Landroidx/core/view/ViewCompat$i$a;->a:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v0, p2}, Landroidx/core/view/WindowInsetsCompat;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4853
    invoke-interface {v2, p1, v0}, Landroidx/core/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    .line 4854
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    .line 4857
    :cond_0
    iput-object v0, p0, Landroidx/core/view/ViewCompat$i$a;->a:Landroidx/core/view/WindowInsetsCompat;

    .line 4858
    invoke-interface {v2, p1, v0}, Landroidx/core/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p2

    if-lt v1, v3, :cond_1

    .line 4861
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    .line 4868
    :cond_1
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 4872
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
