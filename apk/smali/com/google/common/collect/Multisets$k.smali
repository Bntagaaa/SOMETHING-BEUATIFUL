.class final Lcom/google/common/collect/Multisets$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/collect/Multiset;

.field public final b:Ljava/util/Iterator;

.field public c:Lcom/google/common/collect/Multiset$Entry;

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Multiset;Ljava/util/Iterator;)V
    .locals 0

    .line 1058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1059
    iput-object p1, p0, Lcom/google/common/collect/Multisets$k;->a:Lcom/google/common/collect/Multiset;

    .line 1060
    iput-object p2, p0, Lcom/google/common/collect/Multisets$k;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1065
    iget v0, p0, Lcom/google/common/collect/Multisets$k;->d:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/Multisets$k;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1070
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$k;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1073
    iget v0, p0, Lcom/google/common/collect/Multisets$k;->d:I

    if-nez v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/google/common/collect/Multisets$k;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    iput-object v0, p0, Lcom/google/common/collect/Multisets$k;->c:Lcom/google/common/collect/Multiset$Entry;

    .line 1075
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/Multisets$k;->d:I

    iput v0, p0, Lcom/google/common/collect/Multisets$k;->e:I

    .line 1077
    :cond_0
    iget v0, p0, Lcom/google/common/collect/Multisets$k;->d:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/Multisets$k;->d:I

    .line 1078
    iput-boolean v1, p0, Lcom/google/common/collect/Multisets$k;->f:Z

    .line 1079
    iget-object v0, p0, Lcom/google/common/collect/Multisets$k;->c:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1071
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 1084
    iget-boolean v0, p0, Lcom/google/common/collect/Multisets$k;->f:Z

    invoke-static {v0}, Lcom/google/common/collect/g0;->e(Z)V

    .line 1085
    iget v0, p0, Lcom/google/common/collect/Multisets$k;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/google/common/collect/Multisets$k;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Multisets$k;->c:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Multisets$k;->a:Lcom/google/common/collect/Multiset;

    invoke-interface {v2, v0}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    .line 1090
    :goto_0
    iget v0, p0, Lcom/google/common/collect/Multisets$k;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/Multisets$k;->e:I

    const/4 v0, 0x0

    .line 1091
    iput-boolean v0, p0, Lcom/google/common/collect/Multisets$k;->f:Z

    return-void
.end method
