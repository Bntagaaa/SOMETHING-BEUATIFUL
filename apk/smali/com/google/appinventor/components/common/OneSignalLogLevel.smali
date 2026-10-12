.class public final enum Lcom/google/appinventor/components/common/OneSignalLogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/OneSignalLogLevel;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Debug:Lcom/google/appinventor/components/common/OneSignalLogLevel;

.field public static final enum Error:Lcom/google/appinventor/components/common/OneSignalLogLevel;

.field public static final enum Fatal:Lcom/google/appinventor/components/common/OneSignalLogLevel;

.field public static final enum Info:Lcom/google/appinventor/components/common/OneSignalLogLevel;

.field public static final enum None:Lcom/google/appinventor/components/common/OneSignalLogLevel;

.field public static final enum Verbose:Lcom/google/appinventor/components/common/OneSignalLogLevel;

.field public static final enum Warn:Lcom/google/appinventor/components/common/OneSignalLogLevel;

.field public static final b:Ljava/util/HashMap;

.field public static final synthetic c:[Lcom/google/appinventor/components/common/OneSignalLogLevel;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 7
    new-instance v0, Lcom/google/appinventor/components/common/OneSignalLogLevel;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/google/appinventor/components/common/OneSignalLogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/OneSignalLogLevel;->None:Lcom/google/appinventor/components/common/OneSignalLogLevel;

    .line 8
    new-instance v1, Lcom/google/appinventor/components/common/OneSignalLogLevel;

    const-string v3, "Info"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/google/appinventor/components/common/OneSignalLogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/OneSignalLogLevel;->Info:Lcom/google/appinventor/components/common/OneSignalLogLevel;

    .line 9
    new-instance v3, Lcom/google/appinventor/components/common/OneSignalLogLevel;

    const-string v5, "Verbose"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/google/appinventor/components/common/OneSignalLogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/appinventor/components/common/OneSignalLogLevel;->Verbose:Lcom/google/appinventor/components/common/OneSignalLogLevel;

    .line 10
    new-instance v5, Lcom/google/appinventor/components/common/OneSignalLogLevel;

    const-string v7, "Debug"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/google/appinventor/components/common/OneSignalLogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/appinventor/components/common/OneSignalLogLevel;->Debug:Lcom/google/appinventor/components/common/OneSignalLogLevel;

    .line 11
    new-instance v7, Lcom/google/appinventor/components/common/OneSignalLogLevel;

    const-string v9, "Warn"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lcom/google/appinventor/components/common/OneSignalLogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/google/appinventor/components/common/OneSignalLogLevel;->Warn:Lcom/google/appinventor/components/common/OneSignalLogLevel;

    .line 12
    new-instance v9, Lcom/google/appinventor/components/common/OneSignalLogLevel;

    const-string v11, "Error"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Lcom/google/appinventor/components/common/OneSignalLogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/google/appinventor/components/common/OneSignalLogLevel;->Error:Lcom/google/appinventor/components/common/OneSignalLogLevel;

    .line 13
    new-instance v11, Lcom/google/appinventor/components/common/OneSignalLogLevel;

    const-string v13, "Fatal"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Lcom/google/appinventor/components/common/OneSignalLogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/google/appinventor/components/common/OneSignalLogLevel;->Fatal:Lcom/google/appinventor/components/common/OneSignalLogLevel;

    const/4 v13, 0x7

    .line 6
    new-array v13, v13, [Lcom/google/appinventor/components/common/OneSignalLogLevel;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 6
    sput-object v13, Lcom/google/appinventor/components/common/OneSignalLogLevel;->c:[Lcom/google/appinventor/components/common/OneSignalLogLevel;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/OneSignalLogLevel;->b:Ljava/util/HashMap;

    .line 29
    invoke-static {}, Lcom/google/appinventor/components/common/OneSignalLogLevel;->values()[Lcom/google/appinventor/components/common/OneSignalLogLevel;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 30
    sget-object v5, Lcom/google/appinventor/components/common/OneSignalLogLevel;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/OneSignalLogLevel;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v2, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/google/appinventor/components/common/OneSignalLogLevel;->a:Ljava/lang/String;

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/OneSignalLogLevel;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/appinventor/components/common/OneSignalLogLevel;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/OneSignalLogLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/OneSignalLogLevel;
    .locals 1

    .line 6
    const-class v0, Lcom/google/appinventor/components/common/OneSignalLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/OneSignalLogLevel;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/OneSignalLogLevel;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/appinventor/components/common/OneSignalLogLevel;->c:[Lcom/google/appinventor/components/common/OneSignalLogLevel;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/OneSignalLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/OneSignalLogLevel;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/OneSignalLogLevel;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/appinventor/components/common/OneSignalLogLevel;->a:Ljava/lang/String;

    return-object v0
.end method
