.class final enum Lcom/google/common/collect/AbstractIterator$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/AbstractIterator$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/collect/AbstractIterator$b;

.field public static final enum b:Lcom/google/common/collect/AbstractIterator$b;

.field public static final enum c:Lcom/google/common/collect/AbstractIterator$b;

.field public static final enum d:Lcom/google/common/collect/AbstractIterator$b;

.field public static final synthetic e:[Lcom/google/common/collect/AbstractIterator$b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 72
    new-instance v4, Lcom/google/common/collect/AbstractIterator$b;

    .line 70
    const-string v5, "READY"

    invoke-direct {v4, v5, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    sput-object v4, Lcom/google/common/collect/AbstractIterator$b;->a:Lcom/google/common/collect/AbstractIterator$b;

    .line 75
    new-instance v5, Lcom/google/common/collect/AbstractIterator$b;

    .line 70
    const-string v6, "NOT_READY"

    invoke-direct {v5, v6, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    sput-object v5, Lcom/google/common/collect/AbstractIterator$b;->b:Lcom/google/common/collect/AbstractIterator$b;

    .line 78
    new-instance v6, Lcom/google/common/collect/AbstractIterator$b;

    .line 70
    const-string v7, "DONE"

    invoke-direct {v6, v7, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    sput-object v6, Lcom/google/common/collect/AbstractIterator$b;->c:Lcom/google/common/collect/AbstractIterator$b;

    .line 81
    new-instance v7, Lcom/google/common/collect/AbstractIterator$b;

    .line 70
    const-string v8, "FAILED"

    invoke-direct {v7, v8, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    sput-object v7, Lcom/google/common/collect/AbstractIterator$b;->d:Lcom/google/common/collect/AbstractIterator$b;

    const/4 v8, 0x4

    .line 70
    new-array v8, v8, [Lcom/google/common/collect/AbstractIterator$b;

    aput-object v4, v8, v3

    aput-object v5, v8, v2

    aput-object v6, v8, v1

    aput-object v7, v8, v0

    sput-object v8, Lcom/google/common/collect/AbstractIterator$b;->e:[Lcom/google/common/collect/AbstractIterator$b;

    return-void
.end method

.method public static values()[Lcom/google/common/collect/AbstractIterator$b;
    .locals 1

    .line 70
    sget-object v0, Lcom/google/common/collect/AbstractIterator$b;->e:[Lcom/google/common/collect/AbstractIterator$b;

    invoke-virtual {v0}, [Lcom/google/common/collect/AbstractIterator$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/AbstractIterator$b;

    return-object v0
.end method
