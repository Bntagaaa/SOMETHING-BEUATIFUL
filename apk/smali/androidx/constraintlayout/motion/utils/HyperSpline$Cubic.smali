.class public Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/HyperSpline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cubic"
.end annotation


# static fields
.field public static final HALF:D = 0.5

.field public static final THIRD:D = 0.3333333333333333


# instance fields
.field public final a:D

.field public final b:D

.field public final c:D

.field public final d:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-wide p1, p0, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->a:D

    .line 183
    iput-wide p3, p0, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->b:D

    .line 184
    iput-wide p5, p0, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->c:D

    .line 185
    iput-wide p7, p0, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->d:D

    return-void
.end method


# virtual methods
.method public eval(D)D
    .locals 4

    .line 192
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->d:D

    mul-double v0, v0, p1

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->c:D

    add-double/2addr v0, v2

    mul-double v0, v0, p1

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->b:D

    add-double/2addr v0, v2

    mul-double v0, v0, p1

    iget-wide p1, p0, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->a:D

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public vel(D)D
    .locals 6

    .line 201
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->d:D

    const-wide v2, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double v0, v0, v2

    mul-double v0, v0, p1

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->c:D

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v4

    add-double/2addr v2, v0

    mul-double v2, v2, p1

    iget-wide p1, p0, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->b:D

    add-double/2addr v2, p1

    return-wide v2
.end method
