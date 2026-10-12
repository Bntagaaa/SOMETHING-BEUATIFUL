.class final Lcom/google/common/collect/LinkedHashMultimap$a;
.super Lcom/google/common/collect/g2;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/LinkedHashMultimap$c;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedHashMultimap;
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
        "Lcom/google/common/collect/g2<",
        "TK;TV;>;",
        "Lcom/google/common/collect/LinkedHashMultimap$c<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final c:I

.field public d:Lcom/google/common/collect/LinkedHashMultimap$a;

.field public e:Lcom/google/common/collect/LinkedHashMultimap$c;

.field public f:Lcom/google/common/collect/LinkedHashMultimap$c;

.field public g:Lcom/google/common/collect/LinkedHashMultimap$a;

.field public h:Lcom/google/common/collect/LinkedHashMultimap$a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/LinkedHashMultimap$a;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/g2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    iput p3, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->c:I

    .line 167
    iput-object p4, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->d:Lcom/google/common/collect/LinkedHashMultimap$a;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Z
    .locals 1

    .line 171
    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->c:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/g2;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getPredecessorInMultimap()Lcom/google/common/collect/LinkedHashMultimap$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->g:Lcom/google/common/collect/LinkedHashMultimap$a;

    return-object v0
.end method

.method public getPredecessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->e:Lcom/google/common/collect/LinkedHashMultimap$c;

    return-object v0
.end method

.method public getSuccessorInMultimap()Lcom/google/common/collect/LinkedHashMultimap$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->h:Lcom/google/common/collect/LinkedHashMultimap$a;

    return-object v0
.end method

.method public getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->f:Lcom/google/common/collect/LinkedHashMultimap$c;

    return-object v0
.end method

.method public setPredecessorInMultimap(Lcom/google/common/collect/LinkedHashMultimap$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->g:Lcom/google/common/collect/LinkedHashMultimap$a;

    return-void
.end method

.method public setPredecessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->e:Lcom/google/common/collect/LinkedHashMultimap$c;

    return-void
.end method

.method public setSuccessorInMultimap(Lcom/google/common/collect/LinkedHashMultimap$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->h:Lcom/google/common/collect/LinkedHashMultimap$a;

    return-void
.end method

.method public setSuccessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->f:Lcom/google/common/collect/LinkedHashMultimap$c;

    return-void
.end method
