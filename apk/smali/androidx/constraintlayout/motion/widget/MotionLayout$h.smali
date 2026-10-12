.class final enum Landroidx/constraintlayout/motion/widget/MotionLayout$h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/motion/widget/MotionLayout$h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

.field public static final enum b:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

.field public static final enum c:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

.field public static final enum d:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

.field public static final synthetic e:[Landroidx/constraintlayout/motion/widget/MotionLayout$h;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 953
    new-instance v4, Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 952
    const-string v5, "UNDEFINED"

    invoke-direct {v4, v5, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 953
    sput-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->a:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 954
    new-instance v5, Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 952
    const-string v6, "SETUP"

    invoke-direct {v5, v6, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 954
    sput-object v5, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->b:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 955
    new-instance v6, Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 952
    const-string v7, "MOVING"

    invoke-direct {v6, v7, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 955
    sput-object v6, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->c:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 956
    new-instance v7, Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 952
    const-string v8, "FINISHED"

    invoke-direct {v7, v8, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 956
    sput-object v7, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    const/4 v8, 0x4

    .line 952
    new-array v8, v8, [Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    aput-object v4, v8, v3

    aput-object v5, v8, v2

    aput-object v6, v8, v1

    aput-object v7, v8, v0

    sput-object v8, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->e:[Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    return-void
.end method

.method public static values()[Landroidx/constraintlayout/motion/widget/MotionLayout$h;
    .locals 1

    .line 952
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->e:[Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    invoke-virtual {v0}, [Landroidx/constraintlayout/motion/widget/MotionLayout$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    return-object v0
.end method
