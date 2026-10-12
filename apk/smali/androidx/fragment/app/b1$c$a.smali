.class final enum Landroidx/fragment/app/b1$c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/b1$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/fragment/app/b1$c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/fragment/app/b1$c$a;

.field public static final enum b:Landroidx/fragment/app/b1$c$a;

.field public static final enum c:Landroidx/fragment/app/b1$c$a;

.field public static final synthetic d:[Landroidx/fragment/app/b1$c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 488
    new-instance v3, Landroidx/fragment/app/b1$c$a;

    .line 484
    const-string v4, "NONE"

    invoke-direct {v3, v4, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 488
    sput-object v3, Landroidx/fragment/app/b1$c$a;->a:Landroidx/fragment/app/b1$c$a;

    .line 492
    new-instance v4, Landroidx/fragment/app/b1$c$a;

    .line 484
    const-string v5, "ADDING"

    invoke-direct {v4, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 492
    sput-object v4, Landroidx/fragment/app/b1$c$a;->b:Landroidx/fragment/app/b1$c$a;

    .line 496
    new-instance v5, Landroidx/fragment/app/b1$c$a;

    .line 484
    const-string v6, "REMOVING"

    invoke-direct {v5, v6, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 496
    sput-object v5, Landroidx/fragment/app/b1$c$a;->c:Landroidx/fragment/app/b1$c$a;

    const/4 v6, 0x3

    .line 484
    new-array v6, v6, [Landroidx/fragment/app/b1$c$a;

    aput-object v3, v6, v2

    aput-object v4, v6, v1

    aput-object v5, v6, v0

    sput-object v6, Landroidx/fragment/app/b1$c$a;->d:[Landroidx/fragment/app/b1$c$a;

    return-void
.end method

.method public static values()[Landroidx/fragment/app/b1$c$a;
    .locals 1

    .line 484
    sget-object v0, Landroidx/fragment/app/b1$c$a;->d:[Landroidx/fragment/app/b1$c$a;

    invoke-virtual {v0}, [Landroidx/fragment/app/b1$c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/fragment/app/b1$c$a;

    return-object v0
.end method
