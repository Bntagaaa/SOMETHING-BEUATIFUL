.class public final enum Landroidx/constraintlayout/solver/state/State$Helper;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Helper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/solver/state/State$Helper;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALIGN_HORIZONTALLY:Landroidx/constraintlayout/solver/state/State$Helper;

.field public static final enum ALIGN_VERTICALLY:Landroidx/constraintlayout/solver/state/State$Helper;

.field public static final enum BARRIER:Landroidx/constraintlayout/solver/state/State$Helper;

.field public static final enum FLOW:Landroidx/constraintlayout/solver/state/State$Helper;

.field public static final enum HORIZONTAL_CHAIN:Landroidx/constraintlayout/solver/state/State$Helper;

.field public static final enum LAYER:Landroidx/constraintlayout/solver/state/State$Helper;

.field public static final enum VERTICAL_CHAIN:Landroidx/constraintlayout/solver/state/State$Helper;

.field public static final synthetic a:[Landroidx/constraintlayout/solver/state/State$Helper;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 80
    new-instance v7, Landroidx/constraintlayout/solver/state/State$Helper;

    .line 79
    const-string v8, "HORIZONTAL_CHAIN"

    invoke-direct {v7, v8, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    sput-object v7, Landroidx/constraintlayout/solver/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/solver/state/State$Helper;

    .line 81
    new-instance v8, Landroidx/constraintlayout/solver/state/State$Helper;

    .line 79
    const-string v9, "VERTICAL_CHAIN"

    invoke-direct {v8, v9, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    sput-object v8, Landroidx/constraintlayout/solver/state/State$Helper;->VERTICAL_CHAIN:Landroidx/constraintlayout/solver/state/State$Helper;

    .line 82
    new-instance v9, Landroidx/constraintlayout/solver/state/State$Helper;

    .line 79
    const-string v10, "ALIGN_HORIZONTALLY"

    invoke-direct {v9, v10, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    sput-object v9, Landroidx/constraintlayout/solver/state/State$Helper;->ALIGN_HORIZONTALLY:Landroidx/constraintlayout/solver/state/State$Helper;

    .line 83
    new-instance v10, Landroidx/constraintlayout/solver/state/State$Helper;

    .line 79
    const-string v11, "ALIGN_VERTICALLY"

    invoke-direct {v10, v11, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    sput-object v10, Landroidx/constraintlayout/solver/state/State$Helper;->ALIGN_VERTICALLY:Landroidx/constraintlayout/solver/state/State$Helper;

    .line 84
    new-instance v11, Landroidx/constraintlayout/solver/state/State$Helper;

    .line 79
    const-string v12, "BARRIER"

    invoke-direct {v11, v12, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    sput-object v11, Landroidx/constraintlayout/solver/state/State$Helper;->BARRIER:Landroidx/constraintlayout/solver/state/State$Helper;

    .line 85
    new-instance v12, Landroidx/constraintlayout/solver/state/State$Helper;

    .line 79
    const-string v13, "LAYER"

    invoke-direct {v12, v13, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    sput-object v12, Landroidx/constraintlayout/solver/state/State$Helper;->LAYER:Landroidx/constraintlayout/solver/state/State$Helper;

    .line 86
    new-instance v13, Landroidx/constraintlayout/solver/state/State$Helper;

    .line 79
    const-string v14, "FLOW"

    invoke-direct {v13, v14, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    sput-object v13, Landroidx/constraintlayout/solver/state/State$Helper;->FLOW:Landroidx/constraintlayout/solver/state/State$Helper;

    const/4 v14, 0x7

    .line 79
    new-array v14, v14, [Landroidx/constraintlayout/solver/state/State$Helper;

    aput-object v7, v14, v6

    aput-object v8, v14, v5

    aput-object v9, v14, v4

    aput-object v10, v14, v3

    aput-object v11, v14, v2

    aput-object v12, v14, v1

    aput-object v13, v14, v0

    sput-object v14, Landroidx/constraintlayout/solver/state/State$Helper;->a:[Landroidx/constraintlayout/solver/state/State$Helper;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/state/State$Helper;
    .locals 1

    .line 79
    const-class v0, Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/solver/state/State$Helper;

    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/solver/state/State$Helper;
    .locals 1

    .line 79
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->a:[Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/state/State$Helper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/state/State$Helper;

    return-object v0
.end method
