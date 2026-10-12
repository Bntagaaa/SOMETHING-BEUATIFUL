.class Landroidx/transition/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = true

.field public static b:Ljava/lang/reflect/Method;

.field public static c:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 2

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 57
    invoke-static {p0, p1}, Landroidx/core/view/accessibility/d;->r(Landroid/view/ViewGroup;Z)V

    return-void

    .line 68
    :cond_0
    sget-boolean v0, Landroidx/transition/z;->a:Z

    if-eqz v0, :cond_1

    .line 72
    :try_start_0
    invoke-static {p0, p1}, Landroidx/core/view/accessibility/d;->r(Landroid/view/ViewGroup;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p0, 0x0

    .line 74
    sput-boolean p0, Landroidx/transition/z;->a:Z

    :cond_1
    return-void
.end method
