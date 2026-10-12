.class final Lcom/google/common/collect/m3$r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/m3$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m3$r;
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
        "Lcom/google/common/collect/m3$r<",
        "TK;>;",
        "Lcom/google/common/collect/m3$s<",
        "TK;>;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/collect/m3$r$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 597
    new-instance v0, Lcom/google/common/collect/m3$r$a;

    invoke-direct {v0}, Lcom/google/common/collect/m3$r$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/m3$r$a;->a:Lcom/google/common/collect/m3$r$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 594
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

    .line 594
    check-cast p1, Lcom/google/common/collect/m3$s;

    check-cast p2, Lcom/google/common/collect/m3$r;

    check-cast p3, Lcom/google/common/collect/m3$r;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/m3$r$a;->copy(Lcom/google/common/collect/m3$s;Lcom/google/common/collect/m3$r;Lcom/google/common/collect/m3$r;)Lcom/google/common/collect/m3$r;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lcom/google/common/collect/m3$s;Lcom/google/common/collect/m3$r;Lcom/google/common/collect/m3$r;)Lcom/google/common/collect/m3$r;
    .locals 1
    .param p3    # Lcom/google/common/collect/m3$r;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3$s<",
            "TK;>;",
            "Lcom/google/common/collect/m3$r<",
            "TK;>;",
            "Lcom/google/common/collect/m3$r<",
            "TK;>;)",
            "Lcom/google/common/collect/m3$r<",
            "TK;>;"
        }
    .end annotation

    .line 587
    new-instance p1, Lcom/google/common/collect/m3$r;

    .line 576
    iget-object v0, p2, Lcom/google/common/collect/m3$c;->a:Ljava/lang/Object;

    .line 576
    iget p2, p2, Lcom/google/common/collect/m3$c;->b:I

    invoke-direct {p1, v0, p2, p3}, Lcom/google/common/collect/m3$c;-><init>(Ljava/lang/Object;ILcom/google/common/collect/m3$c;)V

    return-object p1
.end method

.method public bridge synthetic newEntry(Lcom/google/common/collect/m3$o;Ljava/lang/Object;ILcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$j;
    .locals 0
    .param p4    # Lcom/google/common/collect/m3$j;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 594
    check-cast p1, Lcom/google/common/collect/m3$s;

    check-cast p4, Lcom/google/common/collect/m3$r;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/m3$r$a;->newEntry(Lcom/google/common/collect/m3$s;Ljava/lang/Object;ILcom/google/common/collect/m3$r;)Lcom/google/common/collect/m3$r;

    move-result-object p1

    return-object p1
.end method

.method public newEntry(Lcom/google/common/collect/m3$s;Ljava/lang/Object;ILcom/google/common/collect/m3$r;)Lcom/google/common/collect/m3$r;
    .locals 0
    .param p4    # Lcom/google/common/collect/m3$r;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3$s<",
            "TK;>;TK;I",
            "Lcom/google/common/collect/m3$r<",
            "TK;>;)",
            "Lcom/google/common/collect/m3$r<",
            "TK;>;"
        }
    .end annotation

    .line 641
    new-instance p1, Lcom/google/common/collect/m3$r;

    .line 576
    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/collect/m3$c;-><init>(Ljava/lang/Object;ILcom/google/common/collect/m3$c;)V

    return-object p1
.end method

.method public bridge synthetic newSegment(Lcom/google/common/collect/m3;II)Lcom/google/common/collect/m3$o;
    .locals 0

    .line 594
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/m3$r$a;->newSegment(Lcom/google/common/collect/m3;II)Lcom/google/common/collect/m3$s;

    move-result-object p1

    return-object p1
.end method

.method public newSegment(Lcom/google/common/collect/m3;II)Lcom/google/common/collect/m3$s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3<",
            "TK;",
            "Lcom/google/common/collect/MapMaker$a;",
            "Lcom/google/common/collect/m3$r<",
            "TK;>;",
            "Lcom/google/common/collect/m3$s<",
            "TK;>;>;II)",
            "Lcom/google/common/collect/m3$s<",
            "TK;>;"
        }
    .end annotation

    .line 620
    new-instance v0, Lcom/google/common/collect/m3$s;

    .line 2096
    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/m3$o;-><init>(Lcom/google/common/collect/m3;II)V

    return-object v0
.end method

.method public bridge synthetic setValue(Lcom/google/common/collect/m3$o;Lcom/google/common/collect/m3$j;Ljava/lang/Object;)V
    .locals 0

    .line 594
    check-cast p1, Lcom/google/common/collect/m3$s;

    check-cast p2, Lcom/google/common/collect/m3$r;

    check-cast p3, Lcom/google/common/collect/MapMaker$a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/m3$r$a;->setValue(Lcom/google/common/collect/m3$s;Lcom/google/common/collect/m3$r;Lcom/google/common/collect/MapMaker$a;)V

    return-void
.end method

.method public setValue(Lcom/google/common/collect/m3$s;Lcom/google/common/collect/m3$r;Lcom/google/common/collect/MapMaker$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3$s<",
            "TK;>;",
            "Lcom/google/common/collect/m3$r<",
            "TK;>;",
            "Lcom/google/common/collect/MapMaker$a;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public valueStrength()Lcom/google/common/collect/m3$q;
    .locals 1

    .line 611
    sget-object v0, Lcom/google/common/collect/m3$q;->a:Lcom/google/common/collect/m3$q$a;

    return-object v0
.end method
