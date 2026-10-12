.class final Lcom/google/common/collect/m3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/m3$h0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/m3$h0<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/m3$f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public copyFor(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/m3$f;)Lcom/google/common/collect/m3$h0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/common/collect/m3$f;",
            ")",
            "Lcom/google/common/collect/m3$h0<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/google/common/collect/m3$f;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic copyFor(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$h0;
    .locals 0

    .line 1007
    check-cast p2, Lcom/google/common/collect/m3$f;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/m3$a;->copyFor(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/m3$f;)Lcom/google/common/collect/m3$h0;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntry()Lcom/google/common/collect/m3$f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getEntry()Lcom/google/common/collect/m3$j;
    .locals 1

    .line 1007
    invoke-virtual {p0}, Lcom/google/common/collect/m3$a;->getEntry()Lcom/google/common/collect/m3$f;

    move-result-object v0

    return-object v0
.end method
