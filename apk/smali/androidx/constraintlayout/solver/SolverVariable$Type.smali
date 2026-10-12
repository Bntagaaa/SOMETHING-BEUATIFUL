.class public final enum Landroidx/constraintlayout/solver/SolverVariable$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/SolverVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/solver/SolverVariable$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONSTANT:Landroidx/constraintlayout/solver/SolverVariable$Type;

.field public static final enum ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

.field public static final enum SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

.field public static final enum UNKNOWN:Landroidx/constraintlayout/solver/SolverVariable$Type;

.field public static final enum UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

.field public static final synthetic a:[Landroidx/constraintlayout/solver/SolverVariable$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 76
    new-instance v5, Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 72
    const-string v6, "UNRESTRICTED"

    invoke-direct {v5, v6, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    sput-object v5, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 80
    new-instance v6, Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 72
    const-string v7, "CONSTANT"

    invoke-direct {v6, v7, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    sput-object v6, Landroidx/constraintlayout/solver/SolverVariable$Type;->CONSTANT:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 84
    new-instance v7, Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 72
    const-string v8, "SLACK"

    invoke-direct {v7, v8, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    sput-object v7, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 88
    new-instance v8, Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 72
    const-string v9, "ERROR"

    invoke-direct {v8, v9, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    sput-object v8, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 92
    new-instance v9, Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 72
    const-string v10, "UNKNOWN"

    invoke-direct {v9, v10, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    sput-object v9, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNKNOWN:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v10, 0x5

    .line 72
    new-array v10, v10, [Landroidx/constraintlayout/solver/SolverVariable$Type;

    aput-object v5, v10, v4

    aput-object v6, v10, v3

    aput-object v7, v10, v2

    aput-object v8, v10, v1

    aput-object v9, v10, v0

    sput-object v10, Landroidx/constraintlayout/solver/SolverVariable$Type;->a:[Landroidx/constraintlayout/solver/SolverVariable$Type;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable$Type;
    .locals 1

    .line 72
    const-class v0, Landroidx/constraintlayout/solver/SolverVariable$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/solver/SolverVariable$Type;

    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/solver/SolverVariable$Type;
    .locals 1

    .line 72
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->a:[Landroidx/constraintlayout/solver/SolverVariable$Type;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/SolverVariable$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/SolverVariable$Type;

    return-object v0
.end method
