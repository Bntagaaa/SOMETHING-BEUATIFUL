.class final enum Landroidx/profileinstaller/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/profileinstaller/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Landroidx/profileinstaller/e;

.field public static final enum c:Landroidx/profileinstaller/e;

.field public static final enum d:Landroidx/profileinstaller/e;


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Landroidx/profileinstaller/e;

    const-wide/16 v1, 0x0

    const-string v3, "DEX_FILES"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/profileinstaller/e;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroidx/profileinstaller/e;->b:Landroidx/profileinstaller/e;

    .line 31
    new-instance v0, Landroidx/profileinstaller/e;

    const-wide/16 v1, 0x2

    const-string v3, "CLASSES"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/profileinstaller/e;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroidx/profileinstaller/e;->c:Landroidx/profileinstaller/e;

    .line 32
    new-instance v0, Landroidx/profileinstaller/e;

    const-wide/16 v1, 0x3

    const-string v3, "METHODS"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/profileinstaller/e;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroidx/profileinstaller/e;->d:Landroidx/profileinstaller/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-wide p3, p0, Landroidx/profileinstaller/e;->a:J

    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 42
    iget-wide v0, p0, Landroidx/profileinstaller/e;->a:J

    return-wide v0
.end method
