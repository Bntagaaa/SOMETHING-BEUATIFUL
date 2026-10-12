.class final Lcom/google/common/reflect/k;
.super Lcom/google/common/collect/Ordering;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Ordering<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/Ordering;

.field public final synthetic b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Ordering;Ljava/util/HashMap;)V
    .locals 0

    .line 1403
    iput-object p1, p0, Lcom/google/common/reflect/k;->a:Lcom/google/common/collect/Ordering;

    iput-object p2, p0, Lcom/google/common/reflect/k;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1406
    iget-object v0, p0, Lcom/google/common/reflect/k;->b:Ljava/util/HashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lcom/google/common/reflect/k;->a:Lcom/google/common/collect/Ordering;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
