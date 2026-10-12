.class final Lcom/google/common/collect/m3$c0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/m3$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m3$c0;
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
        "Lcom/google/common/collect/m3$c0<",
        "TK;TV;>;",
        "Lcom/google/common/collect/m3$d0<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/collect/m3$c0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 790
    new-instance v0, Lcom/google/common/collect/m3$c0$a;

    invoke-direct {v0}, Lcom/google/common/collect/m3$c0$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/m3$c0$a;->a:Lcom/google/common/collect/m3$c0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lcom/google/common/collect/m3$d0;Lcom/google/common/collect/m3$c0;Lcom/google/common/collect/m3$c0;)Lcom/google/common/collect/m3$c0;
    .locals 3
    .param p3    # Lcom/google/common/collect/m3$c0;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3$d0<",
            "TK;TV;>;",
            "Lcom/google/common/collect/m3$c0<",
            "TK;TV;>;",
            "Lcom/google/common/collect/m3$c0<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/m3$c0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 821
    invoke-virtual {p2}, Lcom/google/common/collect/m3$d;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2112
    :cond_0
    iget-object p1, p1, Lcom/google/common/collect/m3$d0;->h:Ljava/lang/ref/ReferenceQueue;

    .line 780
    new-instance v0, Lcom/google/common/collect/m3$c0;

    .line 781
    invoke-virtual {p2}, Lcom/google/common/collect/m3$d;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget v2, p2, Lcom/google/common/collect/m3$d;->a:I

    invoke-direct {v0, p1, v1, v2, p3}, Lcom/google/common/collect/m3$c0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/m3$c0;)V

    .line 782
    iget-object p1, p2, Lcom/google/common/collect/m3$c0;->c:Ljava/lang/Object;

    .line 775
    iput-object p1, v0, Lcom/google/common/collect/m3$c0;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic copy(Lcom/google/common/collect/m3$o;Lcom/google/common/collect/m3$j;Lcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$j;
    .locals 0
    .param p3    # Lcom/google/common/collect/m3$j;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 787
    check-cast p1, Lcom/google/common/collect/m3$d0;

    check-cast p2, Lcom/google/common/collect/m3$c0;

    check-cast p3, Lcom/google/common/collect/m3$c0;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/m3$c0$a;->copy(Lcom/google/common/collect/m3$d0;Lcom/google/common/collect/m3$c0;Lcom/google/common/collect/m3$c0;)Lcom/google/common/collect/m3$c0;

    move-result-object p1

    return-object p1
.end method

.method public newEntry(Lcom/google/common/collect/m3$d0;Ljava/lang/Object;ILcom/google/common/collect/m3$c0;)Lcom/google/common/collect/m3$c0;
    .locals 1
    .param p4    # Lcom/google/common/collect/m3$c0;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3$d0<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/collect/m3$c0<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/m3$c0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 840
    new-instance v0, Lcom/google/common/collect/m3$c0;

    .line 2112
    iget-object p1, p1, Lcom/google/common/collect/m3$d0;->h:Ljava/lang/ref/ReferenceQueue;

    .line 840
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/m3$c0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/m3$c0;)V

    return-object v0
.end method

.method public bridge synthetic newEntry(Lcom/google/common/collect/m3$o;Ljava/lang/Object;ILcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$j;
    .locals 0
    .param p4    # Lcom/google/common/collect/m3$j;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 787
    check-cast p1, Lcom/google/common/collect/m3$d0;

    check-cast p4, Lcom/google/common/collect/m3$c0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/m3$c0$a;->newEntry(Lcom/google/common/collect/m3$d0;Ljava/lang/Object;ILcom/google/common/collect/m3$c0;)Lcom/google/common/collect/m3$c0;

    move-result-object p1

    return-object p1
.end method

.method public newSegment(Lcom/google/common/collect/m3;II)Lcom/google/common/collect/m3$d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3<",
            "TK;TV;",
            "Lcom/google/common/collect/m3$c0<",
            "TK;TV;>;",
            "Lcom/google/common/collect/m3$d0<",
            "TK;TV;>;>;II)",
            "Lcom/google/common/collect/m3$d0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 813
    new-instance v0, Lcom/google/common/collect/m3$d0;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/m3$d0;-><init>(Lcom/google/common/collect/m3;II)V

    return-object v0
.end method

.method public bridge synthetic newSegment(Lcom/google/common/collect/m3;II)Lcom/google/common/collect/m3$o;
    .locals 0

    .line 787
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/m3$c0$a;->newSegment(Lcom/google/common/collect/m3;II)Lcom/google/common/collect/m3$d0;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/google/common/collect/m3$d0;Lcom/google/common/collect/m3$c0;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3$d0<",
            "TK;TV;>;",
            "Lcom/google/common/collect/m3$c0<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 775
    iput-object p3, p2, Lcom/google/common/collect/m3$c0;->c:Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic setValue(Lcom/google/common/collect/m3$o;Lcom/google/common/collect/m3$j;Ljava/lang/Object;)V
    .locals 0

    .line 787
    check-cast p1, Lcom/google/common/collect/m3$d0;

    check-cast p2, Lcom/google/common/collect/m3$c0;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/m3$c0$a;->setValue(Lcom/google/common/collect/m3$d0;Lcom/google/common/collect/m3$c0;Ljava/lang/Object;)V

    return-void
.end method

.method public valueStrength()Lcom/google/common/collect/m3$q;
    .locals 1

    .line 804
    sget-object v0, Lcom/google/common/collect/m3$q;->a:Lcom/google/common/collect/m3$q$a;

    return-object v0
.end method
