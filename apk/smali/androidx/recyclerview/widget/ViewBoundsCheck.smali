.class Landroidx/recyclerview/widget/ViewBoundsCheck;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ViewBoundsCheck$b;,
        Landroidx/recyclerview/widget/ViewBoundsCheck$a;,
        Landroidx/recyclerview/widget/ViewBoundsCheck$ViewBounds;
    }
.end annotation


# instance fields
.field public final a:Landroidx/recyclerview/widget/ViewBoundsCheck$b;

.field public final b:Landroidx/recyclerview/widget/ViewBoundsCheck$a;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ViewBoundsCheck$b;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->a:Landroidx/recyclerview/widget/ViewBoundsCheck$b;

    .line 133
    new-instance p1, Landroidx/recyclerview/widget/ViewBoundsCheck$a;

    invoke-direct {p1}, Landroidx/recyclerview/widget/ViewBoundsCheck$a;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->b:Landroidx/recyclerview/widget/ViewBoundsCheck$a;

    return-void
.end method


# virtual methods
.method public final a(IIII)Landroid/view/View;
    .locals 9

    .line 213
    iget-object v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->a:Landroidx/recyclerview/widget/ViewBoundsCheck$b;

    invoke-interface {v0}, Landroidx/recyclerview/widget/ViewBoundsCheck$b;->getParentStart()I

    move-result v1

    .line 214
    invoke-interface {v0}, Landroidx/recyclerview/widget/ViewBoundsCheck$b;->getParentEnd()I

    move-result v2

    if-le p2, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-eq p1, p2, :cond_3

    .line 218
    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/ViewBoundsCheck$b;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 219
    invoke-interface {v0, v5}, Landroidx/recyclerview/widget/ViewBoundsCheck$b;->getChildStart(Landroid/view/View;)I

    move-result v6

    .line 220
    invoke-interface {v0, v5}, Landroidx/recyclerview/widget/ViewBoundsCheck$b;->getChildEnd(Landroid/view/View;)I

    move-result v7

    .line 221
    iget-object v8, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->b:Landroidx/recyclerview/widget/ViewBoundsCheck$a;

    .line 141
    iput v1, v8, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->b:I

    .line 142
    iput v2, v8, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->c:I

    .line 143
    iput v6, v8, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->d:I

    .line 144
    iput v7, v8, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->e:I

    if-eqz p3, :cond_1

    .line 148
    iput p3, v8, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->a:I

    .line 225
    invoke-virtual {v8}, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->a()Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v5

    :cond_1
    if-eqz p4, :cond_2

    .line 148
    iput p4, v8, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->a:I

    .line 233
    invoke-virtual {v8}, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->a()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v4, v5

    :cond_2
    add-int/2addr p1, v3

    goto :goto_1

    :cond_3
    return-object v4
.end method

.method public final b(Landroid/view/View;)Z
    .locals 4

    .line 248
    iget-object v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->a:Landroidx/recyclerview/widget/ViewBoundsCheck$b;

    invoke-interface {v0}, Landroidx/recyclerview/widget/ViewBoundsCheck$b;->getParentStart()I

    move-result v1

    invoke-interface {v0}, Landroidx/recyclerview/widget/ViewBoundsCheck$b;->getParentEnd()I

    move-result v2

    .line 249
    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/ViewBoundsCheck$b;->getChildStart(Landroid/view/View;)I

    move-result v3

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/ViewBoundsCheck$b;->getChildEnd(Landroid/view/View;)I

    move-result p1

    .line 248
    iget-object v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->b:Landroidx/recyclerview/widget/ViewBoundsCheck$a;

    .line 141
    iput v1, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->b:I

    .line 142
    iput v2, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->c:I

    .line 143
    iput v3, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->d:I

    .line 144
    iput p1, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->e:I

    const/16 p1, 0x6003

    .line 148
    iput p1, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->a:I

    .line 253
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->a()Z

    move-result p1

    return p1
.end method
