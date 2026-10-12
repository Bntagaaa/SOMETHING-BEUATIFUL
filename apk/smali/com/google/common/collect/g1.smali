.class Lcom/google/common/collect/g1;
.super Lcom/google/common/collect/EnumMultiset$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/EnumMultiset<",
        "Ljava/lang/Enum<",
        "Ljava/lang/Object;",
        ">;>.a<",
        "Ljava/lang/Enum<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/common/collect/EnumMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/EnumMultiset;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/google/common/collect/g1;->d:Lcom/google/common/collect/EnumMultiset;

    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumMultiset$a;-><init>(Lcom/google/common/collect/EnumMultiset;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/common/collect/g1;->d:Lcom/google/common/collect/EnumMultiset;

    iget-object v0, v0, Lcom/google/common/collect/EnumMultiset;->d:[Ljava/lang/Enum;

    .line 252
    aget-object p1, v0, p1

    return-object p1
.end method
