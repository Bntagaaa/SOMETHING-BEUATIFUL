.class final Lcom/google/common/collect/m3$i0;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/m3$h0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lcom/google/common/collect/m3$j<",
        "TK;TV;TE;>;>",
        "Ljava/lang/ref/WeakReference<",
        "TV;>;",
        "Lcom/google/common/collect/m3$h0<",
        "TK;TV;TE;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/collect/m3$j;


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/m3$j;)V
    .locals 0

    .line 1034
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1035
    iput-object p3, p0, Lcom/google/common/collect/m3$i0;->a:Lcom/google/common/collect/m3$j;

    return-void
.end method


# virtual methods
.method public copyFor(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$h0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TE;)",
            "Lcom/google/common/collect/m3$h0<",
            "TK;TV;TE;>;"
        }
    .end annotation

    .line 1045
    new-instance v0, Lcom/google/common/collect/m3$i0;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/google/common/collect/m3$i0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/m3$j;)V

    return-object v0
.end method

.method public getEntry()Lcom/google/common/collect/m3$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1040
    iget-object v0, p0, Lcom/google/common/collect/m3$i0;->a:Lcom/google/common/collect/m3$j;

    return-object v0
.end method
