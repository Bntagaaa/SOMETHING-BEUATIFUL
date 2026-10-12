.class Landroidx/transition/ChangeTransform$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Landroid/view/View;

.field public final c:[F

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>(Landroid/view/View;[F)V
    .locals 1

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/transition/ChangeTransform$d;->a:Landroid/graphics/Matrix;

    .line 560
    iput-object p1, p0, Landroidx/transition/ChangeTransform$d;->b:Landroid/view/View;

    .line 561
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Landroidx/transition/ChangeTransform$d;->c:[F

    const/4 p2, 0x2

    .line 562
    aget p2, p1, p2

    iput p2, p0, Landroidx/transition/ChangeTransform$d;->d:F

    const/4 p2, 0x5

    .line 563
    aget p1, p1, p2

    iput p1, p0, Landroidx/transition/ChangeTransform$d;->e:F

    .line 564
    invoke-virtual {p0}, Landroidx/transition/ChangeTransform$d;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 579
    iget v0, p0, Landroidx/transition/ChangeTransform$d;->d:F

    iget-object v1, p0, Landroidx/transition/ChangeTransform$d;->c:[F

    const/4 v2, 0x2

    aput v0, v1, v2

    const/4 v0, 0x5

    .line 580
    iget v2, p0, Landroidx/transition/ChangeTransform$d;->e:F

    aput v2, v1, v0

    .line 581
    iget-object v0, p0, Landroidx/transition/ChangeTransform$d;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 187
    sget-object v1, Landroidx/transition/f0;->a:Landroidx/transition/h0;

    iget-object v2, p0, Landroidx/transition/ChangeTransform$d;->b:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroidx/transition/h0;->setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method
