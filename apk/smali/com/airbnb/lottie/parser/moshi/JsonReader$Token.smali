.class public final enum Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum BOOLEAN:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum END_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum END_DOCUMENT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum END_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum NAME:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum NULL:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final synthetic a:[Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const/16 v0, 0x9

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 439
    new-instance v10, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 433
    const-string v11, "BEGIN_ARRAY"

    invoke-direct {v10, v11, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 439
    sput-object v10, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 445
    new-instance v11, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 433
    const-string v12, "END_ARRAY"

    invoke-direct {v11, v12, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 445
    sput-object v11, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 451
    new-instance v12, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 433
    const-string v13, "BEGIN_OBJECT"

    invoke-direct {v12, v13, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 451
    sput-object v12, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 457
    new-instance v13, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 433
    const-string v14, "END_OBJECT"

    invoke-direct {v13, v14, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 457
    sput-object v13, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 463
    new-instance v14, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 433
    const-string v15, "NAME"

    invoke-direct {v14, v15, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 463
    sput-object v14, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NAME:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 468
    new-instance v15, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const/16 v16, 0x4

    .line 433
    const-string v5, "STRING"

    invoke-direct {v15, v5, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 468
    sput-object v15, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 474
    new-instance v5, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const/16 v17, 0x5

    .line 433
    const-string v4, "NUMBER"

    invoke-direct {v5, v4, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 474
    sput-object v5, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 479
    new-instance v4, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const/16 v18, 0x6

    .line 433
    const-string v3, "BOOLEAN"

    invoke-direct {v4, v3, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 479
    sput-object v4, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BOOLEAN:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 484
    new-instance v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const/16 v19, 0x7

    .line 433
    const-string v2, "NULL"

    invoke-direct {v3, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 484
    sput-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NULL:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 491
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const/16 v20, 0x8

    .line 433
    const-string v1, "END_DOCUMENT"

    invoke-direct {v2, v1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 491
    sput-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_DOCUMENT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const/16 v1, 0xa

    .line 433
    new-array v1, v1, [Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    aput-object v10, v1, v9

    aput-object v11, v1, v8

    aput-object v12, v1, v7

    aput-object v13, v1, v6

    aput-object v14, v1, v16

    aput-object v15, v1, v17

    aput-object v5, v1, v18

    aput-object v4, v1, v19

    aput-object v3, v1, v20

    aput-object v2, v1, v0

    sput-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->a:[Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
    .locals 1

    .line 433
    const-class v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
    .locals 1

    .line 433
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->a:[Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0
.end method
