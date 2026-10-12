.class final enum Lcom/google/common/util/concurrent/j0$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/j0$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/util/concurrent/j0$c;

.field public static final enum b:Lcom/google/common/util/concurrent/j0$c;

.field public static final enum c:Lcom/google/common/util/concurrent/j0$c;

.field public static final enum d:Lcom/google/common/util/concurrent/j0$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    new-instance v0, Lcom/google/common/util/concurrent/j0$c;

    .line 52
    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    sput-object v0, Lcom/google/common/util/concurrent/j0$c;->a:Lcom/google/common/util/concurrent/j0$c;

    .line 56
    new-instance v0, Lcom/google/common/util/concurrent/j0$c;

    .line 52
    const-string v1, "QUEUING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    sput-object v0, Lcom/google/common/util/concurrent/j0$c;->b:Lcom/google/common/util/concurrent/j0$c;

    .line 58
    new-instance v0, Lcom/google/common/util/concurrent/j0$c;

    .line 52
    const-string v1, "QUEUED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    sput-object v0, Lcom/google/common/util/concurrent/j0$c;->c:Lcom/google/common/util/concurrent/j0$c;

    .line 59
    new-instance v0, Lcom/google/common/util/concurrent/j0$c;

    .line 52
    const-string v1, "RUNNING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v0, Lcom/google/common/util/concurrent/j0$c;->d:Lcom/google/common/util/concurrent/j0$c;

    return-void
.end method
