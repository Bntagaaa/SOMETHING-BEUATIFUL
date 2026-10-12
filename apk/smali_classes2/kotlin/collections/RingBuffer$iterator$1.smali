.class public final Lkotlin/collections/RingBuffer$iterator$1;
.super Lkotlin/collections/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/RingBuffer;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractIterator<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "kotlin/collections/RingBuffer$iterator$1",
        "Lkotlin/collections/AbstractIterator;",
        "",
        "computeNext",
        "()V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSlidingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer$iterator$1\n+ 2 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n1#1,206:1\n204#2:207\n*S KotlinDebug\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer$iterator$1\n*L\n121#1:207\n*E\n"
    }
.end annotation


# instance fields
.field public c:I

.field public d:I

.field public final synthetic e:Lkotlin/collections/RingBuffer;


# direct methods
.method public constructor <init>(Lkotlin/collections/RingBuffer;)V
    .locals 1

    iput-object p1, p0, Lkotlin/collections/RingBuffer$iterator$1;->e:Lkotlin/collections/RingBuffer;

    .line 111
    invoke-direct {p0}, Lkotlin/collections/AbstractIterator;-><init>()V

    .line 112
    invoke-virtual {p1}, Lkotlin/collections/AbstractCollection;->size()I

    move-result v0

    iput v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->c:I

    .line 113
    invoke-static {p1}, Lkotlin/collections/RingBuffer;->access$getStartIndex$p(Lkotlin/collections/RingBuffer;)I

    move-result p1

    iput p1, p0, Lkotlin/collections/RingBuffer$iterator$1;->d:I

    return-void
.end method


# virtual methods
.method public computeNext()V
    .locals 3

    .line 116
    iget v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->c:I

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lkotlin/collections/AbstractIterator;->done()V

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->e:Lkotlin/collections/RingBuffer;

    invoke-static {v0}, Lkotlin/collections/RingBuffer;->access$getBuffer$p(Lkotlin/collections/RingBuffer;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lkotlin/collections/RingBuffer$iterator$1;->d:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lkotlin/collections/AbstractIterator;->setNext(Ljava/lang/Object;)V

    .line 121
    iget v1, p0, Lkotlin/collections/RingBuffer$iterator$1;->d:I

    add-int/lit8 v1, v1, 0x1

    .line 207
    invoke-static {v0}, Lkotlin/collections/RingBuffer;->access$getCapacity$p(Lkotlin/collections/RingBuffer;)I

    move-result v0

    rem-int/2addr v1, v0

    .line 121
    iput v1, p0, Lkotlin/collections/RingBuffer$iterator$1;->d:I

    .line 122
    iget v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->c:I

    return-void
.end method
