.class Lcom/google/common/collect/h;
.super Lcom/google/common/collect/j$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/j<",
        "Ljava/lang/Object;",
        ">.a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/collect/j;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/j;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/google/common/collect/h;->e:Lcom/google/common/collect/j;

    invoke-direct {p0, p1}, Lcom/google/common/collect/j$a;-><init>(Lcom/google/common/collect/j;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/google/common/collect/h;->e:Lcom/google/common/collect/j;

    iget-object v0, v0, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/r4;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/r4;->c(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
