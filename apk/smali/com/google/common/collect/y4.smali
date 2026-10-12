.class final Lcom/google/common/collect/y4;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableBiMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final k:Lcom/google/common/collect/y4;


# instance fields
.field public final transient f:Ljava/lang/Object;

.field public final transient g:[Ljava/lang/Object;

.field public final transient h:I

.field public final transient i:I

.field public final transient j:Lcom/google/common/collect/y4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/google/common/collect/y4;

    invoke-direct {v0}, Lcom/google/common/collect/y4;-><init>()V

    sput-object v0, Lcom/google/common/collect/y4;->k:Lcom/google/common/collect/y4;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/google/common/collect/y4;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 43
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/y4;->g:[Ljava/lang/Object;

    .line 44
    iput v0, p0, Lcom/google/common/collect/y4;->h:I

    .line 45
    iput v0, p0, Lcom/google/common/collect/y4;->i:I

    .line 46
    iput-object p0, p0, Lcom/google/common/collect/y4;->j:Lcom/google/common/collect/y4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;ILcom/google/common/collect/y4;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/common/collect/y4;->f:Ljava/lang/Object;

    .line 70
    iput-object p2, p0, Lcom/google/common/collect/y4;->g:[Ljava/lang/Object;

    const/4 p1, 0x1

    .line 71
    iput p1, p0, Lcom/google/common/collect/y4;->h:I

    .line 72
    iput p3, p0, Lcom/google/common/collect/y4;->i:I

    .line 73
    iput-object p4, p0, Lcom/google/common/collect/y4;->j:Lcom/google/common/collect/y4;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/common/collect/y4;->g:[Ljava/lang/Object;

    .line 52
    iput p2, p0, Lcom/google/common/collect/y4;->i:I

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/google/common/collect/y4;->h:I

    const/4 v1, 0x2

    if-lt p2, v1, :cond_0

    .line 54
    invoke-static {p2}, Lcom/google/common/collect/ImmutableSet;->e(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 56
    :goto_0
    invoke-static {p2, v1, p1, v0}, Lcom/google/common/collect/b5;->i(II[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/y4;->f:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 58
    invoke-static {p2, v1, p1, v0}, Lcom/google/common/collect/b5;->i(II[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/google/common/collect/y4;

    invoke-direct {v1, v0, p1, p2, p0}, Lcom/google/common/collect/y4;-><init>(Ljava/lang/Object;[Ljava/lang/Object;ILcom/google/common/collect/y4;)V

    iput-object v1, p0, Lcom/google/common/collect/y4;->j:Lcom/google/common/collect/y4;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableSet;
    .locals 4

    .line 95
    new-instance v0, Lcom/google/common/collect/b5$a;

    iget v1, p0, Lcom/google/common/collect/y4;->i:I

    iget-object v2, p0, Lcom/google/common/collect/y4;->g:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/y4;->h:I

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/google/common/collect/b5$a;-><init>(Lcom/google/common/collect/ImmutableMap;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method public final b()Lcom/google/common/collect/ImmutableSet;
    .locals 4

    .line 101
    new-instance v0, Lcom/google/common/collect/b5$c;

    iget v1, p0, Lcom/google/common/collect/y4;->i:I

    iget-object v2, p0, Lcom/google/common/collect/y4;->g:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/y4;->h:I

    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/collect/b5$c;-><init>([Ljava/lang/Object;II)V

    .line 104
    new-instance v1, Lcom/google/common/collect/b5$b;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/b5$b;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/google/common/collect/y4;->f:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/y4;->g:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/y4;->i:I

    iget v3, p0, Lcom/google/common/collect/y4;->h:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/common/collect/b5;->k(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/google/common/collect/y4;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/common/collect/y4;->j:Lcom/google/common/collect/y4;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/google/common/collect/y4;->i:I

    return v0
.end method
