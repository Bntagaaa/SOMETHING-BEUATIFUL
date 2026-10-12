.class final Lcom/google/common/collect/m3$e0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/m3$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m3$e0;
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
        "Lcom/google/common/collect/m3$e0<",
        "TK;TV;>;",
        "Lcom/google/common/collect/m3$f0<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/collect/m3$e0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 892
    new-instance v0, Lcom/google/common/collect/m3$e0$a;

    invoke-direct {v0}, Lcom/google/common/collect/m3$e0$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/m3$e0$a;->a:Lcom/google/common/collect/m3$e0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lcom/google/common/collect/m3$f0;Lcom/google/common/collect/m3$e0;Lcom/google/common/collect/m3$e0;)Lcom/google/common/collect/m3$e0;
    .locals 4
    .param p3    # Lcom/google/common/collect/m3$e0;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3$f0<",
            "TK;TV;>;",
            "Lcom/google/common/collect/m3$e0<",
            "TK;TV;>;",
            "Lcom/google/common/collect/m3$e0<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/m3$e0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 922
    invoke-virtual {p2}, Lcom/google/common/collect/m3$d;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 926
    :cond_0
    sget v0, Lcom/google/common/collect/m3$o;->g:I

    .line 1941
    invoke-interface {p2}, Lcom/google/common/collect/m3$j;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 2152
    :cond_1
    iget-object v0, p1, Lcom/google/common/collect/m3$f0;->h:Ljava/lang/ref/ReferenceQueue;

    .line 2152
    iget-object p1, p1, Lcom/google/common/collect/m3$f0;->i:Ljava/lang/ref/ReferenceQueue;

    .line 866
    new-instance v1, Lcom/google/common/collect/m3$e0;

    .line 867
    invoke-virtual {p2}, Lcom/google/common/collect/m3$d;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget v3, p2, Lcom/google/common/collect/m3$d;->a:I

    invoke-direct {v1, v0, v2, v3, p3}, Lcom/google/common/collect/m3$e0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/m3$e0;)V

    .line 868
    iget-object p2, p2, Lcom/google/common/collect/m3$e0;->c:Lcom/google/common/collect/m3$h0;

    invoke-interface {p2, p1, v1}, Lcom/google/common/collect/m3$h0;->copyFor(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$h0;

    move-result-object p1

    iput-object p1, v1, Lcom/google/common/collect/m3$e0;->c:Lcom/google/common/collect/m3$h0;

    return-object v1
.end method

.method public bridge synthetic copy(Lcom/google/common/collect/m3$o;Lcom/google/common/collect/m3$j;Lcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$j;
    .locals 0
    .param p3    # Lcom/google/common/collect/m3$j;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 889
    check-cast p1, Lcom/google/common/collect/m3$f0;

    check-cast p2, Lcom/google/common/collect/m3$e0;

    check-cast p3, Lcom/google/common/collect/m3$e0;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/m3$e0$a;->copy(Lcom/google/common/collect/m3$f0;Lcom/google/common/collect/m3$e0;Lcom/google/common/collect/m3$e0;)Lcom/google/common/collect/m3$e0;

    move-result-object p1

    return-object p1
.end method

.method public newEntry(Lcom/google/common/collect/m3$f0;Ljava/lang/Object;ILcom/google/common/collect/m3$e0;)Lcom/google/common/collect/m3$e0;
    .locals 1
    .param p4    # Lcom/google/common/collect/m3$e0;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3$f0<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/collect/m3$e0<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/m3$e0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 944
    new-instance v0, Lcom/google/common/collect/m3$e0;

    .line 2152
    iget-object p1, p1, Lcom/google/common/collect/m3$f0;->h:Ljava/lang/ref/ReferenceQueue;

    .line 944
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/m3$e0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/m3$e0;)V

    return-object v0
.end method

.method public bridge synthetic newEntry(Lcom/google/common/collect/m3$o;Ljava/lang/Object;ILcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$j;
    .locals 0
    .param p4    # Lcom/google/common/collect/m3$j;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 889
    check-cast p1, Lcom/google/common/collect/m3$f0;

    check-cast p4, Lcom/google/common/collect/m3$e0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/m3$e0$a;->newEntry(Lcom/google/common/collect/m3$f0;Ljava/lang/Object;ILcom/google/common/collect/m3$e0;)Lcom/google/common/collect/m3$e0;

    move-result-object p1

    return-object p1
.end method

.method public newSegment(Lcom/google/common/collect/m3;II)Lcom/google/common/collect/m3$f0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3<",
            "TK;TV;",
            "Lcom/google/common/collect/m3$e0<",
            "TK;TV;>;",
            "Lcom/google/common/collect/m3$f0<",
            "TK;TV;>;>;II)",
            "Lcom/google/common/collect/m3$f0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 914
    new-instance v0, Lcom/google/common/collect/m3$f0;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/m3$f0;-><init>(Lcom/google/common/collect/m3;II)V

    return-object v0
.end method

.method public bridge synthetic newSegment(Lcom/google/common/collect/m3;II)Lcom/google/common/collect/m3$o;
    .locals 0

    .line 889
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/m3$e0$a;->newSegment(Lcom/google/common/collect/m3;II)Lcom/google/common/collect/m3$f0;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/google/common/collect/m3$f0;Lcom/google/common/collect/m3$e0;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3$f0<",
            "TK;TV;>;",
            "Lcom/google/common/collect/m3$e0<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 2152
    iget-object p1, p1, Lcom/google/common/collect/m3$f0;->i:Ljava/lang/ref/ReferenceQueue;

    .line 878
    iget-object v0, p2, Lcom/google/common/collect/m3$e0;->c:Lcom/google/common/collect/m3$h0;

    .line 879
    new-instance v1, Lcom/google/common/collect/m3$i0;

    invoke-direct {v1, p1, p3, p2}, Lcom/google/common/collect/m3$i0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/m3$j;)V

    iput-object v1, p2, Lcom/google/common/collect/m3$e0;->c:Lcom/google/common/collect/m3$h0;

    .line 880
    invoke-interface {v0}, Lcom/google/common/collect/m3$h0;->clear()V

    return-void
.end method

.method public bridge synthetic setValue(Lcom/google/common/collect/m3$o;Lcom/google/common/collect/m3$j;Ljava/lang/Object;)V
    .locals 0

    .line 889
    check-cast p1, Lcom/google/common/collect/m3$f0;

    check-cast p2, Lcom/google/common/collect/m3$e0;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/m3$e0$a;->setValue(Lcom/google/common/collect/m3$f0;Lcom/google/common/collect/m3$e0;Ljava/lang/Object;)V

    return-void
.end method

.method public valueStrength()Lcom/google/common/collect/m3$q;
    .locals 1

    .line 906
    sget-object v0, Lcom/google/common/collect/m3$q;->b:Lcom/google/common/collect/m3$q$b;

    return-object v0
.end method
