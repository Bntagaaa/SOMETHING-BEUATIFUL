.class abstract enum Lcom/google/common/hash/h;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/BloomFilter$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/h$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/h;",
        ">;",
        "Lcom/google/common/hash/BloomFilter$c;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/hash/h$b;

.field public static final synthetic b:[Lcom/google/common/hash/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 45
    new-instance v0, Lcom/google/common/hash/h$a;

    invoke-direct {v0}, Lcom/google/common/hash/h$a;-><init>()V

    .line 93
    new-instance v1, Lcom/google/common/hash/h$b;

    invoke-direct {v1}, Lcom/google/common/hash/h$b;-><init>()V

    sput-object v1, Lcom/google/common/hash/h;->a:Lcom/google/common/hash/h$b;

    const/4 v2, 0x2

    .line 39
    new-array v2, v2, [Lcom/google/common/hash/h;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lcom/google/common/hash/h;->b:[Lcom/google/common/hash/h;

    return-void
.end method

.method public static values()[Lcom/google/common/hash/h;
    .locals 1

    .line 39
    sget-object v0, Lcom/google/common/hash/h;->b:[Lcom/google/common/hash/h;

    invoke-virtual {v0}, [Lcom/google/common/hash/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/h;

    return-object v0
.end method
