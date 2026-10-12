.class final Lcom/google/common/collect/n1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final synthetic b:Lcom/google/common/collect/n1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/n1;Ljava/lang/Object;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/n1$c;->b:Lcom/google/common/collect/n1;

    .line 77
    iput-object p2, p0, Lcom/google/common/collect/n1$c;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/common/collect/n1$c;->b:Lcom/google/common/collect/n1;

    iget-object v0, v0, Lcom/google/common/collect/n1;->g:Lcom/google/common/base/Predicate;

    .line 70
    iget-object v1, p0, Lcom/google/common/collect/n1$c;->a:Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
