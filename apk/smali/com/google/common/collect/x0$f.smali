.class final Lcom/google/common/collect/x0$f;
.super Lcom/google/common/collect/x0$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/x0$d<",
        "TR;",
        "Lcom/google/common/collect/ImmutableMap<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic g:Lcom/google/common/collect/x0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/x0;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/google/common/collect/x0$f;->g:Lcom/google/common/collect/x0;

    .line 27
    iget-object p1, p1, Lcom/google/common/collect/x0;->g:[I

    .line 192
    array-length p1, p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/x0$d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i(I)Ljava/lang/Object;
    .locals 2

    .line 202
    new-instance v0, Lcom/google/common/collect/x0$e;

    iget-object v1, p0, Lcom/google/common/collect/x0$f;->g:Lcom/google/common/collect/x0;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/x0$e;-><init>(Lcom/google/common/collect/x0;I)V

    return-object v0
.end method

.method public final j()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/common/collect/x0$f;->g:Lcom/google/common/collect/x0;

    iget-object v0, v0, Lcom/google/common/collect/x0;->c:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method
