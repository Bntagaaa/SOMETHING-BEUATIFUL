.class public final Lcom/google/common/base/MoreObjects$ToStringHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/MoreObjects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/MoreObjects$ToStringHelper$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/common/base/MoreObjects$ToStringHelper$a;

.field public c:Lcom/google/common/base/MoreObjects$ToStringHelper$a;

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Lcom/google/common/base/MoreObjects$ToStringHelper$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper$a;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->b:Lcom/google/common/base/MoreObjects$ToStringHelper$a;

    .line 146
    iput-object v0, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->c:Lcom/google/common/base/MoreObjects$ToStringHelper$a;

    .line 147
    iput-boolean v1, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->d:Z

    .line 151
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/base/MoreObjects$ToStringHelper$a;
    .locals 2

    .line 364
    new-instance v0, Lcom/google/common/base/MoreObjects$ToStringHelper$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper$a;-><init>(I)V

    .line 365
    iget-object v1, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->c:Lcom/google/common/base/MoreObjects$ToStringHelper$a;

    iput-object v0, v1, Lcom/google/common/base/MoreObjects$ToStringHelper$a;->c:Lcom/google/common/base/MoreObjects$ToStringHelper$a;

    iput-object v0, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->c:Lcom/google/common/base/MoreObjects$ToStringHelper$a;

    return-object v0
.end method

.method public add(Ljava/lang/String;C)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 194
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public add(Ljava/lang/String;D)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 204
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public add(Ljava/lang/String;F)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 214
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 224
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 234
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 174
    invoke-virtual {p0, p2, p1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 184
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public addValue(C)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 271
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    .line 370
    invoke-virtual {p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->a()Lcom/google/common/base/MoreObjects$ToStringHelper$a;

    move-result-object v0

    .line 371
    iput-object p1, v0, Lcom/google/common/base/MoreObjects$ToStringHelper$a;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public addValue(D)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 284
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    .line 370
    invoke-virtual {p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->a()Lcom/google/common/base/MoreObjects$ToStringHelper$a;

    move-result-object p2

    .line 371
    iput-object p1, p2, Lcom/google/common/base/MoreObjects$ToStringHelper$a;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public addValue(F)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 297
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    .line 370
    invoke-virtual {p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->a()Lcom/google/common/base/MoreObjects$ToStringHelper$a;

    move-result-object v0

    .line 371
    iput-object p1, v0, Lcom/google/common/base/MoreObjects$ToStringHelper$a;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public addValue(I)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 310
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 370
    invoke-virtual {p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->a()Lcom/google/common/base/MoreObjects$ToStringHelper$a;

    move-result-object v0

    .line 371
    iput-object p1, v0, Lcom/google/common/base/MoreObjects$ToStringHelper$a;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public addValue(J)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 323
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 370
    invoke-virtual {p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->a()Lcom/google/common/base/MoreObjects$ToStringHelper$a;

    move-result-object p2

    .line 371
    iput-object p1, p2, Lcom/google/common/base/MoreObjects$ToStringHelper$a;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public addValue(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 370
    invoke-virtual {p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->a()Lcom/google/common/base/MoreObjects$ToStringHelper$a;

    move-result-object v0

    .line 371
    iput-object p1, v0, Lcom/google/common/base/MoreObjects$ToStringHelper$a;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public addValue(Z)Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 258
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 370
    invoke-virtual {p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->a()Lcom/google/common/base/MoreObjects$ToStringHelper$a;

    move-result-object v0

    .line 371
    iput-object p1, v0, Lcom/google/common/base/MoreObjects$ToStringHelper$a;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->a()Lcom/google/common/base/MoreObjects$ToStringHelper$a;

    move-result-object v0

    .line 377
    iput-object p1, v0, Lcom/google/common/base/MoreObjects$ToStringHelper$a;->b:Ljava/lang/Object;

    .line 378
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/google/common/base/MoreObjects$ToStringHelper$a;->a:Ljava/lang/String;

    return-void
.end method

.method public omitNullValues()Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->d:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    .line 337
    iget-boolean v1, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->d:Z

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    iget-object v3, p0, Lcom/google/common/base/MoreObjects$ToStringHelper;->b:Lcom/google/common/base/MoreObjects$ToStringHelper$a;

    iget-object v3, v3, Lcom/google/common/base/MoreObjects$ToStringHelper$a;->c:Lcom/google/common/base/MoreObjects$ToStringHelper$a;

    const-string v4, ""

    :goto_0
    if-eqz v3, :cond_4

    .line 343
    iget-object v5, v3, Lcom/google/common/base/MoreObjects$ToStringHelper$a;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    if-eqz v5, :cond_3

    .line 345
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-object v4, v3, Lcom/google/common/base/MoreObjects$ToStringHelper$a;->a:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 349
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v5, :cond_2

    .line 351
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 352
    new-array v4, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 353
    invoke-static {v4}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 354
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v2, v4, v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 356
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 342
    :goto_1
    const-string v4, ", "

    :cond_3
    iget-object v3, v3, Lcom/google/common/base/MoreObjects$ToStringHelper$a;->c:Lcom/google/common/base/MoreObjects$ToStringHelper$a;

    goto :goto_0

    :cond_4
    const/16 v0, 0x7d

    .line 360
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
