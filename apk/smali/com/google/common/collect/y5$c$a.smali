.class Lcom/google/common/collect/y5$c$a;
.super Lcom/google/common/collect/c6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/y5$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c6<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/y5$c;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/y5$c;Ljava/util/Iterator;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/google/common/collect/y5$c$a;->b:Lcom/google/common/collect/y5$c;

    invoke-direct {p0, p2}, Lcom/google/common/collect/c6;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 877
    check-cast p1, Ljava/util/Map$Entry;

    .line 880
    new-instance v0, Lcom/google/common/collect/z5;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/z5;-><init>(Lcom/google/common/collect/y5$c$a;Ljava/util/Map$Entry;)V

    return-object v0
.end method
