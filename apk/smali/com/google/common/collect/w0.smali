.class abstract Lcom/google/common/collect/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/w0$c;,
        Lcom/google/common/collect/w0$e;,
        Lcom/google/common/collect/w0$b;,
        Lcom/google/common/collect/w0$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/common/collect/w0<",
        "TC;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Comparable;


# direct methods
.method public constructor <init>(Ljava/lang/Comparable;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/common/collect/w0;->a:Ljava/lang/Comparable;

    return-void
.end method

.method public static a(Ljava/lang/Comparable;)Lcom/google/common/collect/w0$e;
    .locals 1

    .line 300
    new-instance v0, Lcom/google/common/collect/w0$e;

    .line 305
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Comparable;

    invoke-direct {v0, p0}, Lcom/google/common/collect/w0;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method


# virtual methods
.method public b(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/w0;
    .locals 0

    return-object p0
.end method

.method public abstract c(Ljava/lang/StringBuilder;)V
.end method

.method public compareTo(Lcom/google/common/collect/w0;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/w0<",
            "TC;>;)I"
        }
    .end annotation

    .line 119
    sget-object v0, Lcom/google/common/collect/w0$d;->b:Lcom/google/common/collect/w0$d;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 218
    :cond_0
    sget-object v0, Lcom/google/common/collect/w0$b;->b:Lcom/google/common/collect/w0$b;

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 77
    :cond_1
    iget-object v0, p1, Lcom/google/common/collect/w0;->a:Ljava/lang/Comparable;

    sget-object v1, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/Range;

    .line 695
    iget-object v1, p0, Lcom/google/common/collect/w0;->a:Ljava/lang/Comparable;

    invoke-interface {v1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 82
    :cond_2
    instance-of v0, p0, Lcom/google/common/collect/w0$c;

    instance-of p1, p1, Lcom/google/common/collect/w0$c;

    invoke-static {v0, p1}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Lcom/google/common/collect/w0;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/w0;->compareTo(Lcom/google/common/collect/w0;)I

    move-result p1

    return p1
.end method

.method public abstract d(Ljava/lang/StringBuilder;)V
.end method

.method public e()Ljava/lang/Comparable;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/common/collect/w0;->a:Ljava/lang/Comparable;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 92
    instance-of v0, p1, Lcom/google/common/collect/w0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 94
    check-cast p1, Lcom/google/common/collect/w0;

    .line 96
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/w0;->compareTo(Lcom/google/common/collect/w0;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v1
.end method

.method public abstract f(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
.end method

.method public abstract g(Ljava/lang/Comparable;)Z
.end method

.method public abstract h(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
.end method

.method public abstract hashCode()I
.end method

.method public abstract i()Lcom/google/common/collect/BoundType;
.end method

.method public abstract j()Lcom/google/common/collect/BoundType;
.end method

.method public abstract k(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/w0;
.end method

.method public abstract l(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/w0;
.end method
