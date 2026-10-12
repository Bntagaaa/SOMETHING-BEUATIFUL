.class final Lcom/google/common/collect/m3$w;
.super Lcom/google/common/collect/m3$o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/m3$o<",
        "TK;TV;",
        "Lcom/google/common/collect/m3$v<",
        "TK;TV;>;",
        "Lcom/google/common/collect/m3$w<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final h:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/m3;II)V
    .locals 0

    .line 2033
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/m3$o;-><init>(Lcom/google/common/collect/m3;II)V

    .line 2026
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/m3$w;->h:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 2084
    iget-object v0, p0, Lcom/google/common/collect/m3$w;->h:Ljava/lang/ref/ReferenceQueue;

    .line 1380
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    .line 2079
    iget-object v0, p0, Lcom/google/common/collect/m3$w;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/m3$o;->b(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method public final k()Lcom/google/common/collect/m3$o;
    .locals 0

    return-object p0
.end method
