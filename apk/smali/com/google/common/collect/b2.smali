.class final Lcom/google/common/collect/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Comparator;

.field public final b:Z

.field public final c:Ljava/lang/Object;

.field public final d:Lcom/google/common/collect/BoundType;

.field public final e:Z

.field public final f:Ljava/lang/Object;

.field public final g:Lcom/google/common/collect/BoundType;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/b2;->a:Ljava/util/Comparator;

    .line 110
    iput-boolean p2, p0, Lcom/google/common/collect/b2;->b:Z

    .line 111
    iput-boolean p5, p0, Lcom/google/common/collect/b2;->e:Z

    .line 112
    iput-object p3, p0, Lcom/google/common/collect/b2;->c:Ljava/lang/Object;

    .line 113
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BoundType;

    iput-object v0, p0, Lcom/google/common/collect/b2;->d:Lcom/google/common/collect/BoundType;

    .line 114
    iput-object p6, p0, Lcom/google/common/collect/b2;->f:Ljava/lang/Object;

    .line 115
    invoke-static {p7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BoundType;

    iput-object v0, p0, Lcom/google/common/collect/b2;->g:Lcom/google/common/collect/BoundType;

    if-eqz p2, :cond_0

    .line 118
    invoke-interface {p1, p3, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    :cond_0
    if-eqz p5, :cond_1

    .line 121
    invoke-interface {p1, p6, p6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    :cond_1
    if-eqz p2, :cond_5

    if-eqz p5, :cond_5

    .line 124
    invoke-interface {p1, p3, p6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x0

    const/4 p5, 0x1

    if-gtz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 126
    :goto_0
    const-string v1, "lowerEndpoint (%s) > upperEndpoint (%s)"

    invoke-static {v0, v1, p3, p6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p1, :cond_5

    .line 129
    sget-object p1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-eq p4, p1, :cond_3

    const/4 p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    if-eq p7, p1, :cond_4

    const/4 p2, 0x1

    :cond_4
    or-int p1, p3, p2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1

    .line 170
    invoke-virtual {p0, p1}, Lcom/google/common/collect/b2;->d(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/b2;->c(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/google/common/collect/b2;)Lcom/google/common/collect/b2;
    .locals 14

    .line 177
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/google/common/collect/b2;->a:Ljava/util/Comparator;

    iget-object v1, p1, Lcom/google/common/collect/b2;->a:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 183
    iget-boolean v1, p1, Lcom/google/common/collect/b2;->b:Z

    iget-object v2, p1, Lcom/google/common/collect/b2;->d:Lcom/google/common/collect/BoundType;

    iget-object v3, p1, Lcom/google/common/collect/b2;->c:Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/google/common/collect/b2;->b:Z

    if-nez v4, :cond_0

    move v8, v1

    goto :goto_0

    .line 187
    :cond_0
    iget-object v5, p0, Lcom/google/common/collect/b2;->c:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 188
    invoke-interface {v0, v5, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    if-nez v1, :cond_2

    .line 189
    sget-object v1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v2, v1, :cond_2

    :cond_1
    move v8, v4

    goto :goto_0

    .line 195
    :cond_2
    iget-object v2, p0, Lcom/google/common/collect/b2;->d:Lcom/google/common/collect/BoundType;

    move v8, v4

    move-object v3, v5

    .line 198
    :goto_0
    iget-boolean v1, p1, Lcom/google/common/collect/b2;->e:Z

    iget-object v4, p1, Lcom/google/common/collect/b2;->g:Lcom/google/common/collect/BoundType;

    iget-object p1, p1, Lcom/google/common/collect/b2;->f:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/google/common/collect/b2;->e:Z

    if-nez v5, :cond_3

    move-object v12, p1

    move v11, v1

    goto :goto_1

    .line 202
    :cond_3
    iget-object v6, p0, Lcom/google/common/collect/b2;->f:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 203
    invoke-interface {v0, v6, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_4

    if-nez v1, :cond_5

    .line 204
    sget-object v1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v4, v1, :cond_5

    :cond_4
    move-object v12, p1

    move v11, v5

    goto :goto_1

    .line 210
    :cond_5
    iget-object v4, p0, Lcom/google/common/collect/b2;->g:Lcom/google/common/collect/BoundType;

    move v11, v5

    move-object v12, v6

    :goto_1
    if-eqz v8, :cond_7

    if-eqz v11, :cond_7

    .line 211
    invoke-interface {v0, v3, v12}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_6

    if-nez p1, :cond_7

    .line 212
    sget-object p1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v2, p1, :cond_7

    if-ne v4, p1, :cond_7

    .line 215
    :cond_6
    sget-object v2, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    .line 216
    sget-object v4, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    move-object v9, v12

    :goto_2
    move-object v10, v2

    move-object v13, v4

    goto :goto_3

    :cond_7
    move-object v9, v3

    goto :goto_2

    .line 220
    :goto_3
    new-instance v6, Lcom/google/common/collect/b2;

    iget-object v7, p0, Lcom/google/common/collect/b2;->a:Ljava/util/Comparator;

    invoke-direct/range {v6 .. v13}, Lcom/google/common/collect/b2;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v6
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    .line 161
    iget-boolean v1, p0, Lcom/google/common/collect/b2;->e:Z

    if-nez v1, :cond_0

    return v0

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/b2;->a:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/google/common/collect/b2;->f:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 166
    :goto_1
    sget-object v3, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    iget-object v4, p0, Lcom/google/common/collect/b2;->g:Lcom/google/common/collect/BoundType;

    if-ne v4, v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    and-int/2addr p1, v0

    or-int/2addr p1, v2

    return p1
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    .line 152
    iget-boolean v1, p0, Lcom/google/common/collect/b2;->b:Z

    if-nez v1, :cond_0

    return v0

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/b2;->a:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/google/common/collect/b2;->c:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v1, 0x1

    if-gez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 157
    :goto_1
    sget-object v3, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    iget-object v4, p0, Lcom/google/common/collect/b2;->d:Lcom/google/common/collect/BoundType;

    if-ne v4, v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    and-int/2addr p1, v0

    or-int/2addr p1, v2

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 225
    instance-of v0, p1, Lcom/google/common/collect/b2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 226
    check-cast p1, Lcom/google/common/collect/b2;

    .line 227
    iget-object v0, p1, Lcom/google/common/collect/b2;->a:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/google/common/collect/b2;->a:Ljava/util/Comparator;

    invoke-interface {v2, v0}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/common/collect/b2;->b:Z

    iget-boolean v2, p1, Lcom/google/common/collect/b2;->b:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/google/common/collect/b2;->e:Z

    iget-boolean v2, p1, Lcom/google/common/collect/b2;->e:Z

    if-ne v0, v2, :cond_0

    .line 230
    iget-object v0, p0, Lcom/google/common/collect/b2;->d:Lcom/google/common/collect/BoundType;

    iget-object v2, p1, Lcom/google/common/collect/b2;->d:Lcom/google/common/collect/BoundType;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/google/common/collect/b2;->g:Lcom/google/common/collect/BoundType;

    iget-object v2, p1, Lcom/google/common/collect/b2;->g:Lcom/google/common/collect/BoundType;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/google/common/collect/b2;->c:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/common/collect/b2;->c:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/google/common/collect/b2;->f:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/common/collect/b2;->f:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 7

    .line 245
    iget-object v0, p0, Lcom/google/common/collect/b2;->a:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/common/collect/b2;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/b2;->d:Lcom/google/common/collect/BoundType;

    iget-object v3, p0, Lcom/google/common/collect/b2;->f:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/collect/b2;->g:Lcom/google/common/collect/BoundType;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    .line 240
    invoke-static {v5}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/collect/b2;->a:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    iget-object v2, p0, Lcom/google/common/collect/b2;->d:Lcom/google/common/collect/BoundType;

    if-ne v2, v1, :cond_0

    const/16 v2, 0x5b

    goto :goto_0

    :cond_0
    const/16 v2, 0x28

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/common/collect/b2;->b:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/common/collect/b2;->c:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v2, "-\u221e"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/common/collect/b2;->e:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/common/collect/b2;->f:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string v2, "\u221e"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/collect/b2;->g:Lcom/google/common/collect/BoundType;

    if-ne v2, v1, :cond_3

    const/16 v1, 0x5d

    goto :goto_3

    :cond_3
    const/16 v1, 0x29

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
