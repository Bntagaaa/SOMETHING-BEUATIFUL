.class public final enum Landroidx/constraintlayout/solver/state/Dimension$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/state/Dimension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/solver/state/Dimension$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FIXED:Landroidx/constraintlayout/solver/state/Dimension$Type;

.field public static final enum MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/state/Dimension$Type;

.field public static final enum MATCH_PARENT:Landroidx/constraintlayout/solver/state/Dimension$Type;

.field public static final enum WRAP:Landroidx/constraintlayout/solver/state/Dimension$Type;

.field public static final synthetic a:[Landroidx/constraintlayout/solver/state/Dimension$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v4, Landroidx/constraintlayout/solver/state/Dimension$Type;

    .line 44
    const-string v5, "FIXED"

    invoke-direct {v4, v5, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    sput-object v4, Landroidx/constraintlayout/solver/state/Dimension$Type;->FIXED:Landroidx/constraintlayout/solver/state/Dimension$Type;

    .line 46
    new-instance v5, Landroidx/constraintlayout/solver/state/Dimension$Type;

    .line 44
    const-string v6, "WRAP"

    invoke-direct {v5, v6, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    sput-object v5, Landroidx/constraintlayout/solver/state/Dimension$Type;->WRAP:Landroidx/constraintlayout/solver/state/Dimension$Type;

    .line 47
    new-instance v6, Landroidx/constraintlayout/solver/state/Dimension$Type;

    .line 44
    const-string v7, "MATCH_PARENT"

    invoke-direct {v6, v7, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v6, Landroidx/constraintlayout/solver/state/Dimension$Type;->MATCH_PARENT:Landroidx/constraintlayout/solver/state/Dimension$Type;

    .line 48
    new-instance v7, Landroidx/constraintlayout/solver/state/Dimension$Type;

    .line 44
    const-string v8, "MATCH_CONSTRAINT"

    invoke-direct {v7, v8, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    sput-object v7, Landroidx/constraintlayout/solver/state/Dimension$Type;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/state/Dimension$Type;

    const/4 v8, 0x4

    .line 44
    new-array v8, v8, [Landroidx/constraintlayout/solver/state/Dimension$Type;

    aput-object v4, v8, v3

    aput-object v5, v8, v2

    aput-object v6, v8, v1

    aput-object v7, v8, v0

    sput-object v8, Landroidx/constraintlayout/solver/state/Dimension$Type;->a:[Landroidx/constraintlayout/solver/state/Dimension$Type;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/state/Dimension$Type;
    .locals 1

    .line 44
    const-class v0, Landroidx/constraintlayout/solver/state/Dimension$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/solver/state/Dimension$Type;

    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/solver/state/Dimension$Type;
    .locals 1

    .line 44
    sget-object v0, Landroidx/constraintlayout/solver/state/Dimension$Type;->a:[Landroidx/constraintlayout/solver/state/Dimension$Type;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/state/Dimension$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/state/Dimension$Type;

    return-object v0
.end method
