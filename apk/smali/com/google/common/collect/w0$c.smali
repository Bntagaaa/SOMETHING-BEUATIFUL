.class final Lcom/google/common/collect/w0$c;
.super Lcom/google/common/collect/w0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/w0<",
        "TC;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Comparable;)V
    .locals 0

    .line 388
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-direct {p0, p1}, Lcom/google/common/collect/w0;-><init>(Ljava/lang/Comparable;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/w0;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/google/common/collect/w0;->a:Ljava/lang/Comparable;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/DiscreteDomain;->next(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 455
    invoke-static {p1}, Lcom/google/common/collect/w0;->a(Ljava/lang/Comparable;)Lcom/google/common/collect/w0$e;

    move-result-object p1

    return-object p1

    .line 218
    :cond_0
    sget-object p1, Lcom/google/common/collect/w0$b;->b:Lcom/google/common/collect/w0$b;

    return-object p1
.end method

.method public final c(Ljava/lang/StringBuilder;)V
    .locals 1

    const/16 v0, 0x28

    .line 434
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/common/collect/w0;->a:Ljava/lang/Comparable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 386
    check-cast p1, Lcom/google/common/collect/w0;

    invoke-super {p0, p1}, Lcom/google/common/collect/w0;->compareTo(Lcom/google/common/collect/w0;)I

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/google/common/collect/w0;->a:Ljava/lang/Comparable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final f(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .locals 0

    .line 449
    iget-object p1, p0, Lcom/google/common/collect/w0;->a:Ljava/lang/Comparable;

    return-object p1
.end method

.method public final g(Ljava/lang/Comparable;)Z
    .locals 1

    .line 393
    sget-object v0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/Range;

    .line 695
    iget-object v0, p0, Lcom/google/common/collect/w0;->a:Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final h(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/google/common/collect/w0;->a:Ljava/lang/Comparable;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/DiscreteDomain;->next(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/google/common/collect/w0;->a:Ljava/lang/Comparable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    not-int v0, v0

    return v0
.end method

.method public final i()Lcom/google/common/collect/BoundType;
    .locals 1

    .line 398
    sget-object v0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method public final j()Lcom/google/common/collect/BoundType;
    .locals 1

    .line 403
    sget-object v0, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method public final k(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/w0;
    .locals 1

    .line 408
    sget-object v0, Lcom/google/common/collect/w0$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    return-object p0

    .line 415
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 412
    :cond_1
    iget-object p1, p0, Lcom/google/common/collect/w0;->a:Ljava/lang/Comparable;

    invoke-virtual {p2, p1}, Lcom/google/common/collect/DiscreteDomain;->next(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    if-nez p1, :cond_2

    .line 119
    sget-object p1, Lcom/google/common/collect/w0$d;->b:Lcom/google/common/collect/w0$d;

    return-object p1

    .line 413
    :cond_2
    invoke-static {p1}, Lcom/google/common/collect/w0;->a(Ljava/lang/Comparable;)Lcom/google/common/collect/w0$e;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/w0;
    .locals 1

    .line 421
    sget-object v0, Lcom/google/common/collect/w0$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 423
    iget-object p1, p0, Lcom/google/common/collect/w0;->a:Ljava/lang/Comparable;

    invoke-virtual {p2, p1}, Lcom/google/common/collect/DiscreteDomain;->next(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 218
    sget-object p1, Lcom/google/common/collect/w0$b;->b:Lcom/google/common/collect/w0$b;

    return-object p1

    .line 424
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/w0;->a(Ljava/lang/Comparable;)Lcom/google/common/collect/w0$e;

    move-result-object p1

    return-object p1

    .line 428
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/common/collect/w0;->a:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
