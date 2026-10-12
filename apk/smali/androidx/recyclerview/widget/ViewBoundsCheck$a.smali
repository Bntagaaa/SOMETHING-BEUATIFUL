.class Landroidx/recyclerview/widget/ViewBoundsCheck$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ViewBoundsCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->a:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    .line 166
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->a:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 167
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->d:I

    iget v5, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->b:I

    if-le v1, v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-ne v1, v5, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    and-int/2addr v1, v0

    if-nez v1, :cond_2

    goto :goto_4

    :cond_2
    and-int/lit8 v1, v0, 0x70

    if-eqz v1, :cond_5

    .line 173
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->d:I

    iget v5, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->c:I

    if-le v1, v5, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    if-ne v1, v5, :cond_4

    const/4 v1, 0x2

    goto :goto_1

    :cond_4
    const/4 v1, 0x4

    :goto_1
    shl-int/2addr v1, v3

    and-int/2addr v1, v0

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    and-int/lit16 v1, v0, 0x700

    if-eqz v1, :cond_8

    .line 179
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->e:I

    iget v5, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->b:I

    if-le v1, v5, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    if-ne v1, v5, :cond_7

    const/4 v1, 0x2

    goto :goto_2

    :cond_7
    const/4 v1, 0x4

    :goto_2
    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v0

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    and-int/lit16 v1, v0, 0x7000

    if-eqz v1, :cond_b

    .line 185
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->e:I

    iget v5, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$a;->c:I

    if-le v1, v5, :cond_9

    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    if-ne v1, v5, :cond_a

    goto :goto_3

    :cond_a
    const/4 v2, 0x4

    :goto_3
    shl-int/lit8 v1, v2, 0xc

    and-int/2addr v0, v1

    if-nez v0, :cond_b

    :goto_4
    const/4 v0, 0x0

    return v0

    :cond_b
    return v4
.end method
