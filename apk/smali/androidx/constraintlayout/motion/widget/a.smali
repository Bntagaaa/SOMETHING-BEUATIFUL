.class abstract Landroidx/constraintlayout/motion/widget/a;
.super Landroidx/constraintlayout/motion/widget/Key;
.source "SourceFile"


# static fields
.field protected static final SELECTION_SLOPE:F = 20.0f


# instance fields
.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/Key;-><init>()V

    .line 31
    sget v0, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/a;->e:I

    return-void
.end method


# virtual methods
.method public final getAttributeNames(Ljava/util/HashSet;)V
    .locals 0

    return-void
.end method

.method public abstract intersects(IILandroid/graphics/RectF;Landroid/graphics/RectF;FF)Z
.end method

.method public abstract positionAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
.end method
