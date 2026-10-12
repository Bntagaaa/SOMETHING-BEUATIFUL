.class public Lcom/google/appinventor/components/runtime/util/HoneycombUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VIEWGROUP_MEASURED_HEIGHT_STATE_SHIFT:I = 0x10


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combineMeasuredStates(Landroid/view/ViewGroup;II)I
    .locals 0

    .line 26
    invoke-static {p1, p2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p0

    return p0
.end method

.method public static getMeasuredState(Landroid/view/View;)I
    .locals 0

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredState()I

    move-result p0

    return p0
.end method

.method public static makeSpinner(Landroid/content/Context;)Landroid/widget/Spinner;
    .locals 2

    .line 42
    new-instance v0, Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static resolveSizeAndState(Landroid/view/ViewGroup;III)I
    .locals 0

    .line 34
    invoke-static {p1, p2, p3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p0

    return p0
.end method

.method public static viewSetRotate(Landroid/view/View;D)V
    .locals 0

    double-to-float p1, p1

    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
