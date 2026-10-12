.class Lcom/google/common/collect/Maps$b$a;
.super Lcom/google/common/collect/Maps$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$b;->createEntrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$f<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/Maps$b;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Maps$b;)V
    .locals 0

    .line 828
    iput-object p1, p0, Lcom/google/common/collect/Maps$b$a;->a:Lcom/google/common/collect/Maps$b;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/google/common/collect/Maps$b$a;->a:Lcom/google/common/collect/Maps$b;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 836
    iget-object v0, p0, Lcom/google/common/collect/Maps$b$a;->a:Lcom/google/common/collect/Maps$b;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$b;->b()Ljava/util/Set;

    move-result-object v1

    .line 845
    new-instance v2, Lcom/google/common/collect/t3;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v0, v0, Lcom/google/common/collect/Maps$b;->e:Lcom/google/common/base/Function;

    invoke-direct {v2, v1, v0}, Lcom/google/common/collect/t3;-><init>(Ljava/util/Iterator;Lcom/google/common/base/Function;)V

    return-object v2
.end method
