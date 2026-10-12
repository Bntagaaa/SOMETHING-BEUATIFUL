.class abstract enum Lcom/google/common/cache/a$t;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/cache/a$t;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/cache/a$t$a;

.field public static final enum b:Lcom/google/common/cache/a$t$b;

.field public static final enum c:Lcom/google/common/cache/a$t$c;

.field public static final synthetic d:[Lcom/google/common/cache/a$t;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 378
    new-instance v0, Lcom/google/common/cache/a$t$a;

    invoke-direct {v0}, Lcom/google/common/cache/a$t$a;-><init>()V

    sput-object v0, Lcom/google/common/cache/a$t;->a:Lcom/google/common/cache/a$t$a;

    .line 392
    new-instance v1, Lcom/google/common/cache/a$t$b;

    invoke-direct {v1}, Lcom/google/common/cache/a$t$b;-><init>()V

    sput-object v1, Lcom/google/common/cache/a$t;->b:Lcom/google/common/cache/a$t$b;

    .line 407
    new-instance v2, Lcom/google/common/cache/a$t$c;

    invoke-direct {v2}, Lcom/google/common/cache/a$t$c;-><init>()V

    sput-object v2, Lcom/google/common/cache/a$t;->c:Lcom/google/common/cache/a$t$c;

    const/4 v3, 0x3

    .line 372
    new-array v3, v3, [Lcom/google/common/cache/a$t;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    sput-object v3, Lcom/google/common/cache/a$t;->d:[Lcom/google/common/cache/a$t;

    return-void
.end method

.method public static values()[Lcom/google/common/cache/a$t;
    .locals 1

    .line 372
    sget-object v0, Lcom/google/common/cache/a$t;->d:[Lcom/google/common/cache/a$t;

    invoke-virtual {v0}, [Lcom/google/common/cache/a$t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/a$t;

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/google/common/base/Equivalence;
.end method

.method public abstract b(ILcom/google/common/cache/a$r;Lcom/google/common/cache/f;Ljava/lang/Object;)Lcom/google/common/cache/a$a0;
.end method
