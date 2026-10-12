.class final enum Lcom/google/common/util/concurrent/i$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/util/concurrent/i$a;

.field public static final enum b:Lcom/google/common/util/concurrent/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 317
    new-instance v0, Lcom/google/common/util/concurrent/i$a;

    .line 316
    const-string v1, "OUTPUT_FUTURE_DONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 317
    sput-object v0, Lcom/google/common/util/concurrent/i$a;->a:Lcom/google/common/util/concurrent/i$a;

    .line 318
    new-instance v0, Lcom/google/common/util/concurrent/i$a;

    .line 316
    const-string v1, "ALL_INPUT_FUTURES_PROCESSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 318
    sput-object v0, Lcom/google/common/util/concurrent/i$a;->b:Lcom/google/common/util/concurrent/i$a;

    return-void
.end method
