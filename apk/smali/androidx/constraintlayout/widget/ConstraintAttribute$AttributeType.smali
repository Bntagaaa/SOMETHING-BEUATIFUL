.class public final enum Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttributeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOOLEAN_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum COLOR_DRAWABLE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum COLOR_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum DIMENSION_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum INT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final synthetic a:[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;


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

    .line 52
    new-instance v7, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 51
    const-string v8, "INT_TYPE"

    invoke-direct {v7, v8, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    sput-object v7, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->INT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 53
    new-instance v8, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 51
    const-string v9, "FLOAT_TYPE"

    invoke-direct {v8, v9, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    sput-object v8, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 54
    new-instance v9, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 51
    const-string v10, "COLOR_TYPE"

    invoke-direct {v9, v10, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    sput-object v9, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 55
    new-instance v10, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 51
    const-string v11, "COLOR_DRAWABLE_TYPE"

    invoke-direct {v10, v11, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    sput-object v10, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_DRAWABLE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 56
    new-instance v11, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 51
    const-string v12, "STRING_TYPE"

    invoke-direct {v11, v12, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    sput-object v11, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 57
    new-instance v12, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 51
    const-string v13, "BOOLEAN_TYPE"

    invoke-direct {v12, v13, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v12, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->BOOLEAN_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 58
    new-instance v13, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 51
    const-string v14, "DIMENSION_TYPE"

    invoke-direct {v13, v14, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    sput-object v13, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->DIMENSION_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const/4 v14, 0x7

    .line 51
    new-array v14, v14, [Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    aput-object v7, v14, v6

    aput-object v8, v14, v5

    aput-object v9, v14, v4

    aput-object v10, v14, v3

    aput-object v11, v14, v2

    aput-object v12, v14, v1

    aput-object v13, v14, v0

    sput-object v14, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->a:[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    .locals 1

    .line 51
    const-class v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    .locals 1

    .line 51
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->a:[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v0}, [Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    return-object v0
.end method
