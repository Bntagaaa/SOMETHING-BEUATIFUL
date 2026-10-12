.class final enum Lcom/google/common/graph/Graphs$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Graphs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/graph/Graphs$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/graph/Graphs$a;

.field public static final enum b:Lcom/google/common/graph/Graphs$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 612
    new-instance v0, Lcom/google/common/graph/Graphs$a;

    .line 611
    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 612
    sput-object v0, Lcom/google/common/graph/Graphs$a;->a:Lcom/google/common/graph/Graphs$a;

    .line 613
    new-instance v0, Lcom/google/common/graph/Graphs$a;

    .line 611
    const-string v1, "COMPLETE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 613
    sput-object v0, Lcom/google/common/graph/Graphs$a;->b:Lcom/google/common/graph/Graphs$a;

    return-void
.end method
