.class final Lcom/google/common/collect/x0$e;
.super Lcom/google/common/collect/x0$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/x0$d<",
        "TC;TV;>;"
    }
.end annotation


# instance fields
.field public final g:I

.field public final synthetic h:Lcom/google/common/collect/x0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/x0;I)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/google/common/collect/x0$e;->h:Lcom/google/common/collect/x0;

    .line 27
    iget-object p1, p1, Lcom/google/common/collect/x0;->g:[I

    .line 145
    aget p1, p1, p2

    invoke-direct {p0, p1}, Lcom/google/common/collect/x0$d;-><init>(I)V

    .line 146
    iput p2, p0, Lcom/google/common/collect/x0$e;->g:I

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i(I)Ljava/lang/Object;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/google/common/collect/x0$e;->h:Lcom/google/common/collect/x0;

    iget-object v0, v0, Lcom/google/common/collect/x0;->i:[[Ljava/lang/Object;

    .line 156
    iget v1, p0, Lcom/google/common/collect/x0$e;->g:I

    aget-object v0, v0, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final j()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/common/collect/x0$e;->h:Lcom/google/common/collect/x0;

    iget-object v0, v0, Lcom/google/common/collect/x0;->d:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method
