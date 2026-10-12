.class final enum Lcom/google/common/util/concurrent/ExecutionSequencer$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ExecutionSequencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/ExecutionSequencer$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/util/concurrent/ExecutionSequencer$e;

.field public static final enum b:Lcom/google/common/util/concurrent/ExecutionSequencer$e;

.field public static final enum c:Lcom/google/common/util/concurrent/ExecutionSequencer$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Lcom/google/common/util/concurrent/ExecutionSequencer$e;

    .line 51
    const-string v1, "NOT_RUN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    sput-object v0, Lcom/google/common/util/concurrent/ExecutionSequencer$e;->a:Lcom/google/common/util/concurrent/ExecutionSequencer$e;

    .line 53
    new-instance v0, Lcom/google/common/util/concurrent/ExecutionSequencer$e;

    .line 51
    const-string v1, "CANCELLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    sput-object v0, Lcom/google/common/util/concurrent/ExecutionSequencer$e;->b:Lcom/google/common/util/concurrent/ExecutionSequencer$e;

    .line 54
    new-instance v0, Lcom/google/common/util/concurrent/ExecutionSequencer$e;

    .line 51
    const-string v1, "STARTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    sput-object v0, Lcom/google/common/util/concurrent/ExecutionSequencer$e;->c:Lcom/google/common/util/concurrent/ExecutionSequencer$e;

    return-void
.end method
