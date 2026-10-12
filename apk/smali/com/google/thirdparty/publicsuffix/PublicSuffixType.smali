.class public final enum Lcom/google/thirdparty/publicsuffix/PublicSuffixType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PRIVATE:Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

.field public static final enum REGISTRY:Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

.field public static final synthetic c:[Lcom/google/thirdparty/publicsuffix/PublicSuffixType;


# instance fields
.field public final a:C

.field public final b:C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    const/16 v1, 0x3a

    const/16 v2, 0x2c

    const-string v3, "PRIVATE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;-><init>(Ljava/lang/String;ICC)V

    sput-object v0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->PRIVATE:Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    .line 35
    new-instance v1, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    const/16 v2, 0x21

    const/16 v3, 0x3f

    const-string v5, "REGISTRY"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;-><init>(Ljava/lang/String;ICC)V

    sput-object v1, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->REGISTRY:Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    const/4 v2, 0x2

    .line 28
    new-array v2, v2, [Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    aput-object v0, v2, v4

    aput-object v1, v2, v6

    sput-object v2, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->c:[Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ICC)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-char p3, p0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->a:C

    .line 45
    iput-char p4, p0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->b:C

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/thirdparty/publicsuffix/PublicSuffixType;
    .locals 1

    .line 28
    const-class v0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    return-object p0
.end method

.method public static values()[Lcom/google/thirdparty/publicsuffix/PublicSuffixType;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->c:[Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    invoke-virtual {v0}, [Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    return-object v0
.end method
