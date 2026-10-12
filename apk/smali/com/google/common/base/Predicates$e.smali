.class Lcom/google/common/base/Predicates$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "Ljava/lang/CharSequence;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/base/e;


# direct methods
.method public constructor <init>(Lcom/google/common/base/e;)V
    .locals 0

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/e;

    iput-object p1, p0, Lcom/google/common/base/Predicates$e;->a:Lcom/google/common/base/e;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/google/common/base/Predicates$e;->a:Lcom/google/common/base/e;

    invoke-virtual {v0, p1}, Lcom/google/common/base/e;->matcher(Ljava/lang/CharSequence;)Lcom/google/common/base/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/base/d;->find()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 623
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/google/common/base/Predicates$e;->apply(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 646
    instance-of v0, p1, Lcom/google/common/base/Predicates$e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 647
    check-cast p1, Lcom/google/common/base/Predicates$e;

    .line 651
    iget-object v0, p0, Lcom/google/common/base/Predicates$e;->a:Lcom/google/common/base/e;

    invoke-virtual {v0}, Lcom/google/common/base/e;->pattern()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/google/common/base/Predicates$e;->a:Lcom/google/common/base/e;

    invoke-virtual {v3}, Lcom/google/common/base/e;->pattern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 652
    invoke-virtual {v0}, Lcom/google/common/base/e;->flags()I

    move-result v0

    iget-object p1, p1, Lcom/google/common/base/Predicates$e;->a:Lcom/google/common/base/e;

    invoke-virtual {p1}, Lcom/google/common/base/e;->flags()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 641
    iget-object v0, p0, Lcom/google/common/base/Predicates$e;->a:Lcom/google/common/base/e;

    invoke-virtual {v0}, Lcom/google/common/base/e;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/common/base/e;->flags()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 660
    iget-object v0, p0, Lcom/google/common/base/Predicates$e;->a:Lcom/google/common/base/e;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    const-string v2, "pattern"

    .line 661
    invoke-virtual {v0}, Lcom/google/common/base/e;->pattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    const-string v2, "pattern.flags"

    .line 662
    invoke-virtual {v0}, Lcom/google/common/base/e;->flags()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 663
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    const-string v1, "Predicates.contains("

    const-string v2, ")"

    .line 0
    invoke-static {v1, v0, v2}, L_COROUTINE/a;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
