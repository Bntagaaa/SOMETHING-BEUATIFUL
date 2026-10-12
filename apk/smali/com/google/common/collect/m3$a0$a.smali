.class final Lcom/google/common/collect/m3$a0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/m3$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m3$a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/m3$k<",
        "TK;",
        "Lcom/google/common/collect/MapMaker$a;",
        "Lcom/google/common/collect/m3$a0<",
        "TK;>;",
        "Lcom/google/common/collect/m3$b0<",
        "TK;>;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/collect/m3$a0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 702
    new-instance v0, Lcom/google/common/collect/m3$a0$a;

    invoke-direct {v0}, Lcom/google/common/collect/m3$a0$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/m3$a0$a;->a:Lcom/google/common/collect/m3$a0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lcom/google/common/collect/m3$b0;Lcom/google/common/collect/m3$a0;Lcom/google/common/collect/m3$a0;)Lcom/google/common/collect/m3$a0;
    .locals 2
    .param p3    # Lcom/google/common/collect/m3$a0;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3$b0<",
            "TK;>;",
            "Lcom/google/common/collect/m3$a0<",
            "TK;>;",
            "Lcom/google/common/collect/m3$a0<",
            "TK;>;)",
            "Lcom/google/common/collect/m3$a0<",
            "TK;>;"
        }
    .end annotation

    .line 732
    invoke-virtual {p2}, Lcom/google/common/collect/m3$d;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2223
    :cond_0
    iget-object p1, p1, Lcom/google/common/collect/m3$b0;->h:Ljava/lang/ref/ReferenceQueue;

    .line 692
    new-instance v0, Lcom/google/common/collect/m3$a0;

    invoke-virtual {p2}, Lcom/google/common/collect/m3$d;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 680
    iget p2, p2, Lcom/google/common/collect/m3$d;->a:I

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/google/common/collect/m3$d;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/m3$d;)V

    return-object v0
.end method

.method public bridge synthetic copy(Lcom/google/common/collect/m3$o;Lcom/google/common/collect/m3$j;Lcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$j;
    .locals 0
    .param p3    # Lcom/google/common/collect/m3$j;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 699
    check-cast p1, Lcom/google/common/collect/m3$b0;

    check-cast p2, Lcom/google/common/collect/m3$a0;

    check-cast p3, Lcom/google/common/collect/m3$a0;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/m3$a0$a;->copy(Lcom/google/common/collect/m3$b0;Lcom/google/common/collect/m3$a0;Lcom/google/common/collect/m3$a0;)Lcom/google/common/collect/m3$a0;

    move-result-object p1

    return-object p1
.end method

.method public newEntry(Lcom/google/common/collect/m3$b0;Ljava/lang/Object;ILcom/google/common/collect/m3$a0;)Lcom/google/common/collect/m3$a0;
    .locals 1
    .param p4    # Lcom/google/common/collect/m3$a0;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3$b0<",
            "TK;>;TK;I",
            "Lcom/google/common/collect/m3$a0<",
            "TK;>;)",
            "Lcom/google/common/collect/m3$a0<",
            "TK;>;"
        }
    .end annotation

    .line 749
    new-instance v0, Lcom/google/common/collect/m3$a0;

    .line 2223
    iget-object p1, p1, Lcom/google/common/collect/m3$b0;->h:Ljava/lang/ref/ReferenceQueue;

    .line 680
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/m3$d;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/m3$d;)V

    return-object v0
.end method

.method public bridge synthetic newEntry(Lcom/google/common/collect/m3$o;Ljava/lang/Object;ILcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$j;
    .locals 0
    .param p4    # Lcom/google/common/collect/m3$j;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 699
    check-cast p1, Lcom/google/common/collect/m3$b0;

    check-cast p4, Lcom/google/common/collect/m3$a0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/m3$a0$a;->newEntry(Lcom/google/common/collect/m3$b0;Ljava/lang/Object;ILcom/google/common/collect/m3$a0;)Lcom/google/common/collect/m3$a0;

    move-result-object p1

    return-object p1
.end method

.method public newSegment(Lcom/google/common/collect/m3;II)Lcom/google/common/collect/m3$b0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3<",
            "TK;",
            "Lcom/google/common/collect/MapMaker$a;",
            "Lcom/google/common/collect/m3$a0<",
            "TK;>;",
            "Lcom/google/common/collect/m3$b0<",
            "TK;>;>;II)",
            "Lcom/google/common/collect/m3$b0<",
            "TK;>;"
        }
    .end annotation

    .line 724
    new-instance v0, Lcom/google/common/collect/m3$b0;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/m3$b0;-><init>(Lcom/google/common/collect/m3;II)V

    return-object v0
.end method

.method public bridge synthetic newSegment(Lcom/google/common/collect/m3;II)Lcom/google/common/collect/m3$o;
    .locals 0

    .line 699
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/m3$a0$a;->newSegment(Lcom/google/common/collect/m3;II)Lcom/google/common/collect/m3$b0;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/google/common/collect/m3$b0;Lcom/google/common/collect/m3$a0;Lcom/google/common/collect/MapMaker$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3$b0<",
            "TK;>;",
            "Lcom/google/common/collect/m3$a0<",
            "TK;>;",
            "Lcom/google/common/collect/MapMaker$a;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic setValue(Lcom/google/common/collect/m3$o;Lcom/google/common/collect/m3$j;Ljava/lang/Object;)V
    .locals 0

    .line 699
    check-cast p1, Lcom/google/common/collect/m3$b0;

    check-cast p2, Lcom/google/common/collect/m3$a0;

    check-cast p3, Lcom/google/common/collect/MapMaker$a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/m3$a0$a;->setValue(Lcom/google/common/collect/m3$b0;Lcom/google/common/collect/m3$a0;Lcom/google/common/collect/MapMaker$a;)V

    return-void
.end method

.method public valueStrength()Lcom/google/common/collect/m3$q;
    .locals 1

    .line 716
    sget-object v0, Lcom/google/common/collect/m3$q;->a:Lcom/google/common/collect/m3$q$a;

    return-object v0
.end method
