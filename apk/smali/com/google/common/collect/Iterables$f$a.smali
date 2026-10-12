.class Lcom/google/common/collect/Iterables$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterables$f;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Iterables$f$a;->b:Ljava/util/Iterator;

    const/4 p1, 0x1

    .line 885
    iput-boolean p1, p0, Lcom/google/common/collect/Iterables$f$a;->a:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/google/common/collect/Iterables$f$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 894
    iget-object v0, p0, Lcom/google/common/collect/Iterables$f$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 895
    iput-boolean v1, p0, Lcom/google/common/collect/Iterables$f$a;->a:Z

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 901
    iget-boolean v0, p0, Lcom/google/common/collect/Iterables$f$a;->a:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/collect/g0;->e(Z)V

    .line 902
    iget-object v0, p0, Lcom/google/common/collect/Iterables$f$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
