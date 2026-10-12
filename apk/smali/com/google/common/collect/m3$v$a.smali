.class final Lcom/google/common/collect/m3$v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/m3$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m3$v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/m3$k<",
        "TK;TV;",
        "Lcom/google/common/collect/m3$v<",
        "TK;TV;>;",
        "Lcom/google/common/collect/m3$w<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/collect/m3$v$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 517
    new-instance v0, Lcom/google/common/collect/m3$v$a;

    invoke-direct {v0}, Lcom/google/common/collect/m3$v$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/m3$v$a;->a:Lcom/google/common/collect/m3$v$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy(Lcom/google/common/collect/m3$o;Lcom/google/common/collect/m3$j;Lcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$j;
    .locals 0
    .param p3    # Lcom/google/common/collect/m3$j;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 514
    check-cast p1, Lcom/google/common/collect/m3$w;

    check-cast p2, Lcom/google/common/collect/m3$v;

    check-cast p3, Lcom/google/common/collect/m3$v;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/m3$v$a;->copy(Lcom/google/common/collect/m3$w;Lcom/google/common/collect/m3$v;Lcom/google/common/collect/m3$v;)Lcom/google/common/collect/m3$v;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lcom/google/common/collect/m3$w;Lcom/google/common/collect/m3$v;Lcom/google/common/collect/m3$v;)Lcom/google/common/collect/m3$v;
    .locals 3
    .param p3    # Lcom/google/common/collect/m3$v;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3$w<",
            "TK;TV;>;",
            "Lcom/google/common/collect/m3$v<",
            "TK;TV;>;",
            "Lcom/google/common/collect/m3$v<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/m3$v<",
            "TK;TV;>;"
        }
    .end annotation

    .line 548
    sget v0, Lcom/google/common/collect/m3$o;->g:I

    .line 1941
    invoke-interface {p2}, Lcom/google/common/collect/m3$j;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2024
    :cond_0
    iget-object p1, p1, Lcom/google/common/collect/m3$w;->h:Ljava/lang/ref/ReferenceQueue;

    .line 503
    new-instance v0, Lcom/google/common/collect/m3$v;

    iget-object v1, p2, Lcom/google/common/collect/m3$c;->a:Ljava/lang/Object;

    iget v2, p2, Lcom/google/common/collect/m3$c;->b:I

    invoke-direct {v0, v1, v2, p3}, Lcom/google/common/collect/m3$v;-><init>(Ljava/lang/Object;ILcom/google/common/collect/m3$v;)V

    .line 504
    iget-object p2, p2, Lcom/google/common/collect/m3$v;->d:Lcom/google/common/collect/m3$h0;

    invoke-interface {p2, p1, v0}, Lcom/google/common/collect/m3$h0;->copyFor(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$h0;

    move-result-object p1

    iput-object p1, v0, Lcom/google/common/collect/m3$v;->d:Lcom/google/common/collect/m3$h0;

    return-object v0
.end method

.method public bridge synthetic newEntry(Lcom/google/common/collect/m3$o;Ljava/lang/Object;ILcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$j;
    .locals 0
    .param p4    # Lcom/google/common/collect/m3$j;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 514
    check-cast p1, Lcom/google/common/collect/m3$w;

    check-cast p4, Lcom/google/common/collect/m3$v;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/m3$v$a;->newEntry(Lcom/google/common/collect/m3$w;Ljava/lang/Object;ILcom/google/common/collect/m3$v;)Lcom/google/common/collect/m3$v;

    move-result-object p1

    return-object p1
.end method

.method public newEntry(Lcom/google/common/collect/m3$w;Ljava/lang/Object;ILcom/google/common/collect/m3$v;)Lcom/google/common/collect/m3$v;
    .locals 0
    .param p4    # Lcom/google/common/collect/m3$v;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3$w<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/collect/m3$v<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/m3$v<",
            "TK;TV;>;"
        }
    .end annotation

    .line 566
    new-instance p1, Lcom/google/common/collect/m3$v;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/collect/m3$v;-><init>(Ljava/lang/Object;ILcom/google/common/collect/m3$v;)V

    return-object p1
.end method

.method public bridge synthetic newSegment(Lcom/google/common/collect/m3;II)Lcom/google/common/collect/m3$o;
    .locals 0

    .line 514
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/m3$v$a;->newSegment(Lcom/google/common/collect/m3;II)Lcom/google/common/collect/m3$w;

    move-result-object p1

    return-object p1
.end method

.method public newSegment(Lcom/google/common/collect/m3;II)Lcom/google/common/collect/m3$w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3<",
            "TK;TV;",
            "Lcom/google/common/collect/m3$v<",
            "TK;TV;>;",
            "Lcom/google/common/collect/m3$w<",
            "TK;TV;>;>;II)",
            "Lcom/google/common/collect/m3$w<",
            "TK;TV;>;"
        }
    .end annotation

    .line 540
    new-instance v0, Lcom/google/common/collect/m3$w;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/m3$w;-><init>(Lcom/google/common/collect/m3;II)V

    return-object v0
.end method

.method public bridge synthetic setValue(Lcom/google/common/collect/m3$o;Lcom/google/common/collect/m3$j;Ljava/lang/Object;)V
    .locals 0

    .line 514
    check-cast p1, Lcom/google/common/collect/m3$w;

    check-cast p2, Lcom/google/common/collect/m3$v;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/m3$v$a;->setValue(Lcom/google/common/collect/m3$w;Lcom/google/common/collect/m3$v;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Lcom/google/common/collect/m3$w;Lcom/google/common/collect/m3$v;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3$w<",
            "TK;TV;>;",
            "Lcom/google/common/collect/m3$v<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 2024
    iget-object p1, p1, Lcom/google/common/collect/m3$w;->h:Ljava/lang/ref/ReferenceQueue;

    .line 496
    iget-object v0, p2, Lcom/google/common/collect/m3$v;->d:Lcom/google/common/collect/m3$h0;

    .line 497
    new-instance v1, Lcom/google/common/collect/m3$i0;

    invoke-direct {v1, p1, p3, p2}, Lcom/google/common/collect/m3$i0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/m3$j;)V

    iput-object v1, p2, Lcom/google/common/collect/m3$v;->d:Lcom/google/common/collect/m3$h0;

    .line 498
    invoke-interface {v0}, Lcom/google/common/collect/m3$h0;->clear()V

    return-void
.end method

.method public valueStrength()Lcom/google/common/collect/m3$q;
    .locals 1

    .line 531
    sget-object v0, Lcom/google/common/collect/m3$q;->b:Lcom/google/common/collect/m3$q$b;

    return-object v0
.end method
