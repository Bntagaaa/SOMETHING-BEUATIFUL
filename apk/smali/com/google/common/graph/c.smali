.class abstract Lcom/google/common/graph/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public b:Z

.field public c:Lcom/google/common/graph/ElementOrder;

.field public d:Lcom/google/common/graph/ElementOrder;

.field public e:Lcom/google/common/base/Optional;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/google/common/graph/c;->b:Z

    .line 29
    invoke-static {}, Lcom/google/common/graph/ElementOrder;->insertion()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/c;->c:Lcom/google/common/graph/ElementOrder;

    .line 30
    invoke-static {}, Lcom/google/common/graph/ElementOrder;->unordered()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/c;->d:Lcom/google/common/graph/ElementOrder;

    .line 32
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/c;->e:Lcom/google/common/base/Optional;

    .line 41
    iput-boolean p1, p0, Lcom/google/common/graph/c;->a:Z

    return-void
.end method
