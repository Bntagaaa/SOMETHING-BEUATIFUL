.class public final enum Lcom/google/appinventor/components/common/FileScope;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/FileScope;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum App:Lcom/google/appinventor/components/common/FileScope;

.field public static final enum Asset:Lcom/google/appinventor/components/common/FileScope;

.field public static final enum Cache:Lcom/google/appinventor/components/common/FileScope;

.field public static final enum Legacy:Lcom/google/appinventor/components/common/FileScope;

.field public static final enum Private:Lcom/google/appinventor/components/common/FileScope;

.field public static final enum Shared:Lcom/google/appinventor/components/common/FileScope;

.field public static final a:Ljava/util/HashMap;

.field public static final synthetic b:[Lcom/google/appinventor/components/common/FileScope;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 23
    new-instance v6, Lcom/google/appinventor/components/common/FileScope;

    .line 17
    const-string v7, "App"

    invoke-direct {v6, v7, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    sput-object v6, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    .line 29
    new-instance v7, Lcom/google/appinventor/components/common/FileScope;

    .line 17
    const-string v8, "Asset"

    invoke-direct {v7, v8, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v7, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    .line 34
    new-instance v8, Lcom/google/appinventor/components/common/FileScope;

    .line 17
    const-string v9, "Cache"

    invoke-direct {v8, v9, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    sput-object v8, Lcom/google/appinventor/components/common/FileScope;->Cache:Lcom/google/appinventor/components/common/FileScope;

    .line 40
    new-instance v9, Lcom/google/appinventor/components/common/FileScope;

    .line 17
    const-string v10, "Legacy"

    invoke-direct {v9, v10, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    sput-object v9, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    .line 45
    new-instance v10, Lcom/google/appinventor/components/common/FileScope;

    .line 17
    const-string v11, "Private"

    invoke-direct {v10, v11, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    sput-object v10, Lcom/google/appinventor/components/common/FileScope;->Private:Lcom/google/appinventor/components/common/FileScope;

    .line 51
    new-instance v11, Lcom/google/appinventor/components/common/FileScope;

    .line 17
    const-string v12, "Shared"

    invoke-direct {v11, v12, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    sput-object v11, Lcom/google/appinventor/components/common/FileScope;->Shared:Lcom/google/appinventor/components/common/FileScope;

    const/4 v12, 0x6

    .line 17
    new-array v12, v12, [Lcom/google/appinventor/components/common/FileScope;

    aput-object v6, v12, v4

    aput-object v7, v12, v5

    aput-object v8, v12, v3

    aput-object v9, v12, v2

    aput-object v10, v12, v1

    aput-object v11, v12, v0

    .line 17
    sput-object v12, Lcom/google/appinventor/components/common/FileScope;->b:[Lcom/google/appinventor/components/common/FileScope;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/FileScope;->a:Ljava/util/HashMap;

    .line 56
    invoke-static {}, Lcom/google/appinventor/components/common/FileScope;->values()[Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v2, v0, v4

    .line 57
    sget-object v3, Lcom/google/appinventor/components/common/FileScope;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/FileScope;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v4, v5

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/FileScope;
    .locals 1

    .line 62
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/FileScope;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/FileScope;
    .locals 1

    .line 17
    const-class v0, Lcom/google/appinventor/components/common/FileScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/FileScope;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/FileScope;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->b:[Lcom/google/appinventor/components/common/FileScope;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/FileScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/FileScope;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/FileScope;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 67
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
