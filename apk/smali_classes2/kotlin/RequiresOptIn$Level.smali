.class public final enum Lkotlin/RequiresOptIn$Level;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/RequiresOptIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/RequiresOptIn$Level;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0003\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lkotlin/RequiresOptIn$Level;",
        "",
        "WARNING",
        "ERROR",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum ERROR:Lkotlin/RequiresOptIn$Level;

.field public static final enum WARNING:Lkotlin/RequiresOptIn$Level;

.field public static final synthetic a:[Lkotlin/RequiresOptIn$Level;

.field public static final synthetic b:Lkotlin/enums/EnumEntries;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    new-instance v2, Lkotlin/RequiresOptIn$Level;

    .line 106
    const-string v3, "WARNING"

    invoke-direct {v2, v3, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    sput-object v2, Lkotlin/RequiresOptIn$Level;->WARNING:Lkotlin/RequiresOptIn$Level;

    .line 111
    new-instance v3, Lkotlin/RequiresOptIn$Level;

    .line 106
    const-string v4, "ERROR"

    invoke-direct {v3, v4, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 111
    sput-object v3, Lkotlin/RequiresOptIn$Level;->ERROR:Lkotlin/RequiresOptIn$Level;

    const/4 v4, 0x2

    .line 0
    new-array v4, v4, [Lkotlin/RequiresOptIn$Level;

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    .line 111
    sput-object v4, Lkotlin/RequiresOptIn$Level;->a:[Lkotlin/RequiresOptIn$Level;

    invoke-static {v4}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lkotlin/RequiresOptIn$Level;->b:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lkotlin/RequiresOptIn$Level;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/RequiresOptIn$Level;->b:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/RequiresOptIn$Level;
    .locals 1

    const-class v0, Lkotlin/RequiresOptIn$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 112
    check-cast p0, Lkotlin/RequiresOptIn$Level;

    return-object p0
.end method

.method public static values()[Lkotlin/RequiresOptIn$Level;
    .locals 1

    sget-object v0, Lkotlin/RequiresOptIn$Level;->a:[Lkotlin/RequiresOptIn$Level;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 112
    check-cast v0, [Lkotlin/RequiresOptIn$Level;

    return-object v0
.end method
