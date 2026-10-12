.class public final enum Landroidx/constraintlayout/solver/state/State$Constraint;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Constraint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/solver/state/State$Constraint;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BASELINE_TO_BASELINE:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum BOTTOM_TO_BOTTOM:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum BOTTOM_TO_TOP:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum CENTER_HORIZONTALLY:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum CENTER_VERTICALLY:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum END_TO_END:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum END_TO_START:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum LEFT_TO_LEFT:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum LEFT_TO_RIGHT:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum RIGHT_TO_LEFT:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum RIGHT_TO_RIGHT:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum START_TO_END:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum START_TO_START:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum TOP_TO_BOTTOM:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum TOP_TO_TOP:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final synthetic a:[Landroidx/constraintlayout/solver/state/State$Constraint;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    const/16 v1, 0xd

    const/16 v2, 0xc

    const/16 v3, 0xb

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 53
    new-instance v15, Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 52
    const-string v0, "LEFT_TO_LEFT"

    invoke-direct {v15, v0, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    sput-object v15, Landroidx/constraintlayout/solver/state/State$Constraint;->LEFT_TO_LEFT:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 54
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Constraint;

    const/16 v17, 0x0

    .line 52
    const-string v14, "LEFT_TO_RIGHT"

    invoke-direct {v0, v14, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    sput-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->LEFT_TO_RIGHT:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 55
    new-instance v14, Landroidx/constraintlayout/solver/state/State$Constraint;

    const/16 v18, 0x1

    .line 52
    const-string v13, "RIGHT_TO_LEFT"

    invoke-direct {v14, v13, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    sput-object v14, Landroidx/constraintlayout/solver/state/State$Constraint;->RIGHT_TO_LEFT:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 56
    new-instance v13, Landroidx/constraintlayout/solver/state/State$Constraint;

    const/16 v19, 0x2

    .line 52
    const-string v12, "RIGHT_TO_RIGHT"

    invoke-direct {v13, v12, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    sput-object v13, Landroidx/constraintlayout/solver/state/State$Constraint;->RIGHT_TO_RIGHT:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 57
    new-instance v12, Landroidx/constraintlayout/solver/state/State$Constraint;

    const/16 v20, 0x3

    .line 52
    const-string v11, "START_TO_START"

    invoke-direct {v12, v11, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v12, Landroidx/constraintlayout/solver/state/State$Constraint;->START_TO_START:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 58
    new-instance v11, Landroidx/constraintlayout/solver/state/State$Constraint;

    const/16 v21, 0x4

    .line 52
    const-string v10, "START_TO_END"

    invoke-direct {v11, v10, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    sput-object v11, Landroidx/constraintlayout/solver/state/State$Constraint;->START_TO_END:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 59
    new-instance v10, Landroidx/constraintlayout/solver/state/State$Constraint;

    const/16 v22, 0x5

    .line 52
    const-string v9, "END_TO_START"

    invoke-direct {v10, v9, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v10, Landroidx/constraintlayout/solver/state/State$Constraint;->END_TO_START:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 60
    new-instance v9, Landroidx/constraintlayout/solver/state/State$Constraint;

    const/16 v23, 0x6

    .line 52
    const-string v8, "END_TO_END"

    invoke-direct {v9, v8, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    sput-object v9, Landroidx/constraintlayout/solver/state/State$Constraint;->END_TO_END:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 61
    new-instance v8, Landroidx/constraintlayout/solver/state/State$Constraint;

    const/16 v24, 0x7

    .line 52
    const-string v7, "TOP_TO_TOP"

    invoke-direct {v8, v7, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    sput-object v8, Landroidx/constraintlayout/solver/state/State$Constraint;->TOP_TO_TOP:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 62
    new-instance v7, Landroidx/constraintlayout/solver/state/State$Constraint;

    const/16 v25, 0x8

    .line 52
    const-string v6, "TOP_TO_BOTTOM"

    invoke-direct {v7, v6, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    sput-object v7, Landroidx/constraintlayout/solver/state/State$Constraint;->TOP_TO_BOTTOM:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 63
    new-instance v6, Landroidx/constraintlayout/solver/state/State$Constraint;

    const/16 v26, 0x9

    .line 52
    const-string v5, "BOTTOM_TO_TOP"

    invoke-direct {v6, v5, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    sput-object v6, Landroidx/constraintlayout/solver/state/State$Constraint;->BOTTOM_TO_TOP:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 64
    new-instance v5, Landroidx/constraintlayout/solver/state/State$Constraint;

    const/16 v27, 0xa

    .line 52
    const-string v4, "BOTTOM_TO_BOTTOM"

    invoke-direct {v5, v4, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    sput-object v5, Landroidx/constraintlayout/solver/state/State$Constraint;->BOTTOM_TO_BOTTOM:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 65
    new-instance v4, Landroidx/constraintlayout/solver/state/State$Constraint;

    const/16 v28, 0xb

    .line 52
    const-string v3, "BASELINE_TO_BASELINE"

    invoke-direct {v4, v3, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    sput-object v4, Landroidx/constraintlayout/solver/state/State$Constraint;->BASELINE_TO_BASELINE:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 66
    new-instance v3, Landroidx/constraintlayout/solver/state/State$Constraint;

    const/16 v29, 0xc

    .line 52
    const-string v2, "CENTER_HORIZONTALLY"

    invoke-direct {v3, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    sput-object v3, Landroidx/constraintlayout/solver/state/State$Constraint;->CENTER_HORIZONTALLY:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 67
    new-instance v2, Landroidx/constraintlayout/solver/state/State$Constraint;

    const/16 v30, 0xd

    .line 52
    const-string v1, "CENTER_VERTICALLY"

    move-object/from16 v31, v0

    const/16 v0, 0xe

    invoke-direct {v2, v1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    sput-object v2, Landroidx/constraintlayout/solver/state/State$Constraint;->CENTER_VERTICALLY:Landroidx/constraintlayout/solver/state/State$Constraint;

    const/16 v0, 0xf

    .line 52
    new-array v0, v0, [Landroidx/constraintlayout/solver/state/State$Constraint;

    aput-object v15, v0, v17

    aput-object v31, v0, v18

    aput-object v14, v0, v19

    aput-object v13, v0, v20

    aput-object v12, v0, v21

    aput-object v11, v0, v22

    aput-object v10, v0, v23

    aput-object v9, v0, v24

    aput-object v8, v0, v25

    aput-object v7, v0, v26

    aput-object v6, v0, v27

    aput-object v5, v0, v28

    aput-object v4, v0, v29

    aput-object v3, v0, v30

    const/16 v16, 0xe

    aput-object v2, v0, v16

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->a:[Landroidx/constraintlayout/solver/state/State$Constraint;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/state/State$Constraint;
    .locals 1

    .line 52
    const-class v0, Landroidx/constraintlayout/solver/state/State$Constraint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/solver/state/State$Constraint;

    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/solver/state/State$Constraint;
    .locals 1

    .line 52
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->a:[Landroidx/constraintlayout/solver/state/State$Constraint;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/state/State$Constraint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/state/State$Constraint;

    return-object v0
.end method
