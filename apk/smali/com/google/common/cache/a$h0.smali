.class final Lcom/google/common/cache/a$h0;
.super Lcom/google/common/cache/a$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/a$s<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(ILcom/google/common/cache/f;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    .line 1609
    invoke-direct {p0, p4, p3, p2}, Lcom/google/common/cache/a$s;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/f;)V

    .line 1610
    iput p1, p0, Lcom/google/common/cache/a$h0;->b:I

    return-void
.end method


# virtual methods
.method public copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/f;)Lcom/google/common/cache/a$a0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Lcom/google/common/cache/f<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/a$a0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1621
    new-instance v0, Lcom/google/common/cache/a$h0;

    iget v1, p0, Lcom/google/common/cache/a$h0;->b:I

    invoke-direct {v0, v1, p3, p2, p1}, Lcom/google/common/cache/a$h0;-><init>(ILcom/google/common/cache/f;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .line 1615
    iget v0, p0, Lcom/google/common/cache/a$h0;->b:I

    return v0
.end method
