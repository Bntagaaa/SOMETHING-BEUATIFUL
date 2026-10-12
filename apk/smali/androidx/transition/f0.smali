.class Landroidx/transition/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/transition/h0;

.field public static final b:Landroid/util/Property;

.field public static final c:Landroid/util/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 39
    new-instance v0, Landroidx/transition/k0;

    invoke-direct {v0}, Landroidx/transition/k0;-><init>()V

    sput-object v0, Landroidx/transition/f0;->a:Landroidx/transition/h0;

    goto :goto_0

    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 41
    new-instance v0, Landroidx/transition/j0;

    invoke-direct {v0}, Landroidx/transition/j0;-><init>()V

    sput-object v0, Landroidx/transition/f0;->a:Landroidx/transition/h0;

    goto :goto_0

    :cond_1
    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    .line 43
    new-instance v0, Landroidx/transition/i0;

    invoke-direct {v0}, Landroidx/transition/i0;-><init>()V

    sput-object v0, Landroidx/transition/f0;->a:Landroidx/transition/h0;

    goto :goto_0

    .line 45
    :cond_2
    new-instance v0, Landroidx/transition/h0;

    invoke-direct {v0}, Landroidx/transition/h0;-><init>()V

    sput-object v0, Landroidx/transition/f0;->a:Landroidx/transition/h0;

    .line 56
    :goto_0
    new-instance v0, Landroidx/transition/f0$a;

    .line 57
    const-class v1, Ljava/lang/Float;

    const-string v2, "translationAlpha"

    invoke-direct {v0, v1, v2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 56
    sput-object v0, Landroidx/transition/f0;->b:Landroid/util/Property;

    .line 71
    new-instance v0, Landroidx/transition/f0$b;

    .line 72
    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    invoke-direct {v0, v1, v2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 71
    sput-object v0, Landroidx/transition/f0;->c:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6

    .line 199
    sget-object v0, Landroidx/transition/f0;->a:Landroidx/transition/h0;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/transition/l0;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    return-void
.end method

.method public static b(Landroid/view/View;F)V
    .locals 1

    .line 107
    sget-object v0, Landroidx/transition/f0;->a:Landroidx/transition/h0;

    invoke-virtual {v0, p0, p1}, Landroidx/transition/g0;->setTransitionAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public static c(Landroid/view/View;I)V
    .locals 1

    .line 145
    sget-object v0, Landroidx/transition/f0;->a:Landroidx/transition/h0;

    invoke-virtual {v0, p0, p1}, Landroidx/transition/l0;->setTransitionVisibility(Landroid/view/View;I)V

    return-void
.end method
