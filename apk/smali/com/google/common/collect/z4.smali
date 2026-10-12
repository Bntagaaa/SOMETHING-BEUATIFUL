.class Lcom/google/common/collect/z4;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableList<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final e:Lcom/google/common/collect/ImmutableList;


# instance fields
.field public final transient c:[Ljava/lang/Object;

.field public final transient d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lcom/google/common/collect/z4;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/z4;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/common/collect/z4;->e:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/common/collect/z4;->c:[Ljava/lang/Object;

    .line 39
    iput p2, p0, Lcom/google/common/collect/z4;->d:I

    return-void
.end method


# virtual methods
.method public final a(I[Ljava/lang/Object;)I
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/google/common/collect/z4;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/common/collect/z4;->d:I

    invoke-static {v0, v1, p2, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, v2

    return p1
.end method

.method public final b()[Ljava/lang/Object;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/common/collect/z4;->c:[Ljava/lang/Object;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/google/common/collect/z4;->d:I

    return v0
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 77
    iget v0, p0, Lcom/google/common/collect/z4;->d:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 78
    iget-object v0, p0, Lcom/google/common/collect/z4;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/google/common/collect/z4;->d:I

    return v0
.end method
