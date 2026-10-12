.class final Lcom/google/common/collect/b5$c;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/b5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final transient c:[Ljava/lang/Object;

.field public final transient d:I

.field public final transient e:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    .line 352
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/google/common/collect/b5$c;->c:[Ljava/lang/Object;

    .line 354
    iput p2, p0, Lcom/google/common/collect/b5$c;->d:I

    .line 355
    iput p3, p0, Lcom/google/common/collect/b5$c;->e:I

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 360
    iget v0, p0, Lcom/google/common/collect/b5$c;->e:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    mul-int/lit8 p1, p1, 0x2

    .line 361
    iget v0, p0, Lcom/google/common/collect/b5$c;->d:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/common/collect/b5$c;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 371
    iget v0, p0, Lcom/google/common/collect/b5$c;->e:I

    return v0
.end method
