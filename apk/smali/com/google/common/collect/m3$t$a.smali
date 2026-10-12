.class final Lcom/google/common/collect/m3$t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/m3$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m3$t;
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
        "Lcom/google/common/collect/m3$t<",
        "TK;TV;>;",
        "Lcom/google/common/collect/m3$u<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/collect/m3$t$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 420
    new-instance v0, Lcom/google/common/collect/m3$t$a;

    invoke-direct {v0}, Lcom/google/common/collect/m3$t$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/m3$t$a;->a:Lcom/google/common/collect/m3$t$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 417
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

    .line 417
    check-cast p1, Lcom/google/common/collect/m3$u;

    check-cast p2, Lcom/google/common/collect/m3$t;

    check-cast p3, Lcom/google/common/collect/m3$t;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/m3$t$a;->copy(Lcom/google/common/collect/m3$u;Lcom/google/common/collect/m3$t;Lcom/google/common/collect/m3$t;)Lcom/google/common/collect/m3$t;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lcom/google/common/collect/m3$u;Lcom/google/common/collect/m3$t;Lcom/google/common/collect/m3$t;)Lcom/google/common/collect/m3$t;
    .locals 2
    .param p3    # Lcom/google/common/collect/m3$t;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3$u<",
            "TK;TV;>;",
            "Lcom/google/common/collect/m3$t<",
            "TK;TV;>;",
            "Lcom/google/common/collect/m3$t<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/m3$t<",
            "TK;TV;>;"
        }
    .end annotation

    .line 410
    new-instance p1, Lcom/google/common/collect/m3$t;

    .line 410
    iget-object v0, p2, Lcom/google/common/collect/m3$c;->a:Ljava/lang/Object;

    .line 410
    iget v1, p2, Lcom/google/common/collect/m3$c;->b:I

    invoke-direct {p1, v0, v1, p3}, Lcom/google/common/collect/m3$t;-><init>(Ljava/lang/Object;ILcom/google/common/collect/m3$t;)V

    .line 412
    iget-object p2, p2, Lcom/google/common/collect/m3$t;->d:Ljava/lang/Object;

    iput-object p2, p1, Lcom/google/common/collect/m3$t;->d:Ljava/lang/Object;

    return-object p1
.end method

.method public bridge synthetic newEntry(Lcom/google/common/collect/m3$o;Ljava/lang/Object;ILcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$j;
    .locals 0
    .param p4    # Lcom/google/common/collect/m3$j;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 417
    check-cast p1, Lcom/google/common/collect/m3$u;

    check-cast p4, Lcom/google/common/collect/m3$t;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/m3$t$a;->newEntry(Lcom/google/common/collect/m3$u;Ljava/lang/Object;ILcom/google/common/collect/m3$t;)Lcom/google/common/collect/m3$t;

    move-result-object p1

    return-object p1
.end method

.method public newEntry(Lcom/google/common/collect/m3$u;Ljava/lang/Object;ILcom/google/common/collect/m3$t;)Lcom/google/common/collect/m3$t;
    .locals 0
    .param p4    # Lcom/google/common/collect/m3$t;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3$u<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/collect/m3$t<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/m3$t<",
            "TK;TV;>;"
        }
    .end annotation

    .line 469
    new-instance p1, Lcom/google/common/collect/m3$t;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/collect/m3$t;-><init>(Ljava/lang/Object;ILcom/google/common/collect/m3$t;)V

    return-object p1
.end method

.method public bridge synthetic newSegment(Lcom/google/common/collect/m3;II)Lcom/google/common/collect/m3$o;
    .locals 0

    .line 417
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/m3$t$a;->newSegment(Lcom/google/common/collect/m3;II)Lcom/google/common/collect/m3$u;

    move-result-object p1

    return-object p1
.end method

.method public newSegment(Lcom/google/common/collect/m3;II)Lcom/google/common/collect/m3$u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3<",
            "TK;TV;",
            "Lcom/google/common/collect/m3$t<",
            "TK;TV;>;",
            "Lcom/google/common/collect/m3$u<",
            "TK;TV;>;>;II)",
            "Lcom/google/common/collect/m3$u<",
            "TK;TV;>;"
        }
    .end annotation

    .line 444
    new-instance v0, Lcom/google/common/collect/m3$u;

    .line 2008
    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/m3$o;-><init>(Lcom/google/common/collect/m3;II)V

    return-object v0
.end method

.method public bridge synthetic setValue(Lcom/google/common/collect/m3$o;Lcom/google/common/collect/m3$j;Ljava/lang/Object;)V
    .locals 0

    .line 417
    check-cast p1, Lcom/google/common/collect/m3$u;

    check-cast p2, Lcom/google/common/collect/m3$t;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/m3$t$a;->setValue(Lcom/google/common/collect/m3$u;Lcom/google/common/collect/m3$t;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Lcom/google/common/collect/m3$u;Lcom/google/common/collect/m3$t;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m3$u<",
            "TK;TV;>;",
            "Lcom/google/common/collect/m3$t<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 406
    iput-object p3, p2, Lcom/google/common/collect/m3$t;->d:Ljava/lang/Object;

    return-void
.end method

.method public valueStrength()Lcom/google/common/collect/m3$q;
    .locals 1

    .line 434
    sget-object v0, Lcom/google/common/collect/m3$q;->a:Lcom/google/common/collect/m3$q$a;

    return-object v0
.end method
