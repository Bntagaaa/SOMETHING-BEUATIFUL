.class Lcom/google/common/collect/c5;
.super Lcom/google/common/collect/ImmutableMultiset;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/c5$c;,
        Lcom/google/common/collect/c5$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultiset<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final h:Lcom/google/common/collect/c5;


# instance fields
.field public final transient e:Lcom/google/common/collect/r4;

.field public final transient f:I

.field public transient g:Lcom/google/common/collect/ImmutableSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/google/common/collect/c5;

    .line 36
    invoke-static {}, Lcom/google/common/collect/r4;->create()Lcom/google/common/collect/r4;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/c5;-><init>(Lcom/google/common/collect/r4;)V

    sput-object v0, Lcom/google/common/collect/c5;->h:Lcom/google/common/collect/c5;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/r4;)V
    .locals 5

    .line 43
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultiset;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/common/collect/c5;->e:Lcom/google/common/collect/r4;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 179
    :goto_0
    iget v3, p1, Lcom/google/common/collect/r4;->c:I

    if-ge v2, v3, :cond_0

    .line 47
    invoke-virtual {p1, v2}, Lcom/google/common/collect/r4;->d(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/c5;->f:I

    return-void
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 59
    iget-object v0, p0, Lcom/google/common/collect/c5;->e:Lcom/google/common/collect/r4;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/r4;->get(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public elementSet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/common/collect/c5;->g:Lcom/google/common/collect/ImmutableSet;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/google/common/collect/c5$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/c5$b;-><init>(Lcom/google/common/collect/c5;)V

    iput-object v0, p0, Lcom/google/common/collect/c5;->g:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/google/common/collect/c5;->elementSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final f(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/google/common/collect/c5;->e:Lcom/google/common/collect/r4;

    iget v1, v0, Lcom/google/common/collect/r4;->c:I

    .line 199
    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 200
    new-instance v1, Lcom/google/common/collect/r4$a;

    invoke-direct {v1, v0, p1}, Lcom/google/common/collect/r4$a;-><init>(Lcom/google/common/collect/r4;I)V

    return-object v1
.end method

.method public final isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/google/common/collect/c5;->f:I

    return v0
.end method
