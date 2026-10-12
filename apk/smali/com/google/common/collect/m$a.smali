.class Lcom/google/common/collect/m$a;
.super Lcom/google/common/collect/Multisets$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$g<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/m;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/m;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/google/common/collect/m$a;->a:Lcom/google/common/collect/m;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/Multiset;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/google/common/collect/m$a;->a:Lcom/google/common/collect/m;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/google/common/collect/m$a;->a:Lcom/google/common/collect/m;

    invoke-virtual {v0}, Lcom/google/common/collect/m;->c()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
