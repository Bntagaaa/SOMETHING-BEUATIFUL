.class public final Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/ImmutableDoubleArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:[D

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 200
    iput v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->b:I

    .line 203
    new-array p1, p1, [D

    iput-object p1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->a:[D

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 266
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->b:I

    add-int/2addr v0, p1

    .line 267
    iget-object p1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->a:[D

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 268
    array-length p1, p1

    if-ltz v0, :cond_2

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 282
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    shl-int/lit8 p1, p1, 0x1

    :cond_0
    if-gez p1, :cond_1

    const p1, 0x7fffffff

    .line 268
    :cond_1
    new-array p1, p1, [D

    .line 269
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->a:[D

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    iput-object p1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->a:[D

    return-void

    .line 277
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "cannot store more than MAX_VALUE elements"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    return-void
.end method

.method public add(D)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 3

    const/4 v0, 0x1

    .line 211
    invoke-virtual {p0, v0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->a(I)V

    .line 212
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->a:[D

    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->b:I

    aput-wide p1, v1, v2

    add-int/2addr v2, v0

    .line 213
    iput v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->b:I

    return-object p0
.end method

.method public addAll(Lcom/google/common/primitives/ImmutableDoubleArray;)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 5

    .line 259
    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->a(I)V

    .line 260
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->a:[D

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->b:I

    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v2

    iget-object v3, p1, Lcom/google/common/primitives/ImmutableDoubleArray;->a:[D

    iget v4, p1, Lcom/google/common/primitives/ImmutableDoubleArray;->b:I

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->b:I

    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->b:I

    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableDoubleArray$Builder;"
        }
    .end annotation

    .line 233
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 234
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->addAll(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    move-result-object p1

    return-object p1

    .line 236
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 237
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->add(D)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public addAll(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableDoubleArray$Builder;"
        }
    .end annotation

    .line 247
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->a(I)V

    .line 248
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 249
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->a:[D

    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->b:I

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v1, v2

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addAll([D)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 4

    .line 222
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->a(I)V

    .line 223
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->a:[D

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->b:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->b:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->b:I

    return-object p0
.end method

.method public build()Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 4
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .line 300
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->b:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->d:Lcom/google/common/primitives/ImmutableDoubleArray;

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/common/primitives/ImmutableDoubleArray;

    iget-object v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->a:[D

    const/4 v3, 0x0

    .line 83
    invoke-direct {v1, v2, v3, v0}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    return-object v1
.end method
