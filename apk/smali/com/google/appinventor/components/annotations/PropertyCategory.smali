.class public final enum Lcom/google/appinventor/components/annotations/PropertyCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/annotations/PropertyCategory;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADVANCED:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum APPLICATION:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum DEPRECATED:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum PRIVACY:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum PUBLISHING:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum THEMING:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum UNSET:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final synthetic b:[Lcom/google/appinventor/components/annotations/PropertyCategory;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 21
    new-instance v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v1, "Behavior"

    const-string v2, "BEHAVIOR"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 29
    new-instance v1, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v2, "Appearance"

    const-string v4, "APPEARANCE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 34
    new-instance v2, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v4, "Deprecated"

    const-string v6, "DEPRECATED"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/annotations/PropertyCategory;->DEPRECATED:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 40
    new-instance v4, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v6, "Unspecified"

    const-string v8, "UNSET"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/annotations/PropertyCategory;->UNSET:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 47
    new-instance v6, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v8, "Application"

    const-string v10, "APPLICATION"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/google/appinventor/components/annotations/PropertyCategory;->APPLICATION:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 55
    new-instance v8, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v10, "Advanced"

    const-string v12, "ADVANCED"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/google/appinventor/components/annotations/PropertyCategory;->ADVANCED:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 57
    new-instance v10, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v12, "General"

    const-string v14, "GENERAL"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 59
    new-instance v12, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v14, "Theming"

    const/16 v16, 0x0

    const-string v3, "THEMING"

    const/16 v17, 0x1

    const/4 v5, 0x7

    invoke-direct {v12, v3, v5, v14}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/google/appinventor/components/annotations/PropertyCategory;->THEMING:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 60
    new-instance v3, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v14, "Privacy"

    const/16 v18, 0x7

    const-string v5, "PRIVACY"

    const/16 v19, 0x2

    const/16 v7, 0x8

    invoke-direct {v3, v5, v7, v14}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/appinventor/components/annotations/PropertyCategory;->PRIVACY:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 61
    new-instance v5, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v14, "Credentials"

    const/16 v20, 0x8

    const-string v7, "CREDENTIALS"

    const/16 v21, 0x3

    const/16 v9, 0x9

    invoke-direct {v5, v7, v9, v14}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 63
    new-instance v7, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v14, "Publishing"

    const/16 v22, 0x9

    const-string v9, "PUBLISHING"

    const/16 v23, 0x4

    const/16 v11, 0xa

    invoke-direct {v7, v9, v11, v14}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/google/appinventor/components/annotations/PropertyCategory;->PUBLISHING:Lcom/google/appinventor/components/annotations/PropertyCategory;

    const/16 v9, 0xb

    .line 13
    new-array v9, v9, [Lcom/google/appinventor/components/annotations/PropertyCategory;

    aput-object v0, v9, v16

    aput-object v1, v9, v17

    aput-object v2, v9, v19

    aput-object v4, v9, v21

    aput-object v6, v9, v23

    aput-object v8, v9, v13

    aput-object v10, v9, v15

    aput-object v12, v9, v18

    aput-object v3, v9, v20

    aput-object v5, v9, v22

    aput-object v7, v9, v11

    .line 13
    sput-object v9, Lcom/google/appinventor/components/annotations/PropertyCategory;->b:[Lcom/google/appinventor/components/annotations/PropertyCategory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput-object p3, p0, Lcom/google/appinventor/components/annotations/PropertyCategory;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/annotations/PropertyCategory;
    .locals 1

    .line 13
    const-class v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/annotations/PropertyCategory;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->b:[Lcom/google/appinventor/components/annotations/PropertyCategory;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/annotations/PropertyCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/annotations/PropertyCategory;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/annotations/PropertyCategory;->a:Ljava/lang/String;

    return-object v0
.end method
