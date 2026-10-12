.class abstract Lcom/google/common/collect/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Iterator;

.field public b:Ljava/lang/Object;

.field public c:Ljava/util/Collection;

.field public d:Ljava/util/Iterator;

.field public final synthetic e:Lcom/google/common/collect/g;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/g;)V
    .locals 0

    .line 1118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/g$b;->e:Lcom/google/common/collect/g;

    .line 85
    iget-object p1, p1, Lcom/google/common/collect/g;->f:Ljava/util/Map;

    .line 1119
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/g$b;->a:Ljava/util/Iterator;

    const/4 p1, 0x0

    .line 1120
    iput-object p1, p0, Lcom/google/common/collect/g$b;->b:Ljava/lang/Object;

    .line 1121
    iput-object p1, p0, Lcom/google/common/collect/g$b;->c:Ljava/util/Collection;

    .line 1122
    sget-object p1, Lcom/google/common/collect/Iterators$l;->a:Lcom/google/common/collect/Iterators$l;

    iput-object p1, p0, Lcom/google/common/collect/g$b;->d:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public hasNext()Z
    .locals 1

    .line 1129
    iget-object v0, p0, Lcom/google/common/collect/g$b;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/g$b;->d:Ljava/util/Iterator;

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
            "()TT;"
        }
    .end annotation

    .line 1134
    iget-object v0, p0, Lcom/google/common/collect/g$b;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/google/common/collect/g$b;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/g$b;->b:Ljava/lang/Object;

    .line 1137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/common/collect/g$b;->c:Ljava/util/Collection;

    .line 1138
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/g$b;->d:Ljava/util/Iterator;

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/g$b;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/g$b;->d:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/g$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1145
    iget-object v0, p0, Lcom/google/common/collect/g$b;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1146
    iget-object v0, p0, Lcom/google/common/collect/g$b;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/google/common/collect/g$b;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/g$b;->e:Lcom/google/common/collect/g;

    iget v1, v0, Lcom/google/common/collect/g;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/common/collect/g;->g:I

    return-void
.end method
