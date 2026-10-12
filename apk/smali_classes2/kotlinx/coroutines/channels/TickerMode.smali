.class public final enum Lkotlinx/coroutines/channels/TickerMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlinx/coroutines/channels/TickerMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0003\u0008\u0087\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/TickerMode;",
        "",
        "FIXED_PERIOD",
        "FIXED_DELAY",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlinx/coroutines/ObsoleteCoroutinesApi;
.end annotation


# static fields
.field public static final enum FIXED_DELAY:Lkotlinx/coroutines/channels/TickerMode;

.field public static final enum FIXED_PERIOD:Lkotlinx/coroutines/channels/TickerMode;

.field public static final synthetic a:[Lkotlinx/coroutines/channels/TickerMode;

.field public static final synthetic b:Lkotlin/enums/EnumEntries;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    new-instance v2, Lkotlinx/coroutines/channels/TickerMode;

    .line 11
    const-string v3, "FIXED_PERIOD"

    invoke-direct {v2, v3, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v2, Lkotlinx/coroutines/channels/TickerMode;->FIXED_PERIOD:Lkotlinx/coroutines/channels/TickerMode;

    .line 34
    new-instance v3, Lkotlinx/coroutines/channels/TickerMode;

    .line 11
    const-string v4, "FIXED_DELAY"

    invoke-direct {v3, v4, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    sput-object v3, Lkotlinx/coroutines/channels/TickerMode;->FIXED_DELAY:Lkotlinx/coroutines/channels/TickerMode;

    const/4 v4, 0x2

    .line 0
    new-array v4, v4, [Lkotlinx/coroutines/channels/TickerMode;

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    .line 34
    sput-object v4, Lkotlinx/coroutines/channels/TickerMode;->a:[Lkotlinx/coroutines/channels/TickerMode;

    invoke-static {v4}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/TickerMode;->b:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lkotlinx/coroutines/channels/TickerMode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlinx/coroutines/channels/TickerMode;->b:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/coroutines/channels/TickerMode;
    .locals 1

    const-class v0, Lkotlinx/coroutines/channels/TickerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 35
    check-cast p0, Lkotlinx/coroutines/channels/TickerMode;

    return-object p0
.end method

.method public static values()[Lkotlinx/coroutines/channels/TickerMode;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/TickerMode;->a:[Lkotlinx/coroutines/channels/TickerMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, [Lkotlinx/coroutines/channels/TickerMode;

    return-object v0
.end method
