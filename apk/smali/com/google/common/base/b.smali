.class abstract Lcom/google/common/base/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/common/base/b$b;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/google/common/base/b$b;->b:Lcom/google/common/base/b$b;

    iput-object v0, p0, Lcom/google/common/base/b;->a:Lcom/google/common/base/b$b;

    return-void
.end method


# virtual methods
.method public abstract computeNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final endOfData()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 49
    sget-object v0, Lcom/google/common/base/b$b;->c:Lcom/google/common/base/b$b;

    iput-object v0, p0, Lcom/google/common/base/b;->a:Lcom/google/common/base/b$b;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/google/common/base/b;->a:Lcom/google/common/base/b$b;

    sget-object v1, Lcom/google/common/base/b$b;->d:Lcom/google/common/base/b$b;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 56
    iget-object v0, p0, Lcom/google/common/base/b;->a:Lcom/google/common/base/b$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    .line 67
    iput-object v1, p0, Lcom/google/common/base/b;->a:Lcom/google/common/base/b$b;

    .line 68
    invoke-virtual {p0}, Lcom/google/common/base/b;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/b;->b:Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/google/common/base/b;->a:Lcom/google/common/base/b$b;

    sget-object v1, Lcom/google/common/base/b$b;->c:Lcom/google/common/base/b$b;

    if-eq v0, v1, :cond_1

    .line 70
    sget-object v0, Lcom/google/common/base/b$b;->a:Lcom/google/common/base/b$b;

    iput-object v0, p0, Lcom/google/common/base/b;->a:Lcom/google/common/base/b$b;

    return v3

    :cond_1
    return v2

    :cond_2
    return v3
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/google/common/base/b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/google/common/base/b$b;->b:Lcom/google/common/base/b$b;

    iput-object v0, p0, Lcom/google/common/base/b;->a:Lcom/google/common/base/b$b;

    .line 82
    iget-object v0, p0, Lcom/google/common/base/b;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 83
    iput-object v1, p0, Lcom/google/common/base/b;->b:Ljava/lang/Object;

    return-object v0

    .line 79
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
