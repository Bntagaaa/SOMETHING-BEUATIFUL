.class Lcom/google/common/collect/i1;
.super Lcom/google/common/collect/EnumMultiset$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/EnumMultiset<",
        "Ljava/lang/Enum<",
        "Ljava/lang/Object;",
        ">;>.a<",
        "Lcom/google/common/collect/Multiset$Entry<",
        "Ljava/lang/Enum<",
        "Ljava/lang/Object;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/common/collect/EnumMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/EnumMultiset;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/google/common/collect/i1;->d:Lcom/google/common/collect/EnumMultiset;

    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumMultiset$a;-><init>(Lcom/google/common/collect/EnumMultiset;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    .line 262
    new-instance v0, Lcom/google/common/collect/h1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/h1;-><init>(Lcom/google/common/collect/i1;I)V

    return-object v0
.end method
