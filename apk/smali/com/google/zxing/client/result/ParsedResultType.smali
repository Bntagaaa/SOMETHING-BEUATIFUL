.class public final enum Lcom/google/zxing/client/result/ParsedResultType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/client/result/ParsedResultType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADDRESSBOOK:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum CALENDAR:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum EMAIL_ADDRESS:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum GEO:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum ISBN:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum PRODUCT:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum SMS:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum TEL:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum TEXT:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum URI:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum WIFI:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final synthetic a:[Lcom/google/zxing/client/result/ParsedResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const/16 v0, 0xa

    const/16 v1, 0x9

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 27
    new-instance v11, Lcom/google/zxing/client/result/ParsedResultType;

    .line 25
    const-string v12, "ADDRESSBOOK"

    invoke-direct {v11, v12, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v11, Lcom/google/zxing/client/result/ParsedResultType;->ADDRESSBOOK:Lcom/google/zxing/client/result/ParsedResultType;

    .line 28
    new-instance v12, Lcom/google/zxing/client/result/ParsedResultType;

    .line 25
    const-string v13, "EMAIL_ADDRESS"

    invoke-direct {v12, v13, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    sput-object v12, Lcom/google/zxing/client/result/ParsedResultType;->EMAIL_ADDRESS:Lcom/google/zxing/client/result/ParsedResultType;

    .line 29
    new-instance v13, Lcom/google/zxing/client/result/ParsedResultType;

    .line 25
    const-string v14, "PRODUCT"

    invoke-direct {v13, v14, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v13, Lcom/google/zxing/client/result/ParsedResultType;->PRODUCT:Lcom/google/zxing/client/result/ParsedResultType;

    .line 30
    new-instance v14, Lcom/google/zxing/client/result/ParsedResultType;

    .line 25
    const-string v15, "URI"

    invoke-direct {v14, v15, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    sput-object v14, Lcom/google/zxing/client/result/ParsedResultType;->URI:Lcom/google/zxing/client/result/ParsedResultType;

    .line 31
    new-instance v15, Lcom/google/zxing/client/result/ParsedResultType;

    const/16 v16, 0x3

    .line 25
    const-string v7, "TEXT"

    invoke-direct {v15, v7, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    sput-object v15, Lcom/google/zxing/client/result/ParsedResultType;->TEXT:Lcom/google/zxing/client/result/ParsedResultType;

    .line 32
    new-instance v7, Lcom/google/zxing/client/result/ParsedResultType;

    const/16 v17, 0x4

    .line 25
    const-string v6, "GEO"

    invoke-direct {v7, v6, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    sput-object v7, Lcom/google/zxing/client/result/ParsedResultType;->GEO:Lcom/google/zxing/client/result/ParsedResultType;

    .line 33
    new-instance v6, Lcom/google/zxing/client/result/ParsedResultType;

    const/16 v18, 0x5

    .line 25
    const-string v5, "TEL"

    invoke-direct {v6, v5, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    sput-object v6, Lcom/google/zxing/client/result/ParsedResultType;->TEL:Lcom/google/zxing/client/result/ParsedResultType;

    .line 34
    new-instance v5, Lcom/google/zxing/client/result/ParsedResultType;

    const/16 v19, 0x6

    .line 25
    const-string v4, "SMS"

    invoke-direct {v5, v4, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    sput-object v5, Lcom/google/zxing/client/result/ParsedResultType;->SMS:Lcom/google/zxing/client/result/ParsedResultType;

    .line 35
    new-instance v4, Lcom/google/zxing/client/result/ParsedResultType;

    const/16 v20, 0x7

    .line 25
    const-string v3, "CALENDAR"

    invoke-direct {v4, v3, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    sput-object v4, Lcom/google/zxing/client/result/ParsedResultType;->CALENDAR:Lcom/google/zxing/client/result/ParsedResultType;

    .line 36
    new-instance v3, Lcom/google/zxing/client/result/ParsedResultType;

    const/16 v21, 0x8

    .line 25
    const-string v2, "WIFI"

    invoke-direct {v3, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    sput-object v3, Lcom/google/zxing/client/result/ParsedResultType;->WIFI:Lcom/google/zxing/client/result/ParsedResultType;

    .line 37
    new-instance v2, Lcom/google/zxing/client/result/ParsedResultType;

    const/16 v22, 0x9

    .line 25
    const-string v1, "ISBN"

    invoke-direct {v2, v1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v2, Lcom/google/zxing/client/result/ParsedResultType;->ISBN:Lcom/google/zxing/client/result/ParsedResultType;

    const/16 v1, 0xb

    .line 25
    new-array v1, v1, [Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v11, v1, v10

    aput-object v12, v1, v9

    aput-object v13, v1, v8

    aput-object v14, v1, v16

    aput-object v15, v1, v17

    aput-object v7, v1, v18

    aput-object v6, v1, v19

    aput-object v5, v1, v20

    aput-object v4, v1, v21

    aput-object v3, v1, v22

    aput-object v2, v1, v0

    sput-object v1, Lcom/google/zxing/client/result/ParsedResultType;->a:[Lcom/google/zxing/client/result/ParsedResultType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/client/result/ParsedResultType;
    .locals 1

    .line 25
    const-class v0, Lcom/google/zxing/client/result/ParsedResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/client/result/ParsedResultType;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/client/result/ParsedResultType;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->a:[Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v0}, [Lcom/google/zxing/client/result/ParsedResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/client/result/ParsedResultType;

    return-object v0
.end method
