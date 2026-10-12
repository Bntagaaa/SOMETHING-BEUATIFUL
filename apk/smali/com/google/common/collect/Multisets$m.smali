.class abstract Lcom/google/common/collect/Multisets$m;
.super Lcom/google/common/collect/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/m<",
        "TE;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1135
    invoke-direct {p0}, Lcom/google/common/collect/m;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1135
    invoke-direct {p0}, Lcom/google/common/collect/Multisets$m;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1153
    invoke-virtual {p0}, Lcom/google/common/collect/m;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 1143
    invoke-virtual {p0}, Lcom/google/common/collect/m;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
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

    .line 1148
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->c(Lcom/google/common/collect/Multiset;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1138
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->d(Lcom/google/common/collect/Multiset;)I

    move-result v0

    return v0
.end method
