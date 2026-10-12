.class public final enum Landroidx/constraintlayout/solver/state/State$Direction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/solver/state/State$Direction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM:Landroidx/constraintlayout/solver/state/State$Direction;

.field public static final enum END:Landroidx/constraintlayout/solver/state/State$Direction;

.field public static final enum LEFT:Landroidx/constraintlayout/solver/state/State$Direction;

.field public static final enum RIGHT:Landroidx/constraintlayout/solver/state/State$Direction;

.field public static final enum START:Landroidx/constraintlayout/solver/state/State$Direction;

.field public static final enum TOP:Landroidx/constraintlayout/solver/state/State$Direction;

.field public static final synthetic a:[Landroidx/constraintlayout/solver/state/State$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 71
    new-instance v6, Landroidx/constraintlayout/solver/state/State$Direction;

    .line 70
    const-string v7, "LEFT"

    invoke-direct {v6, v7, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    sput-object v6, Landroidx/constraintlayout/solver/state/State$Direction;->LEFT:Landroidx/constraintlayout/solver/state/State$Direction;

    .line 72
    new-instance v7, Landroidx/constraintlayout/solver/state/State$Direction;

    .line 70
    const-string v8, "RIGHT"

    invoke-direct {v7, v8, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    sput-object v7, Landroidx/constraintlayout/solver/state/State$Direction;->RIGHT:Landroidx/constraintlayout/solver/state/State$Direction;

    .line 73
    new-instance v8, Landroidx/constraintlayout/solver/state/State$Direction;

    .line 70
    const-string v9, "START"

    invoke-direct {v8, v9, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    sput-object v8, Landroidx/constraintlayout/solver/state/State$Direction;->START:Landroidx/constraintlayout/solver/state/State$Direction;

    .line 74
    new-instance v9, Landroidx/constraintlayout/solver/state/State$Direction;

    .line 70
    const-string v10, "END"

    invoke-direct {v9, v10, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    sput-object v9, Landroidx/constraintlayout/solver/state/State$Direction;->END:Landroidx/constraintlayout/solver/state/State$Direction;

    .line 75
    new-instance v10, Landroidx/constraintlayout/solver/state/State$Direction;

    .line 70
    const-string v11, "TOP"

    invoke-direct {v10, v11, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    sput-object v10, Landroidx/constraintlayout/solver/state/State$Direction;->TOP:Landroidx/constraintlayout/solver/state/State$Direction;

    .line 76
    new-instance v11, Landroidx/constraintlayout/solver/state/State$Direction;

    .line 70
    const-string v12, "BOTTOM"

    invoke-direct {v11, v12, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    sput-object v11, Landroidx/constraintlayout/solver/state/State$Direction;->BOTTOM:Landroidx/constraintlayout/solver/state/State$Direction;

    const/4 v12, 0x6

    .line 70
    new-array v12, v12, [Landroidx/constraintlayout/solver/state/State$Direction;

    aput-object v6, v12, v5

    aput-object v7, v12, v4

    aput-object v8, v12, v3

    aput-object v9, v12, v2

    aput-object v10, v12, v1

    aput-object v11, v12, v0

    sput-object v12, Landroidx/constraintlayout/solver/state/State$Direction;->a:[Landroidx/constraintlayout/solver/state/State$Direction;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/state/State$Direction;
    .locals 1

    .line 70
    const-class v0, Landroidx/constraintlayout/solver/state/State$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/solver/state/State$Direction;

    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/solver/state/State$Direction;
    .locals 1

    .line 70
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Direction;->a:[Landroidx/constraintlayout/solver/state/State$Direction;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/state/State$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/state/State$Direction;

    return-object v0
.end method
