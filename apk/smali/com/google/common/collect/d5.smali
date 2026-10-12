.class final Lcom/google/common/collect/d5;
.super Lcom/google/common/collect/ImmutableSet;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final h:Lcom/google/common/collect/d5;


# instance fields
.field public final transient c:[Ljava/lang/Object;

.field public final transient d:[Ljava/lang/Object;

.field public final transient e:I

.field public final transient f:I

.field public final transient g:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 31
    new-instance v0, Lcom/google/common/collect/d5;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/common/collect/d5;-><init>([Ljava/lang/Object;[Ljava/lang/Object;III)V

    sput-object v0, Lcom/google/common/collect/d5;->h:Lcom/google/common/collect/d5;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;III)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/common/collect/d5;->c:[Ljava/lang/Object;

    .line 44
    iput-object p2, p0, Lcom/google/common/collect/d5;->d:[Ljava/lang/Object;

    .line 45
    iput p4, p0, Lcom/google/common/collect/d5;->e:I

    .line 46
    iput p3, p0, Lcom/google/common/collect/d5;->f:I

    .line 47
    iput p5, p0, Lcom/google/common/collect/d5;->g:I

    return-void
.end method


# virtual methods
.method public final a(I[Ljava/lang/Object;)I
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/google/common/collect/d5;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/common/collect/d5;->g:I

    invoke-static {v0, v1, p2, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, v2

    return p1
.end method

.method public final b()[Ljava/lang/Object;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/common/collect/d5;->c:[Ljava/lang/Object;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/google/common/collect/d5;->g:I

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 53
    iget-object v1, p0, Lcom/google/common/collect/d5;->d:[Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_1

    .line 56
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v2

    .line 57
    :goto_0
    iget v3, p0, Lcom/google/common/collect/d5;->e:I

    and-int/2addr v2, v3

    .line 58
    aget-object v3, v1, v2

    if-nez v3, :cond_1

    return v0

    .line 61
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Lcom/google/common/collect/ImmutableList;
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/google/common/collect/d5;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/d5;->g:I

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableList;->e(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/google/common/collect/d5;->f:I

    return v0
.end method

.method public final isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/google/common/collect/d5;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/google/common/collect/d5;->g:I

    return v0
.end method
