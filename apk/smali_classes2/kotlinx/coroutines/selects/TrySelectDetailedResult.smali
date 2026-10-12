.class public final enum Lkotlinx/coroutines/selects/TrySelectDetailedResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlinx/coroutines/selects/TrySelectDetailedResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlinx/coroutines/selects/TrySelectDetailedResult;",
        "",
        "SUCCESSFUL",
        "REREGISTER",
        "CANCELLED",
        "ALREADY_SELECTED",
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


# static fields
.field public static final enum ALREADY_SELECTED:Lkotlinx/coroutines/selects/TrySelectDetailedResult;

.field public static final enum CANCELLED:Lkotlinx/coroutines/selects/TrySelectDetailedResult;

.field public static final enum REREGISTER:Lkotlinx/coroutines/selects/TrySelectDetailedResult;

.field public static final enum SUCCESSFUL:Lkotlinx/coroutines/selects/TrySelectDetailedResult;

.field public static final synthetic a:[Lkotlinx/coroutines/selects/TrySelectDetailedResult;

.field public static final synthetic b:Lkotlin/enums/EnumEntries;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 882
    new-instance v4, Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    .line 881
    const-string v5, "SUCCESSFUL"

    invoke-direct {v4, v5, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 882
    sput-object v4, Lkotlinx/coroutines/selects/TrySelectDetailedResult;->SUCCESSFUL:Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    new-instance v5, Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    .line 881
    const-string v6, "REREGISTER"

    invoke-direct {v5, v6, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 882
    sput-object v5, Lkotlinx/coroutines/selects/TrySelectDetailedResult;->REREGISTER:Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    new-instance v6, Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    .line 881
    const-string v7, "CANCELLED"

    invoke-direct {v6, v7, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 882
    sput-object v6, Lkotlinx/coroutines/selects/TrySelectDetailedResult;->CANCELLED:Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    new-instance v7, Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    .line 881
    const-string v8, "ALREADY_SELECTED"

    invoke-direct {v7, v8, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 882
    sput-object v7, Lkotlinx/coroutines/selects/TrySelectDetailedResult;->ALREADY_SELECTED:Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    const/4 v8, 0x4

    .line 0
    new-array v8, v8, [Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    aput-object v4, v8, v3

    aput-object v5, v8, v2

    aput-object v6, v8, v1

    aput-object v7, v8, v0

    .line 882
    sput-object v8, Lkotlinx/coroutines/selects/TrySelectDetailedResult;->a:[Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    invoke-static {v8}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/selects/TrySelectDetailedResult;->b:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lkotlinx/coroutines/selects/TrySelectDetailedResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlinx/coroutines/selects/TrySelectDetailedResult;->b:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/coroutines/selects/TrySelectDetailedResult;
    .locals 1

    const-class v0, Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 883
    check-cast p0, Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    return-object p0
.end method

.method public static values()[Lkotlinx/coroutines/selects/TrySelectDetailedResult;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/selects/TrySelectDetailedResult;->a:[Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 883
    check-cast v0, [Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    return-object v0
.end method
