.class final enum Lcom/google/common/cache/a$t$c;
.super Lcom/google/common/cache/a$t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/a$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 372
    const-string v0, "WEAK"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/base/Equivalence;
    .locals 1

    .line 419
    invoke-static {}, Lcom/google/common/base/Equivalence;->identity()Lcom/google/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method

.method public final b(ILcom/google/common/cache/a$r;Lcom/google/common/cache/f;Ljava/lang/Object;)Lcom/google/common/cache/a$a0;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 411
    new-instance p1, Lcom/google/common/cache/a$f0;

    iget-object p2, p2, Lcom/google/common/cache/a$r;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1, p2, p4, p3}, Lcom/google/common/cache/a$f0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/f;)V

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/common/cache/a$j0;

    iget-object p2, p2, Lcom/google/common/cache/a$r;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p3, p4, p2}, Lcom/google/common/cache/a$j0;-><init>(ILcom/google/common/cache/f;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0
.end method
