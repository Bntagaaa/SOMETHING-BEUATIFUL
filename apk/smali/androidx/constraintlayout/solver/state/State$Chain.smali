.class public final enum Landroidx/constraintlayout/solver/state/State$Chain;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Chain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/solver/state/State$Chain;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PACKED:Landroidx/constraintlayout/solver/state/State$Chain;

.field public static final enum SPREAD:Landroidx/constraintlayout/solver/state/State$Chain;

.field public static final enum SPREAD_INSIDE:Landroidx/constraintlayout/solver/state/State$Chain;

.field public static final synthetic a:[Landroidx/constraintlayout/solver/state/State$Chain;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v3, Landroidx/constraintlayout/solver/state/State$Chain;

    .line 89
    const-string v4, "SPREAD"

    invoke-direct {v3, v4, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    sput-object v3, Landroidx/constraintlayout/solver/state/State$Chain;->SPREAD:Landroidx/constraintlayout/solver/state/State$Chain;

    .line 91
    new-instance v4, Landroidx/constraintlayout/solver/state/State$Chain;

    .line 89
    const-string v5, "SPREAD_INSIDE"

    invoke-direct {v4, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    sput-object v4, Landroidx/constraintlayout/solver/state/State$Chain;->SPREAD_INSIDE:Landroidx/constraintlayout/solver/state/State$Chain;

    .line 92
    new-instance v5, Landroidx/constraintlayout/solver/state/State$Chain;

    .line 89
    const-string v6, "PACKED"

    invoke-direct {v5, v6, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    sput-object v5, Landroidx/constraintlayout/solver/state/State$Chain;->PACKED:Landroidx/constraintlayout/solver/state/State$Chain;

    const/4 v6, 0x3

    .line 89
    new-array v6, v6, [Landroidx/constraintlayout/solver/state/State$Chain;

    aput-object v3, v6, v2

    aput-object v4, v6, v1

    aput-object v5, v6, v0

    sput-object v6, Landroidx/constraintlayout/solver/state/State$Chain;->a:[Landroidx/constraintlayout/solver/state/State$Chain;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/state/State$Chain;
    .locals 1

    .line 89
    const-class v0, Landroidx/constraintlayout/solver/state/State$Chain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/solver/state/State$Chain;

    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/solver/state/State$Chain;
    .locals 1

    .line 89
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Chain;->a:[Landroidx/constraintlayout/solver/state/State$Chain;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/state/State$Chain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/state/State$Chain;

    return-object v0
.end method
