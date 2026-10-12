.class Lcom/google/common/graph/Traverser$b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/Traverser$b;->depthFirstPostOrder(Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Iterable;

.field public final synthetic b:Lcom/google/common/graph/Traverser$b;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/Traverser$b;Ljava/lang/Iterable;)V
    .locals 0

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/Traverser$b$c;->b:Lcom/google/common/graph/Traverser$b;

    iput-object p2, p0, Lcom/google/common/graph/Traverser$b$c;->a:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation

    .line 389
    new-instance v0, Lcom/google/common/graph/Traverser$b$e;

    sget-object v1, Lcom/google/common/graph/Traverser$c;->b:Lcom/google/common/graph/Traverser$c;

    iget-object v2, p0, Lcom/google/common/graph/Traverser$b$c;->b:Lcom/google/common/graph/Traverser$b;

    iget-object v3, p0, Lcom/google/common/graph/Traverser$b$c;->a:Ljava/lang/Iterable;

    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/graph/Traverser$b$e;-><init>(Lcom/google/common/graph/Traverser$b;Ljava/lang/Iterable;Lcom/google/common/graph/Traverser$c;)V

    return-object v0
.end method
