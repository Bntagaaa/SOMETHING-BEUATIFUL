.class public final enum Lkotlin/io/path/OnErrorResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/io/path/OnErrorResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0003\u0008\u0087\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lkotlin/io/path/OnErrorResult;",
        "",
        "SKIP_SUBTREE",
        "TERMINATE",
        "kotlin-stdlib-jdk7"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.8"
.end annotation

.annotation build Lkotlin/io/path/ExperimentalPathApi;
.end annotation


# static fields
.field public static final enum SKIP_SUBTREE:Lkotlin/io/path/OnErrorResult;

.field public static final enum TERMINATE:Lkotlin/io/path/OnErrorResult;

.field public static final synthetic a:[Lkotlin/io/path/OnErrorResult;

.field public static final synthetic b:Lkotlin/enums/EnumEntries;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 21
    new-instance v2, Lkotlin/io/path/OnErrorResult;

    .line 13
    const-string v3, "SKIP_SUBTREE"

    invoke-direct {v2, v3, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    sput-object v2, Lkotlin/io/path/OnErrorResult;->SKIP_SUBTREE:Lkotlin/io/path/OnErrorResult;

    .line 27
    new-instance v3, Lkotlin/io/path/OnErrorResult;

    .line 13
    const-string v4, "TERMINATE"

    invoke-direct {v3, v4, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v3, Lkotlin/io/path/OnErrorResult;->TERMINATE:Lkotlin/io/path/OnErrorResult;

    const/4 v4, 0x2

    .line 0
    new-array v4, v4, [Lkotlin/io/path/OnErrorResult;

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    .line 27
    sput-object v4, Lkotlin/io/path/OnErrorResult;->a:[Lkotlin/io/path/OnErrorResult;

    invoke-static {v4}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lkotlin/io/path/OnErrorResult;->b:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lkotlin/io/path/OnErrorResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/io/path/OnErrorResult;->b:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/io/path/OnErrorResult;
    .locals 1

    const-class v0, Lkotlin/io/path/OnErrorResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 28
    check-cast p0, Lkotlin/io/path/OnErrorResult;

    return-object p0
.end method

.method public static values()[Lkotlin/io/path/OnErrorResult;
    .locals 1

    sget-object v0, Lkotlin/io/path/OnErrorResult;->a:[Lkotlin/io/path/OnErrorResult;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 28
    check-cast v0, [Lkotlin/io/path/OnErrorResult;

    return-object v0
.end method
