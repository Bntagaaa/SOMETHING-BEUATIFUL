.class final Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lkotlin/jvm/internal/markers/KMutableListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/builders/ListBuilder$BuilderSubList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;",
        "Lkotlin/jvm/internal/markers/KMutableListIterator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u0000*\u0004\u0008\u0002\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00020\u0002B\u001d\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\tH\u0096\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00028\u0002H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00028\u0002H\u0096\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00028\u0002H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00028\u0002H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;",
        "E",
        "",
        "Lkotlin/collections/builders/ListBuilder$BuilderSubList;",
        "list",
        "",
        "index",
        "<init>",
        "(Lkotlin/collections/builders/ListBuilder$BuilderSubList;I)V",
        "",
        "hasPrevious",
        "()Z",
        "hasNext",
        "previousIndex",
        "()I",
        "nextIndex",
        "previous",
        "()Ljava/lang/Object;",
        "next",
        "element",
        "",
        "set",
        "(Ljava/lang/Object;)V",
        "add",
        "remove",
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
        "SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/ListBuilder$BuilderSubList$Itr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,718:1\n1#2:719\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Lkotlin/collections/builders/ListBuilder$BuilderSubList;I)V
    .locals 1
    .param p1    # Lkotlin/collections/builders/ListBuilder$BuilderSubList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/builders/ListBuilder$BuilderSubList<",
            "TE;>;I)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput-object p1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->a:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    .line 560
    iput p2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->b:I

    const/4 p2, -0x1

    .line 562
    iput p2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->c:I

    .line 563
    invoke-static {p1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->access$getModCount$p$s1462993667(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)I

    move-result p1

    iput p1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 608
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->a:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    invoke-static {v0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->access$getRoot$p(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/builders/ListBuilder;->access$getModCount$p$s-2084097795(Lkotlin/collections/builders/ListBuilder;)I

    move-result v0

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->d:I

    if-ne v0, v1, :cond_0

    return-void

    .line 609
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 592
    invoke-virtual {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->a()V

    .line 593
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->b:I

    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->a:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    invoke-virtual {v1, v0, p1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    .line 594
    iput p1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->c:I

    .line 595
    invoke-static {v1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->access$getModCount$p$s1462993667(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)I

    move-result p1

    iput p1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->d:I

    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 566
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->b:I

    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->a:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    invoke-static {v1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->access$getLength$p(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 565
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 579
    invoke-virtual {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->a()V

    .line 580
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->b:I

    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->a:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    invoke-static {v1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->access$getLength$p(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 581
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->b:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->b:I

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->c:I

    .line 582
    invoke-static {v1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->access$getBacking$p(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->access$getOffset$p(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)I

    move-result v1

    iget v2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->c:I

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    .line 580
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .line 569
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->b:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 572
    invoke-virtual {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->a()V

    .line 573
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->b:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 574
    iput v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->b:I

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->c:I

    .line 575
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->a:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    invoke-static {v0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->access$getBacking$p(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->access$getOffset$p(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)I

    move-result v0

    iget v2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->c:I

    add-int/2addr v0, v2

    aget-object v0, v1, v0

    return-object v0

    .line 573
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 568
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    .line 599
    invoke-virtual {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->a()V

    .line 600
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 601
    iget-object v2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->a:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    invoke-virtual {v2, v0}, Lkotlin/collections/AbstractMutableList;->remove(I)Ljava/lang/Object;

    .line 602
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->c:I

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->b:I

    .line 603
    iput v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->c:I

    .line 604
    invoke-static {v2}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->access$getModCount$p$s1462993667(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)I

    move-result v0

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->d:I

    return-void

    .line 600
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() or previous() before removing element from the iterator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 586
    invoke-virtual {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->a()V

    .line 587
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 588
    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$a;->a:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    invoke-virtual {v1, v0, p1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 587
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() or previous() before replacing element from the iterator."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
