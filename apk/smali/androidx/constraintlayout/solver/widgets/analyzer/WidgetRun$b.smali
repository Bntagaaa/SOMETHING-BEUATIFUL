.class final enum Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$b;

.field public static final enum b:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$b;

.field public static final synthetic c:[Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 303
    new-instance v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$b;

    .line 303
    const-string v5, "NONE"

    invoke-direct {v4, v5, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 303
    sput-object v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$b;->a:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$b;

    new-instance v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$b;

    .line 303
    const-string v6, "START"

    invoke-direct {v5, v6, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 303
    new-instance v6, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$b;

    .line 303
    const-string v7, "END"

    invoke-direct {v6, v7, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 303
    new-instance v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$b;

    .line 303
    const-string v8, "CENTER"

    invoke-direct {v7, v8, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 303
    sput-object v7, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$b;->b:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$b;

    const/4 v8, 0x4

    new-array v8, v8, [Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$b;

    aput-object v4, v8, v3

    aput-object v5, v8, v2

    aput-object v6, v8, v1

    aput-object v7, v8, v0

    sput-object v8, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$b;->c:[Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$b;

    return-void
.end method

.method public static values()[Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$b;
    .locals 1

    .line 303
    sget-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$b;->c:[Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$b;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$b;

    return-object v0
.end method
