.class final enum Lcom/google/common/graph/Traverser$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/graph/Traverser$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/graph/Traverser$c;

.field public static final enum b:Lcom/google/common/graph/Traverser$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 658
    new-instance v0, Lcom/google/common/graph/Traverser$c;

    .line 657
    const-string v1, "PREORDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 658
    sput-object v0, Lcom/google/common/graph/Traverser$c;->a:Lcom/google/common/graph/Traverser$c;

    .line 659
    new-instance v0, Lcom/google/common/graph/Traverser$c;

    .line 657
    const-string v1, "POSTORDER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 659
    sput-object v0, Lcom/google/common/graph/Traverser$c;->b:Lcom/google/common/graph/Traverser$c;

    return-void
.end method
